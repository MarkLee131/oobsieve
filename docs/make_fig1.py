# -*- coding: utf-8 -*-
"""Figure 1: neuro-symbolic OOB detection framework, decidability-based division of labor."""
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import FancyBboxPatch, FancyArrowPatch
from matplotlib.font_manager import FontProperties

ZH = FontProperties(fname="/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc")
ZHB = FontProperties(fname="/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc")

fig, ax = plt.subplots(figsize=(7.4, 8.6))
ax.set_xlim(0, 10); ax.set_ylim(0, 12); ax.axis("off")

SYM = "#2b6cb0"; SYMBG = "#e8f0fb"
NEU = "#2f855a"; NEUBG = "#e6f4ec"
GREY = "#4a5568"

def box(x, y, w, h, fc, ec, lw=1.4, r=0.12):
    ax.add_patch(FancyBboxPatch((x, y), w, h, boxstyle=f"round,pad=0.02,rounding_size={r}",
                                fc=fc, ec=ec, lw=lw, zorder=2))

def txt(x, y, s, fp=ZH, size=11, color="black", ha="center", va="center", weight=None):
    ax.text(x, y, s, fontproperties=(ZHB if weight else fp), fontsize=size,
            color=color, ha=ha, va=va, zorder=3)

def arrow(x1, y1, x2, y2, color=GREY, lw=1.8):
    ax.add_patch(FancyArrowPatch((x1, y1), (x2, y2), arrowstyle="-|>", mutation_scale=18,
                                 color=color, lw=lw, zorder=1))

# ---- input ----
box(3.0, 11.0, 4.0, 0.8, "#f7fafc", GREY)
txt(5.0, 11.4, "输入：C 源码（漏洞版本）", size=11.5, weight=1)
arrow(5.0, 11.0, 5.0, 10.55)

# ---- Stage 1: symbolic ----
box(0.4, 4.7, 9.2, 5.75, SYMBG, SYM, lw=1.8)
txt(5.0, 10.1, "阶段一  符号候选发现（可判定守卫）", size=12.5, color=SYM, weight=1)
txt(5.0, 9.62, "Symbolic candidate finding — sound value-flow", size=9, color=SYM)
steps = [
    "① 编译为 -O0 + mem2reg 的 LLVM IR，构造稀疏值流；输入派生污点前向传播",
    "② sanitizer / clamp 建模：识别 phi/min/掩码钳制的有界值",
    "③ 字段敏感访问路径：同一结构体字段的载入共享符号变量（分配即用）",
    "④ 路径敏感守卫值流：支配分支中对该访问的边界检查",
    "⑤ 按需 SMT 求解：尺寸上界 + 缓冲容量充分性（Z3 整数理论）",
]
y = 9.05
for s in steps:
    box(0.8, y-0.34, 8.4, 0.62, "white", SYM, lw=1.0, r=0.08)
    txt(5.0, y-0.03, s, size=9.6, ha="center")
    y -= 0.82
txt(5.0, 5.05, "输出：高召回、过近似的越界候选集", size=11, color=SYM, weight=1)

arrow(5.0, 4.7, 5.0, 4.15)
txt(6.9, 4.42, "候选 + 符号证据", size=9, color=GREY)

# ---- Stage 2: neuro ----
box(0.4, 1.35, 9.2, 2.75, NEUBG, NEU, lw=1.8)
txt(5.0, 3.72, "阶段二  神经确认（模型外守卫 / 习语）", size=12.5, color=NEU, weight=1)
txt(5.0, 3.28, "Neuro confirmation — reject-only LLM", size=9, color=NEU)
box(0.8, 2.35, 8.4, 0.72, "white", NEU, lw=1.0, r=0.08)
txt(5.0, 2.71, "LLM 输入：受污染操作数 + 尺寸表达式 + 所在函数源码上下文", size=9.6)
box(0.8, 1.55, 8.4, 0.72, "white", NEU, lw=1.0, r=0.08)
txt(5.0, 1.91, "仅当能指出覆盖该访问的边界守卫（含 ND_TCHECK 等 longjmp 宏）时否决；否则保留",
    size=9.4)

arrow(5.0, 1.35, 5.0, 0.9)
box(3.0, 0.1, 4.0, 0.78, "#fff5f5", "#c53030")
txt(5.0, 0.49, "输出：确认的越界漏洞", size=11.5, color="#c53030", weight=1)

# ---- side annotation: decidability division ----
txt(9.9, 7.5, "符号层\n负责\nSMT\n可判定\n守卫", size=8.6, color=SYM, ha="center")
txt(9.9, 2.7, "神经层\n负责\n项目\n特定\n习语", size=8.6, color=NEU, ha="center")

plt.tight_layout(pad=0.3)
plt.savefig("fig1_framework.png", dpi=220, bbox_inches="tight", facecolor="white")
print("saved fig1_framework.png")
