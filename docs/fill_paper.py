# -*- coding: utf-8 -*-
"""Replace the template's paper content (title/abstract/keywords/body/references)
with the neuro-symbolic OOB-detection paper, preserving the template's styles.

Citations are written as [c:key] / [c:key1,key2] tokens in the body text and
auto-numbered by first appearance; the reference list is generated in that order.
"""
import copy
import re
import docx
from docx.enum.table import WD_TABLE_ALIGNMENT
from docx.enum.text import WD_PARAGRAPH_ALIGNMENT
from docx.shared import Cm, Pt
from docx.oxml.ns import qn
from docx.oxml import OxmlElement

SRC = "20251126正文模版_spec.docx"
OUT = "20251126正文模版_spec.docx"

d = docx.Document(SRC)
P = d.paragraphs

# ---- 1. header content ----
def setp(i, text):
    p = P[i]
    for r in list(p.runs):
        r._element.getparent().remove(r._element)
    p.add_run(text)

def setp_rich(i, parts):
    """Rewrite paragraph i with (text, superscript) parts, keeping the first
    original run's character formatting (font/size) for all new runs."""
    p = P[i]
    runs = list(p.runs)
    rpr = runs[0]._element.find(qn("w:rPr")) if runs else None
    for r in runs:
        r._element.getparent().remove(r._element)
    for text, sup in parts:
        r = p.add_run(text)
        if rpr is not None:
            r._element.insert(0, copy.deepcopy(rpr))
        if sup:
            r.font.superscript = True

TITLE_CN = "神经符号越界访问漏洞检测方法"
TITLE_EN = "A Neuro-Symbolic Approach to Out-of-Bounds Vulnerability Detection"

ABS_EN = ("Abstract  Out-of-bounds (OOB) memory access is among the most severe vulnerability "
    "classes in C/C++ systems software. Sound static value-flow analysis attains high recall "
    "but a heavy false-positive burden, whereas purely LLM-based detection offers no soundness "
    "for a trustworthy candidate set. We study a neuro-symbolic pipeline that splits the two by "
    "what the symbolic model can prove: a value-flow engine with on-demand SMT emits a "
    "high-recall, over-approximate candidate set at intrinsic memory operations, and a "
    "reject-only large language model (LLM) removes only the candidates whose safety rests on "
    "guard idioms outside the symbolic model (e.g., project-specific longjmp bounds macros), "
    "never fabricating findings. On ARVO dataset, the symbolic layer attains 72% recall on the scorable "
    "defect set drawn from all 88 in-scope C projects and rediscovers real CVEs in libarchive and tcpdump. Crucially, the "
    "reject-only LLM safely removes only about "
    "19% of the false positives, and forcing a 97% cut collapses recall from 72% to 13%, "
    "discarding most true bugs. An ablation across all 88 projects further guides the design—we "
    "exclude a path-guard heuristic that over-suppresses real bugs, keeping the symbolic layer "
    "high-recall and delegating guard sufficiency to the LLM.")

KEY_EN = ("Key words  neuro-symbolic reasoning; out-of-bounds vulnerability; static value-flow "
    "analysis; large language model; soundness; false-positive suppression")

ABS_CN = ("摘要  内存越界访问（out-of-bounds，OOB）是 C/C++ 系统软件中最严重的漏洞类别之一。"
    "健全（sound）的符号值流分析召回率较高，但会产生大量误报；而纯大模型检测缺乏可信候选集所需的健全性（soundness）。"
    "本文研究一种神经符号分析流程，根据符号模型能否证明安全来划分符号层与神经层的职责：符号值流引擎辅以按需 SMT 求解，"
    "在内建（intrinsic）内存操作处生成高召回、过近似的候选集；一个仅执行过滤的大语言模型（LLM）判别层，"
    "仅剔除安全性依赖于符号模型之外边界检查习语（如项目特定的 longjmp 边界宏）的候选，不产生虚假的漏洞报告。"
    "在 ARVO数据集上，符号层在覆盖 88 个 C 项目的可评测缺陷集上取得 72% 的"
    "函数级召回，并在 libarchive 与 tcpdump 中复现了真实 CVE（含 CVE-2016-1541 与 CVE-2017-13008）。本文进一步"
    "评估了这一分工的实际收益：判别层可安全地剔除约 19% 的误报候选，而若进一步追求 97% 的误报削减率，"
    "端到端召回将由 72% 降至 13%。")

KEY_CN = "关键词  神经符号推理；越界访问漏洞；静态值流分析；大语言模型；误报抑制"

setp(0, TITLE_CN)
setp_rich(1, [("李凯旋", 0), ("1", 1), ("  刘杨", 0), ("1", 1), ("  陈仪香", 0), ("*2", 1)])
setp_rich(2, [("1（南洋理工大学计算机与数据科学学院  新加坡 639798）", 0)])
setp_rich(3, [("2（华东师范大学软件工程学院  上海 200062）", 0)])
setp_rich(4, [("（yxchen@sei.ecnu.edu.cn）", 0)])
setp(5, "")
setp(6, TITLE_EN)
setp_rich(8, [("Li Kaixuan", 0), ("1", 1), (", Liu Yang", 0), ("1", 1), (", and Chen Yixiang", 0), ("*2", 1)])
setp_rich(9, [("1(College of Computing and Data Science, Nanyang Technological University, Singapore 639798)", 0)])
setp_rich(10, [("2(Software Engineering Institute, East China Normal University, Shanghai 200062)", 0)])
setp(11, "")
setp(13, ABS_EN)
setp(14, "")
setp(15, KEY_EN)
setp(16, "")
setp(18, ABS_CN)
setp(19, KEY_CN)
setp(20, "中图法分类号  TP311.5；TP309.2")

# ---- 2. remove old body (from para index 21 onward) and all tables ----
for p in P[21:]:
    p._element.getparent().remove(p._element)
for t in list(d.tables):
    t._element.getparent().remove(t._element)

# ---- 3. references (key -> (entry, english-translation-or-None)) ----
REFS = {
 "oss": ("Serebryany K. OSS-Fuzz: Google's continuous fuzzing service for open source software[C]//Proc of USENIX Security (Invited Talk). Berkeley: USENIX, 2017", None),
 "lzj": ("李舟军, 张俊贤, 廖湘科, 等. 软件安全漏洞检测技术[J]. 计算机学报, 2015, 38(4): 717-732",
   "Li Zhoujun, Zhang Junxian, Liao Xiangke, et al. Survey of software vulnerability detection techniques[J]. Chinese Journal of Computers, 2015, 38(4): 717-732 (in Chinese)"),
 "zj": ("张健, 张超, 玄跻峰, 等. 程序分析研究进展[J]. 软件学报, 2019, 30(1): 80-109",
   "Zhang Jian, Zhang Chao, Xuan Jifeng, et al. Recent progress in program analysis[J]. Journal of Software, 2019, 30(1): 80-109 (in Chinese)"),
 "wl": ("王蕾, 李丰, 李炼, 等. 污点分析技术的原理和实践应用[J]. 软件学报, 2017, 28(4): 860-882",
   "Wang Lei, Li Feng, Li Lian, et al. Principle and practice of taint analysis[J]. Journal of Software, 2017, 28(4): 860-882 (in Chinese)"),
 "pinpoint": ("Shi Q, Xiao X, Wu R, et al. Pinpoint: Fast and precise sparse value flow analysis for million lines of code[C]//Proc of PLDI. New York: ACM, 2018: 693-706", None),
 "liyun": ("李韵, 黄辰林, 王中锋, 等. 基于机器学习的软件漏洞挖掘方法综述[J]. 软件学报, 2020, 31(7): 2040-2061",
   "Li Yun, Huang Chenlin, Wang Zhongfeng, et al. Survey of software vulnerability mining methods based on machine learning[J]. Journal of Software, 2020, 31(7): 2040-2061 (in Chinese)"),
 "zhanqi": ("詹奇, 潘圣益, 胡星, 等. 开源软件漏洞感知技术综述[J]. 软件学报, 2024, 35(1): 19-37",
   "Zhan Qi, Pan Shengyi, Hu Xing, et al. Survey on vulnerability awareness of open source software[J]. Journal of Software, 2024, 35(1): 19-37 (in Chinese)"),
 "llm4sa": ("Wen C, Cai Y, Zhang B, et al. Automatically inspecting thousands of static bug warnings with large language model: How far are we?[J]. ACM Transactions on Knowledge Discovery from Data, 2024, 18(7): No.168", None),
 "iris": ("Li Z, Dutta S, Naik M. IRIS: LLM-assisted static analysis for detecting security vulnerabilities[C]//Proc of ICLR, 2025", None),
 "arvo": ("Mei X, Singaria P S, Del Castillo J, et al. ARVO: Atlas of reproducible vulnerabilities for open source software[J]. arXiv:2408.02153, 2024", None),
 "asan": ("Serebryany K, Bruening D, Potapenko A, et al. AddressSanitizer: A fast address sanity checker[C]//Proc of USENIX ATC. Berkeley: USENIX, 2012: 309-318", None),
 "klee": ("Cadar C, Dunbar D, Engler D. KLEE: Unassisted and automatic generation of high-coverage tests for complex systems programs[C]//Proc of OSDI. Berkeley: USENIX, 2008: 209-224", None),
 "infer": ("Calcagno C, Distefano D. Infer: An automatic program verifier for memory safety of C programs[C]//Proc of NASA Formal Methods. Berlin: Springer, 2011: 459-465", None),
 "svf": ("Sui Y, Xue J. SVF: Interprocedural static value-flow analysis in LLVM[C]//Proc of CC. New York: ACM, 2016: 265-266", None),
 "seal": ("Chen W, Zhang B, Wang C, et al. SEAL: Towards diverse specification inference for Linux interfaces from security patches[C]//Proc of EuroSys. New York: ACM, 2025", None),
 "vdp": ("Li Z, Zou D, Xu S, et al. VulDeePecker: A deep learning-based system for vulnerability detection[C]//Proc of NDSS. Reston: Internet Society, 2018", None),
 "devign": ("Zhou Y, Liu S, Siow J, et al. Devign: Effective vulnerability identification by learning comprehensive program semantics via graph neural networks[C]//Proc of NeurIPS, 2019: 10197-10207", None),
 "llift": ("Li H, Hao Y, Zhai Y, et al. Enhancing static analysis for practical bug detection: An LLM-integrated approach[J]. Proceedings of the ACM on Programming Languages, 2024, 8(OOPSLA1): No.111", None),
 "magma": ("Hazimeh A, Herrera A, Payer M. Magma: A ground-truth fuzzing benchmark[J]. Proc of the ACM on Measurement and Analysis of Computing Systems, 2020, 4(3): 1-29", None),
 "llvm": ("Lattner C, Adve V. LLVM: A compilation framework for lifelong program analysis & transformation[C]//Proc of CGO. Los Alamitos: IEEE, 2004: 75-86", None),
 "z3": ("de Moura L, Bjorner N. Z3: An efficient SMT solver[C]//Proc of TACAS. Berlin: Springer, 2008: 337-340", None),
}

# ---- 4. body ----
H = "Heading 2"         # 一级标题
B = "Body Text Indent"  # 正文
N = "Normal"            # 二级标题 / 图表题 / 算法

BODY = []
def add(style, text): BODY.append(("P", style, text))
def img(path, width_cm=12.0): BODY.append(("IMG", path, width_cm))
def tbl(header, rows): BODY.append(("TBL", header, rows))
def alg(lines): BODY.append(("ALG", lines))

# ===== 1 引言 =====
add(H, "1 引言")
add(B, "内存越界访问（out-of-bounds，OOB）是 C/C++ 系统软件中最常见且危害严重的漏洞类型之一：越界读可泄露敏感内存，越界写可劫持控制流以实现远程代码执行。以 OSS-Fuzz[c:oss] 为代表的持续模糊测试已发现数以万计的内存安全缺陷，其中越界访问占比较高；但模糊测试依赖运行时触发，对深层解析逻辑的覆盖成本较高。因此，如何在源代码层面自动检测越界漏洞，是软件安全领域长期且重要的研究问题。")
add(B, "静态分析是检测此类漏洞的重要方法[c:lzj,zj]。基于值流（value-flow）的健全（sound）静态分析将污点从输入源前向传播到内存访问操作[c:wl]，具有较高的召回率；但其固有的过近似导致大量误报，人工确认成本较高，成为制约静态漏洞检测实际应用的重要因素。为抑制误报，Pinpoint[c:pinpoint] 等工作引入了路径敏感的边界检查与值流分析以及按需 SMT（可满足性模理论）求解，将边界检查纳入符号推理，取得了显著进展；然而，真实代码中大量边界检查以项目特定的习语形式出现，例如以 setjmp/longjmp 或 goto 实现的边界宏、以分配即使用（allocate-to-fit）方式隐含的容量约束；此类习语超出了任何固定符号模型的建模能力，成为限制符号分析精度进一步提升的重要因素。")
add(B, "近年来，大语言模型（LLM）展现出较强的代码语义理解与惯用模式识别能力，被用于对静态分析告警分类或直接检测漏洞[c:liyun,llm4sa,iris]。然而，纯 LLM 方法缺乏健全性：一方面可能漏检真实漏洞，另一方面可能产生并不存在的漏洞报告（幻觉），难以保证候选结果的可信性。因此，将符号方法与 LLM 结合为神经符号系统成为一种有吸引力的研究方向，但二者应如何分工、结合能带来多大实际收益，目前仍缺乏在真实带标注漏洞语料上的系统评估。")
add(B, "本文以此为出发点，研究一种神经符号越界检测分析流程，其符号层与神经层按“符号模型能否表达该边界检查”来分工，并面临如下挑战：")
add(B, "1）如何在尽量保持高召回的前提下，在符号层降低误报，使其只把“确需外部知识判断”的候选交由神经层，并定量分析降低误报所付出的召回代价；")
add(B, "2）如何约束 LLM，使其成为一个不破坏候选集健全性的判别层：仅当能明确指出对应边界检查时才过滤该候选、不产生新的漏洞报告，同时不误删真实漏洞；")
add(B, "3）如何在缺乏函数级人工标注的情况下，为真实漏洞检测建立可复现、函数级精确的评估基准，从而客观地度量符号召回与神经层的实际效果。")
add(B, "针对上述挑战，本文的主要贡献包括三个方面：")
add(B, "1）提出一种神经符号越界检测方法。符号层负责建模其能够表达的安全约束（支配关系与 SMT 可证的边界检查），生成高召回、过近似的候选集；神经层负责识别项目相关的边界检查模式与习语，被约束为仅执行过滤、不产生虚假的漏洞报告。符号层与神经层的分工依据是“符号模型能否表达该边界检查”。")
add(B, "2）设计并实现了一套面向越界的符号候选生成模块，其默认分析流程仅使用可判定的安全模型（sanitizer/clamp 建模、字段敏感访问路径、按需 SMT 求解）过滤候选，在覆盖 88 个 C 项目的 ARVO缺陷集上取得 72% 的函数级召回、候选削减 19%。")
add(B, "3）基于 ARVO[c:arvo] 可复现漏洞语料，以 ASAN[c:asan] 崩溃栈作为函数级真值（ground truth），建立了可复现的评估协议，并据此系统评估了神经符号分工的实际效果：判别层在较低真实漏洞损失下（33 个中误删 3 个）只能安全地剔除约 19% 的符号误报，而激进策略虽能削减 97% 的误报，却使端到端召回由 72% 降至 13%。这一结果表明神经层是召回安全但作用有限的精度补充。")
add(B, "本文其余部分组织如下：第2节介绍相关工作；第3节给出问题定义、动机示例与总体框架；第4节与第5节分别阐述符号候选生成模块与神经候选判别层的设计；第6节报告实验评估；第7节讨论有效性威胁；第8节总结全文。")

# ===== 2 相关工作 =====
add(H, "2 相关工作")
add(N, "2.1 基于符号分析的漏洞检测")
add(B, "静态漏洞检测长期面临误报与可扩展性的矛盾：李舟军等人[c:lzj]、张健等人[c:zj]的综述均指出过近似带来的误报是静态方法走向实用的主要障碍，王蕾等人[c:wl]的污点分析综述进一步表明污点传播的过近似正是误报的重要来源。在通用路线上，符号执行（如 KLEE[c:klee]）路径精确但受路径爆炸制约，工业级分析器（如 Infer[c:infer]）为规模化牺牲部分路径敏感性；归根结底，任何单一符号模型都需在精度、召回与开销间取舍。")
add(B, "与本文最相关的是基于值流的检测。基于值流图与稀疏分析的静态检测（如 SVF[c:svf]）是发现内存安全缺陷的经典途径；Pinpoint[c:pinpoint] 通过符号表达式图与按需路径条件求解，在值流边上引入可满足性判定，兼顾精度与可扩展性，是本文符号层的直接借鉴对象；SEAL[c:seal] 等工作则从安全补丁中推断接口规约以驱动缺陷检测。这些工作持续提升了符号层内部的精度；与之互补，本文沿用值流分析的骨架，但将其定位为高召回的候选生成模块，把剩余的精度提升交由神经层完成。")
add(N, "2.2 基于学习与大模型的漏洞检测")
add(B, "李韵等人[c:liyun]的综述指出，数据驱动方法能够自动学习漏洞模式，同时也提示其结果可靠性尚需进一步保证；VulDeePecker[c:vdp]、Devign[c:devign] 等深度学习检测器有效学习了程序语义，其判定依据的可解释性与可审计性则有进一步提升的空间。詹奇等人[c:zhanqi]的综述进一步指出，面向真实开源软件的漏洞发现需兼顾精度与可解释性，这也正是纯数据驱动方法有待加强之处。")
add(B, "大模型出现后，已有工作使用 LLM 复核静态分析告警（如批量研判告警的 LLM4SA[c:llm4sa]、面向 Linux 内核缺陷确认的 LLift[c:llift]），或让 LLM 直接参与检测（如推断污点规约的 IRIS[c:iris]）。这些工作展示了 LLM 在漏洞理解上的潜力，多由 LLM 作出最终裁决；如何在保证候选集健全性的同时、于带标注真实漏洞上量化神经层的实际收益，仍有待进一步探索。本文正着眼于此：符号层是高召回的值流候选生成模块，神经层被严格约束为仅执行过滤、可审计，并在可复现漏洞语料上定量分析神经层的实际收益。")
add(N, "2.3 漏洞检测评估基准")
add(B, "评估真实漏洞检测能力需要带标注的真实缺陷语料。Magma[c:magma] 通过在真实库中前向移植 CVE 构造带真值标注的缺陷，为公平比较提供了统一靶标，不过前向移植会改变缺陷的原生上下文；ARVO[c:arvo] 从 OSS-Fuzz[c:oss] 复现了数千个可触发的内存漏洞，保留漏洞的原始版本、触发输入与 ASAN[c:asan] 崩溃报告，并给出规范化的开发者修复补丁。本文选用 ARVO，并进一步利用其携带的 ASAN 崩溃栈栈顶函数作为函数级真值，避免以补丁 diff 猜测缺陷位置带来的噪声。")

# ===== 3 问题定义与总体框架 =====
add(H, "3 问题定义与总体框架")
add(N, "3.1 问题形式化")
add(B, "本文基于函数级静态单赋值（SSA）中间表示开展分析。内存操作点（sink）取内建内存操作 memcpy/memmove/memset，记为 s = (d, r, n)（目的指针、源指针、尺寸操作数），f 中全体内存操作点记为 Sink(f)；记访问 s 的偏移与长度为 off(s)、len(s)，目的缓冲区容量为 cap(s)（由其最近的 malloc/calloc/realloc 分配点确定），Dom(s) 为支配 s 的边界检查条件（guard，下文简称边界检查）集合。沿用污点分析的两个基本术语：若某值从函数输入（参数、输入读取/解码调用所填充的缓冲）沿 def-use 边前向可达，则称其来源于输入，全体此类值记为 T；若某值经 clamp、min 或按位掩码等 sanitizer 操作而取值被上界限定，则称其已界定，全体记为 B。上述均为标准概念；本文的形式化建立在以下两个核心定义之上。")
add(B, "定义1（可证安全谓词 Safe）. 谓词 Safe(s) 成立，当且仅当存在支配 s 的边界检查 g，使“该访问不越界”即 off(s) + len(s) ≤ cap(s) 可由符号层在其所建模的算术理论（线性整数与位向量，经 SMT 求解）内被证明。若 s 的安全性转而依赖符号模型无法表达的边界检查（如 longjmp 边界宏、隐式容量不变式），则 Safe(s) 不成立。Safe 定义了符号层能够证明安全性的范围，本文即以此划分符号层与神经层的职责。")
add(B, "定义2（越界候选与候选集）. 内建内存操作 s = (d, r, n) 是一个越界候选，当且仅当其某个尺寸或指针操作数来源于输入且未界定（即属于 T\\B）、且 ¬Safe(s)。函数 f 的候选集记为 C(f) = { s ∈ Sink(f) : s 为越界候选 }，程序 P 的候选集 C(P) = ∪_{f∈P} C(f)，每个候选附带其符号证据（受污染操作数与尺寸表达式）。")
add(B, "问题与目标。给定待测程序 P，检测目标是生成 C(P)，并以函数级召回（真实越界所在崩溃函数中含候选者的比例）与候选精度（候选中真实越界的比例）进行评价。二者之间存在权衡关系，本文的神经符号分工正对应定义 1 的界线：C(P) 的判定要件（来源于输入、已界定、Safe）均可在符号层计算，故符号层以较高召回率逼近 C(P)；而 ¬Safe 中安全性依赖于符号模型无法表达的边界检查的那部分候选，则由神经层进一步判定以提升精度。该分工及其对召回率与精度的影响在第 6 节量化。")
add(N, "3.2 动机示例")
add(B, "示例1（longjmp 边界宏）. tcpdump 的协议解析器广泛采用 ND_TCHECK 宏进行越界防护：该宏在剩余报文长度不足时经 longjmp 跳出解析流程。对符号值流而言，longjmp 改变了正常的控制流后继，宏展开后的检查也不表现为支配内存操作的常规分支，因此符号层无法将其识别为边界检查，凡受 ND_TCHECK 保护的拷贝均被保守地标记为候选。而 CVE-2017-13008（IEEE 802.11 TIM 位图拷贝越界）的根因恰是解析器缺失了这样一处检查；区分“存在宏保护”与“缺失宏检查”需要理解该宏的语义，属于符号模型无法表达的边界检查模式。")
add(B, "示例2（分配即使用与定长读）. libarchive 常按所需长度分配缓冲随后立即拷贝（分配即使用，allocate-to-fit），容量与拷贝尺寸经结构体字段间接关联，需字段敏感关联才能证明安全；反之 RAR 解析器 FHD_LARGE 头部的定长读，尺寸虽为常量，但源指针来源于输入且偏移无界，仍是真实越界读（修复 99f74bd3）。可见仅凭“尺寸是否为常量”“是否存在检查语句”等局部语法特征无法判定安全性，所需知识可能落在符号模型之内（字段敏感关联）也可能落在其外（宏语义），需分层处理。")
add(N, "3.3 总体框架")
add(B, "图 1 给出了本文方法的总体框架。方法由两个阶段组成。符号候选生成阶段：将源文件编译为经 -O0 与 mem2reg 处理的 LLVM[c:llvm] IR，构造函数级值流；引入 sanitizer/clamp 建模、字段敏感访问路径与按需 SMT 求解等可判定的安全模型过滤候选，生成高召回、过近似的越界候选集（默认配置下不启用会误伤召回的路径边界检查启发式，理由见 6.3 节）。神经候选判别阶段：对每个候选，向 LLM 提供该候选的符号分析结果（受污染操作数、尺寸表达式）与其所在函数的源码上下文；LLM 被约束为仅执行过滤：仅当能明确指出一处覆盖该访问的边界检查（普通 if 或 longjmp/goto 边界宏）时才拒绝该候选，否则予以保留。边界检查充分性的判断由神经层统一完成。")
add(B, "该分工使各阶段对召回率的影响可控且可量化。符号层默认仅使用可判定的安全模型过滤候选（clamp、字段敏感的分配即使用、SMT 证明），其过滤要么具有形式化证明、要么属于评测基准引入的噪声，全量召回保持 72%（第 6.3 节）；相关性启发式类的边界检查判定因会误伤召回而不纳入默认分析流程，改由神经层承担。神经层仅删除、不新增候选，故端到端召回不高于符号层召回；其误删真实漏洞的风险由“默认保留、仅凭具体边界检查过滤”的规则控制（第 5 节），代价与收益在第 6 节实证。")
img("fig1_framework.png", 8.5)
add(N, "图 1  神经符号越界检测总体框架")

# ===== 4 符号候选生成模块 =====
add(H, "4 符号候选生成模块")
add(B, "本节给出符号层如何计算定义 2 的判定要件、进而生成候选集 C(f)：4.1 节识别已界定值，4.5 节确定污点源，4.2 与 4.4 节共同判定可证安全谓词 Safe（定义1）。其设计原则是：在尽量保持召回的前提下减少候选数，并为每个候选保留可交由神经层的符号证据；各层的候选削减与召回代价在第 6.3 节逐层量化。")
add(N, "4.1 sanitizer 与 clamp 建模")
add(B, "在 -O0+mem2reg 的 IR 上，形如 if(l>b) l=b 的钳制（clamp）表现为 phi 节点，min 内建与按位掩码同样界定取值范围，此类结果被标记为已界定值并加入集合 B。需要区分“被钳制（安全）”与“仅为常量”：一个常量尺寸的读，若其源指针来源于输入且偏移无界，仍可能越界（如示例 2 中 RAR FHD_LARGE 头部的定长读），因此不能仅凭尺寸为常量而过滤候选。")
add(N, "4.2 字段敏感访问路径")
add(B, "真实解析器中，缓冲容量常经结构体字段间接传递。本文通过递归规范化定义表达式为值签名（value signature），使同一结构体字段的两次载入共享同一符号变量，从而将“分配即使用”（同一 malloc 尺寸随后用于 memcpy）经由结构体字段的载入建立关联，从而安全地过滤此类候选。若不进行字段敏感关联，此类候选只能保守保留，导致误报显著增多。")
add(N, "4.3 路径边界检查启发式（默认不采用）")
add(B, "一种直接的实现方式是以启发式近似 Safe：借助支配关系与后向切片，判断支配 s 的分支条件是否为对 s 操作数的边界检查（要求内存操作点的指针或尺寸出现在边界检查的后向切片中），据此过滤“看似已被边界检查覆盖”的候选。但该相关性判定并非对 off(s)+len(s) ≤ cap(s) 的证明，因而是 Safe 的不健全近似：第 6.3 节的全面消融实验实测其会误删 4 个真实漏洞、把召回由 72% 降至 63%，是一项得不偿失的取舍。故本文默认分析流程不采用该启发式：符号层仅在 Safe(s) 可证时过滤候选，而把“是否已被边界检查覆盖”这一充分性判断整体交由神经层（第 5 节）。")
add(N, "4.4 按需 SMT 求解")
add(B, "本阶段判定可证安全谓词 Safe（定义1）。对尺寸为变量的候选，将尺寸表达式与相关支配边界检查编码为 Z3[c:z3] 约束，判定尺寸能否超过阈值；对写操作进一步判定 off(s)+len(s) ≤ cap(s)（容量取自 malloc/calloc/realloc 分配点），以整数理论避免乘法溢出。仅当 Safe(s) 成立（边界检查可证充分）时才过滤候选；只保护源侧的边界检查无法证明目的写入在界内，故 Safe 不成立、真实越界写得以保留。SMT 求解按需触发、限于候选相关的边界检查与表达式，避免了全程序符号执行的开销。")
add(N, "4.5 通用输入模型")
add(B, "前向污点不仅从函数参数与固定输入函数种子，也从名称匹配 read/decode/inflate/unpack 等读取/解码类调用的参数指针种子，因为此类函数常将攻击数据写入由地址传入的输出缓冲，随后从该缓冲的载入应被视作受污染。此模型将检测器从特定项目的硬编码输入函数中解耦，是方法能以一条命令泛化到结构迥异项目（第6.4节）的前提。")
add(N, "4.6 候选生成算法")
add(B, "算法 1 给出了符号候选生成的主流程。各层对候选削减与召回的影响在 6.3 节以逐层消融量化：默认分析流程（仅可判定安全模型）在全量 ARVO 上将候选削减 19% 而召回保持 72%，而 4.3 节的路径边界检查启发式因误伤召回不纳入默认分析流程。")
alg([
    "算法 1. 符号候选生成（计算 C(f)）",
    "输入：函数 f 的 LLVM IR；",
    "输出：候选集 C(f)。",
    "① G_f ← 构造 f 的稀疏值流图；",
    "② T ← 从污点源沿 def-use 边前向传播；            /*污点源见 4.5 节*/",
    "③ B ← 识别 clamp/min/掩码产生的已界定值；        /*见 4.1 节*/",
    "④ C ← ∅；",
    "⑤ for each s = (d, r, n) ∈ Sink(f) do",
    "⑥ 　if (s 的某尺寸或指针操作数 ∈ T\\B) ∧ ¬Safe(s) then   /*定义 2；Safe 由 4.2、4.4 节判定*/",
    "⑦ 　　C ← C ∪ { s 及其符号证据 }；",
    "⑧ return C",
])

# ===== 5 神经候选判别层 =====
add(H, "5 神经候选判别层")
add(N, "5.1 提示构造与判别规则")
add(B, "神经层旨在不破坏候选集健全性的前提下，剔除安全性依赖于符号模型无法表达的边界检查的误报。为此，本文采用“仅过滤（reject-only）”的判别机制，即 LLM 仅负责过滤已有候选、而不生成新的漏洞候选。对每个候选，提示（prompt）由三部分组成：(i) 符号分析结果，即被标记的操作数、尺寸表达式，以及符号分析得到的已知约束（该操作数来源于输入，且未被钳制、非纯常量、非分配即使用）；(ii) 候选所在函数的完整源码上下文；(iii) 判定规则。判定规则要求 LLM 的核心任务是判断到达该访问的路径上是否存在一处能够保证该访问安全的边界检查（普通 if 判断或 ND_TCHECK/CHECK_* 等 longjmp/goto 边界宏均可）；仅当能指出具体且充分的边界检查（给出对应代码位置及其保护的访问对象）时才判定为非漏洞，否则保留该候选。判定结果连同被指认的边界检查同时输出，使每次判定均可追溯并进行人工验证。")
add(B, "该判别机制仅对已有候选执行过滤、不引入任何新候选，因而近似保持候选集的健全性：由于每次过滤都必须落实到一处具体边界检查，从机制上避免了幻觉式的“无据认定安全”（但仍无法保证严格健全性，见 6.4 节实测的偶发误删）。")
add(N, "5.2 提示策略的召回—精度权衡")
add(B, "提示策略对最终效果具有决定性影响。本文对比两种判别取向：激进取向采用朴素的“这是真实漏洞吗、请保守判断”式提示，倾向于把“未观察到明显风险”当作“安全”，从而过度剔除缺乏显式边界检查但确实可达的真实漏洞；召回优先取向采用“默认保留、仅当能指出具体边界检查时才过滤”的提示，在较低真实漏洞损失下减少部分误报。两种取向作用于同一候选集，其端到端差异在第 6.4 节量化（表 2）。")

# ===== 6 实验评估 =====
add(H, "6 实验评估")
add(B, "实验围绕四个研究问题展开。RQ1：符号候选生成模块在带标注真实漏洞上的函数级召回如何？RQ2：符号层各建模环节对候选精度的贡献如何？RQ3：作为判别层的 LLM，其判别规则、边界检查习语知识与符号证据分别起什么作用，纯 LLM 能否替代符号层独立检测？RQ4：方法能否泛化到结构迥异的真实项目并检测出真实漏洞？其中 RQ1 与 RQ2 刻画符号层“高召回”的定位及各层的召回—精度权衡（对应贡献2），RQ3 量化神经层的实际收益（对应贡献1与贡献3），RQ4 检验方法的泛化性（对应贡献3）。")
add(N, "6.1 数据集、角色与评测协议")
add(B, "本文的评估以一个主基准为中心，辅以一个精度参照集与两个案例项目，各自角色明确、互不混用（见表 1）。这一分工有其方法学必然：函数级召回可在 ARVO 的崩溃函数真值上大规模度量，但候选精度需要对每个候选逐一判真伪，而 ARVO 只标注崩溃函数、不标注其余候选（其中可能含未标注的真实漏洞），故精度与逐层消融只能在经逐条人工核实的受控参照集（libarchive v3.1.2）上度量；边界检查习语机制与范围边界则以案例项目呈现。全部神经层的实际效果（RQ3，包括判别取向对比与纯 LLM 基线）均在同一主基准 ARVO 的可评测缺陷集上度量，不再使用任何随意子集。")
add(N, "表 1  数据集及其在各 RQ 中的角色")
tbl(["数据集", "角色", "用于"], [
    ["ARVO（88 个 C 项目 / 46 可评测缺陷）", "主基准（带真值、规模化）", "RQ1 召回；RQ3 判别取向、边界检查证据消融、纯 LLM 基线"],
    ["libarchive v3.1.2（8 处人工核实真实漏洞）", "精度参照（逐候选可判真伪）", "RQ2 逐层消融"],
    ["tcpdump 4.9.2 / libxml2 v2.9.4", "案例研究", "RQ3 边界检查习语机制；RQ4 泛化与范围边界"],
])
add(B, "评估基准。召回评估采用 ARVO 可复现漏洞语料：与前向移植 CVE 的 Magma 相比，ARVO 直接复现历史真实漏洞的原始版本与触发输入，缺陷保持原生上下文，且每个缺陷携带 ASAN 崩溃报告。本文从 ARVO 中筛选属于本文内存操作点类别的缺陷（崩溃类型为堆/栈/全局缓冲区溢出、修复涉及 C/C++ 文件、且漏洞版本中存在 memcpy/memmove/memset 内存操作点），共得到 137 个项目 767 个库缺陷作为总体。检测器面向 C 语言，故进一步限定于以 C 文件为主的项目，覆盖其中全部 88 个此类 C 项目、共抽样 321 个缺陷开展函数级召回评估。抽样刻意覆盖从小型解析库（libspng、libmpeg2）到大型系统软件（imagemagick、ghostpdl、binutils、ffmpeg、mupdf）的多样结构，以在尽可能大的样本上检验召回度量的稳健性。")
add(B, "评估协议。以 ASAN 崩溃栈栈顶的项目函数作为真值（跳过 libc/ASAN 内建帧）。不以补丁 diff 猜测缺陷位置：预实验中以 diff 定位曾将真实命中误判为漏报。对每个缺陷：检出漏洞版本，将崩溃函数所在编译单元编译为 -O0 加 mem2reg 的 LLVM IR，运行符号候选生成模块；候选落在崩溃函数内记为命中，否则记为漏报；崩溃函数不含变量尺寸内存操作（越界发生在逐字节解码或常量访问处，属字节级/字符串类而非本文 memcpy 类）记为超出范围并排除出分母；无法编译者记为构建失败。本文不采用“同文件不同函数也算命中”的宽松口径，因为该口径会因单文件内多个 memcpy 的巧合匹配将召回虚增至无意义的水平。")
add(B, "实现与配置。符号层基于 LLVM 实现，SMT 求解使用 Z3。对无法在宿主机直接编译的项目，采用基于 ARVO 复现镜像与 wllvm 的容器化 IR 提取路线：以强制 -O0 -g 的编译器包装器执行项目自身的构建系统，从各编译单元伴随的 bitcode 中提取崩溃函数所在模块，保证分析所用 IR 与项目真实构建配置（头文件、宏定义）一致。神经候选判别层以 gemini-2.5-flash（未开启思考模式）为主力判别模型，gemini-2.5-pro 用于复核；所有对比实验作用于同一候选集以保证可比性。文中全部精度与真实性数字均经逐条人工判定（对照被测版本源码与上游修复提交），而非仅凭关键词匹配 git 历史。")
add(N, "6.2 RQ1：符号召回")
add(B, "在抽样的 321 个缺陷中，129 个（40%）在自动化构建下成功编译为可分析 IR；其余因需要项目完整构建系统或依赖缺失而计为构建失败，不计入召回分母（大型项目如 ghostpdl、ffmpeg、binutils、hdf5、wireshark 的宿主机单元编译多因此失败，容器化完整构建可恢复但成本以小时计）。在 129 个已构建缺陷中，64 个的崩溃函数不含变量尺寸内存操作、属字节级/字符串类而超出本文的内存操作点类别，19 个的崩溃函数不在可编译的编译单元内，二者依协议排除；其余 46 个为可评测缺陷。本文默认分析流程（其符号层仅经 clamp/字段敏感/SMT 等可判定安全模型过滤候选，不含 4.3 节的路径边界检查启发式，理由见 6.3 节消融）在其上取得 33/46 = 72% 的函数级召回。")
add(B, "结果稳健性。将评估从初期 11 个项目扩展到全部 88 个 C 项目后，默认分析流程的召回稳定在 72%、命中覆盖 21 个项目（含 pcre2 的 4/4、大型系统软件 imagemagick 的 3/3 与 mupdf），说明该水平并非少数项目所主导。被排除的 64 例字节级/字符串类越界（如 lcms、md4c 的逐字节解码）定量印证：本文的内存操作点模型恰好切分了真实越界缺陷中约一半，也界定了第 8 节的扩展方向。")
add(B, "漏报诊断。逐例重放 13 个漏报的判定路径，可归为两类：污点未到达（攻击数据经项目特定 I/O 输出指针或全局变量进入，未被污点源覆盖，已由 4.5 节通用输入模型部分修复）；被 clamp/SMT 判定为安全而排除，人工核实多为基准归因噪声（如 htslib 的 MD5 分块写恒被钳制到 64 字节块内，真实越界实为调用方的标量读）。诊断表明其余漏报多为归因噪声或超出 memcpy 类的标量指针读，72% 已接近该类内存操作的召回上限，进一步提升需扩展内存操作点模型（第 8 节）。")
add(N, "6.3 RQ2：符号层消融")
add(B, "消融度量两个量：总候选数与真实漏洞召回保留。二者均可由 ARVO 崩溃函数真值直接度量、无需逐候选标注，故在 ARVO 全部 46 个可评测缺陷上逐层开启第 4 节的各建模环节，结果见图 2。候选精度需逐候选判真伪，只能在人工核实的 libarchive 参照集上度量，作为对照另述。")
img("fig2_ablation.png", 8.5)
add(N, "图 2  逐层消融各配置的候选削减率与因过滤误删的真实漏洞数（ARVO 全部 46 个可评测缺陷）")
add(B, "图 2 给出各配置的候选削减率与因过滤误删的真实漏洞数。本文默认分析流程仅用可判定的安全模型（clamp、字段敏感分配即使用、SMT 尺寸与容量证明、数组内搬移）过滤候选，将候选削减 19%（936→758），且经 6.2 节逐例核实未因过滤误删真实漏洞：被排除者要么被证明安全，要么属基准归因噪声（其余漏报为污点未到达，与过滤无关），并非过度抑制。图中最右的对照配置揭示了本文为何不采用 4.3 节的路径边界检查启发式：它虽把候选再削减约 8%，却因是相关性启发式（非 SMT 证明）而误删 4 个真实漏洞（openexr、opensc decode_bit_string、libdwarf、libpsl），召回随之由 72% 降至 63%。可见默认分析流程是“在不误删真实漏洞的前提下候选削减最多”的配置，这也是本文把边界检查充分性判断交由神经层（而非在符号层以启发式强行完成）的实证依据。")
add(B, "候选精度（对照）。候选精度需逐候选判真伪，只能在逐条人工核实的 libarchive v3.1.2 参照集（15 个格式解析器、含 8 处对应具名上游修复的真实越界）上度量：其上可判定安全模型将候选精度由基线的约 9% 逐层提升，且未丢失其 8 个真实漏洞。默认分析流程为保召回不含边界检查启发式，故其符号层精度低于加边界检查时（该参照集上边界检查可把精度进一步推高但会误伤召回），剩余精度改由神经层补足（6.4 节）。")
add(N, "6.4 RQ3：神经候选判别层的作用")
add(B, "判别规则与提示策略。在 ARVO 全部 46 个可评测缺陷上（符号候选相同、仅判别提示不同，以“非崩溃函数的候选”近似为误报），对比两种判别取向，结果见表 2。")
add(N, "表 2  两种 LLM 判别取向的对比（ARVO 全部 46 个可评测缺陷）")
tbl(["判别取向", "端到端召回", "真实漏洞丢失", "误报削减率"], [
    ["召回优先", "30/46（65%）", "3/33", "19%"],
    ["激进", "6/46（13%）", "27/33", "97%"],
])
add(B, "表 2 对比了两种判别取向：召回优先提示在低真实漏洞损失下（33 个命中中误删 3 个）安全削减约 19% 误报；激进提示虽削减 97% 误报，却把端到端召回由 72% 降至 13%（丢弃 27/33 真实漏洞）。结果表明，本文所用判别模型仅能可靠过滤“明确有边界检查”的一部分候选，进一步追求更高削减率便以牺牲真实漏洞为代价。相比含边界检查启发式的旧分析流程（其 LLM 仅能安全削减约 9% 误报），去除符号层的边界检查启发式后 LLM 的安全削减率提升近一倍至 19%：符号层不再代行边界检查判定，本该由神经层识别的“已被边界检查覆盖”候选如今悉数交由 LLM 处理，分工更清晰。此外，召回优先提示也非完全健全，它偶尔（33 个中 3 个）因误判边界检查而删掉真实漏洞，说明神经层的健全性只是近似的。需说明 19% 是安全削减率的下界：被计为误报的非崩溃函数候选可能含 ARVO 未标注的真实漏洞，且判别模型为轻量的 gemini-2.5-flash。")
add(B, "边界检查习语知识的价值。tcpdump 以 ND_TCHECK/ND_TTEST 等 longjmp 宏做边界防护，符号层无法建模（3.2 节示例1），在 145 个协议打印器文件上生成 53 个候选。对比判别提示是否告知该边界检查习语：不告知时神经层判定 4 处为漏洞、仅 1 处为真（判别精度 25%）；告知后过滤掉全部 3 个已被 ND_TCHECK 保护的误报（逐一经源码核实）、仅将真 CVE-2017-13008 判定为漏洞并保留（判别精度 100%）。这是“模型外的边界检查由神经层承担”机制的直接量化。")
add(B, "为检验神经层能否脱离符号证据独立工作，在 libarchive v3.1.2 的 90 个内存操作点上对比两种 LLM 直判提示：携带符号证据（分析已证明尺寸/指针为来源于输入且未界定）与通用提问（“此处是否越界？”）。二者各报告 11 处、重叠 7 处。通用提问独有的 4 处中 3 处为确定误报（sizeof 常量尺寸的结构体清零、已被 if 边界检查覆盖的写入）；而符号引导独有的 4 处中包含 RAR FHD_LARGE 头部与 iso9660 Joliet 路径两处经修复提交证实的真实漏洞：其拷贝尺寸为常量、危险在于输入界定的源指针，恰是符号证据点名的形态，通用提问将其漏过。可见符号证据同时削减误报并把召回聚焦到真实的值流违反上：神经层不是可独立工作的检测器，这一对照从反面支撑了本文的分工设计。")
add(B, "纯 LLM 基线：为在整个基准上量化符号层的必要性，本文构造一个纯 LLM 检测器：对每个可评测缺陷，抽取其崩溃函数的 C 源码，在不提供任何符号证据（污点、SMT）的前提下让同一 gemini-2.5-flash 直接判断该函数是否含可被畸形输入触发的越界，命中口径与符号层的函数级召回一致。在源码成功抽取的 38 个缺陷上（结果见表 3），纯 LLM 的函数级召回为 19/38（50%），低于符号层在同一 38 个函数上的 25/38（66%）；其中 9 个被符号层命中的真实漏洞（如 libspng 的 spng_decode_image、pcre2 的 match、libarchive 的 circular_memcpy）被纯 LLM 漏报。更关键的是其判别力：以每个缺陷所在文件的一个非崩溃兄弟函数为对照，纯 LLM 对崩溃函数的告警率为 47%，而对非崩溃函数的告警率反而为 53%，二者几乎无差异，说明纯 LLM 近乎无差别地对约半数函数报警，其 50% 的“召回”并非检测而是接近随机的标注。这在整个基准的规模上印证了本节前述 libarchive 站点级消融的结论：高召回的符号候选集提供了判别力，本文所用 LLM 仅适合作为其上的过滤精化层，而非可独立工作的检测器。")
add(N, "表 3  纯 LLM 基线与符号层对比（同一 38 个可评测崩溃函数）")
tbl(["方法", "崩溃函数召回", "非崩溃函数告警率"], [
    ["符号层", "25/38（66%）", "—"],
    ["纯 LLM", "19/38（50%）", "17/32（53%）"],
])
add(N, "6.5 RQ4：泛化性与真实漏洞发现")
add(B, "以同一条命令的分析流程（仅文件通配与编译选项不同）在三个结构迥异的真实项目上端到端运行，所报候选逐条对照被测版本源码与 git 历史人工判定，汇总见表 4。")
add(N, "表 4  端到端泛化评估（每项目一条命令）")
tbl(["项目", "版本", "符号候选", "LLM 判别", "真实", "精度"], [
    ["libarchive", "v3.1.2", "20", "12", "8", "67%"],
    ["tcpdump", "4.9.2", "53", "1", "1", "100%"],
    ["libxml2", "v2.9.4", "37", "0", "0", "—"],
])
add(B, "案例1（libarchive）. 8 处真实越界均对应具名上游修复：zip 元数据越界（CVE-2016-1541，zip_read_mac_metadata）、RAR FHD_LARGE 头部越界读（修复 99f74bd3）、iso9660 Joliet 路径溢出（修复 750e8d7b）、RAR LZSS 窗口越界写（加固 eac15e25）与 7zip 目录解码溢出等。这些缺陷分布于不同格式解析器，输入经结构体字段与读取辅助函数间接传递，说明了字段敏感建模与通用输入模型在真实解析器结构上的必要性。")
add(B, "案例2（tcpdump）. 方法在从未调优过的代码库上自动检测到具名 CVE：parse_elements 中 IEEE 802.11 TIM 位图拷贝越界，即 CVE-2017-13008（修复 5edf405d）。结合 6.4 节的边界检查习语实验，该项目完整演示了分工机制：符号层与代码库无关，以过度告警换取高召回；神经层注入项目特定边界检查习语完成精度提升。")
add(B, "案例3（libxml2，范围边界）. 该项目 2.9.4 时期的内存安全缺陷集中于字符串构建器（如 xmlStrncat 堆溢出）与分词器逐字符越读（如 xmlFAParsePosCharGroup 越读），均不落在本文的内建内存操作点类别内；分析流程生成的 37 个候选全部为缓冲增长/GROW 边界检查保护的安全拷贝，神经层全部正确过滤，最终 0 报告、0 误报。该负例说明了适用范围：本文的召回声明始终相对于内存操作点模型而言，其外的缺陷类需扩展内存操作点类别（第 8 节），而非推翻框架。上述三个案例项目仅用于展示机制与适用范围，其定量结论不并入主基准的召回统计。")
add(N, "6.6 效率与开销")
add(B, "符号层的 SMT 求解按需触发、限于候选相关的边界检查与表达式，未构成瓶颈；主要成本在于把真实项目编译为可分析 IR：容器化提取对中型项目单缺陷约需 3~5 分钟，超大型项目（ghostpdl、ImageMagick 等）需 15~30 分钟。")
add(B, "神经层的开销可精确核算：对每个候选、每种判别取向各发起一次 LLM 调用，提示由固定判定规则、该候选的符号证据与以候选为中心的约 125 行源码窗口组成，单次提示在千词元量级。ARVO 主实验（46 个可评测缺陷、504 个待判别候选）中两种取向共发起 1008 次调用；在项目仓库缓存就绪的条件下，包含编译、符号分析与全部判别调用的完整评测墙钟约 51 分钟（平均每缺陷约 67 秒），单次判别调用延迟为秒级。判别模型为轻量 gemini-2.5-flash（未开启思考模式），按其公开牌价折算，全部判别调用的费用在 1 美元量级，相对人工逐条审计误报的成本可忽略；端到端案例项目（表 4，每候选一次调用）的调用规模更小。该模型输出的非确定性是分析流程波动的主要来源。可见把评估分母扩至数百例的瓶颈在项目构建而非 LLM 调用，是以天计的后台任务，本文报告当前规模并将扩量列为未来工作。")

# ===== 7 有效性威胁 =====
add(H, "7 有效性威胁")
add(B, "内部有效性：符号层默认只用可判定的安全模型过滤候选，其 clamp/SMT 判定偶有误差；6.3 节的全面消融实验量化了各层的召回代价，并据此把误伤召回的路径边界检查启发式排除在默认分析流程之外。LLM 输出存在非确定性（gemini-2.5-flash 尤甚），实验采用固定提示，所有对比在同一候选集上进行以保证可比性；全部真实性判定均由人工对照源码与修复提交完成，不依赖模型自述。")
add(B, "外部有效性：评估限于 C 语言、memcpy 类越界，且可评测缺陷规模为数十例，这既受目标内存操作点类别在真实漏洞中占比偏小的制约（ARVO 越界缺陷中约半数属字节级/字符串类），也受构建系统多样性对自动编译的制约。将本方法扩展到字符串构建器与逐字节解码等内存操作点类别，是提升覆盖面的直接方向。")

# ===== 8 结论 =====
add(H, "8 结论")
add(B, "本文研究了一种神经符号越界漏洞检测方法：高召回的符号值流分析生成过近似的候选集，判别层剔除安全性依赖模型外的边界检查的误报而绝不虚构漏洞，二者按“符号模型能否表达该边界检查”分工。在覆盖全部 88 个 C 项目的 ARVO 评估中，默认分析流程的符号层取得 72% 的函数级召回；全面消融实验表明：一个直接的路径边界检查相关性启发式会误删 4 个真实漏洞（召回 72%→63%），故被排除在默认分析流程之外，边界检查充分性整体交由神经层，这使符号层保持高召回、分工更清晰（神经层的安全误报削减也随之由 9% 提升至 19%）。端到端分析流程以一条命令泛化到 libarchive 与 tcpdump 并检测到具名 CVE。实验同时表明，判别层在低真实漏洞损失下只能安全削减约 19% 误报，进一步追求更高削减即以端到端召回从 72% 降至 13% 为代价。在本文的实验设置下，神经判断是对符号推理的、召回安全但作用有限的补充。")
add(B, "未来工作包括三个方向：其一，扩展内存操作点模型至字符串构建器与逐字节解码类访问以覆盖 ARVO 中另一半越界缺陷，并借助容器化构建将可评测缺陷规模扩展至数百例；其二，在判别层引入更强的推理模型，度量其能否在不损失召回的前提下提高安全削减率；其三，将本文的神经符号分工思想推广到其他漏洞类别（如释放后使用、整数溢出），检验该框架的一般性。")

# ===== 参考文献（按正文首次引用顺序自动编号） =====
CITE_TOKEN = re.compile(r"\[c:([a-z0-9,]+)\]")
order = []
for item in BODY:
    if item[0] != "P":
        continue
    for m in CITE_TOKEN.finditer(item[2]):
        for k in m.group(1).split(","):
            if k not in order:
                order.append(k)
unknown = [k for k in order if k not in REFS]
assert not unknown, f"undefined citation keys: {unknown}"
num = {k: i for i, k in enumerate(order, 1)}

def fmt_group(keys):
    ns = sorted(num[k] for k in keys.split(","))
    segs, i = [], 0
    while i < len(ns):
        j = i
        while j + 1 < len(ns) and ns[j + 1] == ns[j] + 1:
            j += 1
        segs.append(str(ns[i]) if i == j else f"{ns[i]}-{ns[j]}")
        i = j + 1
    return "[" + ",".join(segs) + "]"

BODY = [("P", it[1], CITE_TOKEN.sub(lambda m: fmt_group(m.group(1)), it[2]))
        if it[0] == "P" else it for it in BODY]

add(N, "参 考 文 献")
for k in order:
    main, en = REFS[k]
    add(N, f"[{num[k]}] {main}")
    if en:
        add(N, en)
add(N, "作者贡献声明：李凯旋负责方法设计、系统实现与论文撰写；刘杨、陈仪香提出指导意见并修改论文。")

# ---- 5. render ----
CITE_RE = re.compile(r"\[\d+(?:-\d+)?(?:,\s?\d+(?:-\d+)?)*\]")

def add_body_paragraph(style, text):
    p = d.add_paragraph(style=style)
    if style == B:  # 正文中的 [n]/[n-m] 引用标记排为上标
        pos = 0
        for m in CITE_RE.finditer(text):
            if m.start() > pos:
                p.add_run(text[pos:m.start()])
            cite = p.add_run(m.group())
            cite.font.superscript = True
            pos = m.end()
        if pos < len(text):
            p.add_run(text[pos:])
    else:
        p.add_run(text)
    return p

def _edge(tag, val, sz):
    e = OxmlElement("w:" + tag)
    e.set(qn("w:val"), val)
    e.set(qn("w:sz"), str(sz))
    e.set(qn("w:space"), "0")
    e.set(qn("w:color"), "000000")
    return e

def three_line(t):
    """三线表：仅表首粗线、表头下细线、表末粗线，无竖线、无内部横线。"""
    t.style = None
    tblPr = t._tbl.tblPr
    old = tblPr.find(qn("w:tblBorders"))
    if old is not None:
        tblPr.remove(old)
    borders = OxmlElement("w:tblBorders")
    borders.append(_edge("top", "single", 12))
    borders.append(_edge("bottom", "single", 12))
    for tag in ("left", "right", "insideH", "insideV"):
        borders.append(_edge(tag, "none", 0))
    tblPr.append(borders)
    for cell in t.rows[0].cells:            # 表头下细线
        tcPr = cell._tc.get_or_add_tcPr()
        prev = tcPr.find(qn("w:tcBorders"))
        if prev is not None:
            tcPr.remove(prev)
        tcB = OxmlElement("w:tcBorders")
        tcB.append(_edge("bottom", "single", 6))
        tcPr.append(tcB)

def par_rule(p, side):
    """在段落上加一条 top 或 bottom 横线（用于算法块的上下界线）。"""
    pPr = p._p.get_or_add_pPr()
    pBdr = pPr.find(qn("w:pBdr"))
    if pBdr is None:
        pBdr = OxmlElement("w:pBdr")
        pPr.append(pBdr)
    pBdr.append(_edge(side, "single", 8))

for item in BODY:
    if item[0] == "P":
        add_body_paragraph(item[1], item[2])
    elif item[0] == "ALG":
        lines = item[1]
        for k, ln in enumerate(lines):
            p = d.add_paragraph(style=N)
            pf = p.paragraph_format
            pf.space_before = Pt(2) if k == 0 else Pt(0)
            pf.space_after = Pt(2) if k == len(lines) - 1 else Pt(0)
            p.add_run(ln)
            if k == 0:
                par_rule(p, "top")
            if k == len(lines) - 1:
                par_rule(p, "bottom")
    elif item[0] == "IMG":
        _, path, width_cm = item
        p = d.add_paragraph(style=N)
        p.alignment = WD_PARAGRAPH_ALIGNMENT.CENTER
        try:
            p.add_run().add_picture(path, width=Cm(float(width_cm)))
        except Exception as e:
            p.add_run(f"（图片 {path} 插入失败：{e}）")
    elif item[0] == "TBL":
        header, rows = item[1], item[2]
        t = d.add_table(rows=1 + len(rows), cols=len(header))
        t.alignment = WD_TABLE_ALIGNMENT.CENTER
        for j, h in enumerate(header):
            t.rows[0].cells[j].text = h
        for i, row in enumerate(rows, 1):
            for j, v in enumerate(row):
                t.rows[i].cells[j].text = v
        three_line(t)

d.save(OUT)

# ---- 6. 清除模板里的占位脚注（footer 中的“此处为脚注”），本文不使用脚注 ----
def strip_placeholder_footer(path):
    import zipfile, shutil
    tmp = path + ".tmp"
    zin = zipfile.ZipFile(path, "r")
    zout = zipfile.ZipFile(tmp, "w", zipfile.ZIP_DEFLATED)
    for it in zin.infolist():
        data = zin.read(it.filename)
        if it.filename.startswith("word/footer") and it.filename.endswith(".xml"):
            txt = data.decode("utf-8")
            if "此处为脚注" in txt:
                txt = re.sub(r"(<w:t[^>]*>)[^<]*(</w:t>)", r"\1\2", txt)  # 清空该 footer 全部可见文字
                data = txt.encode("utf-8")
        zout.writestr(it, data)
    zin.close(); zout.close(); shutil.move(tmp, path)
strip_placeholder_footer(OUT)
n_paras = sum(1 for it in BODY if it[0] == "P")
print("saved:", OUT, " body paragraphs:", n_paras, " refs:", len(order))
