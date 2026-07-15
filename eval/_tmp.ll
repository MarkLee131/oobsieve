; ModuleID = '/home/likaixuan/static_analysis/linux-spec-sast/patchintent/eval/_tmp.ll.o0.ll'
source_filename = "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_read_support_format_rar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.IPpmd7 = type { void (%struct.CPpmd7*)*, i32 (%struct.CPpmd7*, i32, %struct.ISzAlloc*)*, void (%struct.CPpmd7*, %struct.ISzAlloc*)*, void (%struct.CPpmd7*, i32)*, void (%struct.CPpmd7z_RangeDec*)*, void (%struct.CPpmd7z_RangeDec*)*, i32 (%struct.CPpmd7z_RangeDec*)*, i32 (%struct.CPpmd7z_RangeDec*)*, i32 (%struct.CPpmd7*, %struct.IPpmd7_RangeDec*)*, void (%struct.CPpmd7z_RangeEnc*)*, void (%struct.CPpmd7z_RangeEnc*)*, void (%struct.CPpmd7*, %struct.CPpmd7z_RangeEnc*, i32)* }
%struct.CPpmd7 = type { %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_*, %struct.CPpmd_State*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, [38 x i8], [128 x i8], [38 x i32], [256 x i8], [256 x i8], [256 x i8], %struct.CPpmd_See, [25 x [16 x %struct.CPpmd_See]], [128 x [64 x i16]] }
%struct.CPpmd7_Context_ = type { i16, i16, i32, i32 }
%struct.CPpmd_State = type { i8, i8, i16, i16 }
%struct.CPpmd_See = type { i16, i8, i8 }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct.CPpmd7z_RangeDec = type { %struct.IPpmd7_RangeDec, i32, i32, i32, i32, %struct.IByteIn* }
%struct.IPpmd7_RangeDec = type { i32 (i8*, i32)*, void (i8*, i32, i32)*, i32 (i8*, i32)* }
%struct.IByteIn = type { %struct.archive_read*, i8 (i8*)* }
%struct.archive_read = type { %struct.archive, %struct.archive_entry*, i32, i64, i64, i8*, i64, i64, i64, i8, i64, %struct.archive_read_client, [14 x %struct.archive_read_filter_bidder], %struct.archive_read_filter*, i32, i64, i32, i32, [16 x %struct.archive_format_descriptor], %struct.archive_format_descriptor*, %struct.extract*, i32 (%struct.archive_read*)* }
%struct.archive = type { i32, i32, %struct.archive_vtable*, i32, i8*, i32, i8*, i32, i32, i8*, %struct.archive_string, i8*, i32, i32, %struct.archive_string_conv* }
%struct.archive_vtable = type { {}*, {}*, i32 (%struct.archive*, %struct.archive_entry*)*, {}*, i64 (%struct.archive*, i8*, i64)*, i64 (%struct.archive*, i8*, i64, i64)*, i32 (%struct.archive*, %struct.archive_entry**)*, i32 (%struct.archive*, %struct.archive_entry*)*, i32 (%struct.archive*, i8**, i64*, i64*)*, {}*, i64 (%struct.archive*, i32)*, i32 (%struct.archive*, i32)*, i8* (%struct.archive*, i32)* }
%struct.archive_string = type { i8*, i64, i64 }
%struct.archive_string_conv = type opaque
%struct.archive_entry = type opaque
%struct.archive_read_client = type { i32 (%struct.archive*, i8*)*, i64 (%struct.archive*, i8*, i8**)*, i64 (%struct.archive*, i8*, i64)*, i64 (%struct.archive*, i8*, i64, i32)*, i32 (%struct.archive*, i8*)*, i32 (%struct.archive*, i8*, i8*)*, i32, i32, i64, %struct.archive_read_data_node* }
%struct.archive_read_data_node = type { i64, i64, i8* }
%struct.archive_read_filter_bidder = type { i8*, i8*, i32 (%struct.archive_read_filter_bidder*, %struct.archive_read_filter*)*, i32 (%struct.archive_read_filter*)*, i32 (%struct.archive_read_filter_bidder*, i8*, i8*)*, i32 (%struct.archive_read_filter_bidder*)* }
%struct.archive_read_filter = type { i64, %struct.archive_read_filter_bidder*, %struct.archive_read_filter*, %struct.archive_read*, i32 (%struct.archive_read_filter*)*, i64 (%struct.archive_read_filter*, i8**)*, i64 (%struct.archive_read_filter*, i64)*, i64 (%struct.archive_read_filter*, i64, i32)*, i32 (%struct.archive_read_filter*)*, i32 (%struct.archive_read_filter*, i32)*, i8*, i8*, i32, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8, i8, i8 }
%struct.archive_format_descriptor = type { i8*, i8*, i32 (%struct.archive_read*, i32)*, i32 (%struct.archive_read*, i8*, i8*)*, i32 (%struct.archive_read*, %struct.archive_entry*)*, i32 (%struct.archive_read*, i8**, i64*, i64*)*, i32 (%struct.archive_read*)*, i64 (%struct.archive_read*, i64, i32)*, i32 (%struct.archive_read*)* }
%struct.extract = type opaque
%struct.CPpmd7z_RangeEnc = type { i64, i32, i8, i64, %struct.IByteOut* }
%struct.IByteOut = type { %struct.archive_write*, void (i8*, i8)* }
%struct.archive_write = type opaque
%struct.rar = type { i32, i64, [2 x i8], [4 x i8], i8, i8, i32, i64, i64, i64, i64, i32, i8*, i8*, i64, [8 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i32, i32, i8*, i32, i8, i8, i64, i32, i8, %struct.data_block_offsets*, i32, i32, %struct.huffman_code, %struct.huffman_code, %struct.huffman_code, %struct.huffman_code, [404 x i8], %struct.lzss, i8, i32, i32, [4 x i32], i32, i32, i64, i8, i8, i8, i8, i32, %struct.CPpmd7, %struct.CPpmd7z_RangeDec, %struct.IByteIn, i32, %struct.archive_string_conv*, %struct.archive_string_conv*, %struct.archive_string_conv*, %struct.archive_string_conv*, %struct.rar_br }
%struct.data_block_offsets = type { i64, i64, i64 }
%struct.huffman_code = type { %struct.huffman_tree_node*, i32, i32, i32, i32, %struct.huffman_table_entry* }
%struct.huffman_tree_node = type { [2 x i32] }
%struct.huffman_table_entry = type { i32, i32 }
%struct.lzss = type { i8*, i32, i64 }
%struct.rar_br = type { i64, i32, i64, i8* }
%struct.rar_header = type { [2 x i8], i8, [2 x i8], [2 x i8] }
%struct.rar_file_header = type { [4 x i8], [4 x i8], i8, [4 x i8], [4 x i8], i8, i8, [2 x i8], [4 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [32 x i8] c"archive_read_support_format_rar\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't allocate rar data\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rar\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Rar!\1A\07\00\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"hdrcharset\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"rar: hdrcharset option needs a character-set name\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"RAR\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Invalid marker header\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Invalid header size\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"RAR encryption support unavailable.\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Header CRC error\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Bad RAR file\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Couldn't find out RAR header\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"RAR solid archive support unavailable.\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Invalid sizes specified.\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Invalid filename size\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Couldn't allocate memory.\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Invalid filename\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\00\\\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"Unknown file attributes from RAR file's host OS\00", align 1
@__archive_ppmd7_functions = external constant %struct.IPpmd7, align 8
@g_szalloc = internal global %struct.ISzAlloc { i8* (i8*, i64)* @ppmd_alloc, void (i8*, i8*)* @ppmd_free }, align 8, !dbg !0
@.str.24 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Pathname\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"Pathname cannot be converted from %s to current locale.\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Can't allocate memory for link\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"link cannot be converted from %s to current locale.\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"Unsupported compression method for RAR file.\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"File CRC error\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"Truncated RAR file data\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Invalid symbol\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Parsing filters is unsupported.\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"Internal error extracting RAR file\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"Unable to allocate memory for uncompressed data.\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"Bad RAR file data\00", align 1
@cache_masks = internal constant [36 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647, i32 -1, i32 -1, i32 -1, i32 -1], align 16, !dbg !512
@.str.36 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"Unable to initialize PPMd range decoder\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"Invalid PPMd sequence\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"Internal error extracting RAR file.\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"Unable to allocate memory for node data.\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"Invalid repeat position\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"Prefix found\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"Invalid repeating code\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"Invalid prefix code in bitstream\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"Huffman tree was not created.\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"Invalid location to Huffman tree specified.\00", align 1
@expand.lengthbases = internal constant [28 x i8] c"\00\01\02\03\04\05\06\07\08\0A\0C\0E\10\14\18\1C (08@P`p\80\A0\C0\E0", align 16, !dbg !518
@expand.lengthbits = internal constant [28 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\02\02\02\02\03\03\03\03\04\04\04\04\05\05\05\05", align 16, !dbg !527
@expand.offsetbases = internal constant [60 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384, i32 24576, i32 32768, i32 49152, i32 65536, i32 98304, i32 131072, i32 196608, i32 262144, i32 327680, i32 393216, i32 458752, i32 524288, i32 589824, i32 655360, i32 720896, i32 786432, i32 851968, i32 917504, i32 983040, i32 1048576, i32 1310720, i32 1572864, i32 1835008, i32 2097152, i32 2359296, i32 2621440, i32 2883584, i32 3145728, i32 3407872, i32 3670016, i32 3932160], align 16, !dbg !529
@expand.offsetbits = internal constant [60 x i8] c"\00\00\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\10\10\10\10\10\10\10\10\10\10\10\10\12\12\12\12\12\12\12\12\12\12\12\12", align 16, !dbg !535
@expand.shortbases = internal constant [8 x i8] c"\00\04\08\10 @\80\C0", align 1, !dbg !538
@expand.shortbits = internal constant [8 x i8] c"\02\02\03\04\05\06\06\06", align 1, !dbg !541
@.str.47 = private unnamed_addr constant [49 x i8] c"Attempt to seek past beginning of RAR data block\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"Error during seek of RAR file\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"Seeking of compressed RAR files is unsupported\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @archive_read_support_format_rar(%struct.archive* noundef %0) #0 !dbg !562 {
  call void @llvm.dbg.value(metadata %struct.archive* %0, metadata !563, metadata !DIExpression()), !dbg !564
  %2 = bitcast %struct.archive* %0 to %struct.archive_read*, !dbg !565
  call void @llvm.dbg.value(metadata %struct.archive_read* %2, metadata !566, metadata !DIExpression()), !dbg !564
  br label %3, !dbg !567

3:                                                ; preds = %1
  %4 = call i32 @__archive_check_magic(%struct.archive* noundef %0, i32 noundef 14594245, i32 noundef 1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !568
  call void @llvm.dbg.value(metadata i32 %4, metadata !570, metadata !DIExpression()), !dbg !571
  %5 = icmp eq i32 %4, -30, !dbg !572
  br i1 %5, label %6, label %7, !dbg !568

6:                                                ; preds = %3
  br label %22, !dbg !572

7:                                                ; preds = %3
  br label %8, !dbg !568

8:                                                ; preds = %7
  %9 = call noalias i8* @malloc(i64 noundef 20200) #8, !dbg !574
  %10 = bitcast i8* %9 to %struct.rar*, !dbg !575
  call void @llvm.dbg.value(metadata %struct.rar* %10, metadata !576, metadata !DIExpression()), !dbg !564
  %11 = icmp eq %struct.rar* %10, null, !dbg !577
  br i1 %11, label %12, label %14, !dbg !579

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %2, i32 0, i32 0, !dbg !580
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %13, i32 noundef 12, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)), !dbg !582
  br label %22, !dbg !583

14:                                               ; preds = %8
  %15 = bitcast %struct.rar* %10 to i8*, !dbg !584
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 20200, i1 false), !dbg !584
  %16 = bitcast %struct.rar* %10 to i8*, !dbg !585
  %17 = call i32 @__archive_read_register_format(%struct.archive_read* noundef %2, i8* noundef %16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 (%struct.archive_read*, i32)* noundef @archive_read_format_rar_bid, i32 (%struct.archive_read*, i8*, i8*)* noundef @archive_read_format_rar_options, i32 (%struct.archive_read*, %struct.archive_entry*)* noundef @archive_read_format_rar_read_header, i32 (%struct.archive_read*, i8**, i64*, i64*)* noundef @archive_read_format_rar_read_data, i32 (%struct.archive_read*)* noundef @archive_read_format_rar_read_data_skip, i64 (%struct.archive_read*, i64, i32)* noundef @archive_read_format_rar_seek_data, i32 (%struct.archive_read*)* noundef @archive_read_format_rar_cleanup), !dbg !586
  call void @llvm.dbg.value(metadata i32 %17, metadata !587, metadata !DIExpression()), !dbg !564
  %18 = icmp ne i32 %17, 0, !dbg !588
  br i1 %18, label %19, label %21, !dbg !590

19:                                               ; preds = %14
  %20 = bitcast %struct.rar* %10 to i8*, !dbg !591
  call void @free(i8* noundef %20) #8, !dbg !592
  br label %21, !dbg !592

21:                                               ; preds = %19, %14
  br label %22, !dbg !593

22:                                               ; preds = %21, %12, %6
  %.0 = phi i32 [ -30, %6 ], [ -30, %12 ], [ %17, %21 ], !dbg !564
  ret i32 %.0, !dbg !594
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @__archive_check_magic(%struct.archive* noundef, i32 noundef, i32 noundef, i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @archive_set_error(%struct.archive* noundef, i32 noundef, i8* noundef, ...) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @__archive_read_register_format(%struct.archive_read* noundef, i8* noundef, i8* noundef, i32 (%struct.archive_read*, i32)* noundef, i32 (%struct.archive_read*, i8*, i8*)* noundef, i32 (%struct.archive_read*, %struct.archive_entry*)* noundef, i32 (%struct.archive_read*, i8**, i64*, i64*)* noundef, i32 (%struct.archive_read*)* noundef, i64 (%struct.archive_read*, i64, i32)* noundef, i32 (%struct.archive_read*)* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_rar_bid(%struct.archive_read* noundef %0, i32 noundef %1) #0 !dbg !595 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !596, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i32 %1, metadata !598, metadata !DIExpression()), !dbg !597
  %4 = icmp sgt i32 %1, 30, !dbg !599
  br i1 %4, label %5, label %6, !dbg !601

5:                                                ; preds = %2
  br label %59, !dbg !602

6:                                                ; preds = %2
  %7 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef 7, i64* noundef null), !dbg !603
  call void @llvm.dbg.value(metadata i8* %7, metadata !605, metadata !DIExpression()), !dbg !597
  %8 = icmp eq i8* %7, null, !dbg !606
  br i1 %8, label %9, label %10, !dbg !607

9:                                                ; preds = %6
  br label %59, !dbg !608

10:                                               ; preds = %6
  %11 = call i32 @memcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 noundef 7) #9, !dbg !609
  %12 = icmp eq i32 %11, 0, !dbg !611
  br i1 %12, label %13, label %14, !dbg !612

13:                                               ; preds = %10
  br label %59, !dbg !613

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !614
  %16 = load i8, i8* %15, align 1, !dbg !614
  %17 = sext i8 %16 to i32, !dbg !614
  %18 = icmp eq i32 %17, 77, !dbg !616
  br i1 %18, label %19, label %24, !dbg !617

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !618
  %21 = load i8, i8* %20, align 1, !dbg !618
  %22 = sext i8 %21 to i32, !dbg !618
  %23 = icmp eq i32 %22, 90, !dbg !619
  br i1 %23, label %27, label %24, !dbg !620

24:                                               ; preds = %19, %14
  %25 = call i32 @memcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef 4) #9, !dbg !621
  %26 = icmp eq i32 %25, 0, !dbg !622
  br i1 %26, label %27, label %58, !dbg !623

27:                                               ; preds = %24, %19
  call void @llvm.dbg.value(metadata i64 65536, metadata !624, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i64 4096, metadata !627, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.declare(metadata i64* %3, metadata !628, metadata !DIExpression()), !dbg !629
  br label %28, !dbg !630

28:                                               ; preds = %53, %39, %27
  %.02 = phi i64 [ 65536, %27 ], [ %.02, %39 ], [ %56, %53 ], !dbg !626
  %.01 = phi i64 [ 4096, %27 ], [ %36, %39 ], [ %.01, %53 ], !dbg !626
  call void @llvm.dbg.value(metadata i64 %.01, metadata !627, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i64 %.02, metadata !624, metadata !DIExpression()), !dbg !626
  %29 = add nsw i64 %.02, %.01, !dbg !631
  %30 = icmp sle i64 %29, 131072, !dbg !632
  br i1 %30, label %31, label %57, !dbg !630

31:                                               ; preds = %28
  %32 = add nsw i64 %.02, %.01, !dbg !633
  %33 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef %32, i64* noundef %3), !dbg !635
  call void @llvm.dbg.value(metadata i8* %33, metadata !636, metadata !DIExpression()), !dbg !637
  %34 = icmp eq i8* %33, null, !dbg !638
  br i1 %34, label %35, label %40, !dbg !640

35:                                               ; preds = %31
  %36 = ashr i64 %.01, 1, !dbg !641
  call void @llvm.dbg.value(metadata i64 %36, metadata !627, metadata !DIExpression()), !dbg !626
  %37 = icmp slt i64 %36, 64, !dbg !643
  br i1 %37, label %38, label %39, !dbg !645

38:                                               ; preds = %35
  br label %59, !dbg !646

39:                                               ; preds = %35
  br label %28, !dbg !647, !llvm.loop !648

40:                                               ; preds = %31
  %41 = getelementptr inbounds i8, i8* %33, i64 %.02, !dbg !651
  call void @llvm.dbg.value(metadata i8* %41, metadata !605, metadata !DIExpression()), !dbg !597
  br label %42, !dbg !652

42:                                               ; preds = %51, %40
  %.03 = phi i8* [ %41, %40 ], [ %52, %51 ], !dbg !637
  call void @llvm.dbg.value(metadata i8* %.03, metadata !605, metadata !DIExpression()), !dbg !597
  %43 = getelementptr inbounds i8, i8* %.03, i64 7, !dbg !653
  %44 = load i64, i64* %3, align 8, !dbg !654
  %45 = getelementptr inbounds i8, i8* %33, i64 %44, !dbg !655
  %46 = icmp ult i8* %43, %45, !dbg !656
  br i1 %46, label %47, label %53, !dbg !652

47:                                               ; preds = %42
  %48 = call i32 @memcmp(i8* noundef %.03, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 noundef 7) #9, !dbg !657
  %49 = icmp eq i32 %48, 0, !dbg !660
  br i1 %49, label %50, label %51, !dbg !661

50:                                               ; preds = %47
  br label %59, !dbg !662

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, i8* %.03, i64 16, !dbg !663
  call void @llvm.dbg.value(metadata i8* %52, metadata !605, metadata !DIExpression()), !dbg !597
  br label %42, !dbg !652, !llvm.loop !664

53:                                               ; preds = %42
  %54 = ptrtoint i8* %.03 to i64, !dbg !666
  %55 = ptrtoint i8* %33 to i64, !dbg !666
  %56 = sub i64 %54, %55, !dbg !666
  call void @llvm.dbg.value(metadata i64 %56, metadata !624, metadata !DIExpression()), !dbg !626
  br label %28, !dbg !630, !llvm.loop !648

57:                                               ; preds = %28
  br label %58, !dbg !667

58:                                               ; preds = %57, %24
  br label %59, !dbg !668

59:                                               ; preds = %58, %50, %38, %13, %9, %5
  %.0 = phi i32 [ -1, %5 ], [ -1, %9 ], [ 30, %13 ], [ 0, %38 ], [ 30, %50 ], [ 0, %58 ], !dbg !597
  ret i32 %.0, !dbg !669
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_rar_options(%struct.archive_read* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !670 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !671, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i8* %1, metadata !673, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i8* %2, metadata !674, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i32 -25, metadata !675, metadata !DIExpression()), !dbg !672
  %4 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !676
  %5 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %4, align 8, !dbg !676
  %6 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %5, i32 0, i32 0, !dbg !677
  %7 = load i8*, i8** %6, align 8, !dbg !677
  %8 = bitcast i8* %7 to %struct.rar*, !dbg !678
  call void @llvm.dbg.value(metadata %struct.rar* %8, metadata !679, metadata !DIExpression()), !dbg !672
  %9 = call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !680
  %10 = icmp eq i32 %9, 0, !dbg !682
  br i1 %10, label %11, label %31, !dbg !683

11:                                               ; preds = %3
  %12 = icmp eq i8* %2, null, !dbg !684
  br i1 %12, label %18, label %13, !dbg !687

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !688
  %15 = load i8, i8* %14, align 1, !dbg !688
  %16 = sext i8 %15 to i32, !dbg !688
  %17 = icmp eq i32 %16, 0, !dbg !689
  br i1 %17, label %18, label %20, !dbg !690

18:                                               ; preds = %13, %11
  %19 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !691
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %19, i32 noundef -1, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0)), !dbg !692
  br label %30, !dbg !692

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !693
  %22 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive* noundef %21, i8* noundef %2, i32 noundef 0), !dbg !695
  %23 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 64, !dbg !696
  store %struct.archive_string_conv* %22, %struct.archive_string_conv** %23, align 8, !dbg !697
  %24 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 64, !dbg !698
  %25 = load %struct.archive_string_conv*, %struct.archive_string_conv** %24, align 8, !dbg !698
  %26 = icmp ne %struct.archive_string_conv* %25, null, !dbg !700
  br i1 %26, label %27, label %28, !dbg !701

27:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32 0, metadata !675, metadata !DIExpression()), !dbg !672
  br label %29, !dbg !702

28:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32 -30, metadata !675, metadata !DIExpression()), !dbg !672
  br label %29

29:                                               ; preds = %28, %27
  %.01 = phi i32 [ 0, %27 ], [ -30, %28 ], !dbg !703
  call void @llvm.dbg.value(metadata i32 %.01, metadata !675, metadata !DIExpression()), !dbg !672
  br label %30

30:                                               ; preds = %29, %18
  %.1 = phi i32 [ -25, %18 ], [ %.01, %29 ], !dbg !672
  call void @llvm.dbg.value(metadata i32 %.1, metadata !675, metadata !DIExpression()), !dbg !672
  br label %32, !dbg !704

31:                                               ; preds = %3
  br label %32, !dbg !705

32:                                               ; preds = %31, %30
  %.0 = phi i32 [ %.1, %30 ], [ -20, %31 ], !dbg !672
  ret i32 %.0, !dbg !706
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_rar_read_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1) #0 !dbg !707 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !708, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata %struct.archive_entry* %1, metadata !710, metadata !DIExpression()), !dbg !709
  %3 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !711
  %4 = getelementptr inbounds %struct.archive, %struct.archive* %3, i32 0, i32 3, !dbg !712
  store i32 851968, i32* %4, align 8, !dbg !713
  %5 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !714
  %6 = getelementptr inbounds %struct.archive, %struct.archive* %5, i32 0, i32 4, !dbg !716
  %7 = load i8*, i8** %6, align 8, !dbg !716
  %8 = icmp eq i8* %7, null, !dbg !717
  br i1 %8, label %9, label %12, !dbg !718

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !719
  %11 = getelementptr inbounds %struct.archive, %struct.archive* %10, i32 0, i32 4, !dbg !720
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8, !dbg !721
  br label %12, !dbg !722

12:                                               ; preds = %9, %2
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !723
  %14 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %13, align 8, !dbg !723
  %15 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %14, i32 0, i32 0, !dbg !724
  %16 = load i8*, i8** %15, align 8, !dbg !724
  %17 = bitcast i8* %16 to %struct.rar*, !dbg !725
  call void @llvm.dbg.value(metadata %struct.rar* %17, metadata !726, metadata !DIExpression()), !dbg !709
  %18 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef 7, i64* noundef null), !dbg !727
  call void @llvm.dbg.value(metadata i8* %18, metadata !729, metadata !DIExpression()), !dbg !709
  %19 = icmp eq i8* %18, null, !dbg !730
  br i1 %19, label %20, label %21, !dbg !731

20:                                               ; preds = %12
  br label %177, !dbg !732

21:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i8* %18, metadata !733, metadata !DIExpression()), !dbg !709
  %22 = getelementptr inbounds %struct.rar, %struct.rar* %17, i32 0, i32 36, !dbg !734
  %23 = load i32, i32* %22, align 8, !dbg !734
  %24 = icmp eq i32 %23, 0, !dbg !736
  br i1 %24, label %25, label %43, !dbg !737

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !738
  %27 = load i8, i8* %26, align 1, !dbg !738
  %28 = sext i8 %27 to i32, !dbg !738
  %29 = icmp eq i32 %28, 77, !dbg !739
  br i1 %29, label %30, label %35, !dbg !740

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !741
  %32 = load i8, i8* %31, align 1, !dbg !741
  %33 = sext i8 %32 to i32, !dbg !741
  %34 = icmp eq i32 %33, 90, !dbg !742
  br i1 %34, label %38, label %35, !dbg !743

35:                                               ; preds = %30, %25
  %36 = call i32 @memcmp(i8* noundef %18, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef 4) #9, !dbg !744
  %37 = icmp eq i32 %36, 0, !dbg !745
  br i1 %37, label %38, label %43, !dbg !746

38:                                               ; preds = %35, %30
  %39 = call i32 @skip_sfx(%struct.archive_read* noundef %0), !dbg !747
  call void @llvm.dbg.value(metadata i32 %39, metadata !749, metadata !DIExpression()), !dbg !709
  %40 = icmp slt i32 %39, -20, !dbg !750
  br i1 %40, label %41, label %42, !dbg !752

41:                                               ; preds = %38
  br label %177, !dbg !753

42:                                               ; preds = %38
  br label %43, !dbg !754

43:                                               ; preds = %42, %35, %21
  %44 = getelementptr inbounds %struct.rar, %struct.rar* %17, i32 0, i32 36, !dbg !755
  store i32 1, i32* %44, align 8, !dbg !756
  br label %45, !dbg !757

45:                                               ; preds = %176, %43
  %46 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef 7, i64* noundef null), !dbg !758
  call void @llvm.dbg.value(metadata i8* %46, metadata !729, metadata !DIExpression()), !dbg !709
  %47 = icmp eq i8* %46, null, !dbg !761
  br i1 %47, label %48, label %49, !dbg !762

48:                                               ; preds = %45
  br label %177, !dbg !763

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %46, metadata !733, metadata !DIExpression()), !dbg !709
  %50 = getelementptr inbounds i8, i8* %46, i64 2, !dbg !764
  %51 = load i8, i8* %50, align 1, !dbg !764
  call void @llvm.dbg.value(metadata i8 %51, metadata !765, metadata !DIExpression()), !dbg !709
  %52 = sext i8 %51 to i32, !dbg !766
  switch i32 %52, label %174 [
    i32 114, label %53
    i32 115, label %60
    i32 116, label %117
    i32 117, label %119
    i32 118, label %119
    i32 119, label %119
    i32 120, label %119
    i32 121, label %119
    i32 123, label %119
    i32 122, label %169
  ], !dbg !767

53:                                               ; preds = %49
  %54 = call i32 @memcmp(i8* noundef %46, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 noundef 7) #9, !dbg !768
  %55 = icmp ne i32 %54, 0, !dbg !771
  br i1 %55, label %56, label %58, !dbg !772

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !773
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %57, i32 noundef 84, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0)), !dbg !775
  br label %177, !dbg !776

58:                                               ; preds = %53
  %59 = call i64 @__archive_read_consume(%struct.archive_read* noundef %0, i64 noundef 7), !dbg !777
  br label %176, !dbg !778

60:                                               ; preds = %49
  %61 = getelementptr inbounds i8, i8* %46, i64 3, !dbg !779
  %62 = call zeroext i16 @archive_le16dec(i8* noundef %61), !dbg !780
  %63 = zext i16 %62 to i32, !dbg !780
  %64 = getelementptr inbounds %struct.rar, %struct.rar* %17, i32 0, i32 0, !dbg !781
  store i32 %63, i32* %64, align 8, !dbg !782
  %65 = getelementptr inbounds i8, i8* %46, i64 5, !dbg !783
  %66 = call zeroext i16 @archive_le16dec(i8* noundef %65), !dbg !784
  %67 = zext i16 %66 to i64, !dbg !784
  call void @llvm.dbg.value(metadata i64 %67, metadata !785, metadata !DIExpression()), !dbg !709
  %68 = icmp ult i64 %67, 13, !dbg !786
  br i1 %68, label %69, label %71, !dbg !788

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !789
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %70, i32 noundef 84, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)), !dbg !791
  br label %177, !dbg !792

71:                                               ; preds = %60
  %72 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef %67, i64* noundef null), !dbg !793
  call void @llvm.dbg.value(metadata i8* %72, metadata !729, metadata !DIExpression()), !dbg !709
  %73 = icmp eq i8* %72, null, !dbg !795
  br i1 %73, label %74, label %75, !dbg !796

74:                                               ; preds = %71
  br label %177, !dbg !797

75:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i8* %72, metadata !733, metadata !DIExpression()), !dbg !709
  %76 = getelementptr inbounds %struct.rar, %struct.rar* %17, i32 0, i32 2, !dbg !798
  %77 = getelementptr inbounds [2 x i8], [2 x i8]* %76, i64 0, i64 0, !dbg !799
  %78 = getelementptr inbounds i8, i8* %72, i64 7, !dbg !800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 1 %78, i64 2, i1 false), !dbg !799
  %79 = getelementptr inbounds %struct.rar, %struct.rar* %17, i32 0, i32 3, !dbg !801
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %79, i64 0, i64 0, !dbg !802
  %81 = getelementptr inbounds i8, i8* %72, i64 7, !dbg !803
  %82 = getelementptr inbounds i8, i8* %81, i64 2, !dbg !804
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %80, i8* align 1 %82, i64 4, i1 false), !dbg !802
  %83 = getelementptr inbounds %struct.rar, %struct.rar* %17, i32 0, i32 0, !dbg !805
  %84 = load i32, i32* %83, align 8, !dbg !805
  %85 = and i32 %84, 512, !dbg !807
  %86 = icmp ne i32 %85, 0, !dbg !807
  br i1 %86, label %87, label %97, !dbg !808

87:                                               ; preds = %75
  %88 = icmp ult i64 %67, 14, !dbg !809
  br i1 %88, label %89, label %91, !dbg !812

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !813
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %90, i32 noundef 84, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)), !dbg !815
  br label %177, !dbg !816

91:                                               ; preds = %87
  %92 = getelementptr inbounds i8, i8* %72, i64 7, !dbg !817
  %93 = getelementptr inbounds i8, i8* %92, i64 2, !dbg !818
  %94 = getelementptr inbounds i8, i8* %93, i64 4, !dbg !819
  %95 = load i8, i8* %94, align 1, !dbg !820
  %96 = getelementptr inbounds %struct.rar, %struct.rar* %17, i32 0, i32 4, !dbg !821
  store i8 %95, i8* %96, align 2, !dbg !822
  br label %97, !dbg !823

97:                                               ; preds = %91, %75
  %98 = getelementptr inbounds %struct.rar, %struct.rar* %17, i32 0, i32 0, !dbg !824
  %99 = load i32, i32* %98, align 8, !dbg !824
  %100 = and i32 %99, 128, !dbg !826
  %101 = icmp ne i32 %100, 0, !dbg !826
  br i1 %101, label %102, label %104, !dbg !827

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !828
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %103, i32 noundef 84, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0)), !dbg !830
  br label %177, !dbg !831

104:                                              ; preds = %97
  %105 = getelementptr inbounds i8, i8* %72, i64 2, !dbg !832
  %106 = trunc i64 %67 to i32, !dbg !833
  %107 = sub i32 %106, 2, !dbg !834
  %108 = call i64 @crc32(i64 noundef 0, i8* noundef %105, i32 noundef %107), !dbg !835
  call void @llvm.dbg.value(metadata i64 %108, metadata !836, metadata !DIExpression()), !dbg !837
  %109 = and i64 %108, 65535, !dbg !838
  %110 = call zeroext i16 @archive_le16dec(i8* noundef %72), !dbg !840
  %111 = zext i16 %110 to i64, !dbg !840
  %112 = icmp ne i64 %109, %111, !dbg !841
  br i1 %112, label %113, label %115, !dbg !842

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !843
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %114, i32 noundef 84, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0)), !dbg !845
  br label %177, !dbg !846

115:                                              ; preds = %104
  %116 = call i64 @__archive_read_consume(%struct.archive_read* noundef %0, i64 noundef %67), !dbg !847
  br label %176, !dbg !848

117:                                              ; preds = %49
  %118 = call i32 @read_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1, i8 noundef signext %51), !dbg !849
  br label %177, !dbg !850

119:                                              ; preds = %49, %49, %49, %49, %49, %49
  %120 = getelementptr inbounds i8, i8* %46, i64 3, !dbg !851
  %121 = call zeroext i16 @archive_le16dec(i8* noundef %120), !dbg !852
  %122 = zext i16 %121 to i32, !dbg !852
  call void @llvm.dbg.value(metadata i32 %122, metadata !853, metadata !DIExpression()), !dbg !709
  %123 = getelementptr inbounds i8, i8* %46, i64 5, !dbg !854
  %124 = call zeroext i16 @archive_le16dec(i8* noundef %123), !dbg !855
  %125 = zext i16 %124 to i64, !dbg !855
  call void @llvm.dbg.value(metadata i64 %125, metadata !785, metadata !DIExpression()), !dbg !709
  %126 = icmp ult i64 %125, 7, !dbg !856
  br i1 %126, label %127, label %129, !dbg !858

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !859
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %128, i32 noundef 84, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)), !dbg !861
  br label %177, !dbg !862

129:                                              ; preds = %119
  %130 = icmp ugt i64 %125, 7, !dbg !863
  br i1 %130, label %131, label %136, !dbg !865

131:                                              ; preds = %129
  %132 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef %125, i64* noundef null), !dbg !866
  call void @llvm.dbg.value(metadata i8* %132, metadata !729, metadata !DIExpression()), !dbg !709
  %133 = icmp eq i8* %132, null, !dbg !869
  br i1 %133, label %134, label %135, !dbg !870

134:                                              ; preds = %131
  br label %177, !dbg !871

135:                                              ; preds = %131
  call void @llvm.dbg.value(metadata i8* %132, metadata !733, metadata !DIExpression()), !dbg !709
  br label %136, !dbg !872

136:                                              ; preds = %135, %129
  %.01 = phi i8* [ %132, %135 ], [ %46, %129 ], !dbg !837
  call void @llvm.dbg.value(metadata i8* %.01, metadata !733, metadata !DIExpression()), !dbg !709
  %137 = and i32 %122, 32768, !dbg !873
  %138 = icmp ne i32 %137, 0, !dbg !873
  br i1 %138, label %139, label %152, !dbg !875

139:                                              ; preds = %136
  %140 = icmp ult i64 %125, 11, !dbg !876
  br i1 %140, label %141, label %143, !dbg !879

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !880
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %142, i32 noundef 84, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)), !dbg !882
  br label %177, !dbg !883

143:                                              ; preds = %139
  %144 = getelementptr inbounds i8, i8* %.01, i64 7, !dbg !884
  %145 = call i32 @archive_le32dec(i8* noundef %144), !dbg !885
  %146 = zext i32 %145 to i64, !dbg !885
  %147 = add i64 %125, %146, !dbg !886
  call void @llvm.dbg.value(metadata i64 %147, metadata !785, metadata !DIExpression()), !dbg !709
  %148 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef %147, i64* noundef null), !dbg !887
  call void @llvm.dbg.value(metadata i8* %148, metadata !729, metadata !DIExpression()), !dbg !709
  %149 = icmp eq i8* %148, null, !dbg !889
  br i1 %149, label %150, label %151, !dbg !890

150:                                              ; preds = %143
  br label %177, !dbg !891

151:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i8* %148, metadata !733, metadata !DIExpression()), !dbg !709
  br label %152, !dbg !892

152:                                              ; preds = %151, %136
  %.02 = phi i64 [ %147, %151 ], [ %125, %136 ], !dbg !893
  %.1 = phi i8* [ %148, %151 ], [ %.01, %136 ], !dbg !893
  call void @llvm.dbg.value(metadata i8* %.1, metadata !733, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i64 %.02, metadata !785, metadata !DIExpression()), !dbg !709
  %153 = getelementptr inbounds i8, i8* %.1, i64 2, !dbg !894
  %154 = trunc i64 %.02 to i32, !dbg !895
  %155 = sub i32 %154, 2, !dbg !896
  %156 = call i64 @crc32(i64 noundef 0, i8* noundef %153, i32 noundef %155), !dbg !897
  call void @llvm.dbg.value(metadata i64 %156, metadata !836, metadata !DIExpression()), !dbg !837
  %157 = and i64 %156, 65535, !dbg !898
  %158 = call zeroext i16 @archive_le16dec(i8* noundef %.1), !dbg !900
  %159 = zext i16 %158 to i64, !dbg !900
  %160 = icmp ne i64 %157, %159, !dbg !901
  br i1 %160, label %161, label %163, !dbg !902

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !903
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %162, i32 noundef 84, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0)), !dbg !905
  br label %177, !dbg !906

163:                                              ; preds = %152
  %164 = call i64 @__archive_read_consume(%struct.archive_read* noundef %0, i64 noundef %.02), !dbg !907
  %165 = sext i8 %51 to i32, !dbg !908
  %166 = icmp eq i32 %165, 123, !dbg !910
  br i1 %166, label %167, label %168, !dbg !911

167:                                              ; preds = %163
  br label %177, !dbg !912

168:                                              ; preds = %163
  br label %176, !dbg !913

169:                                              ; preds = %49
  %170 = call i32 @read_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1, i8 noundef signext %51), !dbg !914
  call void @llvm.dbg.value(metadata i32 %170, metadata !749, metadata !DIExpression()), !dbg !709
  %171 = icmp slt i32 %170, -20, !dbg !916
  br i1 %171, label %172, label %173, !dbg !917

172:                                              ; preds = %169
  br label %177, !dbg !918

173:                                              ; preds = %169
  br label %176, !dbg !919

174:                                              ; preds = %49
  %175 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !920
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %175, i32 noundef 84, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)), !dbg !921
  br label %177, !dbg !922

176:                                              ; preds = %173, %168, %115, %58
  br label %45, !dbg !757, !llvm.loop !923

177:                                              ; preds = %174, %172, %167, %161, %150, %141, %134, %127, %117, %113, %102, %89, %74, %69, %56, %48, %41, %20
  %.0 = phi i32 [ 1, %20 ], [ %39, %41 ], [ -30, %48 ], [ -30, %174 ], [ %170, %172 ], [ -30, %127 ], [ -30, %134 ], [ -30, %141 ], [ -30, %150 ], [ -30, %161 ], [ 1, %167 ], [ %118, %117 ], [ -30, %69 ], [ -30, %74 ], [ -30, %89 ], [ -30, %102 ], [ -30, %113 ], [ -30, %56 ], !dbg !709
  ret i32 %.0, !dbg !925
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_rar_read_data(%struct.archive_read* noundef %0, i8** noundef %1, i64* noundef %2, i64* noundef %3) #0 !dbg !926 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !927, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i8** %1, metadata !929, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i64* %2, metadata !930, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i64* %3, metadata !931, metadata !DIExpression()), !dbg !928
  %5 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !932
  %6 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %5, align 8, !dbg !932
  %7 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %6, i32 0, i32 0, !dbg !933
  %8 = load i8*, i8** %7, align 8, !dbg !933
  %9 = bitcast i8* %8 to %struct.rar*, !dbg !934
  call void @llvm.dbg.value(metadata %struct.rar* %9, metadata !935, metadata !DIExpression()), !dbg !928
  %10 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 22, !dbg !936
  %11 = load i64, i64* %10, align 8, !dbg !936
  %12 = icmp sgt i64 %11, 0, !dbg !938
  br i1 %12, label %13, label %18, !dbg !939

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 22, !dbg !940
  %15 = load i64, i64* %14, align 8, !dbg !940
  %16 = call i64 @__archive_read_consume(%struct.archive_read* noundef %0, i64 noundef %15), !dbg !942
  %17 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 22, !dbg !943
  store i64 0, i64* %17, align 8, !dbg !944
  br label %18, !dbg !945

18:                                               ; preds = %13, %4
  %19 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 34, !dbg !946
  %20 = load i8, i8* %19, align 1, !dbg !946
  %21 = sext i8 %20 to i32, !dbg !948
  %22 = icmp ne i32 %21, 0, !dbg !948
  br i1 %22, label %29, label %23, !dbg !949

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 27, !dbg !950
  %25 = load i64, i64* %24, align 8, !dbg !950
  %26 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 8, !dbg !951
  %27 = load i64, i64* %26, align 8, !dbg !951
  %28 = icmp sge i64 %25, %27, !dbg !952
  br i1 %28, label %29, label %40, !dbg !953

29:                                               ; preds = %23, %18
  store i8* null, i8** %1, align 8, !dbg !954
  store i64 0, i64* %2, align 8, !dbg !956
  %30 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 25, !dbg !957
  %31 = load i64, i64* %30, align 8, !dbg !957
  store i64 %31, i64* %3, align 8, !dbg !958
  %32 = load i64, i64* %3, align 8, !dbg !959
  %33 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 8, !dbg !961
  %34 = load i64, i64* %33, align 8, !dbg !961
  %35 = icmp slt i64 %32, %34, !dbg !962
  br i1 %35, label %36, label %39, !dbg !963

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 8, !dbg !964
  %38 = load i64, i64* %37, align 8, !dbg !964
  store i64 %38, i64* %3, align 8, !dbg !965
  br label %39, !dbg !966

39:                                               ; preds = %36, %29
  br label %58, !dbg !967

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 5, !dbg !968
  %42 = load i8, i8* %41, align 1, !dbg !968
  %43 = sext i8 %42 to i32, !dbg !969
  switch i32 %43, label %55 [
    i32 48, label %44
    i32 49, label %46
    i32 50, label %46
    i32 51, label %46
    i32 52, label %46
    i32 53, label %46
  ], !dbg !970

44:                                               ; preds = %40
  %45 = call i32 @read_data_stored(%struct.archive_read* noundef %0, i8** noundef %1, i64* noundef %2, i64* noundef %3), !dbg !971
  call void @llvm.dbg.value(metadata i32 %45, metadata !973, metadata !DIExpression()), !dbg !928
  br label %57, !dbg !974

46:                                               ; preds = %40, %40, %40, %40, %40
  %47 = call i32 @read_data_compressed(%struct.archive_read* noundef %0, i8** noundef %1, i64* noundef %2, i64* noundef %3), !dbg !975
  call void @llvm.dbg.value(metadata i32 %47, metadata !973, metadata !DIExpression()), !dbg !928
  %48 = icmp ne i32 %47, 0, !dbg !976
  br i1 %48, label %49, label %54, !dbg !978

49:                                               ; preds = %46
  %50 = icmp ne i32 %47, -20, !dbg !979
  br i1 %50, label %51, label %54, !dbg !980

51:                                               ; preds = %49
  %52 = load void (%struct.CPpmd7*, %struct.ISzAlloc*)*, void (%struct.CPpmd7*, %struct.ISzAlloc*)** getelementptr inbounds (%struct.IPpmd7, %struct.IPpmd7* @__archive_ppmd7_functions, i32 0, i32 2), align 8, !dbg !981
  %53 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 59, !dbg !982
  call void %52(%struct.CPpmd7* noundef %53, %struct.ISzAlloc* noundef @g_szalloc), !dbg !983
  br label %54, !dbg !983

54:                                               ; preds = %51, %49, %46
  br label %57, !dbg !984

55:                                               ; preds = %40
  %56 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !985
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %56, i32 noundef 84, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i64 0, i64 0)), !dbg !986
  call void @llvm.dbg.value(metadata i32 -30, metadata !973, metadata !DIExpression()), !dbg !928
  br label %57, !dbg !987

57:                                               ; preds = %55, %54, %44
  %.01 = phi i32 [ -30, %55 ], [ %47, %54 ], [ %45, %44 ], !dbg !988
  call void @llvm.dbg.value(metadata i32 %.01, metadata !973, metadata !DIExpression()), !dbg !928
  br label %58, !dbg !989

58:                                               ; preds = %57, %39
  %.0 = phi i32 [ 1, %39 ], [ %.01, %57 ], !dbg !928
  ret i32 %.0, !dbg !990
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_rar_read_data_skip(%struct.archive_read* noundef %0) #0 !dbg !991 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !992, metadata !DIExpression()), !dbg !993
  %2 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !994
  %3 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %2, align 8, !dbg !994
  %4 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %3, i32 0, i32 0, !dbg !995
  %5 = load i8*, i8** %4, align 8, !dbg !995
  %6 = bitcast i8* %5 to %struct.rar*, !dbg !996
  call void @llvm.dbg.value(metadata %struct.rar* %6, metadata !997, metadata !DIExpression()), !dbg !993
  %7 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 22, !dbg !998
  %8 = load i64, i64* %7, align 8, !dbg !998
  %9 = icmp sgt i64 %8, 0, !dbg !1000
  br i1 %9, label %10, label %15, !dbg !1001

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 22, !dbg !1002
  %12 = load i64, i64* %11, align 8, !dbg !1002
  %13 = call i64 @__archive_read_consume(%struct.archive_read* noundef %0, i64 noundef %12), !dbg !1004
  %14 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 22, !dbg !1005
  store i64 0, i64* %14, align 8, !dbg !1006
  br label %15, !dbg !1007

15:                                               ; preds = %10, %1
  %16 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 23, !dbg !1008
  %17 = load i64, i64* %16, align 8, !dbg !1008
  %18 = icmp sgt i64 %17, 0, !dbg !1010
  br i1 %18, label %19, label %26, !dbg !1011

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 23, !dbg !1012
  %21 = load i64, i64* %20, align 8, !dbg !1012
  %22 = call i64 @__archive_read_consume(%struct.archive_read* noundef %0, i64 noundef %21), !dbg !1014
  call void @llvm.dbg.value(metadata i64 %22, metadata !1015, metadata !DIExpression()), !dbg !993
  %23 = icmp slt i64 %22, 0, !dbg !1016
  br i1 %23, label %24, label %25, !dbg !1018

24:                                               ; preds = %19
  br label %51, !dbg !1019

25:                                               ; preds = %19
  br label %26, !dbg !1020

26:                                               ; preds = %25, %15
  %27 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 0, !dbg !1021
  %28 = load i32, i32* %27, align 8, !dbg !1021
  %29 = and i32 %28, 1, !dbg !1023
  %30 = icmp ne i32 %29, 0, !dbg !1023
  br i1 %30, label %31, label %50, !dbg !1024

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 6, !dbg !1025
  %33 = load i32, i32* %32, align 8, !dbg !1025
  %34 = and i32 %33, 2, !dbg !1026
  %35 = icmp ne i32 %34, 0, !dbg !1026
  br i1 %35, label %36, label %50, !dbg !1027

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 1, !dbg !1028
  %38 = load %struct.archive_entry*, %struct.archive_entry** %37, align 8, !dbg !1028
  %39 = call i32 @archive_read_format_rar_read_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %38), !dbg !1030
  call void @llvm.dbg.value(metadata i32 %39, metadata !1031, metadata !DIExpression()), !dbg !993
  %40 = icmp eq i32 %39, 1, !dbg !1032
  br i1 %40, label %41, label %45, !dbg !1034

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 1, !dbg !1035
  %43 = load %struct.archive_entry*, %struct.archive_entry** %42, align 8, !dbg !1035
  %44 = call i32 @archive_read_format_rar_read_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %43), !dbg !1036
  call void @llvm.dbg.value(metadata i32 %44, metadata !1031, metadata !DIExpression()), !dbg !993
  br label %45, !dbg !1037

45:                                               ; preds = %41, %36
  %.01 = phi i32 [ %44, %41 ], [ %39, %36 ], !dbg !1038
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1031, metadata !DIExpression()), !dbg !993
  %46 = icmp ne i32 %.01, 0, !dbg !1039
  br i1 %46, label %47, label %48, !dbg !1041

47:                                               ; preds = %45
  br label %51, !dbg !1042

48:                                               ; preds = %45
  %49 = call i32 @archive_read_format_rar_read_data_skip(%struct.archive_read* noundef %0), !dbg !1043
  br label %51, !dbg !1044

50:                                               ; preds = %31, %26
  br label %51, !dbg !1045

51:                                               ; preds = %50, %48, %47, %24
  %.0 = phi i32 [ -30, %24 ], [ %.01, %47 ], [ %49, %48 ], [ 0, %50 ], !dbg !993
  ret i32 %.0, !dbg !1046
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @archive_read_format_rar_seek_data(%struct.archive_read* noundef %0, i64 noundef %1, i32 noundef %2) #0 !dbg !1047 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !1048, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %1, metadata !1050, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i32 %2, metadata !1051, metadata !DIExpression()), !dbg !1049
  %4 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !1052
  %5 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %4, align 8, !dbg !1052
  %6 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %5, i32 0, i32 0, !dbg !1053
  %7 = load i8*, i8** %6, align 8, !dbg !1053
  %8 = bitcast i8* %7 to %struct.rar*, !dbg !1054
  call void @llvm.dbg.value(metadata %struct.rar* %8, metadata !1055, metadata !DIExpression()), !dbg !1049
  %9 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 5, !dbg !1056
  %10 = load i8, i8* %9, align 1, !dbg !1056
  %11 = sext i8 %10 to i32, !dbg !1058
  %12 = icmp eq i32 %11, 48, !dbg !1059
  br i1 %12, label %13, label %329, !dbg !1060

13:                                               ; preds = %3
  switch i32 %2, label %21 [
    i32 1, label %14
    i32 2, label %17
    i32 0, label %20
  ], !dbg !1061

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 27, !dbg !1063
  %16 = load i64, i64* %15, align 8, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %16, metadata !1065, metadata !DIExpression()), !dbg !1049
  br label %22, !dbg !1066

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 8, !dbg !1067
  %19 = load i64, i64* %18, align 8, !dbg !1067
  call void @llvm.dbg.value(metadata i64 %19, metadata !1065, metadata !DIExpression()), !dbg !1049
  br label %22, !dbg !1068

20:                                               ; preds = %13
  br label %21, !dbg !1069

21:                                               ; preds = %20, %13
  call void @llvm.dbg.value(metadata i64 0, metadata !1065, metadata !DIExpression()), !dbg !1049
  br label %22, !dbg !1070

22:                                               ; preds = %21, %17, %14
  %.04 = phi i64 [ 0, %21 ], [ %19, %17 ], [ %16, %14 ], !dbg !1071
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1065, metadata !DIExpression()), !dbg !1049
  %23 = add nsw i64 %.04, %1, !dbg !1072
  call void @llvm.dbg.value(metadata i64 %23, metadata !1065, metadata !DIExpression()), !dbg !1049
  %24 = icmp slt i64 %23, 0, !dbg !1073
  br i1 %24, label %25, label %26, !dbg !1075

25:                                               ; preds = %22
  br label %332, !dbg !1076

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 8, !dbg !1078
  %28 = load i64, i64* %27, align 8, !dbg !1078
  %29 = icmp sgt i64 %23, %28, !dbg !1080
  br i1 %29, label %30, label %34, !dbg !1081

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 27, !dbg !1082
  store i64 %23, i64* %31, align 8, !dbg !1084
  %32 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 8, !dbg !1085
  %33 = load i64, i64* %32, align 8, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %33, metadata !1065, metadata !DIExpression()), !dbg !1049
  br label %34, !dbg !1086

34:                                               ; preds = %30, %26
  %.15 = phi i64 [ %33, %30 ], [ %23, %26 ], !dbg !1087
  call void @llvm.dbg.value(metadata i64 %.15, metadata !1065, metadata !DIExpression()), !dbg !1049
  br label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1088
  %37 = load %struct.data_block_offsets*, %struct.data_block_offsets** %36, align 8, !dbg !1088
  %38 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %37, i64 0, !dbg !1089
  %39 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %38, i32 0, i32 1, !dbg !1090
  %40 = load i64, i64* %39, align 8, !dbg !1090
  %41 = add nsw i64 %.15, %40, !dbg !1091
  call void @llvm.dbg.value(metadata i64 %41, metadata !1065, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i32 0, metadata !1092, metadata !DIExpression()), !dbg !1049
  br label %42, !dbg !1093

42:                                               ; preds = %46, %35
  %.2 = phi i64 [ %41, %35 ], [ %62, %46 ], !dbg !1087
  %.01 = phi i32 [ 0, %35 ], [ %47, %46 ], !dbg !1087
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1092, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %.2, metadata !1065, metadata !DIExpression()), !dbg !1049
  %43 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1094
  %44 = load i32, i32* %43, align 8, !dbg !1094
  %45 = icmp ult i32 %.01, %44, !dbg !1095
  br i1 %45, label %46, label %63, !dbg !1093

46:                                               ; preds = %42
  %47 = add i32 %.01, 1, !dbg !1096
  call void @llvm.dbg.value(metadata i32 %47, metadata !1092, metadata !DIExpression()), !dbg !1049
  %48 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1098
  %49 = load %struct.data_block_offsets*, %struct.data_block_offsets** %48, align 8, !dbg !1098
  %50 = zext i32 %47 to i64, !dbg !1099
  %51 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %49, i64 %50, !dbg !1099
  %52 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %51, i32 0, i32 1, !dbg !1100
  %53 = load i64, i64* %52, align 8, !dbg !1100
  %54 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1101
  %55 = load %struct.data_block_offsets*, %struct.data_block_offsets** %54, align 8, !dbg !1101
  %56 = sub i32 %47, 1, !dbg !1102
  %57 = zext i32 %56 to i64, !dbg !1103
  %58 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %55, i64 %57, !dbg !1103
  %59 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %58, i32 0, i32 2, !dbg !1104
  %60 = load i64, i64* %59, align 8, !dbg !1104
  %61 = sub nsw i64 %53, %60, !dbg !1105
  %62 = add nsw i64 %.2, %61, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %62, metadata !1065, metadata !DIExpression()), !dbg !1049
  br label %42, !dbg !1093, !llvm.loop !1107

63:                                               ; preds = %42
  %64 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 0, !dbg !1109
  %65 = load i32, i32* %64, align 8, !dbg !1109
  %66 = and i32 %65, 1, !dbg !1111
  %67 = icmp ne i32 %66, 0, !dbg !1111
  br i1 %67, label %68, label %264, !dbg !1112

68:                                               ; preds = %63
  br label %69, !dbg !1113

69:                                               ; preds = %241, %190, %122, %68
  %.3 = phi i64 [ %.2, %68 ], [ %112, %122 ], [ %209, %190 ], [ %260, %241 ], !dbg !1087
  call void @llvm.dbg.value(metadata i64 %.3, metadata !1065, metadata !DIExpression()), !dbg !1049
  %70 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1115
  %71 = load %struct.data_block_offsets*, %struct.data_block_offsets** %70, align 8, !dbg !1115
  %72 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1118
  %73 = load i32, i32* %72, align 8, !dbg !1118
  %74 = zext i32 %73 to i64, !dbg !1119
  %75 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %71, i64 %74, !dbg !1119
  %76 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %75, i32 0, i32 1, !dbg !1120
  %77 = load i64, i64* %76, align 8, !dbg !1120
  %78 = icmp slt i64 %.3, %77, !dbg !1121
  br i1 %78, label %79, label %156, !dbg !1122

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 6, !dbg !1123
  %81 = load i32, i32* %80, align 8, !dbg !1123
  %82 = and i32 %81, 1, !dbg !1124
  %83 = icmp ne i32 %82, 0, !dbg !1124
  br i1 %83, label %84, label %156, !dbg !1125

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1126
  %86 = load i32, i32* %85, align 8, !dbg !1126
  %87 = icmp eq i32 %86, 0, !dbg !1129
  br i1 %87, label %88, label %90, !dbg !1130

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1131
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %89, i32 noundef -1, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.47, i64 0, i64 0)), !dbg !1133
  br label %332, !dbg !1134

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1135
  %92 = load i32, i32* %91, align 8, !dbg !1136
  %93 = add i32 %92, -1, !dbg !1136
  store i32 %93, i32* %91, align 8, !dbg !1136
  %94 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1137
  %95 = load %struct.data_block_offsets*, %struct.data_block_offsets** %94, align 8, !dbg !1137
  %96 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1138
  %97 = load i32, i32* %96, align 8, !dbg !1138
  %98 = add i32 %97, 1, !dbg !1139
  %99 = zext i32 %98 to i64, !dbg !1140
  %100 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %95, i64 %99, !dbg !1140
  %101 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %100, i32 0, i32 1, !dbg !1141
  %102 = load i64, i64* %101, align 8, !dbg !1141
  %103 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1142
  %104 = load %struct.data_block_offsets*, %struct.data_block_offsets** %103, align 8, !dbg !1142
  %105 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1143
  %106 = load i32, i32* %105, align 8, !dbg !1143
  %107 = zext i32 %106 to i64, !dbg !1144
  %108 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %104, i64 %107, !dbg !1144
  %109 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %108, i32 0, i32 2, !dbg !1145
  %110 = load i64, i64* %109, align 8, !dbg !1145
  %111 = sub nsw i64 %102, %110, !dbg !1146
  %112 = sub nsw i64 %.3, %111, !dbg !1147
  call void @llvm.dbg.value(metadata i64 %112, metadata !1065, metadata !DIExpression()), !dbg !1049
  %113 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1148
  %114 = load %struct.data_block_offsets*, %struct.data_block_offsets** %113, align 8, !dbg !1148
  %115 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1150
  %116 = load i32, i32* %115, align 8, !dbg !1150
  %117 = zext i32 %116 to i64, !dbg !1151
  %118 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %114, i64 %117, !dbg !1151
  %119 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %118, i32 0, i32 1, !dbg !1152
  %120 = load i64, i64* %119, align 8, !dbg !1152
  %121 = icmp slt i64 %112, %120, !dbg !1153
  br i1 %121, label %122, label %123, !dbg !1154

122:                                              ; preds = %90
  br label %69, !dbg !1155, !llvm.loop !1156

123:                                              ; preds = %90
  %124 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1158
  %125 = load %struct.data_block_offsets*, %struct.data_block_offsets** %124, align 8, !dbg !1158
  %126 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1159
  %127 = load i32, i32* %126, align 8, !dbg !1159
  %128 = zext i32 %127 to i64, !dbg !1160
  %129 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %125, i64 %128, !dbg !1160
  %130 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %129, i32 0, i32 1, !dbg !1161
  %131 = load i64, i64* %130, align 8, !dbg !1161
  %132 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1162
  %133 = load %struct.data_block_offsets*, %struct.data_block_offsets** %132, align 8, !dbg !1162
  %134 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1163
  %135 = load i32, i32* %134, align 8, !dbg !1163
  %136 = zext i32 %135 to i64, !dbg !1164
  %137 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %133, i64 %136, !dbg !1164
  %138 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %137, i32 0, i32 0, !dbg !1165
  %139 = load i64, i64* %138, align 8, !dbg !1165
  %140 = sub nsw i64 %131, %139, !dbg !1166
  %141 = call i64 @__archive_read_seek(%struct.archive_read* noundef %0, i64 noundef %140, i32 noundef 0), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %141, metadata !1168, metadata !DIExpression()), !dbg !1049
  %142 = icmp slt i64 %141, 0, !dbg !1169
  br i1 %142, label %143, label %144, !dbg !1171

143:                                              ; preds = %123
  br label %332, !dbg !1172

144:                                              ; preds = %123
  %145 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 1, !dbg !1173
  %146 = load %struct.archive_entry*, %struct.archive_entry** %145, align 8, !dbg !1173
  %147 = call i32 @archive_read_format_rar_read_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %146), !dbg !1174
  %148 = sext i32 %147 to i64, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %148, metadata !1168, metadata !DIExpression()), !dbg !1049
  %149 = icmp ne i64 %148, 0, !dbg !1175
  br i1 %149, label %150, label %152, !dbg !1177

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1178
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %151, i32 noundef -1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i64 0, i64 0)), !dbg !1180
  br label %332, !dbg !1181

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1182
  %154 = load i32, i32* %153, align 8, !dbg !1183
  %155 = add i32 %154, -1, !dbg !1183
  store i32 %155, i32* %153, align 8, !dbg !1183
  br label %263, !dbg !1184

156:                                              ; preds = %79, %69
  %157 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1185
  %158 = load %struct.data_block_offsets*, %struct.data_block_offsets** %157, align 8, !dbg !1185
  %159 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1187
  %160 = load i32, i32* %159, align 8, !dbg !1187
  %161 = zext i32 %160 to i64, !dbg !1188
  %162 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %158, i64 %161, !dbg !1188
  %163 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %162, i32 0, i32 2, !dbg !1189
  %164 = load i64, i64* %163, align 8, !dbg !1189
  %165 = icmp sgt i64 %.3, %164, !dbg !1190
  br i1 %165, label %166, label %261, !dbg !1191

166:                                              ; preds = %156
  %167 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 6, !dbg !1192
  %168 = load i32, i32* %167, align 8, !dbg !1192
  %169 = and i32 %168, 2, !dbg !1193
  %170 = icmp ne i32 %169, 0, !dbg !1193
  br i1 %170, label %171, label %261, !dbg !1194

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1195
  %173 = load i32, i32* %172, align 8, !dbg !1197
  %174 = add i32 %173, 1, !dbg !1197
  store i32 %174, i32* %172, align 8, !dbg !1197
  %175 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1198
  %176 = load i32, i32* %175, align 8, !dbg !1198
  %177 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 40, !dbg !1200
  %178 = load i32, i32* %177, align 4, !dbg !1200
  %179 = icmp ult i32 %176, %178, !dbg !1201
  br i1 %179, label %180, label %210, !dbg !1202

180:                                              ; preds = %171
  %181 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1203
  %182 = load %struct.data_block_offsets*, %struct.data_block_offsets** %181, align 8, !dbg !1203
  %183 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1204
  %184 = load i32, i32* %183, align 8, !dbg !1204
  %185 = zext i32 %184 to i64, !dbg !1205
  %186 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %182, i64 %185, !dbg !1205
  %187 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %186, i32 0, i32 2, !dbg !1206
  %188 = load i64, i64* %187, align 8, !dbg !1206
  %189 = icmp sgt i64 %.3, %188, !dbg !1207
  br i1 %189, label %190, label %210, !dbg !1208

190:                                              ; preds = %180
  %191 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1209
  %192 = load %struct.data_block_offsets*, %struct.data_block_offsets** %191, align 8, !dbg !1209
  %193 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1211
  %194 = load i32, i32* %193, align 8, !dbg !1211
  %195 = zext i32 %194 to i64, !dbg !1212
  %196 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %192, i64 %195, !dbg !1212
  %197 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %196, i32 0, i32 1, !dbg !1213
  %198 = load i64, i64* %197, align 8, !dbg !1213
  %199 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1214
  %200 = load %struct.data_block_offsets*, %struct.data_block_offsets** %199, align 8, !dbg !1214
  %201 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1215
  %202 = load i32, i32* %201, align 8, !dbg !1215
  %203 = sub i32 %202, 1, !dbg !1216
  %204 = zext i32 %203 to i64, !dbg !1217
  %205 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %200, i64 %204, !dbg !1217
  %206 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %205, i32 0, i32 2, !dbg !1218
  %207 = load i64, i64* %206, align 8, !dbg !1218
  %208 = sub nsw i64 %198, %207, !dbg !1219
  %209 = add nsw i64 %.3, %208, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %209, metadata !1065, metadata !DIExpression()), !dbg !1049
  br label %69, !dbg !1221, !llvm.loop !1156

210:                                              ; preds = %180, %171
  %211 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1222
  %212 = load i32, i32* %211, align 8, !dbg !1223
  %213 = add i32 %212, -1, !dbg !1223
  store i32 %213, i32* %211, align 8, !dbg !1223
  %214 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1224
  %215 = load %struct.data_block_offsets*, %struct.data_block_offsets** %214, align 8, !dbg !1224
  %216 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1225
  %217 = load i32, i32* %216, align 8, !dbg !1225
  %218 = zext i32 %217 to i64, !dbg !1226
  %219 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %215, i64 %218, !dbg !1226
  %220 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %219, i32 0, i32 2, !dbg !1227
  %221 = load i64, i64* %220, align 8, !dbg !1227
  %222 = call i64 @__archive_read_seek(%struct.archive_read* noundef %0, i64 noundef %221, i32 noundef 0), !dbg !1228
  call void @llvm.dbg.value(metadata i64 %222, metadata !1168, metadata !DIExpression()), !dbg !1049
  %223 = icmp slt i64 %222, 0, !dbg !1229
  br i1 %223, label %224, label %225, !dbg !1231

224:                                              ; preds = %210
  br label %332, !dbg !1232

225:                                              ; preds = %210
  %226 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 1, !dbg !1233
  %227 = load %struct.archive_entry*, %struct.archive_entry** %226, align 8, !dbg !1233
  %228 = call i32 @archive_read_format_rar_read_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %227), !dbg !1234
  %229 = sext i32 %228 to i64, !dbg !1234
  call void @llvm.dbg.value(metadata i64 %229, metadata !1168, metadata !DIExpression()), !dbg !1049
  %230 = icmp eq i64 %229, 1, !dbg !1235
  br i1 %230, label %231, label %237, !dbg !1237

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 37, !dbg !1238
  store i8 1, i8* %232, align 4, !dbg !1240
  %233 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 1, !dbg !1241
  %234 = load %struct.archive_entry*, %struct.archive_entry** %233, align 8, !dbg !1241
  %235 = call i32 @archive_read_format_rar_read_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %234), !dbg !1242
  %236 = sext i32 %235 to i64, !dbg !1242
  call void @llvm.dbg.value(metadata i64 %236, metadata !1168, metadata !DIExpression()), !dbg !1049
  br label %237, !dbg !1243

237:                                              ; preds = %231, %225
  %.02 = phi i64 [ %236, %231 ], [ %229, %225 ], !dbg !1244
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1168, metadata !DIExpression()), !dbg !1049
  %238 = icmp ne i64 %.02, 0, !dbg !1245
  br i1 %238, label %239, label %241, !dbg !1247

239:                                              ; preds = %237
  %240 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1248
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %240, i32 noundef -1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i64 0, i64 0)), !dbg !1250
  br label %332, !dbg !1251

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1252
  %243 = load %struct.data_block_offsets*, %struct.data_block_offsets** %242, align 8, !dbg !1252
  %244 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1253
  %245 = load i32, i32* %244, align 8, !dbg !1253
  %246 = zext i32 %245 to i64, !dbg !1254
  %247 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %243, i64 %246, !dbg !1254
  %248 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %247, i32 0, i32 1, !dbg !1255
  %249 = load i64, i64* %248, align 8, !dbg !1255
  %250 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1256
  %251 = load %struct.data_block_offsets*, %struct.data_block_offsets** %250, align 8, !dbg !1256
  %252 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1257
  %253 = load i32, i32* %252, align 8, !dbg !1257
  %254 = sub i32 %253, 1, !dbg !1258
  %255 = zext i32 %254 to i64, !dbg !1259
  %256 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %251, i64 %255, !dbg !1259
  %257 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %256, i32 0, i32 2, !dbg !1260
  %258 = load i64, i64* %257, align 8, !dbg !1260
  %259 = sub nsw i64 %249, %258, !dbg !1261
  %260 = add nsw i64 %.3, %259, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %260, metadata !1065, metadata !DIExpression()), !dbg !1049
  br label %69, !dbg !1263, !llvm.loop !1156

261:                                              ; preds = %166, %156
  br label %262

262:                                              ; preds = %261
  br label %263, !dbg !1264

263:                                              ; preds = %262, %152
  %.4 = phi i64 [ %112, %152 ], [ %.3, %262 ], !dbg !1087
  call void @llvm.dbg.value(metadata i64 %.4, metadata !1065, metadata !DIExpression()), !dbg !1049
  br label %264, !dbg !1265

264:                                              ; preds = %263, %63
  %.5 = phi i64 [ %.4, %263 ], [ %.2, %63 ], !dbg !1087
  call void @llvm.dbg.value(metadata i64 %.5, metadata !1065, metadata !DIExpression()), !dbg !1049
  %265 = call i64 @__archive_read_seek(%struct.archive_read* noundef %0, i64 noundef %.5, i32 noundef 0), !dbg !1266
  call void @llvm.dbg.value(metadata i64 %265, metadata !1168, metadata !DIExpression()), !dbg !1049
  %266 = icmp slt i64 %265, 0, !dbg !1267
  br i1 %266, label %267, label %268, !dbg !1269

267:                                              ; preds = %264
  br label %332, !dbg !1270

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1271
  %270 = load %struct.data_block_offsets*, %struct.data_block_offsets** %269, align 8, !dbg !1271
  %271 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1272
  %272 = load i32, i32* %271, align 8, !dbg !1272
  %273 = zext i32 %272 to i64, !dbg !1273
  %274 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %270, i64 %273, !dbg !1273
  %275 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %274, i32 0, i32 2, !dbg !1274
  %276 = load i64, i64* %275, align 8, !dbg !1274
  %277 = sub nsw i64 %276, %265, !dbg !1275
  %278 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 23, !dbg !1276
  store i64 %277, i64* %278, align 8, !dbg !1277
  %279 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 39, !dbg !1278
  %280 = load i32, i32* %279, align 8, !dbg !1278
  call void @llvm.dbg.value(metadata i32 %280, metadata !1092, metadata !DIExpression()), !dbg !1049
  br label %281, !dbg !1279

281:                                              ; preds = %283, %268
  %.13 = phi i64 [ %265, %268 ], [ %299, %283 ], !dbg !1087
  %.1 = phi i32 [ %280, %268 ], [ %284, %283 ], !dbg !1087
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1092, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %.13, metadata !1168, metadata !DIExpression()), !dbg !1049
  %282 = icmp ugt i32 %.1, 0, !dbg !1280
  br i1 %282, label %283, label %300, !dbg !1279

283:                                              ; preds = %281
  %284 = add i32 %.1, -1, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %284, metadata !1092, metadata !DIExpression()), !dbg !1049
  %285 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1283
  %286 = load %struct.data_block_offsets*, %struct.data_block_offsets** %285, align 8, !dbg !1283
  %287 = add i32 %284, 1, !dbg !1284
  %288 = zext i32 %287 to i64, !dbg !1285
  %289 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %286, i64 %288, !dbg !1285
  %290 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %289, i32 0, i32 1, !dbg !1286
  %291 = load i64, i64* %290, align 8, !dbg !1286
  %292 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1287
  %293 = load %struct.data_block_offsets*, %struct.data_block_offsets** %292, align 8, !dbg !1287
  %294 = zext i32 %284 to i64, !dbg !1288
  %295 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %293, i64 %294, !dbg !1288
  %296 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %295, i32 0, i32 2, !dbg !1289
  %297 = load i64, i64* %296, align 8, !dbg !1289
  %298 = sub nsw i64 %291, %297, !dbg !1290
  %299 = sub nsw i64 %.13, %298, !dbg !1291
  call void @llvm.dbg.value(metadata i64 %299, metadata !1168, metadata !DIExpression()), !dbg !1049
  br label %281, !dbg !1279, !llvm.loop !1292

300:                                              ; preds = %281
  %301 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 38, !dbg !1294
  %302 = load %struct.data_block_offsets*, %struct.data_block_offsets** %301, align 8, !dbg !1294
  %303 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %302, i64 0, !dbg !1295
  %304 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %303, i32 0, i32 1, !dbg !1296
  %305 = load i64, i64* %304, align 8, !dbg !1296
  %306 = sub nsw i64 %.13, %305, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %306, metadata !1168, metadata !DIExpression()), !dbg !1049
  %307 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 5, !dbg !1298
  store i8* null, i8** %307, align 8, !dbg !1299
  %308 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 6, !dbg !1300
  store i64 0, i64* %308, align 8, !dbg !1301
  %309 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 7, !dbg !1302
  store i64 0, i64* %309, align 8, !dbg !1303
  %310 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 8, !dbg !1304
  store i64 0, i64* %310, align 8, !dbg !1305
  %311 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 22, !dbg !1306
  store i64 0, i64* %311, align 8, !dbg !1307
  %312 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 25, !dbg !1308
  store i64 0, i64* %312, align 8, !dbg !1309
  %313 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 8, !dbg !1310
  %314 = load i64, i64* %313, align 8, !dbg !1310
  %315 = icmp eq i64 %306, %314, !dbg !1312
  br i1 %315, label %316, label %325, !dbg !1313

316:                                              ; preds = %300
  %317 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 27, !dbg !1314
  %318 = load i64, i64* %317, align 8, !dbg !1314
  %319 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 8, !dbg !1315
  %320 = load i64, i64* %319, align 8, !dbg !1315
  %321 = icmp sgt i64 %318, %320, !dbg !1316
  br i1 %321, label %322, label %325, !dbg !1317

322:                                              ; preds = %316
  %323 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 27, !dbg !1318
  %324 = load i64, i64* %323, align 8, !dbg !1318
  br label %332, !dbg !1319

325:                                              ; preds = %316, %300
  %326 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 27, !dbg !1320
  store i64 %306, i64* %326, align 8, !dbg !1321
  %327 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 27, !dbg !1322
  %328 = load i64, i64* %327, align 8, !dbg !1322
  br label %332, !dbg !1323

329:                                              ; preds = %3
  %330 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1324
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %330, i32 noundef -1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.49, i64 0, i64 0)), !dbg !1326
  br label %331

331:                                              ; preds = %329
  br label %332, !dbg !1327

332:                                              ; preds = %331, %325, %322, %267, %239, %224, %150, %143, %88, %25
  %.0 = phi i64 [ -1, %25 ], [ -25, %88 ], [ %141, %143 ], [ -25, %150 ], [ %265, %267 ], [ %324, %322 ], [ %328, %325 ], [ %222, %224 ], [ -25, %239 ], [ -25, %331 ], !dbg !1049
  ret i64 %.0, !dbg !1328
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_rar_cleanup(%struct.archive_read* noundef %0) #0 !dbg !1329 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !1330, metadata !DIExpression()), !dbg !1331
  %2 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !1332
  %3 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %2, align 8, !dbg !1332
  %4 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %3, i32 0, i32 0, !dbg !1333
  %5 = load i8*, i8** %4, align 8, !dbg !1333
  %6 = bitcast i8* %5 to %struct.rar*, !dbg !1334
  call void @llvm.dbg.value(metadata %struct.rar* %6, metadata !1335, metadata !DIExpression()), !dbg !1331
  call void @free_codes(%struct.archive_read* noundef %0), !dbg !1336
  %7 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 12, !dbg !1337
  %8 = load i8*, i8** %7, align 8, !dbg !1337
  call void @free(i8* noundef %8) #8, !dbg !1338
  %9 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 13, !dbg !1339
  %10 = load i8*, i8** %9, align 8, !dbg !1339
  call void @free(i8* noundef %10) #8, !dbg !1340
  %11 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 38, !dbg !1341
  %12 = load %struct.data_block_offsets*, %struct.data_block_offsets** %11, align 8, !dbg !1341
  %13 = bitcast %struct.data_block_offsets* %12 to i8*, !dbg !1342
  call void @free(i8* noundef %13) #8, !dbg !1343
  %14 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 31, !dbg !1344
  %15 = load i8*, i8** %14, align 8, !dbg !1344
  call void @free(i8* noundef %15) #8, !dbg !1345
  %16 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 46, !dbg !1346
  %17 = getelementptr inbounds %struct.lzss, %struct.lzss* %16, i32 0, i32 0, !dbg !1347
  %18 = load i8*, i8** %17, align 8, !dbg !1347
  call void @free(i8* noundef %18) #8, !dbg !1348
  %19 = load void (%struct.CPpmd7*, %struct.ISzAlloc*)*, void (%struct.CPpmd7*, %struct.ISzAlloc*)** getelementptr inbounds (%struct.IPpmd7, %struct.IPpmd7* @__archive_ppmd7_functions, i32 0, i32 2), align 8, !dbg !1349
  %20 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 59, !dbg !1350
  call void %19(%struct.CPpmd7* noundef %20, %struct.ISzAlloc* noundef @g_szalloc), !dbg !1351
  %21 = bitcast %struct.rar* %6 to i8*, !dbg !1352
  call void @free(i8* noundef %21) #8, !dbg !1353
  %22 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !1354
  %23 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %22, align 8, !dbg !1354
  %24 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %23, i32 0, i32 0, !dbg !1355
  store i8* null, i8** %24, align 8, !dbg !1356
  ret i32 0, !dbg !1357
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare i8* @__archive_read_ahead(%struct.archive_read* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #5

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #5

declare %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @skip_sfx(%struct.archive_read* noundef %0) #0 !dbg !1358 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !1359, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1361, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 0, metadata !1363, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 4096, metadata !1364, metadata !DIExpression()), !dbg !1360
  br label %3, !dbg !1365

3:                                                ; preds = %34, %13, %1
  %.02 = phi i64 [ 0, %1 ], [ %.02, %13 ], [ %39, %34 ], !dbg !1360
  %.01 = phi i64 [ 4096, %1 ], [ %10, %13 ], [ %.01, %34 ], !dbg !1360
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1364, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1363, metadata !DIExpression()), !dbg !1360
  %4 = add i64 %.02, %.01, !dbg !1366
  %5 = icmp ule i64 %4, 131072, !dbg !1367
  br i1 %5, label %6, label %40, !dbg !1365

6:                                                ; preds = %3
  %7 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef %.01, i64* noundef %2), !dbg !1368
  call void @llvm.dbg.value(metadata i8* %7, metadata !1370, metadata !DIExpression()), !dbg !1360
  %8 = icmp eq i8* %7, null, !dbg !1371
  br i1 %8, label %9, label %14, !dbg !1373

9:                                                ; preds = %6
  %10 = ashr i64 %.01, 1, !dbg !1374
  call void @llvm.dbg.value(metadata i64 %10, metadata !1364, metadata !DIExpression()), !dbg !1360
  %11 = icmp slt i64 %10, 64, !dbg !1376
  br i1 %11, label %12, label %13, !dbg !1378

12:                                               ; preds = %9
  br label %41, !dbg !1379

13:                                               ; preds = %9
  br label %3, !dbg !1380, !llvm.loop !1381

14:                                               ; preds = %6
  %15 = load i64, i64* %2, align 8, !dbg !1383
  %16 = icmp slt i64 %15, 64, !dbg !1385
  br i1 %16, label %17, label %18, !dbg !1386

17:                                               ; preds = %14
  br label %41, !dbg !1387

18:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %7, metadata !1388, metadata !DIExpression()), !dbg !1360
  %19 = load i64, i64* %2, align 8, !dbg !1389
  %20 = getelementptr inbounds i8, i8* %7, i64 %19, !dbg !1390
  call void @llvm.dbg.value(metadata i8* %20, metadata !1391, metadata !DIExpression()), !dbg !1360
  br label %21, !dbg !1392

21:                                               ; preds = %32, %18
  %.03 = phi i8* [ %7, %18 ], [ %33, %32 ], !dbg !1393
  call void @llvm.dbg.value(metadata i8* %.03, metadata !1388, metadata !DIExpression()), !dbg !1360
  %22 = getelementptr inbounds i8, i8* %.03, i64 7, !dbg !1394
  %23 = icmp ult i8* %22, %20, !dbg !1395
  br i1 %23, label %24, label %34, !dbg !1392

24:                                               ; preds = %21
  %25 = call i32 @memcmp(i8* noundef %.03, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 noundef 7) #9, !dbg !1396
  %26 = icmp eq i32 %25, 0, !dbg !1399
  br i1 %26, label %27, label %32, !dbg !1400

27:                                               ; preds = %24
  %28 = ptrtoint i8* %.03 to i64, !dbg !1401
  %29 = ptrtoint i8* %7 to i64, !dbg !1401
  %30 = sub i64 %28, %29, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %30, metadata !1403, metadata !DIExpression()), !dbg !1360
  %31 = call i64 @__archive_read_consume(%struct.archive_read* noundef %0, i64 noundef %30), !dbg !1404
  br label %43, !dbg !1405

32:                                               ; preds = %24
  %33 = getelementptr inbounds i8, i8* %.03, i64 16, !dbg !1406
  call void @llvm.dbg.value(metadata i8* %33, metadata !1388, metadata !DIExpression()), !dbg !1360
  br label %21, !dbg !1392, !llvm.loop !1407

34:                                               ; preds = %21
  %35 = ptrtoint i8* %.03 to i64, !dbg !1409
  %36 = ptrtoint i8* %7 to i64, !dbg !1409
  %37 = sub i64 %35, %36, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %37, metadata !1403, metadata !DIExpression()), !dbg !1360
  %38 = call i64 @__archive_read_consume(%struct.archive_read* noundef %0, i64 noundef %37), !dbg !1410
  %39 = add i64 %.02, %37, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %39, metadata !1363, metadata !DIExpression()), !dbg !1360
  br label %3, !dbg !1365, !llvm.loop !1381

40:                                               ; preds = %3
  br label %41, !dbg !1365

41:                                               ; preds = %40, %17, %12
  call void @llvm.dbg.label(metadata !1412), !dbg !1413
  %42 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1414
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %42, i32 noundef 84, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0)), !dbg !1415
  br label %43, !dbg !1416

43:                                               ; preds = %41, %27
  %.0 = phi i32 [ -30, %41 ], [ 0, %27 ], !dbg !1360
  ret i32 %.0, !dbg !1417
}

declare i64 @__archive_read_consume(%struct.archive_read* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @archive_le16dec(i8* noundef %0) #0 !dbg !1418 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1424, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i8* %0, metadata !1426, metadata !DIExpression()), !dbg !1425
  %2 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1427
  %3 = load i8, i8* %2, align 1, !dbg !1427
  %4 = zext i8 %3 to i32, !dbg !1427
  %5 = shl i32 %4, 8, !dbg !1428
  %6 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1429
  %7 = load i8, i8* %6, align 1, !dbg !1429
  %8 = zext i8 %7 to i32, !dbg !1429
  %9 = or i32 %5, %8, !dbg !1430
  %10 = trunc i32 %9 to i16, !dbg !1431
  ret i16 %10, !dbg !1432
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare i64 @crc32(i64 noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1, i8 noundef signext %2) #0 !dbg !1433 {
  %4 = alloca %struct.rar_header, align 1
  %5 = alloca %struct.rar_file_header, align 1
  %6 = alloca [8 x i8], align 1
  %7 = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !1436, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata %struct.archive_entry* %1, metadata !1438, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %2, metadata !1439, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.declare(metadata %struct.rar_header* %4, metadata !1440, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.declare(metadata %struct.rar_file_header* %5, metadata !1448, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.declare(metadata [8 x i8]* %6, metadata !1461, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.declare(metadata [8 x i8]* %7, metadata !1463, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !1437
  %8 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !1466
  %9 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %8, align 8, !dbg !1466
  %10 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %9, i32 0, i32 0, !dbg !1467
  %11 = load i8*, i8** %10, align 8, !dbg !1467
  %12 = bitcast i8* %11 to %struct.rar*, !dbg !1468
  call void @llvm.dbg.value(metadata %struct.rar* %12, metadata !1469, metadata !DIExpression()), !dbg !1437
  %13 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 64, !dbg !1470
  %14 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8, !dbg !1470
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %14, metadata !1471, metadata !DIExpression()), !dbg !1437
  %15 = icmp eq %struct.archive_string_conv* %14, null, !dbg !1472
  br i1 %15, label %16, label %28, !dbg !1474

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 62, !dbg !1475
  %18 = load i32, i32* %17, align 8, !dbg !1475
  %19 = icmp ne i32 %18, 0, !dbg !1478
  br i1 %19, label %25, label %20, !dbg !1479

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1480
  %22 = call %struct.archive_string_conv* @archive_string_default_conversion_for_read(%struct.archive* noundef %21), !dbg !1482
  %23 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 63, !dbg !1483
  store %struct.archive_string_conv* %22, %struct.archive_string_conv** %23, align 8, !dbg !1484
  %24 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 62, !dbg !1485
  store i32 1, i32* %24, align 8, !dbg !1486
  br label %25, !dbg !1487

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 63, !dbg !1488
  %27 = load %struct.archive_string_conv*, %struct.archive_string_conv** %26, align 8, !dbg !1488
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %27, metadata !1471, metadata !DIExpression()), !dbg !1437
  br label %28, !dbg !1489

28:                                               ; preds = %25, %3
  %.024 = phi %struct.archive_string_conv* [ %27, %25 ], [ %14, %3 ], !dbg !1437
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %.024, metadata !1471, metadata !DIExpression()), !dbg !1437
  %29 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef 7, i64* noundef null), !dbg !1490
  call void @llvm.dbg.value(metadata i8* %29, metadata !1492, metadata !DIExpression()), !dbg !1437
  %30 = icmp eq i8* %29, null, !dbg !1493
  br i1 %30, label %31, label %32, !dbg !1494

31:                                               ; preds = %28
  br label %705, !dbg !1495

32:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8* %29, metadata !1496, metadata !DIExpression()), !dbg !1437
  %33 = bitcast %struct.rar_header* %4 to i8*, !dbg !1497
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 %29, i64 7, i1 false), !dbg !1497
  %34 = getelementptr inbounds %struct.rar_header, %struct.rar_header* %4, i32 0, i32 2, !dbg !1498
  %35 = getelementptr inbounds [2 x i8], [2 x i8]* %34, i64 0, i64 0, !dbg !1499
  %36 = call zeroext i16 @archive_le16dec(i8* noundef %35), !dbg !1500
  %37 = zext i16 %36 to i32, !dbg !1500
  %38 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 6, !dbg !1501
  store i32 %37, i32* %38, align 8, !dbg !1502
  %39 = getelementptr inbounds %struct.rar_header, %struct.rar_header* %4, i32 0, i32 3, !dbg !1503
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %39, i64 0, i64 0, !dbg !1504
  %41 = call zeroext i16 @archive_le16dec(i8* noundef %40), !dbg !1505
  %42 = zext i16 %41 to i64, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %42, metadata !1506, metadata !DIExpression()), !dbg !1437
  %43 = icmp slt i64 %42, 32, !dbg !1507
  br i1 %43, label %44, label %46, !dbg !1509

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1510
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %45, i32 noundef 84, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)), !dbg !1512
  br label %705, !dbg !1513

46:                                               ; preds = %32
  %47 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !1514
  %48 = call i64 @crc32(i64 noundef 0, i8* noundef %47, i32 noundef 5), !dbg !1515
  call void @llvm.dbg.value(metadata i64 %48, metadata !1516, metadata !DIExpression()), !dbg !1437
  %49 = call i64 @__archive_read_consume(%struct.archive_read* noundef %0, i64 noundef 7), !dbg !1517
  %50 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 6, !dbg !1518
  %51 = load i32, i32* %50, align 8, !dbg !1518
  %52 = and i32 %51, 16, !dbg !1520
  %53 = icmp ne i32 %52, 0, !dbg !1520
  br i1 %53, label %73, label %54, !dbg !1521

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 5, !dbg !1522
  store i8 0, i8* %55, align 1, !dbg !1524
  %56 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 7, !dbg !1525
  store i64 0, i64* %56, align 8, !dbg !1526
  %57 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 8, !dbg !1527
  store i64 0, i64* %57, align 8, !dbg !1528
  %58 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 9, !dbg !1529
  store i64 0, i64* %58, align 8, !dbg !1530
  %59 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 18, !dbg !1531
  store i64 0, i64* %59, align 8, !dbg !1532
  %60 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 16, !dbg !1533
  store i64 0, i64* %60, align 8, !dbg !1534
  %61 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 20, !dbg !1535
  store i64 0, i64* %61, align 8, !dbg !1536
  %62 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 11, !dbg !1537
  store i32 0, i32* %62, align 8, !dbg !1538
  %63 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 15, !dbg !1539
  %64 = bitcast [8 x i8]* %63 to i8*, !dbg !1540
  call void @llvm.memset.p0i8.i64(i8* align 8 %64, i8 0, i64 8, i1 false), !dbg !1540
  %65 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 16, !dbg !1541
  store i64 0, i64* %65, align 8, !dbg !1542
  %66 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 17, !dbg !1543
  store i64 0, i64* %66, align 8, !dbg !1544
  %67 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 18, !dbg !1545
  store i64 0, i64* %67, align 8, !dbg !1546
  %68 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 19, !dbg !1547
  store i64 0, i64* %68, align 8, !dbg !1548
  %69 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 9, !dbg !1549
  store i64 0, i64* %69, align 8, !dbg !1550
  %70 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 10, !dbg !1551
  store i64 0, i64* %70, align 8, !dbg !1552
  %71 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 20, !dbg !1553
  store i64 0, i64* %71, align 8, !dbg !1554
  %72 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 21, !dbg !1555
  store i64 0, i64* %72, align 8, !dbg !1556
  br label %75, !dbg !1557

73:                                               ; preds = %46
  %74 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1558
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %74, i32 noundef 84, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0)), !dbg !1560
  br label %705, !dbg !1561

75:                                               ; preds = %54
  %76 = sub i64 %42, 7, !dbg !1562
  %77 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef %76, i64* noundef null), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %77, metadata !1492, metadata !DIExpression()), !dbg !1437
  %78 = icmp eq i8* %77, null, !dbg !1565
  br i1 %78, label %79, label %80, !dbg !1566

79:                                               ; preds = %75
  br label %705, !dbg !1567

80:                                               ; preds = %75
  %81 = sub nsw i64 %42, 7, !dbg !1568
  %82 = trunc i64 %81 to i32, !dbg !1569
  %83 = call i64 @crc32(i64 noundef %48, i8* noundef %77, i32 noundef %82), !dbg !1570
  call void @llvm.dbg.value(metadata i64 %83, metadata !1516, metadata !DIExpression()), !dbg !1437
  %84 = and i64 %83, 65535, !dbg !1571
  %85 = getelementptr inbounds %struct.rar_header, %struct.rar_header* %4, i32 0, i32 0, !dbg !1573
  %86 = getelementptr inbounds [2 x i8], [2 x i8]* %85, i64 0, i64 0, !dbg !1574
  %87 = call zeroext i16 @archive_le16dec(i8* noundef %86), !dbg !1575
  %88 = zext i16 %87 to i64, !dbg !1575
  %89 = icmp ne i64 %84, %88, !dbg !1576
  br i1 %89, label %90, label %92, !dbg !1577

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1578
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %91, i32 noundef 84, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0)), !dbg !1580
  br label %705, !dbg !1581

92:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i8* %77, metadata !1496, metadata !DIExpression()), !dbg !1437
  %93 = getelementptr inbounds i8, i8* %77, i64 %42, !dbg !1582
  %94 = getelementptr inbounds i8, i8* %93, i64 -7, !dbg !1583
  call void @llvm.dbg.value(metadata i8* %94, metadata !1584, metadata !DIExpression()), !dbg !1437
  %95 = bitcast %struct.rar_file_header* %5 to i8*, !dbg !1585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %95, i8* align 1 %77, i64 25, i1 false), !dbg !1585
  %96 = getelementptr inbounds i8, i8* %77, i64 25, !dbg !1586
  call void @llvm.dbg.value(metadata i8* %96, metadata !1496, metadata !DIExpression()), !dbg !1437
  %97 = getelementptr inbounds %struct.rar_file_header, %struct.rar_file_header* %5, i32 0, i32 6, !dbg !1587
  %98 = load i8, i8* %97, align 1, !dbg !1587
  %99 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 5, !dbg !1588
  store i8 %98, i8* %99, align 1, !dbg !1589
  %100 = getelementptr inbounds %struct.rar_file_header, %struct.rar_file_header* %5, i32 0, i32 4, !dbg !1590
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %100, i64 0, i64 0, !dbg !1591
  %102 = call i32 @archive_le32dec(i8* noundef %101), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %102, metadata !1593, metadata !DIExpression()), !dbg !1437
  %103 = call i64 @get_time(i32 noundef %102), !dbg !1594
  %104 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 9, !dbg !1595
  store i64 %103, i64* %104, align 8, !dbg !1596
  %105 = getelementptr inbounds %struct.rar_file_header, %struct.rar_file_header* %5, i32 0, i32 3, !dbg !1597
  %106 = getelementptr inbounds [4 x i8], [4 x i8]* %105, i64 0, i64 0, !dbg !1598
  %107 = call i32 @archive_le32dec(i8* noundef %106), !dbg !1599
  %108 = zext i32 %107 to i64, !dbg !1599
  %109 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 1, !dbg !1600
  store i64 %108, i64* %109, align 8, !dbg !1601
  %110 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 6, !dbg !1602
  %111 = load i32, i32* %110, align 8, !dbg !1602
  %112 = and i32 %111, 4, !dbg !1604
  %113 = icmp ne i32 %112, 0, !dbg !1604
  br i1 %113, label %114, label %116, !dbg !1605

114:                                              ; preds = %92
  %115 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1606
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %115, i32 noundef 84, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0)), !dbg !1608
  br label %705, !dbg !1609

116:                                              ; preds = %92
  %117 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 6, !dbg !1610
  %118 = load i32, i32* %117, align 8, !dbg !1610
  %119 = and i32 %118, 256, !dbg !1612
  %120 = icmp ne i32 %119, 0, !dbg !1612
  br i1 %120, label %121, label %140, !dbg !1613

121:                                              ; preds = %116
  %122 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !1614
  %123 = getelementptr inbounds %struct.rar_file_header, %struct.rar_file_header* %5, i32 0, i32 0, !dbg !1616
  %124 = getelementptr inbounds [4 x i8], [4 x i8]* %123, i64 0, i64 0, !dbg !1614
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %122, i8* align 1 %124, i64 4, i1 false), !dbg !1614
  %125 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !1617
  %126 = getelementptr inbounds i8, i8* %125, i64 4, !dbg !1618
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %126, i8* align 1 %96, i64 4, i1 false), !dbg !1619
  %127 = getelementptr inbounds i8, i8* %96, i64 4, !dbg !1620
  call void @llvm.dbg.value(metadata i8* %127, metadata !1496, metadata !DIExpression()), !dbg !1437
  %128 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !1621
  %129 = getelementptr inbounds %struct.rar_file_header, %struct.rar_file_header* %5, i32 0, i32 1, !dbg !1622
  %130 = getelementptr inbounds [4 x i8], [4 x i8]* %129, i64 0, i64 0, !dbg !1621
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %128, i8* align 1 %130, i64 4, i1 false), !dbg !1621
  %131 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !1623
  %132 = getelementptr inbounds i8, i8* %131, i64 4, !dbg !1624
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %132, i8* align 1 %127, i64 4, i1 false), !dbg !1625
  %133 = getelementptr inbounds i8, i8* %127, i64 4, !dbg !1626
  call void @llvm.dbg.value(metadata i8* %133, metadata !1496, metadata !DIExpression()), !dbg !1437
  %134 = bitcast [8 x i8]* %6 to i8*, !dbg !1627
  %135 = call i64 @archive_le64dec(i8* noundef %134), !dbg !1628
  %136 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 7, !dbg !1629
  store i64 %135, i64* %136, align 8, !dbg !1630
  %137 = bitcast [8 x i8]* %7 to i8*, !dbg !1631
  %138 = call i64 @archive_le64dec(i8* noundef %137), !dbg !1632
  %139 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 8, !dbg !1633
  store i64 %138, i64* %139, align 8, !dbg !1634
  br label %151, !dbg !1635

140:                                              ; preds = %116
  %141 = getelementptr inbounds %struct.rar_file_header, %struct.rar_file_header* %5, i32 0, i32 0, !dbg !1636
  %142 = getelementptr inbounds [4 x i8], [4 x i8]* %141, i64 0, i64 0, !dbg !1638
  %143 = call i32 @archive_le32dec(i8* noundef %142), !dbg !1639
  %144 = zext i32 %143 to i64, !dbg !1639
  %145 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 7, !dbg !1640
  store i64 %144, i64* %145, align 8, !dbg !1641
  %146 = getelementptr inbounds %struct.rar_file_header, %struct.rar_file_header* %5, i32 0, i32 1, !dbg !1642
  %147 = getelementptr inbounds [4 x i8], [4 x i8]* %146, i64 0, i64 0, !dbg !1643
  %148 = call i32 @archive_le32dec(i8* noundef %147), !dbg !1644
  %149 = zext i32 %148 to i64, !dbg !1644
  %150 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 8, !dbg !1645
  store i64 %149, i64* %150, align 8, !dbg !1646
  br label %151

151:                                              ; preds = %140, %121
  %.04 = phi i8* [ %133, %121 ], [ %96, %140 ], !dbg !1437
  call void @llvm.dbg.value(metadata i8* %.04, metadata !1496, metadata !DIExpression()), !dbg !1437
  %152 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 7, !dbg !1647
  %153 = load i64, i64* %152, align 8, !dbg !1647
  %154 = icmp slt i64 %153, 0, !dbg !1649
  br i1 %154, label %159, label %155, !dbg !1650

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 8, !dbg !1651
  %157 = load i64, i64* %156, align 8, !dbg !1651
  %158 = icmp slt i64 %157, 0, !dbg !1652
  br i1 %158, label %159, label %161, !dbg !1653

159:                                              ; preds = %155, %151
  %160 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1654
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %160, i32 noundef 84, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0)), !dbg !1656
  br label %705, !dbg !1657

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 7, !dbg !1658
  %163 = load i64, i64* %162, align 8, !dbg !1658
  %164 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 23, !dbg !1659
  store i64 %163, i64* %164, align 8, !dbg !1660
  %165 = sext i8 %2 to i32, !dbg !1661
  %166 = icmp eq i32 %165, 122, !dbg !1663
  br i1 %166, label %167, label %182, !dbg !1664

167:                                              ; preds = %161
  %168 = ptrtoint i8* %.04 to i64, !dbg !1665
  %169 = ptrtoint i8* %77 to i64, !dbg !1665
  %170 = sub i64 %168, %169, !dbg !1665
  call void @llvm.dbg.value(metadata i64 %170, metadata !1667, metadata !DIExpression()), !dbg !1668
  %171 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 7, !dbg !1669
  %172 = load i64, i64* %171, align 8, !dbg !1669
  %173 = add nsw i64 %42, %172, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %173, metadata !1506, metadata !DIExpression()), !dbg !1437
  %174 = sub i64 %173, 7, !dbg !1671
  %175 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef %174, i64* noundef null), !dbg !1673
  call void @llvm.dbg.value(metadata i8* %175, metadata !1492, metadata !DIExpression()), !dbg !1437
  %176 = icmp eq i8* %175, null, !dbg !1674
  br i1 %176, label %177, label %178, !dbg !1675

177:                                              ; preds = %167
  br label %705, !dbg !1676

178:                                              ; preds = %167
  call void @llvm.dbg.value(metadata i8* %175, metadata !1496, metadata !DIExpression()), !dbg !1437
  %179 = getelementptr inbounds i8, i8* %175, i64 %173, !dbg !1677
  %180 = getelementptr inbounds i8, i8* %179, i64 -7, !dbg !1678
  call void @llvm.dbg.value(metadata i8* %180, metadata !1584, metadata !DIExpression()), !dbg !1437
  %181 = getelementptr inbounds i8, i8* %175, i64 %170, !dbg !1679
  call void @llvm.dbg.value(metadata i8* %181, metadata !1496, metadata !DIExpression()), !dbg !1437
  br label %182, !dbg !1680

182:                                              ; preds = %178, %161
  %.010 = phi i64 [ %173, %178 ], [ %42, %161 ], !dbg !1437
  %.05 = phi i8* [ %180, %178 ], [ %94, %161 ], !dbg !1437
  %.1 = phi i8* [ %181, %178 ], [ %.04, %161 ], !dbg !1437
  call void @llvm.dbg.value(metadata i8* %.1, metadata !1496, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %.05, metadata !1584, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %.010, metadata !1506, metadata !DIExpression()), !dbg !1437
  %183 = getelementptr inbounds %struct.rar_file_header, %struct.rar_file_header* %5, i32 0, i32 7, !dbg !1681
  %184 = getelementptr inbounds [2 x i8], [2 x i8]* %183, i64 0, i64 0, !dbg !1682
  %185 = call zeroext i16 @archive_le16dec(i8* noundef %184), !dbg !1683
  %186 = zext i16 %185 to i32, !dbg !1683
  call void @llvm.dbg.value(metadata i32 %186, metadata !1684, metadata !DIExpression()), !dbg !1437
  %187 = zext i32 %186 to i64, !dbg !1685
  %188 = getelementptr inbounds i8, i8* %.1, i64 %187, !dbg !1685
  %189 = icmp ugt i8* %188, %.05, !dbg !1687
  br i1 %189, label %190, label %192, !dbg !1688

190:                                              ; preds = %182
  %191 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1689
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %191, i32 noundef 84, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0)), !dbg !1691
  br label %705, !dbg !1692

192:                                              ; preds = %182
  %193 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 14, !dbg !1693
  %194 = load i64, i64* %193, align 8, !dbg !1693
  %195 = mul i32 %186, 2, !dbg !1695
  %196 = add i32 %195, 2, !dbg !1696
  %197 = zext i32 %196 to i64, !dbg !1697
  %198 = icmp ult i64 %194, %197, !dbg !1698
  br i1 %198, label %199, label %212, !dbg !1699

199:                                              ; preds = %192
  %200 = mul i32 %186, 2, !dbg !1700
  %201 = add i32 %200, 2, !dbg !1702
  %202 = zext i32 %201 to i64, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %202, metadata !1704, metadata !DIExpression()), !dbg !1705
  %203 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 12, !dbg !1706
  %204 = load i8*, i8** %203, align 8, !dbg !1706
  %205 = call i8* @realloc(i8* noundef %204, i64 noundef %202) #8, !dbg !1707
  call void @llvm.dbg.value(metadata i8* %205, metadata !1708, metadata !DIExpression()), !dbg !1705
  %206 = icmp eq i8* %205, null, !dbg !1709
  br i1 %206, label %207, label %209, !dbg !1711

207:                                              ; preds = %199
  %208 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1712
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %208, i32 noundef 12, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0)), !dbg !1714
  br label %705, !dbg !1715

209:                                              ; preds = %199
  %210 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 12, !dbg !1716
  store i8* %205, i8** %210, align 8, !dbg !1717
  %211 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 14, !dbg !1718
  store i64 %202, i64* %211, align 8, !dbg !1719
  br label %212, !dbg !1720

212:                                              ; preds = %209, %192
  %213 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 12, !dbg !1721
  %214 = load i8*, i8** %213, align 8, !dbg !1721
  call void @llvm.dbg.value(metadata i8* %214, metadata !1722, metadata !DIExpression()), !dbg !1437
  %215 = zext i32 %186 to i64, !dbg !1723
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %214, i8* align 1 %.1, i64 %215, i1 false), !dbg !1724
  %216 = zext i32 %186 to i64, !dbg !1725
  %217 = getelementptr inbounds i8, i8* %214, i64 %216, !dbg !1725
  store i8 0, i8* %217, align 1, !dbg !1726
  %218 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 6, !dbg !1727
  %219 = load i32, i32* %218, align 8, !dbg !1727
  %220 = and i32 %219, 512, !dbg !1729
  %221 = icmp ne i32 %220, 0, !dbg !1729
  br i1 %221, label %222, label %400, !dbg !1730

222:                                              ; preds = %212
  %223 = zext i32 %186 to i64, !dbg !1731
  %224 = call i64 @strlen(i8* noundef %214) #9, !dbg !1734
  %225 = icmp ne i64 %223, %224, !dbg !1735
  br i1 %225, label %226, label %376, !dbg !1736

226:                                              ; preds = %222
  call void @llvm.dbg.value(metadata i32 %186, metadata !1737, metadata !DIExpression()), !dbg !1437
  %227 = mul i32 %186, 2, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %227, metadata !1740, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 0, metadata !1684, metadata !DIExpression()), !dbg !1437
  %228 = call i64 @strlen(i8* noundef %214) #9, !dbg !1742
  %229 = trunc i64 %228 to i32, !dbg !1743
  %230 = add i32 %229, 1, !dbg !1744
  call void @llvm.dbg.value(metadata i32 %230, metadata !1745, metadata !DIExpression()), !dbg !1741
  %231 = add i32 %230, 1, !dbg !1746
  call void @llvm.dbg.value(metadata i32 %231, metadata !1745, metadata !DIExpression()), !dbg !1741
  %232 = zext i32 %230 to i64, !dbg !1747
  %233 = getelementptr inbounds i8, i8* %.1, i64 %232, !dbg !1747
  %234 = load i8, i8* %233, align 1, !dbg !1748
  call void @llvm.dbg.value(metadata i8 %234, metadata !1749, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 0, metadata !1750, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 0, metadata !1751, metadata !DIExpression()), !dbg !1741
  br label %235, !dbg !1752

235:                                              ; preds = %336, %226
  %.018 = phi i8 [ 0, %226 ], [ %251, %336 ], !dbg !1741
  %.016 = phi i8 [ 0, %226 ], [ %.117, %336 ], !dbg !1753
  %.011 = phi i32 [ 0, %226 ], [ %.213, %336 ], !dbg !1754
  %.06 = phi i32 [ %231, %226 ], [ %.39, %336 ], !dbg !1746
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1745, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %.011, metadata !1684, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %.016, metadata !1751, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 %.018, metadata !1750, metadata !DIExpression()), !dbg !1741
  %236 = icmp ult i32 %.06, %186, !dbg !1755
  br i1 %236, label %237, label %239, !dbg !1756

237:                                              ; preds = %235
  %238 = icmp ult i32 %.011, %227, !dbg !1757
  br label %239

239:                                              ; preds = %237, %235
  %240 = phi i1 [ false, %235 ], [ %238, %237 ], !dbg !1741
  br i1 %240, label %241, label %337, !dbg !1752

241:                                              ; preds = %239
  %242 = icmp ne i8 %.018, 0, !dbg !1758
  br i1 %242, label %248, label %243, !dbg !1761

243:                                              ; preds = %241
  %244 = add i32 %.06, 1, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %244, metadata !1745, metadata !DIExpression()), !dbg !1741
  %245 = zext i32 %.06 to i64, !dbg !1764
  %246 = getelementptr inbounds i8, i8* %.1, i64 %245, !dbg !1764
  %247 = load i8, i8* %246, align 1, !dbg !1765
  call void @llvm.dbg.value(metadata i8 %247, metadata !1751, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 8, metadata !1750, metadata !DIExpression()), !dbg !1741
  br label %248, !dbg !1766

248:                                              ; preds = %243, %241
  %.119 = phi i8 [ %.018, %241 ], [ 8, %243 ], !dbg !1741
  %.117 = phi i8 [ %.016, %241 ], [ %247, %243 ], !dbg !1741
  %.17 = phi i32 [ %.06, %241 ], [ %244, %243 ], !dbg !1741
  call void @llvm.dbg.value(metadata i32 %.17, metadata !1745, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 %.117, metadata !1751, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 %.119, metadata !1750, metadata !DIExpression()), !dbg !1741
  %249 = zext i8 %.119 to i32, !dbg !1767
  %250 = sub nsw i32 %249, 2, !dbg !1767
  %251 = trunc i32 %250 to i8, !dbg !1767
  call void @llvm.dbg.value(metadata i8 %251, metadata !1750, metadata !DIExpression()), !dbg !1741
  %252 = zext i8 %.117 to i32, !dbg !1768
  %253 = zext i8 %251 to i32, !dbg !1769
  %254 = ashr i32 %252, %253, !dbg !1770
  %255 = and i32 %254, 3, !dbg !1771
  switch i32 %255, label %336 [
    i32 0, label %256
    i32 1, label %267
    i32 2, label %278
    i32 3, label %293
  ], !dbg !1772

256:                                              ; preds = %248
  %257 = add i32 %.011, 1, !dbg !1773
  call void @llvm.dbg.value(metadata i32 %257, metadata !1684, metadata !DIExpression()), !dbg !1437
  %258 = zext i32 %.011 to i64, !dbg !1775
  %259 = getelementptr inbounds i8, i8* %214, i64 %258, !dbg !1775
  store i8 0, i8* %259, align 1, !dbg !1776
  %260 = add i32 %.17, 1, !dbg !1777
  call void @llvm.dbg.value(metadata i32 %260, metadata !1745, metadata !DIExpression()), !dbg !1741
  %261 = zext i32 %.17 to i64, !dbg !1778
  %262 = getelementptr inbounds i8, i8* %.1, i64 %261, !dbg !1778
  %263 = load i8, i8* %262, align 1, !dbg !1779
  %264 = add i32 %257, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %264, metadata !1684, metadata !DIExpression()), !dbg !1437
  %265 = zext i32 %257 to i64, !dbg !1781
  %266 = getelementptr inbounds i8, i8* %214, i64 %265, !dbg !1781
  store i8 %263, i8* %266, align 1, !dbg !1782
  br label %336, !dbg !1783

267:                                              ; preds = %248
  %268 = add i32 %.011, 1, !dbg !1784
  call void @llvm.dbg.value(metadata i32 %268, metadata !1684, metadata !DIExpression()), !dbg !1437
  %269 = zext i32 %.011 to i64, !dbg !1785
  %270 = getelementptr inbounds i8, i8* %214, i64 %269, !dbg !1785
  store i8 %234, i8* %270, align 1, !dbg !1786
  %271 = add i32 %.17, 1, !dbg !1787
  call void @llvm.dbg.value(metadata i32 %271, metadata !1745, metadata !DIExpression()), !dbg !1741
  %272 = zext i32 %.17 to i64, !dbg !1788
  %273 = getelementptr inbounds i8, i8* %.1, i64 %272, !dbg !1788
  %274 = load i8, i8* %273, align 1, !dbg !1789
  %275 = add i32 %268, 1, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %275, metadata !1684, metadata !DIExpression()), !dbg !1437
  %276 = zext i32 %268 to i64, !dbg !1791
  %277 = getelementptr inbounds i8, i8* %214, i64 %276, !dbg !1791
  store i8 %274, i8* %277, align 1, !dbg !1792
  br label %336, !dbg !1793

278:                                              ; preds = %248
  %279 = zext i32 %.17 to i64, !dbg !1794
  %280 = getelementptr inbounds i8, i8* %.1, i64 %279, !dbg !1794
  %281 = getelementptr inbounds i8, i8* %280, i64 1, !dbg !1795
  %282 = load i8, i8* %281, align 1, !dbg !1796
  %283 = add i32 %.011, 1, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %283, metadata !1684, metadata !DIExpression()), !dbg !1437
  %284 = zext i32 %.011 to i64, !dbg !1798
  %285 = getelementptr inbounds i8, i8* %214, i64 %284, !dbg !1798
  store i8 %282, i8* %285, align 1, !dbg !1799
  %286 = zext i32 %.17 to i64, !dbg !1800
  %287 = getelementptr inbounds i8, i8* %.1, i64 %286, !dbg !1800
  %288 = load i8, i8* %287, align 1, !dbg !1801
  %289 = add i32 %283, 1, !dbg !1802
  call void @llvm.dbg.value(metadata i32 %289, metadata !1684, metadata !DIExpression()), !dbg !1437
  %290 = zext i32 %283 to i64, !dbg !1803
  %291 = getelementptr inbounds i8, i8* %214, i64 %290, !dbg !1803
  store i8 %288, i8* %291, align 1, !dbg !1804
  %292 = add i32 %.17, 2, !dbg !1805
  call void @llvm.dbg.value(metadata i32 %292, metadata !1745, metadata !DIExpression()), !dbg !1741
  br label %336, !dbg !1806

293:                                              ; preds = %248
  %294 = add i32 %.17, 1, !dbg !1807
  call void @llvm.dbg.value(metadata i32 %294, metadata !1745, metadata !DIExpression()), !dbg !1741
  %295 = zext i32 %.17 to i64, !dbg !1809
  %296 = getelementptr inbounds i8, i8* %.1, i64 %295, !dbg !1809
  %297 = load i8, i8* %296, align 1, !dbg !1810
  call void @llvm.dbg.value(metadata i8 %297, metadata !1811, metadata !DIExpression()), !dbg !1814
  %298 = zext i8 %297 to i32, !dbg !1815
  %299 = and i32 %298, 128, !dbg !1817
  %300 = icmp ne i32 %299, 0, !dbg !1817
  br i1 %300, label %301, label %306, !dbg !1818

301:                                              ; preds = %293
  %302 = add i32 %294, 1, !dbg !1819
  call void @llvm.dbg.value(metadata i32 %302, metadata !1745, metadata !DIExpression()), !dbg !1741
  %303 = zext i32 %294 to i64, !dbg !1821
  %304 = getelementptr inbounds i8, i8* %.1, i64 %303, !dbg !1821
  %305 = load i8, i8* %304, align 1, !dbg !1822
  call void @llvm.dbg.value(metadata i8 %305, metadata !1823, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %234, metadata !1824, metadata !DIExpression()), !dbg !1814
  br label %307, !dbg !1825

306:                                              ; preds = %293
  call void @llvm.dbg.value(metadata i8 0, metadata !1824, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 0, metadata !1823, metadata !DIExpression()), !dbg !1814
  br label %307

307:                                              ; preds = %306, %301
  %.28 = phi i32 [ %302, %301 ], [ %294, %306 ], !dbg !1814
  %.03 = phi i8 [ %305, %301 ], [ 0, %306 ], !dbg !1826
  %.02 = phi i8 [ %234, %301 ], [ 0, %306 ], !dbg !1826
  call void @llvm.dbg.value(metadata i8 %.02, metadata !1824, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %.03, metadata !1823, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32 %.28, metadata !1745, metadata !DIExpression()), !dbg !1741
  %308 = zext i8 %297 to i32, !dbg !1827
  %309 = and i32 %308, 127, !dbg !1828
  %310 = add nsw i32 %309, 2, !dbg !1829
  %311 = trunc i32 %310 to i8, !dbg !1830
  call void @llvm.dbg.value(metadata i8 %311, metadata !1811, metadata !DIExpression()), !dbg !1814
  br label %312, !dbg !1831

312:                                              ; preds = %319, %307
  %.112 = phi i32 [ %.011, %307 ], [ %331, %319 ], !dbg !1741
  %.01 = phi i8 [ %311, %307 ], [ %334, %319 ], !dbg !1814
  call void @llvm.dbg.value(metadata i8 %.01, metadata !1811, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32 %.112, metadata !1684, metadata !DIExpression()), !dbg !1437
  %313 = zext i8 %.01 to i32, !dbg !1832
  %314 = icmp ne i32 %313, 0, !dbg !1832
  br i1 %314, label %315, label %317, !dbg !1833

315:                                              ; preds = %312
  %316 = icmp ult i32 %.112, %227, !dbg !1834
  br label %317

317:                                              ; preds = %315, %312
  %318 = phi i1 [ false, %312 ], [ %316, %315 ], !dbg !1814
  br i1 %318, label %319, label %335, !dbg !1831

319:                                              ; preds = %317
  %320 = lshr i32 %.112, 1, !dbg !1835
  call void @llvm.dbg.value(metadata i32 %320, metadata !1837, metadata !DIExpression()), !dbg !1838
  %321 = add i32 %.112, 1, !dbg !1839
  call void @llvm.dbg.value(metadata i32 %321, metadata !1684, metadata !DIExpression()), !dbg !1437
  %322 = zext i32 %.112 to i64, !dbg !1840
  %323 = getelementptr inbounds i8, i8* %214, i64 %322, !dbg !1840
  store i8 %.02, i8* %323, align 1, !dbg !1841
  %324 = zext i32 %320 to i64, !dbg !1842
  %325 = getelementptr inbounds i8, i8* %.1, i64 %324, !dbg !1842
  %326 = load i8, i8* %325, align 1, !dbg !1842
  %327 = sext i8 %326 to i32, !dbg !1842
  %328 = sext i8 %.03 to i32, !dbg !1843
  %329 = add nsw i32 %327, %328, !dbg !1844
  %330 = trunc i32 %329 to i8, !dbg !1842
  %331 = add i32 %321, 1, !dbg !1845
  call void @llvm.dbg.value(metadata i32 %331, metadata !1684, metadata !DIExpression()), !dbg !1437
  %332 = zext i32 %321 to i64, !dbg !1846
  %333 = getelementptr inbounds i8, i8* %214, i64 %332, !dbg !1846
  store i8 %330, i8* %333, align 1, !dbg !1847
  %334 = add i8 %.01, -1, !dbg !1848
  call void @llvm.dbg.value(metadata i8 %334, metadata !1811, metadata !DIExpression()), !dbg !1814
  br label %312, !dbg !1831, !llvm.loop !1849

335:                                              ; preds = %317
  br label %336, !dbg !1851

336:                                              ; preds = %335, %278, %267, %256, %248
  %.213 = phi i32 [ %.011, %248 ], [ %.112, %335 ], [ %289, %278 ], [ %275, %267 ], [ %264, %256 ], !dbg !1741
  %.39 = phi i32 [ %.17, %248 ], [ %.28, %335 ], [ %292, %278 ], [ %271, %267 ], [ %260, %256 ], !dbg !1741
  call void @llvm.dbg.value(metadata i32 %.39, metadata !1745, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %.213, metadata !1684, metadata !DIExpression()), !dbg !1437
  br label %235, !dbg !1752, !llvm.loop !1852

337:                                              ; preds = %239
  %338 = icmp ugt i32 %.011, %227, !dbg !1854
  br i1 %338, label %339, label %341, !dbg !1856

339:                                              ; preds = %337
  %340 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1857
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %340, i32 noundef 84, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0)), !dbg !1859
  br label %705, !dbg !1860

341:                                              ; preds = %337
  %342 = add i32 %.011, 1, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %342, metadata !1684, metadata !DIExpression()), !dbg !1437
  %343 = zext i32 %.011 to i64, !dbg !1862
  %344 = getelementptr inbounds i8, i8* %214, i64 %343, !dbg !1862
  store i8 0, i8* %344, align 1, !dbg !1863
  %345 = add i32 %342, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %345, metadata !1684, metadata !DIExpression()), !dbg !1437
  %346 = zext i32 %342 to i64, !dbg !1865
  %347 = getelementptr inbounds i8, i8* %214, i64 %346, !dbg !1865
  store i8 0, i8* %347, align 1, !dbg !1866
  %348 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 66, !dbg !1867
  %349 = load %struct.archive_string_conv*, %struct.archive_string_conv** %348, align 8, !dbg !1867
  %350 = icmp eq %struct.archive_string_conv* %349, null, !dbg !1869
  br i1 %350, label %351, label %360, !dbg !1870

351:                                              ; preds = %341
  %352 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1871
  %353 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive* noundef %352, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 noundef 1), !dbg !1873
  %354 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 66, !dbg !1874
  store %struct.archive_string_conv* %353, %struct.archive_string_conv** %354, align 8, !dbg !1875
  %355 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 66, !dbg !1876
  %356 = load %struct.archive_string_conv*, %struct.archive_string_conv** %355, align 8, !dbg !1876
  %357 = icmp eq %struct.archive_string_conv* %356, null, !dbg !1878
  br i1 %357, label %358, label %359, !dbg !1879

358:                                              ; preds = %351
  br label %705, !dbg !1880

359:                                              ; preds = %351
  br label %360, !dbg !1881

360:                                              ; preds = %359, %341
  %361 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 66, !dbg !1882
  %362 = load %struct.archive_string_conv*, %struct.archive_string_conv** %361, align 8, !dbg !1882
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %362, metadata !1883, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %214, metadata !1884, metadata !DIExpression()), !dbg !1437
  br label %363, !dbg !1885

363:                                              ; preds = %371, %360
  %.020 = phi i8* [ %214, %360 ], [ %372, %371 ], !dbg !1741
  call void @llvm.dbg.value(metadata i8* %.020, metadata !1884, metadata !DIExpression()), !dbg !1437
  %364 = call i32 @memcmp(i8* noundef %.020, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i64 noundef 2) #9, !dbg !1886
  %365 = icmp ne i32 %364, 0, !dbg !1885
  br i1 %365, label %366, label %373, !dbg !1885

366:                                              ; preds = %363
  %367 = call i32 @memcmp(i8* noundef %.020, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i64 noundef 2) #9, !dbg !1887
  %368 = icmp ne i32 %367, 0, !dbg !1887
  br i1 %368, label %371, label %369, !dbg !1890

369:                                              ; preds = %366
  %370 = getelementptr inbounds i8, i8* %.020, i64 1, !dbg !1891
  store i8 47, i8* %370, align 1, !dbg !1892
  br label %371, !dbg !1893

371:                                              ; preds = %369, %366
  %372 = getelementptr inbounds i8, i8* %.020, i64 2, !dbg !1894
  call void @llvm.dbg.value(metadata i8* %372, metadata !1884, metadata !DIExpression()), !dbg !1437
  br label %363, !dbg !1885, !llvm.loop !1895

373:                                              ; preds = %363
  %374 = zext i32 %.06 to i64, !dbg !1897
  %375 = getelementptr inbounds i8, i8* %.1, i64 %374, !dbg !1897
  call void @llvm.dbg.value(metadata i8* %375, metadata !1496, metadata !DIExpression()), !dbg !1437
  br label %399, !dbg !1898

376:                                              ; preds = %222
  %377 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 65, !dbg !1899
  %378 = load %struct.archive_string_conv*, %struct.archive_string_conv** %377, align 8, !dbg !1899
  %379 = icmp eq %struct.archive_string_conv* %378, null, !dbg !1902
  br i1 %379, label %380, label %389, !dbg !1903

380:                                              ; preds = %376
  %381 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1904
  %382 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive* noundef %381, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 noundef 1), !dbg !1906
  %383 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 65, !dbg !1907
  store %struct.archive_string_conv* %382, %struct.archive_string_conv** %383, align 8, !dbg !1908
  %384 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 65, !dbg !1909
  %385 = load %struct.archive_string_conv*, %struct.archive_string_conv** %384, align 8, !dbg !1909
  %386 = icmp eq %struct.archive_string_conv* %385, null, !dbg !1911
  br i1 %386, label %387, label %388, !dbg !1912

387:                                              ; preds = %380
  br label %705, !dbg !1913

388:                                              ; preds = %380
  br label %389, !dbg !1914

389:                                              ; preds = %388, %376
  %390 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 65, !dbg !1915
  %391 = load %struct.archive_string_conv*, %struct.archive_string_conv** %390, align 8, !dbg !1915
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %391, metadata !1883, metadata !DIExpression()), !dbg !1437
  br label %392, !dbg !1916

392:                                              ; preds = %395, %389
  %393 = call i8* @strchr(i8* noundef %214, i32 noundef 92) #9, !dbg !1917
  call void @llvm.dbg.value(metadata i8* %393, metadata !1884, metadata !DIExpression()), !dbg !1437
  %394 = icmp ne i8* %393, null, !dbg !1918
  br i1 %394, label %395, label %396, !dbg !1916

395:                                              ; preds = %392
  store i8 47, i8* %393, align 1, !dbg !1919
  br label %392, !dbg !1916, !llvm.loop !1920

396:                                              ; preds = %392
  %397 = zext i32 %186 to i64, !dbg !1922
  %398 = getelementptr inbounds i8, i8* %.1, i64 %397, !dbg !1922
  call void @llvm.dbg.value(metadata i8* %398, metadata !1496, metadata !DIExpression()), !dbg !1437
  br label %399

399:                                              ; preds = %396, %373
  %.025 = phi %struct.archive_string_conv* [ %362, %373 ], [ %391, %396 ], !dbg !1923
  %.314 = phi i32 [ %345, %373 ], [ %186, %396 ], !dbg !1437
  %.2 = phi i8* [ %375, %373 ], [ %398, %396 ], !dbg !1923
  call void @llvm.dbg.value(metadata i8* %.2, metadata !1496, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 %.314, metadata !1684, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %.025, metadata !1883, metadata !DIExpression()), !dbg !1437
  br label %408, !dbg !1924

400:                                              ; preds = %212
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %.024, metadata !1883, metadata !DIExpression()), !dbg !1437
  br label %401, !dbg !1925

401:                                              ; preds = %404, %400
  %402 = call i8* @strchr(i8* noundef %214, i32 noundef 92) #9, !dbg !1927
  call void @llvm.dbg.value(metadata i8* %402, metadata !1884, metadata !DIExpression()), !dbg !1437
  %403 = icmp ne i8* %402, null, !dbg !1928
  br i1 %403, label %404, label %405, !dbg !1925

404:                                              ; preds = %401
  store i8 47, i8* %402, align 1, !dbg !1929
  br label %401, !dbg !1925, !llvm.loop !1930

405:                                              ; preds = %401
  %406 = zext i32 %186 to i64, !dbg !1932
  %407 = getelementptr inbounds i8, i8* %.1, i64 %406, !dbg !1932
  call void @llvm.dbg.value(metadata i8* %407, metadata !1496, metadata !DIExpression()), !dbg !1437
  br label %408

408:                                              ; preds = %405, %399
  %.126 = phi %struct.archive_string_conv* [ %.025, %399 ], [ %.024, %405 ], !dbg !1933
  %.415 = phi i32 [ %.314, %399 ], [ %186, %405 ], !dbg !1437
  %.3 = phi i8* [ %.2, %399 ], [ %407, %405 ], !dbg !1933
  call void @llvm.dbg.value(metadata i8* %.3, metadata !1496, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 %.415, metadata !1684, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %.126, metadata !1883, metadata !DIExpression()), !dbg !1437
  %409 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 13, !dbg !1934
  %410 = load i8*, i8** %409, align 8, !dbg !1934
  %411 = icmp ne i8* %410, null, !dbg !1936
  br i1 %411, label %412, label %512, !dbg !1937

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 12, !dbg !1938
  %414 = load i8*, i8** %413, align 8, !dbg !1938
  %415 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 13, !dbg !1939
  %416 = load i8*, i8** %415, align 8, !dbg !1939
  %417 = add i32 %.415, 1, !dbg !1940
  %418 = zext i32 %417 to i64, !dbg !1941
  %419 = call i32 @memcmp(i8* noundef %414, i8* noundef %416, i64 noundef %418) #9, !dbg !1942
  %420 = icmp ne i32 %419, 0, !dbg !1942
  br i1 %420, label %512, label %421, !dbg !1943

421:                                              ; preds = %412
  %422 = sub nsw i64 %.010, 7, !dbg !1944
  %423 = call i64 @__archive_read_consume(%struct.archive_read* noundef %0, i64 noundef %422), !dbg !1946
  %424 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 39, !dbg !1947
  %425 = load i32, i32* %424, align 8, !dbg !1948
  %426 = add i32 %425, 1, !dbg !1948
  store i32 %426, i32* %424, align 8, !dbg !1948
  %427 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 39, !dbg !1949
  %428 = load i32, i32* %427, align 8, !dbg !1949
  %429 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 40, !dbg !1951
  %430 = load i32, i32* %429, align 4, !dbg !1951
  %431 = icmp uge i32 %428, %430, !dbg !1952
  br i1 %431, label %432, label %471, !dbg !1953

432:                                              ; preds = %421
  %433 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 40, !dbg !1954
  %434 = load i32, i32* %433, align 4, !dbg !1956
  %435 = add i32 %434, 1, !dbg !1956
  store i32 %435, i32* %433, align 4, !dbg !1956
  %436 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !1957
  %437 = load %struct.data_block_offsets*, %struct.data_block_offsets** %436, align 8, !dbg !1957
  %438 = bitcast %struct.data_block_offsets* %437 to i8*, !dbg !1959
  %439 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 40, !dbg !1960
  %440 = load i32, i32* %439, align 4, !dbg !1960
  %441 = zext i32 %440 to i64, !dbg !1961
  %442 = mul i64 24, %441, !dbg !1962
  %443 = call i8* @realloc(i8* noundef %438, i64 noundef %442) #8, !dbg !1963
  %444 = bitcast i8* %443 to %struct.data_block_offsets*, !dbg !1963
  %445 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !1964
  store %struct.data_block_offsets* %444, %struct.data_block_offsets** %445, align 8, !dbg !1965
  %446 = icmp eq %struct.data_block_offsets* %444, null, !dbg !1966
  br i1 %446, label %447, label %449, !dbg !1967

447:                                              ; preds = %432
  %448 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1968
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %448, i32 noundef 12, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0)), !dbg !1970
  br label %705, !dbg !1971

449:                                              ; preds = %432
  %450 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !1972
  %451 = load %struct.data_block_offsets*, %struct.data_block_offsets** %450, align 8, !dbg !1972
  %452 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 39, !dbg !1973
  %453 = load i32, i32* %452, align 8, !dbg !1973
  %454 = zext i32 %453 to i64, !dbg !1974
  %455 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %451, i64 %454, !dbg !1974
  %456 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %455, i32 0, i32 0, !dbg !1975
  store i64 %.010, i64* %456, align 8, !dbg !1976
  %457 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !1977
  %458 = load %struct.data_block_offsets*, %struct.data_block_offsets** %457, align 8, !dbg !1977
  %459 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 39, !dbg !1978
  %460 = load i32, i32* %459, align 8, !dbg !1978
  %461 = zext i32 %460 to i64, !dbg !1979
  %462 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %458, i64 %461, !dbg !1979
  %463 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %462, i32 0, i32 1, !dbg !1980
  store i64 -1, i64* %463, align 8, !dbg !1981
  %464 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !1982
  %465 = load %struct.data_block_offsets*, %struct.data_block_offsets** %464, align 8, !dbg !1982
  %466 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 39, !dbg !1983
  %467 = load i32, i32* %466, align 8, !dbg !1983
  %468 = zext i32 %467 to i64, !dbg !1984
  %469 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %465, i64 %468, !dbg !1984
  %470 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %469, i32 0, i32 2, !dbg !1985
  store i64 -1, i64* %470, align 8, !dbg !1986
  br label %471, !dbg !1987

471:                                              ; preds = %449, %421
  %472 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !1988
  %473 = load %struct.data_block_offsets*, %struct.data_block_offsets** %472, align 8, !dbg !1988
  %474 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 39, !dbg !1990
  %475 = load i32, i32* %474, align 8, !dbg !1990
  %476 = zext i32 %475 to i64, !dbg !1991
  %477 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %473, i64 %476, !dbg !1991
  %478 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %477, i32 0, i32 1, !dbg !1992
  %479 = load i64, i64* %478, align 8, !dbg !1992
  %480 = icmp slt i64 %479, 0, !dbg !1993
  br i1 %480, label %481, label %511, !dbg !1994

481:                                              ; preds = %471
  %482 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 13, !dbg !1995
  %483 = load %struct.archive_read_filter*, %struct.archive_read_filter** %482, align 8, !dbg !1995
  %484 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %483, i32 0, i32 0, !dbg !1997
  %485 = load i64, i64* %484, align 8, !dbg !1997
  %486 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !1998
  %487 = load %struct.data_block_offsets*, %struct.data_block_offsets** %486, align 8, !dbg !1998
  %488 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 39, !dbg !1999
  %489 = load i32, i32* %488, align 8, !dbg !1999
  %490 = zext i32 %489 to i64, !dbg !2000
  %491 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %487, i64 %490, !dbg !2000
  %492 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %491, i32 0, i32 1, !dbg !2001
  store i64 %485, i64* %492, align 8, !dbg !2002
  %493 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !2003
  %494 = load %struct.data_block_offsets*, %struct.data_block_offsets** %493, align 8, !dbg !2003
  %495 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 39, !dbg !2004
  %496 = load i32, i32* %495, align 8, !dbg !2004
  %497 = zext i32 %496 to i64, !dbg !2005
  %498 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %494, i64 %497, !dbg !2005
  %499 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %498, i32 0, i32 1, !dbg !2006
  %500 = load i64, i64* %499, align 8, !dbg !2006
  %501 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 7, !dbg !2007
  %502 = load i64, i64* %501, align 8, !dbg !2007
  %503 = add nsw i64 %500, %502, !dbg !2008
  %504 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !2009
  %505 = load %struct.data_block_offsets*, %struct.data_block_offsets** %504, align 8, !dbg !2009
  %506 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 39, !dbg !2010
  %507 = load i32, i32* %506, align 8, !dbg !2010
  %508 = zext i32 %507 to i64, !dbg !2011
  %509 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %505, i64 %508, !dbg !2011
  %510 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %509, i32 0, i32 2, !dbg !2012
  store i64 %503, i64* %510, align 8, !dbg !2013
  br label %511, !dbg !2014

511:                                              ; preds = %481, %471
  br label %705, !dbg !2015

512:                                              ; preds = %412, %408
  %513 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 13, !dbg !2016
  %514 = load i8*, i8** %513, align 8, !dbg !2016
  %515 = add i32 %.415, 1, !dbg !2017
  %516 = zext i32 %515 to i64, !dbg !2018
  %517 = call i8* @realloc(i8* noundef %514, i64 noundef %516) #8, !dbg !2019
  %518 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 13, !dbg !2020
  store i8* %517, i8** %518, align 8, !dbg !2021
  %519 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 13, !dbg !2022
  %520 = load i8*, i8** %519, align 8, !dbg !2022
  %521 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 12, !dbg !2023
  %522 = load i8*, i8** %521, align 8, !dbg !2023
  %523 = add i32 %.415, 1, !dbg !2024
  %524 = zext i32 %523 to i64, !dbg !2025
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %520, i8* align 1 %522, i64 %524, i1 false), !dbg !2026
  %525 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !2027
  %526 = load %struct.data_block_offsets*, %struct.data_block_offsets** %525, align 8, !dbg !2027
  %527 = bitcast %struct.data_block_offsets* %526 to i8*, !dbg !2028
  call void @free(i8* noundef %527) #8, !dbg !2029
  %528 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 24) #8, !dbg !2030
  %529 = bitcast i8* %528 to %struct.data_block_offsets*, !dbg !2030
  %530 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !2032
  store %struct.data_block_offsets* %529, %struct.data_block_offsets** %530, align 8, !dbg !2033
  %531 = icmp eq %struct.data_block_offsets* %529, null, !dbg !2034
  br i1 %531, label %532, label %534, !dbg !2035

532:                                              ; preds = %512
  %533 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2036
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %533, i32 noundef 12, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0)), !dbg !2038
  br label %705, !dbg !2039

534:                                              ; preds = %512
  %535 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !2040
  %536 = load %struct.data_block_offsets*, %struct.data_block_offsets** %535, align 8, !dbg !2040
  %537 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %536, i64 0, !dbg !2041
  %538 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %537, i32 0, i32 0, !dbg !2042
  store i64 %.010, i64* %538, align 8, !dbg !2043
  %539 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !2044
  %540 = load %struct.data_block_offsets*, %struct.data_block_offsets** %539, align 8, !dbg !2044
  %541 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %540, i64 0, !dbg !2045
  %542 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %541, i32 0, i32 1, !dbg !2046
  store i64 -1, i64* %542, align 8, !dbg !2047
  %543 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !2048
  %544 = load %struct.data_block_offsets*, %struct.data_block_offsets** %543, align 8, !dbg !2048
  %545 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %544, i64 0, !dbg !2049
  %546 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %545, i32 0, i32 2, !dbg !2050
  store i64 -1, i64* %546, align 8, !dbg !2051
  %547 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 39, !dbg !2052
  store i32 0, i32* %547, align 8, !dbg !2053
  %548 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 40, !dbg !2054
  store i32 1, i32* %548, align 4, !dbg !2055
  %549 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 6, !dbg !2056
  %550 = load i32, i32* %549, align 8, !dbg !2056
  %551 = and i32 %550, 1024, !dbg !2058
  %552 = icmp ne i32 %551, 0, !dbg !2058
  br i1 %552, label %553, label %562, !dbg !2059

553:                                              ; preds = %534
  %554 = getelementptr inbounds i8, i8* %.3, i64 8, !dbg !2060
  %555 = icmp ugt i8* %554, %.05, !dbg !2063
  br i1 %555, label %556, label %558, !dbg !2064

556:                                              ; preds = %553
  %557 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2065
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %557, i32 noundef 84, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)), !dbg !2067
  br label %705, !dbg !2068

558:                                              ; preds = %553
  %559 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 15, !dbg !2069
  %560 = getelementptr inbounds [8 x i8], [8 x i8]* %559, i64 0, i64 0, !dbg !2070
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %560, i8* align 1 %.3, i64 8, i1 false), !dbg !2070
  %561 = getelementptr inbounds i8, i8* %.3, i64 8, !dbg !2071
  call void @llvm.dbg.value(metadata i8* %561, metadata !1496, metadata !DIExpression()), !dbg !1437
  br label %562, !dbg !2072

562:                                              ; preds = %558, %534
  %.4 = phi i8* [ %561, %558 ], [ %.3, %534 ], !dbg !1437
  call void @llvm.dbg.value(metadata i8* %.4, metadata !1496, metadata !DIExpression()), !dbg !1437
  %563 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 6, !dbg !2073
  %564 = load i32, i32* %563, align 8, !dbg !2073
  %565 = and i32 %564, 4096, !dbg !2075
  %566 = icmp ne i32 %565, 0, !dbg !2075
  br i1 %566, label %567, label %573, !dbg !2076

567:                                              ; preds = %562
  %568 = call i32 @read_exttime(i8* noundef %.4, %struct.rar* noundef %12, i8* noundef %.05), !dbg !2077
  %569 = icmp slt i32 %568, 0, !dbg !2080
  br i1 %569, label %570, label %572, !dbg !2081

570:                                              ; preds = %567
  %571 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2082
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %571, i32 noundef 84, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)), !dbg !2084
  br label %705, !dbg !2085

572:                                              ; preds = %567
  br label %573, !dbg !2086

573:                                              ; preds = %572, %562
  %574 = sub nsw i64 %.010, 7, !dbg !2087
  %575 = call i64 @__archive_read_consume(%struct.archive_read* noundef %0, i64 noundef %574), !dbg !2088
  %576 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 13, !dbg !2089
  %577 = load %struct.archive_read_filter*, %struct.archive_read_filter** %576, align 8, !dbg !2089
  %578 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %577, i32 0, i32 0, !dbg !2090
  %579 = load i64, i64* %578, align 8, !dbg !2090
  %580 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !2091
  %581 = load %struct.data_block_offsets*, %struct.data_block_offsets** %580, align 8, !dbg !2091
  %582 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %581, i64 0, !dbg !2092
  %583 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %582, i32 0, i32 1, !dbg !2093
  store i64 %579, i64* %583, align 8, !dbg !2094
  %584 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !2095
  %585 = load %struct.data_block_offsets*, %struct.data_block_offsets** %584, align 8, !dbg !2095
  %586 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %585, i64 0, !dbg !2096
  %587 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %586, i32 0, i32 1, !dbg !2097
  %588 = load i64, i64* %587, align 8, !dbg !2097
  %589 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 7, !dbg !2098
  %590 = load i64, i64* %589, align 8, !dbg !2098
  %591 = add nsw i64 %588, %590, !dbg !2099
  %592 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 38, !dbg !2100
  %593 = load %struct.data_block_offsets*, %struct.data_block_offsets** %592, align 8, !dbg !2100
  %594 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %593, i64 0, !dbg !2101
  %595 = getelementptr inbounds %struct.data_block_offsets, %struct.data_block_offsets* %594, i32 0, i32 2, !dbg !2102
  store i64 %591, i64* %595, align 8, !dbg !2103
  %596 = getelementptr inbounds %struct.rar_file_header, %struct.rar_file_header* %5, i32 0, i32 2, !dbg !2104
  %597 = load i8, i8* %596, align 1, !dbg !2104
  %598 = sext i8 %597 to i32, !dbg !2105
  switch i32 %598, label %621 [
    i32 0, label %599
    i32 1, label %599
    i32 2, label %599
    i32 3, label %616
    i32 4, label %616
    i32 5, label %616
  ], !dbg !2106

599:                                              ; preds = %573, %573, %573
  %600 = getelementptr inbounds %struct.rar_file_header, %struct.rar_file_header* %5, i32 0, i32 8, !dbg !2107
  %601 = getelementptr inbounds [4 x i8], [4 x i8]* %600, i64 0, i64 0, !dbg !2109
  %602 = call i32 @archive_le32dec(i8* noundef %601), !dbg !2110
  %603 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 11, !dbg !2111
  store i32 %602, i32* %603, align 8, !dbg !2112
  %604 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 11, !dbg !2113
  %605 = load i32, i32* %604, align 8, !dbg !2113
  %606 = and i32 %605, 16, !dbg !2115
  %607 = icmp ne i32 %606, 0, !dbg !2115
  br i1 %607, label %608, label %610, !dbg !2116

608:                                              ; preds = %599
  %609 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 11, !dbg !2117
  store i32 16457, i32* %609, align 8, !dbg !2118
  br label %612, !dbg !2119

610:                                              ; preds = %599
  %611 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 11, !dbg !2120
  store i32 32768, i32* %611, align 8, !dbg !2121
  br label %612

612:                                              ; preds = %610, %608
  %613 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 11, !dbg !2122
  %614 = load i32, i32* %613, align 8, !dbg !2123
  %615 = or i32 %614, 420, !dbg !2123
  store i32 %615, i32* %613, align 8, !dbg !2123
  br label %623, !dbg !2124

616:                                              ; preds = %573, %573, %573
  %617 = getelementptr inbounds %struct.rar_file_header, %struct.rar_file_header* %5, i32 0, i32 8, !dbg !2125
  %618 = getelementptr inbounds [4 x i8], [4 x i8]* %617, i64 0, i64 0, !dbg !2126
  %619 = call i32 @archive_le32dec(i8* noundef %618), !dbg !2127
  %620 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 11, !dbg !2128
  store i32 %619, i32* %620, align 8, !dbg !2129
  br label %623, !dbg !2130

621:                                              ; preds = %573
  %622 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2131
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %622, i32 noundef 84, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0)), !dbg !2132
  br label %705, !dbg !2133

623:                                              ; preds = %616, %612
  %624 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 22, !dbg !2134
  store i64 0, i64* %624, align 8, !dbg !2135
  %625 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 24, !dbg !2136
  store i64 0, i64* %625, align 8, !dbg !2137
  %626 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 25, !dbg !2138
  store i64 0, i64* %626, align 8, !dbg !2139
  %627 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 46, !dbg !2140
  %628 = getelementptr inbounds %struct.lzss, %struct.lzss* %627, i32 0, i32 2, !dbg !2141
  store i64 0, i64* %628, align 8, !dbg !2142
  %629 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 27, !dbg !2143
  store i64 0, i64* %629, align 8, !dbg !2144
  %630 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 32, !dbg !2145
  store i32 0, i32* %630, align 8, !dbg !2146
  %631 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 26, !dbg !2147
  store i64 0, i64* %631, align 8, !dbg !2148
  %632 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 67, !dbg !2149
  %633 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %632, i32 0, i32 1, !dbg !2150
  store i32 0, i32* %633, align 8, !dbg !2151
  %634 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 67, !dbg !2152
  %635 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %634, i32 0, i32 2, !dbg !2153
  store i64 0, i64* %635, align 8, !dbg !2154
  %636 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 35, !dbg !2155
  store i64 0, i64* %636, align 8, !dbg !2156
  %637 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 34, !dbg !2157
  store i8 0, i8* %637, align 1, !dbg !2158
  %638 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 28, !dbg !2159
  store i8 1, i8* %638, align 8, !dbg !2160
  %639 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 57, !dbg !2161
  store i8 0, i8* %639, align 1, !dbg !2162
  %640 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 54, !dbg !2163
  store i8 1, i8* %640, align 8, !dbg !2164
  %641 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 31, !dbg !2165
  %642 = load i8*, i8** %641, align 8, !dbg !2165
  call void @free(i8* noundef %642) #8, !dbg !2166
  %643 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 31, !dbg !2167
  store i8* null, i8** %643, align 8, !dbg !2168
  %644 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 29, !dbg !2169
  store i32 0, i32* %644, align 4, !dbg !2170
  %645 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 30, !dbg !2171
  store i32 131072, i32* %645, align 8, !dbg !2172
  %646 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 45, !dbg !2173
  %647 = getelementptr inbounds [404 x i8], [404 x i8]* %646, i64 0, i64 0, !dbg !2174
  call void @llvm.memset.p0i8.i64(i8* align 8 %647, i8 0, i64 404, i1 false), !dbg !2174
  %648 = load void (%struct.CPpmd7*, %struct.ISzAlloc*)*, void (%struct.CPpmd7*, %struct.ISzAlloc*)** getelementptr inbounds (%struct.IPpmd7, %struct.IPpmd7* @__archive_ppmd7_functions, i32 0, i32 2), align 8, !dbg !2175
  %649 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 59, !dbg !2176
  call void %648(%struct.CPpmd7* noundef %649, %struct.ISzAlloc* noundef @g_szalloc), !dbg !2177
  %650 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 56, !dbg !2178
  store i8 0, i8* %650, align 2, !dbg !2179
  %651 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 55, !dbg !2180
  store i8 0, i8* %651, align 1, !dbg !2181
  %652 = sext i8 %2 to i32, !dbg !2182
  %653 = icmp eq i32 %652, 122, !dbg !2184
  br i1 %653, label %654, label %655, !dbg !2185

654:                                              ; preds = %623
  br label %705, !dbg !2186

655:                                              ; preds = %623
  %656 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 9, !dbg !2187
  %657 = load i64, i64* %656, align 8, !dbg !2187
  %658 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 10, !dbg !2188
  %659 = load i64, i64* %658, align 8, !dbg !2188
  call void @archive_entry_set_mtime(%struct.archive_entry* noundef %1, i64 noundef %657, i64 noundef %659), !dbg !2189
  %660 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 18, !dbg !2190
  %661 = load i64, i64* %660, align 8, !dbg !2190
  %662 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 19, !dbg !2191
  %663 = load i64, i64* %662, align 8, !dbg !2191
  call void @archive_entry_set_ctime(%struct.archive_entry* noundef %1, i64 noundef %661, i64 noundef %663), !dbg !2192
  %664 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 16, !dbg !2193
  %665 = load i64, i64* %664, align 8, !dbg !2193
  %666 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 17, !dbg !2194
  %667 = load i64, i64* %666, align 8, !dbg !2194
  call void @archive_entry_set_atime(%struct.archive_entry* noundef %1, i64 noundef %665, i64 noundef %667), !dbg !2195
  %668 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 8, !dbg !2196
  %669 = load i64, i64* %668, align 8, !dbg !2196
  call void @archive_entry_set_size(%struct.archive_entry* noundef %1, i64 noundef %669), !dbg !2197
  %670 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 11, !dbg !2198
  %671 = load i32, i32* %670, align 8, !dbg !2198
  call void @archive_entry_set_mode(%struct.archive_entry* noundef %1, i32 noundef %671), !dbg !2199
  %672 = zext i32 %.415 to i64, !dbg !2200
  %673 = call i32 @_archive_entry_copy_pathname_l(%struct.archive_entry* noundef %1, i8* noundef %214, i64 noundef %672, %struct.archive_string_conv* noundef %.126), !dbg !2202
  %674 = icmp ne i32 %673, 0, !dbg !2202
  br i1 %674, label %675, label %684, !dbg !2203

675:                                              ; preds = %655
  %676 = call i32* @__errno_location() #10, !dbg !2204
  %677 = load i32, i32* %676, align 4, !dbg !2204
  %678 = icmp eq i32 %677, 12, !dbg !2207
  br i1 %678, label %679, label %681, !dbg !2208

679:                                              ; preds = %675
  %680 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2209
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %680, i32 noundef 12, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0)), !dbg !2211
  br label %705, !dbg !2212

681:                                              ; preds = %675
  %682 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2213
  %683 = call i8* @archive_string_conversion_charset_name(%struct.archive_string_conv* noundef %.126), !dbg !2214
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %682, i32 noundef 84, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.25, i64 0, i64 0), i8* noundef %683), !dbg !2215
  call void @llvm.dbg.value(metadata i32 -20, metadata !1465, metadata !DIExpression()), !dbg !1437
  br label %684, !dbg !2216

684:                                              ; preds = %681, %655
  %.021 = phi i32 [ -20, %681 ], [ 0, %655 ], !dbg !1437
  call void @llvm.dbg.value(metadata i32 %.021, metadata !1465, metadata !DIExpression()), !dbg !1437
  %685 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 11, !dbg !2217
  %686 = load i32, i32* %685, align 8, !dbg !2217
  %687 = and i32 %686, 61440, !dbg !2219
  %688 = icmp eq i32 %687, 40960, !dbg !2220
  br i1 %688, label %689, label %698, !dbg !2221

689:                                              ; preds = %684
  %690 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 23, !dbg !2222
  store i64 0, i64* %690, align 8, !dbg !2224
  call void @archive_entry_set_size(%struct.archive_entry* noundef %1, i64 noundef 0), !dbg !2225
  %691 = call i32 @read_symlink_stored(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1, %struct.archive_string_conv* noundef %.024), !dbg !2226
  call void @llvm.dbg.value(metadata i32 %691, metadata !2228, metadata !DIExpression()), !dbg !1437
  %692 = icmp slt i32 %691, -20, !dbg !2229
  br i1 %692, label %693, label %694, !dbg !2230

693:                                              ; preds = %689
  br label %705, !dbg !2231

694:                                              ; preds = %689
  %695 = icmp sgt i32 %.021, %691, !dbg !2232
  br i1 %695, label %696, label %697, !dbg !2234

696:                                              ; preds = %694
  call void @llvm.dbg.value(metadata i32 %691, metadata !1465, metadata !DIExpression()), !dbg !1437
  br label %697, !dbg !2235

697:                                              ; preds = %696, %694
  %.122 = phi i32 [ %691, %696 ], [ %.021, %694 ], !dbg !1437
  call void @llvm.dbg.value(metadata i32 %.122, metadata !1465, metadata !DIExpression()), !dbg !1437
  br label %698, !dbg !2236

698:                                              ; preds = %697, %684
  %.223 = phi i32 [ %.122, %697 ], [ %.021, %684 ], !dbg !1437
  call void @llvm.dbg.value(metadata i32 %.223, metadata !1465, metadata !DIExpression()), !dbg !1437
  %699 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 23, !dbg !2237
  %700 = load i64, i64* %699, align 8, !dbg !2237
  %701 = icmp eq i64 %700, 0, !dbg !2239
  br i1 %701, label %702, label %704, !dbg !2240

702:                                              ; preds = %698
  %703 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 34, !dbg !2241
  store i8 1, i8* %703, align 1, !dbg !2242
  br label %704, !dbg !2243

704:                                              ; preds = %702, %698
  br label %705, !dbg !2244

705:                                              ; preds = %704, %693, %679, %654, %621, %570, %556, %532, %511, %447, %387, %358, %339, %207, %190, %177, %159, %114, %90, %79, %73, %44, %31
  %.0 = phi i32 [ -30, %31 ], [ -30, %44 ], [ -30, %73 ], [ -30, %79 ], [ -30, %90 ], [ -30, %114 ], [ -30, %159 ], [ -30, %177 ], [ -30, %190 ], [ -30, %207 ], [ -30, %339 ], [ -30, %358 ], [ -30, %532 ], [ -30, %556 ], [ -30, %570 ], [ -30, %621 ], [ 0, %654 ], [ -30, %679 ], [ %691, %693 ], [ %.223, %704 ], [ -30, %447 ], [ 0, %511 ], [ -30, %387 ], !dbg !1437
  ret i32 %.0, !dbg !2245
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_le32dec(i8* noundef %0) #0 !dbg !2246 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2249, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8* %0, metadata !2251, metadata !DIExpression()), !dbg !2250
  %2 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2252
  %3 = load i8, i8* %2, align 1, !dbg !2252
  %4 = zext i8 %3 to i32, !dbg !2252
  %5 = shl i32 %4, 24, !dbg !2253
  %6 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2254
  %7 = load i8, i8* %6, align 1, !dbg !2254
  %8 = zext i8 %7 to i32, !dbg !2254
  %9 = shl i32 %8, 16, !dbg !2255
  %10 = or i32 %5, %9, !dbg !2256
  %11 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2257
  %12 = load i8, i8* %11, align 1, !dbg !2257
  %13 = zext i8 %12 to i32, !dbg !2257
  %14 = shl i32 %13, 8, !dbg !2258
  %15 = or i32 %10, %14, !dbg !2259
  %16 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !2260
  %17 = load i8, i8* %16, align 1, !dbg !2260
  %18 = zext i8 %17 to i32, !dbg !2260
  %19 = or i32 %15, %18, !dbg !2261
  ret i32 %19, !dbg !2262
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare %struct.archive_string_conv* @archive_string_default_conversion_for_read(%struct.archive* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @get_time(i32 noundef %0) #0 !dbg !2263 {
  %2 = alloca %struct.tm, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2266, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.declare(metadata %struct.tm* %2, metadata !2268, metadata !DIExpression()), !dbg !2283
  %3 = and i32 %0, 31, !dbg !2284
  %4 = mul nsw i32 2, %3, !dbg !2285
  %5 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 0, !dbg !2286
  store i32 %4, i32* %5, align 8, !dbg !2287
  %6 = ashr i32 %0, 5, !dbg !2288
  %7 = and i32 %6, 63, !dbg !2289
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 1, !dbg !2290
  store i32 %7, i32* %8, align 4, !dbg !2291
  %9 = ashr i32 %0, 11, !dbg !2292
  %10 = and i32 %9, 31, !dbg !2293
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 2, !dbg !2294
  store i32 %10, i32* %11, align 8, !dbg !2295
  %12 = ashr i32 %0, 16, !dbg !2296
  %13 = and i32 %12, 31, !dbg !2297
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 3, !dbg !2298
  store i32 %13, i32* %14, align 4, !dbg !2299
  %15 = ashr i32 %0, 21, !dbg !2300
  %16 = and i32 %15, 15, !dbg !2301
  %17 = sub nsw i32 %16, 1, !dbg !2302
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 4, !dbg !2303
  store i32 %17, i32* %18, align 8, !dbg !2304
  %19 = ashr i32 %0, 25, !dbg !2305
  %20 = and i32 %19, 127, !dbg !2306
  %21 = add nsw i32 %20, 80, !dbg !2307
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 5, !dbg !2308
  store i32 %21, i32* %22, align 4, !dbg !2309
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 8, !dbg !2310
  store i32 -1, i32* %23, align 8, !dbg !2311
  %24 = call i64 @mktime(%struct.tm* noundef %2) #8, !dbg !2312
  ret i64 %24, !dbg !2313
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @archive_le64dec(i8* noundef %0) #0 !dbg !2314 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2317, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8* %0, metadata !2319, metadata !DIExpression()), !dbg !2318
  %2 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !2320
  %3 = call i32 @archive_le32dec(i8* noundef %2), !dbg !2321
  %4 = zext i32 %3 to i64, !dbg !2322
  %5 = shl i64 %4, 32, !dbg !2323
  %6 = call i32 @archive_le32dec(i8* noundef %0), !dbg !2324
  %7 = zext i32 %6 to i64, !dbg !2324
  %8 = or i64 %5, %7, !dbg !2325
  ret i64 %8, !dbg !2326
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #5

; Function Attrs: nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) #5

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_exttime(i8* noundef %0, %struct.rar* noundef %1, i8* noundef %2) #0 !dbg !2327 {
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2330, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata %struct.rar* %1, metadata !2332, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8* %2, metadata !2333, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2334, metadata !DIExpression()), !dbg !2335
  %5 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2336
  %6 = icmp ugt i8* %5, %2, !dbg !2338
  br i1 %6, label %7, label %8, !dbg !2339

7:                                                ; preds = %3
  br label %96, !dbg !2340

8:                                                ; preds = %3
  %9 = call zeroext i16 @archive_le16dec(i8* noundef %0), !dbg !2341
  %10 = zext i16 %9 to i32, !dbg !2341
  call void @llvm.dbg.value(metadata i32 %10, metadata !2342, metadata !DIExpression()), !dbg !2331
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2343
  call void @llvm.dbg.value(metadata i8* %11, metadata !2330, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 3, metadata !2344, metadata !DIExpression()), !dbg !2331
  br label %12, !dbg !2345

12:                                               ; preds = %93, %8
  %.02 = phi i32 [ 3, %8 ], [ %94, %93 ], !dbg !2347
  %.01 = phi i8* [ %11, %8 ], [ %.3, %93 ], !dbg !2343
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2330, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2344, metadata !DIExpression()), !dbg !2331
  %13 = icmp sge i32 %.02, 0, !dbg !2348
  br i1 %13, label %14, label %95, !dbg !2350

14:                                               ; preds = %12
  store i64 0, i64* %4, align 8, !dbg !2351
  %15 = icmp eq i32 %.02, 3, !dbg !2353
  br i1 %15, label %16, label %19, !dbg !2355

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.rar, %struct.rar* %1, i32 0, i32 9, !dbg !2356
  %18 = load i64, i64* %17, align 8, !dbg !2356
  store i64 %18, i64* %4, align 8, !dbg !2357
  br label %19, !dbg !2358

19:                                               ; preds = %16, %14
  %20 = mul nsw i32 %.02, 4, !dbg !2359
  %21 = lshr i32 %10, %20, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %21, metadata !2361, metadata !DIExpression()), !dbg !2331
  %22 = and i32 %21, 8, !dbg !2362
  %23 = icmp ne i32 %22, 0, !dbg !2362
  br i1 %23, label %24, label %92, !dbg !2364

24:                                               ; preds = %19
  %25 = load i64, i64* %4, align 8, !dbg !2365
  %26 = icmp ne i64 %25, 0, !dbg !2365
  br i1 %26, label %35, label %27, !dbg !2368

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, i8* %.01, i64 4, !dbg !2369
  %29 = icmp ugt i8* %28, %2, !dbg !2372
  br i1 %29, label %30, label %31, !dbg !2373

30:                                               ; preds = %27
  br label %96, !dbg !2374

31:                                               ; preds = %27
  %32 = call i32 @archive_le32dec(i8* noundef %.01), !dbg !2375
  call void @llvm.dbg.value(metadata i32 %32, metadata !2376, metadata !DIExpression()), !dbg !2331
  %33 = call i64 @get_time(i32 noundef %32), !dbg !2377
  store i64 %33, i64* %4, align 8, !dbg !2378
  %34 = getelementptr inbounds i8, i8* %.01, i64 4, !dbg !2379
  call void @llvm.dbg.value(metadata i8* %34, metadata !2330, metadata !DIExpression()), !dbg !2331
  br label %35, !dbg !2380

35:                                               ; preds = %31, %24
  %.1 = phi i8* [ %.01, %24 ], [ %34, %31 ], !dbg !2331
  call void @llvm.dbg.value(metadata i8* %.1, metadata !2330, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 0, metadata !2381, metadata !DIExpression()), !dbg !2331
  %36 = and i32 %21, 3, !dbg !2382
  call void @llvm.dbg.value(metadata i32 %36, metadata !2383, metadata !DIExpression()), !dbg !2331
  %37 = zext i32 %36 to i64, !dbg !2384
  %38 = getelementptr inbounds i8, i8* %.1, i64 %37, !dbg !2384
  %39 = icmp ugt i8* %38, %2, !dbg !2386
  br i1 %39, label %40, label %41, !dbg !2387

40:                                               ; preds = %35
  br label %96, !dbg !2388

41:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 0, metadata !2389, metadata !DIExpression()), !dbg !2331
  br label %42, !dbg !2390

42:                                               ; preds = %51, %41
  %.04 = phi i32 [ 0, %41 ], [ %49, %51 ], !dbg !2392
  %.03 = phi i32 [ 0, %41 ], [ %52, %51 ], !dbg !2393
  %.2 = phi i8* [ %.1, %41 ], [ %50, %51 ], !dbg !2331
  call void @llvm.dbg.value(metadata i8* %.2, metadata !2330, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2389, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2381, metadata !DIExpression()), !dbg !2331
  %43 = icmp ult i32 %.03, %36, !dbg !2394
  br i1 %43, label %44, label %53, !dbg !2396

44:                                               ; preds = %42
  %45 = load i8, i8* %.2, align 1, !dbg !2397
  %46 = sext i8 %45 to i32, !dbg !2399
  %47 = shl i32 %46, 16, !dbg !2400
  %48 = lshr i32 %.04, 8, !dbg !2401
  %49 = or i32 %47, %48, !dbg !2402
  call void @llvm.dbg.value(metadata i32 %49, metadata !2381, metadata !DIExpression()), !dbg !2331
  %50 = getelementptr inbounds i8, i8* %.2, i32 1, !dbg !2403
  call void @llvm.dbg.value(metadata i8* %50, metadata !2330, metadata !DIExpression()), !dbg !2331
  br label %51, !dbg !2404

51:                                               ; preds = %44
  %52 = add i32 %.03, 1, !dbg !2405
  call void @llvm.dbg.value(metadata i32 %52, metadata !2389, metadata !DIExpression()), !dbg !2331
  br label %42, !dbg !2406, !llvm.loop !2407

53:                                               ; preds = %42
  %54 = call %struct.tm* @localtime(i64* noundef %4) #8, !dbg !2409
  call void @llvm.dbg.value(metadata %struct.tm* %54, metadata !2410, metadata !DIExpression()), !dbg !2331
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 0, !dbg !2412
  %56 = load i32, i32* %55, align 8, !dbg !2412
  %57 = udiv i32 %.04, 10000000, !dbg !2413
  %58 = add i32 %56, %57, !dbg !2414
  %59 = zext i32 %58 to i64, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %59, metadata !2416, metadata !DIExpression()), !dbg !2331
  %60 = and i32 %21, 4, !dbg !2417
  %61 = icmp ne i32 %60, 0, !dbg !2417
  br i1 %61, label %62, label %67, !dbg !2419

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 0, !dbg !2420
  %64 = load i32, i32* %63, align 8, !dbg !2422
  %65 = add nsw i32 %64, 1, !dbg !2422
  store i32 %65, i32* %63, align 8, !dbg !2422
  %66 = call i64 @mktime(%struct.tm* noundef %54) #8, !dbg !2423
  store i64 %66, i64* %4, align 8, !dbg !2424
  br label %67, !dbg !2425

67:                                               ; preds = %62, %53
  %68 = icmp eq i32 %.02, 3, !dbg !2426
  br i1 %68, label %69, label %73, !dbg !2428

69:                                               ; preds = %67
  %70 = load i64, i64* %4, align 8, !dbg !2429
  %71 = getelementptr inbounds %struct.rar, %struct.rar* %1, i32 0, i32 9, !dbg !2431
  store i64 %70, i64* %71, align 8, !dbg !2432
  %72 = getelementptr inbounds %struct.rar, %struct.rar* %1, i32 0, i32 10, !dbg !2433
  store i64 %59, i64* %72, align 8, !dbg !2434
  br label %91, !dbg !2435

73:                                               ; preds = %67
  %74 = icmp eq i32 %.02, 2, !dbg !2436
  br i1 %74, label %75, label %79, !dbg !2438

75:                                               ; preds = %73
  %76 = load i64, i64* %4, align 8, !dbg !2439
  %77 = getelementptr inbounds %struct.rar, %struct.rar* %1, i32 0, i32 18, !dbg !2441
  store i64 %76, i64* %77, align 8, !dbg !2442
  %78 = getelementptr inbounds %struct.rar, %struct.rar* %1, i32 0, i32 19, !dbg !2443
  store i64 %59, i64* %78, align 8, !dbg !2444
  br label %90, !dbg !2445

79:                                               ; preds = %73
  %80 = icmp eq i32 %.02, 1, !dbg !2446
  br i1 %80, label %81, label %85, !dbg !2448

81:                                               ; preds = %79
  %82 = load i64, i64* %4, align 8, !dbg !2449
  %83 = getelementptr inbounds %struct.rar, %struct.rar* %1, i32 0, i32 16, !dbg !2451
  store i64 %82, i64* %83, align 8, !dbg !2452
  %84 = getelementptr inbounds %struct.rar, %struct.rar* %1, i32 0, i32 17, !dbg !2453
  store i64 %59, i64* %84, align 8, !dbg !2454
  br label %89, !dbg !2455

85:                                               ; preds = %79
  %86 = load i64, i64* %4, align 8, !dbg !2456
  %87 = getelementptr inbounds %struct.rar, %struct.rar* %1, i32 0, i32 20, !dbg !2458
  store i64 %86, i64* %87, align 8, !dbg !2459
  %88 = getelementptr inbounds %struct.rar, %struct.rar* %1, i32 0, i32 21, !dbg !2460
  store i64 %59, i64* %88, align 8, !dbg !2461
  br label %89

89:                                               ; preds = %85, %81
  br label %90

90:                                               ; preds = %89, %75
  br label %91

91:                                               ; preds = %90, %69
  br label %92, !dbg !2462

92:                                               ; preds = %91, %19
  %.3 = phi i8* [ %.2, %91 ], [ %.01, %19 ], !dbg !2343
  call void @llvm.dbg.value(metadata i8* %.3, metadata !2330, metadata !DIExpression()), !dbg !2331
  br label %93, !dbg !2463

93:                                               ; preds = %92
  %94 = add nsw i32 %.02, -1, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %94, metadata !2344, metadata !DIExpression()), !dbg !2331
  br label %12, !dbg !2465, !llvm.loop !2466

95:                                               ; preds = %12
  br label %96, !dbg !2468

96:                                               ; preds = %95, %40, %30, %7
  %.0 = phi i32 [ -1, %7 ], [ -1, %40 ], [ -1, %30 ], [ 0, %95 ], !dbg !2331
  ret i32 %.0, !dbg !2469
}

declare void @archive_entry_set_mtime(%struct.archive_entry* noundef, i64 noundef, i64 noundef) #2

declare void @archive_entry_set_ctime(%struct.archive_entry* noundef, i64 noundef, i64 noundef) #2

declare void @archive_entry_set_atime(%struct.archive_entry* noundef, i64 noundef, i64 noundef) #2

declare void @archive_entry_set_size(%struct.archive_entry* noundef, i64 noundef) #2

declare void @archive_entry_set_mode(%struct.archive_entry* noundef, i32 noundef) #2

declare i32 @_archive_entry_copy_pathname_l(%struct.archive_entry* noundef, i8* noundef, i64 noundef, %struct.archive_string_conv* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #7

declare i8* @archive_string_conversion_charset_name(%struct.archive_string_conv* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_symlink_stored(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1, %struct.archive_string_conv* noundef %2) #0 !dbg !2470 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !2473, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %struct.archive_entry* %1, metadata !2475, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %2, metadata !2476, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 0, metadata !2477, metadata !DIExpression()), !dbg !2474
  %4 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !2478
  %5 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %4, align 8, !dbg !2478
  %6 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %5, i32 0, i32 0, !dbg !2479
  %7 = load i8*, i8** %6, align 8, !dbg !2479
  %8 = bitcast i8* %7 to %struct.rar*, !dbg !2480
  call void @llvm.dbg.value(metadata %struct.rar* %8, metadata !2481, metadata !DIExpression()), !dbg !2474
  %9 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 7, !dbg !2482
  %10 = load i64, i64* %9, align 8, !dbg !2482
  %11 = call i8* @rar_read_ahead(%struct.archive_read* noundef %0, i64 noundef %10, i64* noundef null), !dbg !2484
  call void @llvm.dbg.value(metadata i8* %11, metadata !2485, metadata !DIExpression()), !dbg !2474
  %12 = icmp eq i8* %11, null, !dbg !2486
  br i1 %12, label %13, label %14, !dbg !2487

13:                                               ; preds = %3
  br label %32, !dbg !2488

14:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i8* %11, metadata !2489, metadata !DIExpression()), !dbg !2474
  %15 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 7, !dbg !2490
  %16 = load i64, i64* %15, align 8, !dbg !2490
  %17 = call i32 @_archive_entry_copy_symlink_l(%struct.archive_entry* noundef %1, i8* noundef %11, i64 noundef %16, %struct.archive_string_conv* noundef %2), !dbg !2492
  %18 = icmp ne i32 %17, 0, !dbg !2492
  br i1 %18, label %19, label %28, !dbg !2493

19:                                               ; preds = %14
  %20 = call i32* @__errno_location() #10, !dbg !2494
  %21 = load i32, i32* %20, align 4, !dbg !2494
  %22 = icmp eq i32 %21, 12, !dbg !2497
  br i1 %22, label %23, label %25, !dbg !2498

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2499
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %24, i32 noundef 12, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0)), !dbg !2501
  br label %32, !dbg !2502

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2503
  %27 = call i8* @archive_string_conversion_charset_name(%struct.archive_string_conv* noundef %2), !dbg !2504
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %26, i32 noundef 84, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i64 0, i64 0), i8* noundef %27), !dbg !2505
  call void @llvm.dbg.value(metadata i32 -20, metadata !2477, metadata !DIExpression()), !dbg !2474
  br label %28, !dbg !2506

28:                                               ; preds = %25, %14
  %.01 = phi i32 [ -20, %25 ], [ 0, %14 ], !dbg !2474
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2477, metadata !DIExpression()), !dbg !2474
  %29 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 7, !dbg !2507
  %30 = load i64, i64* %29, align 8, !dbg !2507
  %31 = call i64 @__archive_read_consume(%struct.archive_read* noundef %0, i64 noundef %30), !dbg !2508
  br label %32, !dbg !2509

32:                                               ; preds = %28, %23, %13
  %.0 = phi i32 [ -30, %13 ], [ -30, %23 ], [ %.01, %28 ], !dbg !2474
  ret i32 %.0, !dbg !2510
}

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm* noundef) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i8* @ppmd_alloc(i8* noundef %0, i64 noundef %1) #0 !dbg !2511 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2512, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i64 %1, metadata !2514, metadata !DIExpression()), !dbg !2513
  %3 = call noalias i8* @malloc(i64 noundef %1) #8, !dbg !2515
  ret i8* %3, !dbg !2516
}

; Function Attrs: noinline nounwind uwtable
define internal void @ppmd_free(i8* noundef %0, i8* noundef %1) #0 !dbg !2517 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2518, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8* %1, metadata !2520, metadata !DIExpression()), !dbg !2519
  call void @free(i8* noundef %1) #8, !dbg !2521
  ret void, !dbg !2522
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @rar_read_ahead(%struct.archive_read* noundef %0, i64 noundef %1, i64* noundef %2) #0 !dbg !2523 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !2527, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i64 %1, metadata !2529, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i64* %2, metadata !2530, metadata !DIExpression()), !dbg !2528
  %4 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !2531
  %5 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %4, align 8, !dbg !2531
  %6 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %5, i32 0, i32 0, !dbg !2532
  %7 = load i8*, i8** %6, align 8, !dbg !2532
  %8 = bitcast i8* %7 to %struct.rar*, !dbg !2533
  call void @llvm.dbg.value(metadata %struct.rar* %8, metadata !2534, metadata !DIExpression()), !dbg !2528
  %9 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef %1, i64* noundef %2), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %9, metadata !2536, metadata !DIExpression()), !dbg !2528
  %10 = icmp ne i64* %2, null, !dbg !2537
  br i1 %10, label %11, label %66, !dbg !2539

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 9, !dbg !2540
  %13 = load i8, i8* %12, align 8, !dbg !2540
  %14 = sext i8 %13 to i32, !dbg !2543
  %15 = icmp ne i32 %14, 0, !dbg !2543
  br i1 %15, label %16, label %24, !dbg !2544

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8, !dbg !2545
  %18 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 10, !dbg !2546
  %19 = load i64, i64* %18, align 8, !dbg !2546
  %20 = icmp sgt i64 %17, %19, !dbg !2547
  br i1 %20, label %21, label %24, !dbg !2548

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 10, !dbg !2549
  %23 = load i64, i64* %22, align 8, !dbg !2549
  store i64 %23, i64* %2, align 8, !dbg !2550
  br label %24, !dbg !2551

24:                                               ; preds = %21, %16, %11
  %25 = load i64, i64* %2, align 8, !dbg !2552
  %26 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 23, !dbg !2554
  %27 = load i64, i64* %26, align 8, !dbg !2554
  %28 = icmp sgt i64 %25, %27, !dbg !2555
  br i1 %28, label %29, label %32, !dbg !2556

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 23, !dbg !2557
  %31 = load i64, i64* %30, align 8, !dbg !2557
  store i64 %31, i64* %2, align 8, !dbg !2558
  br label %32, !dbg !2559

32:                                               ; preds = %29, %24
  %33 = load i64, i64* %2, align 8, !dbg !2560
  %34 = icmp slt i64 %33, 0, !dbg !2562
  br i1 %34, label %35, label %36, !dbg !2563

35:                                               ; preds = %32
  br label %67, !dbg !2564

36:                                               ; preds = %32
  %37 = load i64, i64* %2, align 8, !dbg !2565
  %38 = icmp eq i64 %37, 0, !dbg !2567
  br i1 %38, label %39, label %64, !dbg !2568

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 0, !dbg !2569
  %41 = load i32, i32* %40, align 8, !dbg !2569
  %42 = and i32 %41, 1, !dbg !2570
  %43 = icmp ne i32 %42, 0, !dbg !2570
  br i1 %43, label %44, label %64, !dbg !2571

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 6, !dbg !2572
  %46 = load i32, i32* %45, align 8, !dbg !2572
  %47 = and i32 %46, 2, !dbg !2573
  %48 = icmp ne i32 %47, 0, !dbg !2573
  br i1 %48, label %49, label %64, !dbg !2574

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 1, !dbg !2575
  %51 = load %struct.archive_entry*, %struct.archive_entry** %50, align 8, !dbg !2575
  %52 = call i32 @archive_read_format_rar_read_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %51), !dbg !2577
  call void @llvm.dbg.value(metadata i32 %52, metadata !2578, metadata !DIExpression()), !dbg !2528
  %53 = icmp eq i32 %52, 1, !dbg !2579
  br i1 %53, label %54, label %59, !dbg !2581

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 37, !dbg !2582
  store i8 1, i8* %55, align 4, !dbg !2584
  %56 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 1, !dbg !2585
  %57 = load %struct.archive_entry*, %struct.archive_entry** %56, align 8, !dbg !2585
  %58 = call i32 @archive_read_format_rar_read_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %57), !dbg !2586
  call void @llvm.dbg.value(metadata i32 %58, metadata !2578, metadata !DIExpression()), !dbg !2528
  br label %59, !dbg !2587

59:                                               ; preds = %54, %49
  %.01 = phi i32 [ %58, %54 ], [ %52, %49 ], !dbg !2588
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2578, metadata !DIExpression()), !dbg !2528
  %60 = icmp ne i32 %.01, 0, !dbg !2589
  br i1 %60, label %61, label %62, !dbg !2591

61:                                               ; preds = %59
  br label %67, !dbg !2592

62:                                               ; preds = %59
  %63 = call i8* @rar_read_ahead(%struct.archive_read* noundef %0, i64 noundef %1, i64* noundef %2), !dbg !2593
  br label %67, !dbg !2594

64:                                               ; preds = %44, %39, %36
  br label %65

65:                                               ; preds = %64
  br label %66, !dbg !2595

66:                                               ; preds = %65, %3
  br label %67, !dbg !2596

67:                                               ; preds = %66, %62, %61, %35
  %.0 = phi i8* [ null, %35 ], [ null, %61 ], [ %63, %62 ], [ %9, %66 ], !dbg !2528
  ret i8* %.0, !dbg !2597
}

declare i32 @_archive_entry_copy_symlink_l(%struct.archive_entry* noundef, i8* noundef, i64 noundef, %struct.archive_string_conv* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_data_stored(%struct.archive_read* noundef %0, i8** noundef %1, i64* noundef %2, i64* noundef %3) #0 !dbg !2598 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !2599, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8** %1, metadata !2601, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i64* %2, metadata !2602, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i64* %3, metadata !2603, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2604, metadata !DIExpression()), !dbg !2605
  %6 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !2606
  %7 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %6, align 8, !dbg !2606
  %8 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %7, i32 0, i32 0, !dbg !2607
  %9 = load i8*, i8** %8, align 8, !dbg !2607
  %10 = bitcast i8* %9 to %struct.rar*, !dbg !2608
  call void @llvm.dbg.value(metadata %struct.rar* %10, metadata !2609, metadata !DIExpression()), !dbg !2600
  %11 = getelementptr inbounds %struct.rar, %struct.rar* %10, i32 0, i32 23, !dbg !2610
  %12 = load i64, i64* %11, align 8, !dbg !2610
  %13 = icmp eq i64 %12, 0, !dbg !2612
  br i1 %13, label %14, label %36, !dbg !2613

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.rar, %struct.rar* %10, i32 0, i32 0, !dbg !2614
  %16 = load i32, i32* %15, align 8, !dbg !2614
  %17 = and i32 %16, 1, !dbg !2615
  %18 = icmp ne i32 %17, 0, !dbg !2615
  br i1 %18, label %19, label %24, !dbg !2616

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rar, %struct.rar* %10, i32 0, i32 6, !dbg !2617
  %21 = load i32, i32* %20, align 8, !dbg !2617
  %22 = and i32 %21, 2, !dbg !2618
  %23 = icmp ne i32 %22, 0, !dbg !2618
  br i1 %23, label %36, label %24, !dbg !2619

24:                                               ; preds = %19, %14
  store i8* null, i8** %1, align 8, !dbg !2620
  store i64 0, i64* %2, align 8, !dbg !2622
  %25 = getelementptr inbounds %struct.rar, %struct.rar* %10, i32 0, i32 25, !dbg !2623
  %26 = load i64, i64* %25, align 8, !dbg !2623
  store i64 %26, i64* %3, align 8, !dbg !2624
  %27 = getelementptr inbounds %struct.rar, %struct.rar* %10, i32 0, i32 1, !dbg !2625
  %28 = load i64, i64* %27, align 8, !dbg !2625
  %29 = getelementptr inbounds %struct.rar, %struct.rar* %10, i32 0, i32 35, !dbg !2627
  %30 = load i64, i64* %29, align 8, !dbg !2627
  %31 = icmp ne i64 %28, %30, !dbg !2628
  br i1 %31, label %32, label %34, !dbg !2629

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2630
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %33, i32 noundef 84, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0)), !dbg !2632
  br label %67, !dbg !2633

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.rar, %struct.rar* %10, i32 0, i32 34, !dbg !2634
  store i8 1, i8* %35, align 1, !dbg !2635
  br label %67, !dbg !2636

36:                                               ; preds = %19, %4
  %37 = call i8* @rar_read_ahead(%struct.archive_read* noundef %0, i64 noundef 1, i64* noundef %5), !dbg !2637
  store i8* %37, i8** %1, align 8, !dbg !2638
  %38 = load i64, i64* %5, align 8, !dbg !2639
  %39 = icmp sle i64 %38, 0, !dbg !2641
  br i1 %39, label %40, label %42, !dbg !2642

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2643
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %41, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0)), !dbg !2645
  br label %67, !dbg !2646

42:                                               ; preds = %36
  %43 = load i64, i64* %5, align 8, !dbg !2647
  store i64 %43, i64* %2, align 8, !dbg !2648
  %44 = getelementptr inbounds %struct.rar, %struct.rar* %10, i32 0, i32 25, !dbg !2649
  %45 = load i64, i64* %44, align 8, !dbg !2649
  store i64 %45, i64* %3, align 8, !dbg !2650
  %46 = load i64, i64* %5, align 8, !dbg !2651
  %47 = getelementptr inbounds %struct.rar, %struct.rar* %10, i32 0, i32 25, !dbg !2652
  %48 = load i64, i64* %47, align 8, !dbg !2653
  %49 = add nsw i64 %48, %46, !dbg !2653
  store i64 %49, i64* %47, align 8, !dbg !2653
  %50 = load i64, i64* %5, align 8, !dbg !2654
  %51 = getelementptr inbounds %struct.rar, %struct.rar* %10, i32 0, i32 27, !dbg !2655
  %52 = load i64, i64* %51, align 8, !dbg !2656
  %53 = add nsw i64 %52, %50, !dbg !2656
  store i64 %53, i64* %51, align 8, !dbg !2656
  %54 = load i64, i64* %5, align 8, !dbg !2657
  %55 = getelementptr inbounds %struct.rar, %struct.rar* %10, i32 0, i32 23, !dbg !2658
  %56 = load i64, i64* %55, align 8, !dbg !2659
  %57 = sub nsw i64 %56, %54, !dbg !2659
  store i64 %57, i64* %55, align 8, !dbg !2659
  %58 = load i64, i64* %5, align 8, !dbg !2660
  %59 = getelementptr inbounds %struct.rar, %struct.rar* %10, i32 0, i32 22, !dbg !2661
  store i64 %58, i64* %59, align 8, !dbg !2662
  %60 = getelementptr inbounds %struct.rar, %struct.rar* %10, i32 0, i32 35, !dbg !2663
  %61 = load i64, i64* %60, align 8, !dbg !2663
  %62 = load i8*, i8** %1, align 8, !dbg !2664
  %63 = load i64, i64* %5, align 8, !dbg !2665
  %64 = trunc i64 %63 to i32, !dbg !2666
  %65 = call i64 @crc32(i64 noundef %61, i8* noundef %62, i32 noundef %64), !dbg !2667
  %66 = getelementptr inbounds %struct.rar, %struct.rar* %10, i32 0, i32 35, !dbg !2668
  store i64 %65, i64* %66, align 8, !dbg !2669
  br label %67, !dbg !2670

67:                                               ; preds = %42, %40, %34, %32
  %.0 = phi i32 [ -30, %40 ], [ 0, %42 ], [ -30, %32 ], [ 1, %34 ], !dbg !2600
  ret i32 %.0, !dbg !2671
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_data_compressed(%struct.archive_read* noundef %0, i8** noundef %1, i64* noundef %2, i64* noundef %3) #0 !dbg !2672 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !2673, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8** %1, metadata !2675, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i64* %2, metadata !2676, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i64* %3, metadata !2677, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 0, metadata !2678, metadata !DIExpression()), !dbg !2674
  %5 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !2679
  %6 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %5, align 8, !dbg !2679
  %7 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %6, i32 0, i32 0, !dbg !2680
  %8 = load i8*, i8** %7, align 8, !dbg !2680
  %9 = bitcast i8* %8 to %struct.rar*, !dbg !2681
  call void @llvm.dbg.value(metadata %struct.rar* %9, metadata !2682, metadata !DIExpression()), !dbg !2674
  br label %10, !dbg !2683

10:                                               ; preds = %304, %4
  %.03 = phi i32 [ 0, %4 ], [ %.3, %304 ], !dbg !2674
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2678, metadata !DIExpression()), !dbg !2674
  %11 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 28, !dbg !2684
  %12 = load i8, i8* %11, align 8, !dbg !2684
  %13 = icmp ne i8 %12, 0, !dbg !2687
  br i1 %13, label %15, label %14, !dbg !2688

14:                                               ; preds = %10
  br label %325, !dbg !2689

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 56, !dbg !2690
  %17 = load i8, i8* %16, align 2, !dbg !2690
  %18 = sext i8 %17 to i32, !dbg !2692
  %19 = icmp ne i32 %18, 0, !dbg !2692
  br i1 %19, label %30, label %20, !dbg !2693

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 32, !dbg !2694
  %22 = load i32, i32* %21, align 8, !dbg !2694
  %23 = icmp ne i32 %22, 0, !dbg !2695
  br i1 %23, label %24, label %66, !dbg !2696

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 25, !dbg !2697
  %26 = load i64, i64* %25, align 8, !dbg !2697
  %27 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 8, !dbg !2698
  %28 = load i64, i64* %27, align 8, !dbg !2698
  %29 = icmp sge i64 %26, %28, !dbg !2699
  br i1 %29, label %30, label %66, !dbg !2700

30:                                               ; preds = %24, %15
  %31 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 29, !dbg !2701
  %32 = load i32, i32* %31, align 4, !dbg !2701
  %33 = icmp ugt i32 %32, 0, !dbg !2704
  br i1 %33, label %34, label %54, !dbg !2705

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 31, !dbg !2706
  %36 = load i8*, i8** %35, align 8, !dbg !2706
  store i8* %36, i8** %1, align 8, !dbg !2708
  %37 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 29, !dbg !2709
  %38 = load i32, i32* %37, align 4, !dbg !2709
  %39 = zext i32 %38 to i64, !dbg !2710
  store i64 %39, i64* %2, align 8, !dbg !2711
  %40 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 26, !dbg !2712
  %41 = load i64, i64* %40, align 8, !dbg !2712
  store i64 %41, i64* %3, align 8, !dbg !2713
  %42 = load i64, i64* %2, align 8, !dbg !2714
  %43 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 26, !dbg !2715
  %44 = load i64, i64* %43, align 8, !dbg !2716
  %45 = add i64 %44, %42, !dbg !2716
  store i64 %45, i64* %43, align 8, !dbg !2716
  %46 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 35, !dbg !2717
  %47 = load i64, i64* %46, align 8, !dbg !2717
  %48 = load i8*, i8** %1, align 8, !dbg !2718
  %49 = load i64, i64* %2, align 8, !dbg !2719
  %50 = trunc i64 %49 to i32, !dbg !2720
  %51 = call i64 @crc32(i64 noundef %47, i8* noundef %48, i32 noundef %50), !dbg !2721
  %52 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 35, !dbg !2722
  store i64 %51, i64* %52, align 8, !dbg !2723
  %53 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 29, !dbg !2724
  store i32 0, i32* %53, align 4, !dbg !2725
  br label %325, !dbg !2726

54:                                               ; preds = %30
  store i8* null, i8** %1, align 8, !dbg !2727
  store i64 0, i64* %2, align 8, !dbg !2728
  %55 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 25, !dbg !2729
  %56 = load i64, i64* %55, align 8, !dbg !2729
  store i64 %56, i64* %3, align 8, !dbg !2730
  %57 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 1, !dbg !2731
  %58 = load i64, i64* %57, align 8, !dbg !2731
  %59 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 35, !dbg !2733
  %60 = load i64, i64* %59, align 8, !dbg !2733
  %61 = icmp ne i64 %58, %60, !dbg !2734
  br i1 %61, label %62, label %64, !dbg !2735

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2736
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %63, i32 noundef 84, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0)), !dbg !2738
  br label %325, !dbg !2739

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 34, !dbg !2740
  store i8 1, i8* %65, align 1, !dbg !2741
  br label %325, !dbg !2742

66:                                               ; preds = %24, %20
  %67 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 57, !dbg !2743
  %68 = load i8, i8* %67, align 1, !dbg !2743
  %69 = icmp ne i8 %68, 0, !dbg !2745
  br i1 %69, label %133, label %70, !dbg !2746

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 32, !dbg !2747
  %72 = load i32, i32* %71, align 8, !dbg !2747
  %73 = icmp ne i32 %72, 0, !dbg !2748
  br i1 %73, label %74, label %133, !dbg !2749

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 24, !dbg !2750
  %76 = load i64, i64* %75, align 8, !dbg !2750
  %77 = icmp sgt i64 %76, 0, !dbg !2751
  br i1 %77, label %78, label %133, !dbg !2752

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 24, !dbg !2753
  %80 = load i64, i64* %79, align 8, !dbg !2753
  %81 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 30, !dbg !2756
  %82 = load i32, i32* %81, align 8, !dbg !2756
  %83 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 29, !dbg !2757
  %84 = load i32, i32* %83, align 4, !dbg !2757
  %85 = sub i32 %82, %84, !dbg !2758
  %86 = zext i32 %85 to i64, !dbg !2759
  %87 = icmp sgt i64 %80, %86, !dbg !2760
  br i1 %87, label %88, label %95, !dbg !2761

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 30, !dbg !2762
  %90 = load i32, i32* %89, align 8, !dbg !2762
  %91 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 29, !dbg !2763
  %92 = load i32, i32* %91, align 4, !dbg !2763
  %93 = sub i32 %90, %92, !dbg !2764
  %94 = zext i32 %93 to i64, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %94, metadata !2766, metadata !DIExpression()), !dbg !2674
  br label %98, !dbg !2767

95:                                               ; preds = %78
  %96 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 24, !dbg !2768
  %97 = load i64, i64* %96, align 8, !dbg !2768
  call void @llvm.dbg.value(metadata i64 %97, metadata !2766, metadata !DIExpression()), !dbg !2674
  br label %98

98:                                               ; preds = %95, %88
  %.04 = phi i64 [ %94, %88 ], [ %97, %95 ], !dbg !2769
  call void @llvm.dbg.value(metadata i64 %.04, metadata !2766, metadata !DIExpression()), !dbg !2674
  %99 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 25, !dbg !2770
  %100 = load i64, i64* %99, align 8, !dbg !2770
  %101 = trunc i64 %.04 to i32, !dbg !2771
  %102 = call i32 @copy_from_lzss_window(%struct.archive_read* noundef %0, i8** noundef %1, i64 noundef %100, i32 noundef %101), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %102, metadata !2678, metadata !DIExpression()), !dbg !2674
  %103 = icmp ne i32 %102, 0, !dbg !2773
  br i1 %103, label %104, label %105, !dbg !2775

104:                                              ; preds = %98
  br label %325, !dbg !2776

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 25, !dbg !2777
  %107 = load i64, i64* %106, align 8, !dbg !2778
  %108 = add i64 %107, %.04, !dbg !2778
  store i64 %108, i64* %106, align 8, !dbg !2778
  %109 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 24, !dbg !2779
  %110 = load i64, i64* %109, align 8, !dbg !2780
  %111 = sub i64 %110, %.04, !dbg !2780
  store i64 %111, i64* %109, align 8, !dbg !2780
  %112 = load i8*, i8** %1, align 8, !dbg !2781
  %113 = icmp ne i8* %112, null, !dbg !2783
  br i1 %113, label %114, label %132, !dbg !2784

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 29, !dbg !2785
  store i32 0, i32* %115, align 4, !dbg !2787
  %116 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 30, !dbg !2788
  %117 = load i32, i32* %116, align 8, !dbg !2788
  %118 = zext i32 %117 to i64, !dbg !2789
  store i64 %118, i64* %2, align 8, !dbg !2790
  %119 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 26, !dbg !2791
  %120 = load i64, i64* %119, align 8, !dbg !2791
  store i64 %120, i64* %3, align 8, !dbg !2792
  %121 = load i64, i64* %2, align 8, !dbg !2793
  %122 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 26, !dbg !2794
  %123 = load i64, i64* %122, align 8, !dbg !2795
  %124 = add i64 %123, %121, !dbg !2795
  store i64 %124, i64* %122, align 8, !dbg !2795
  %125 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 35, !dbg !2796
  %126 = load i64, i64* %125, align 8, !dbg !2796
  %127 = load i8*, i8** %1, align 8, !dbg !2797
  %128 = load i64, i64* %2, align 8, !dbg !2798
  %129 = trunc i64 %128 to i32, !dbg !2799
  %130 = call i64 @crc32(i64 noundef %126, i8* noundef %127, i32 noundef %129), !dbg !2800
  %131 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 35, !dbg !2801
  store i64 %130, i64* %131, align 8, !dbg !2802
  br label %325, !dbg !2803

132:                                              ; preds = %105
  br label %304, !dbg !2804

133:                                              ; preds = %74, %70, %66
  %134 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 67, !dbg !2805
  %135 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %134, i32 0, i32 3, !dbg !2807
  %136 = load i8*, i8** %135, align 8, !dbg !2807
  %137 = icmp ne i8* %136, null, !dbg !2808
  br i1 %137, label %143, label %138, !dbg !2809

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 67, !dbg !2810
  %140 = call i32 @rar_br_preparation(%struct.archive_read* noundef %0, %struct.rar_br* noundef %139), !dbg !2811
  call void @llvm.dbg.value(metadata i32 %140, metadata !2678, metadata !DIExpression()), !dbg !2674
  %141 = icmp slt i32 %140, -20, !dbg !2812
  br i1 %141, label %142, label %143, !dbg !2813

142:                                              ; preds = %138
  br label %325, !dbg !2814

143:                                              ; preds = %138, %133
  %.1 = phi i32 [ %.03, %133 ], [ %140, %138 ], !dbg !2674
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2678, metadata !DIExpression()), !dbg !2674
  %144 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 54, !dbg !2815
  %145 = load i8, i8* %144, align 8, !dbg !2815
  %146 = sext i8 %145 to i32, !dbg !2817
  %147 = icmp ne i32 %146, 0, !dbg !2817
  br i1 %147, label %148, label %152, !dbg !2818

148:                                              ; preds = %143
  %149 = call i32 @parse_codes(%struct.archive_read* noundef %0), !dbg !2819
  call void @llvm.dbg.value(metadata i32 %149, metadata !2678, metadata !DIExpression()), !dbg !2674
  %150 = icmp slt i32 %149, -20, !dbg !2820
  br i1 %150, label %151, label %152, !dbg !2821

151:                                              ; preds = %148
  br label %325, !dbg !2822

152:                                              ; preds = %148, %143
  %.2 = phi i32 [ %149, %148 ], [ %.1, %143 ], !dbg !2674
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2678, metadata !DIExpression()), !dbg !2674
  %153 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 57, !dbg !2823
  %154 = load i8, i8* %153, align 1, !dbg !2823
  %155 = icmp ne i8 %154, 0, !dbg !2825
  br i1 %155, label %156, label %249, !dbg !2826

156:                                              ; preds = %152
  %157 = load i32 (%struct.CPpmd7*, %struct.IPpmd7_RangeDec*)*, i32 (%struct.CPpmd7*, %struct.IPpmd7_RangeDec*)** getelementptr inbounds (%struct.IPpmd7, %struct.IPpmd7* @__archive_ppmd7_functions, i32 0, i32 8), align 8, !dbg !2827
  %158 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 59, !dbg !2830
  %159 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 60, !dbg !2831
  %160 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %159, i32 0, i32 0, !dbg !2832
  %161 = call i32 %157(%struct.CPpmd7* noundef %158, %struct.IPpmd7_RangeDec* noundef %160), !dbg !2833
  call void @llvm.dbg.value(metadata i32 %161, metadata !2834, metadata !DIExpression()), !dbg !2674
  %162 = icmp slt i32 %161, 0, !dbg !2835
  br i1 %162, label %163, label %165, !dbg !2836

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2837
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %164, i32 noundef 84, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0)), !dbg !2839
  br label %325, !dbg !2840

165:                                              ; preds = %156
  %166 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 58, !dbg !2841
  %167 = load i32, i32* %166, align 4, !dbg !2841
  %168 = icmp ne i32 %161, %167, !dbg !2843
  br i1 %168, label %169, label %174, !dbg !2844

169:                                              ; preds = %165
  %170 = trunc i32 %161 to i8, !dbg !2845
  call void @lzss_emit_literal(%struct.rar* noundef %9, i8 noundef zeroext %170), !dbg !2847
  %171 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 24, !dbg !2848
  %172 = load i64, i64* %171, align 8, !dbg !2849
  %173 = add nsw i64 %172, 1, !dbg !2849
  store i64 %173, i64* %171, align 8, !dbg !2849
  br label %248, !dbg !2850

174:                                              ; preds = %165
  %175 = load i32 (%struct.CPpmd7*, %struct.IPpmd7_RangeDec*)*, i32 (%struct.CPpmd7*, %struct.IPpmd7_RangeDec*)** getelementptr inbounds (%struct.IPpmd7, %struct.IPpmd7* @__archive_ppmd7_functions, i32 0, i32 8), align 8, !dbg !2851
  %176 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 59, !dbg !2854
  %177 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 60, !dbg !2855
  %178 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %177, i32 0, i32 0, !dbg !2856
  %179 = call i32 %175(%struct.CPpmd7* noundef %176, %struct.IPpmd7_RangeDec* noundef %178), !dbg !2857
  call void @llvm.dbg.value(metadata i32 %179, metadata !2858, metadata !DIExpression()), !dbg !2674
  %180 = icmp slt i32 %179, 0, !dbg !2859
  br i1 %180, label %181, label %183, !dbg !2860

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2861
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %182, i32 noundef 84, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0)), !dbg !2863
  br label %325, !dbg !2864

183:                                              ; preds = %174
  switch i32 %179, label %242 [
    i32 0, label %184
    i32 2, label %187
    i32 3, label %189
    i32 4, label %191
    i32 5, label %226
  ], !dbg !2865

184:                                              ; preds = %183
  %185 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 54, !dbg !2866
  store i8 1, i8* %185, align 8, !dbg !2868
  %186 = call i32 @read_data_compressed(%struct.archive_read* noundef %0, i8** noundef %1, i64* noundef %2, i64* noundef %3), !dbg !2869
  br label %325, !dbg !2870

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 56, !dbg !2871
  store i8 1, i8* %188, align 2, !dbg !2872
  br label %304, !dbg !2873

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2874
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %190, i32 noundef -1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0)), !dbg !2875
  br label %325, !dbg !2876

191:                                              ; preds = %183
  call void @llvm.dbg.value(metadata i32 0, metadata !2877, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 2, metadata !2878, metadata !DIExpression()), !dbg !2674
  br label %192, !dbg !2879

192:                                              ; preds = %207, %191
  %.02 = phi i32 [ 0, %191 ], [ %206, %207 ], !dbg !2881
  %.01 = phi i32 [ 2, %191 ], [ %208, %207 ], !dbg !2882
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2878, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2877, metadata !DIExpression()), !dbg !2674
  %193 = icmp sge i32 %.01, 0, !dbg !2883
  br i1 %193, label %194, label %209, !dbg !2885

194:                                              ; preds = %192
  %195 = load i32 (%struct.CPpmd7*, %struct.IPpmd7_RangeDec*)*, i32 (%struct.CPpmd7*, %struct.IPpmd7_RangeDec*)** getelementptr inbounds (%struct.IPpmd7, %struct.IPpmd7* @__archive_ppmd7_functions, i32 0, i32 8), align 8, !dbg !2886
  %196 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 59, !dbg !2889
  %197 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 60, !dbg !2890
  %198 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %197, i32 0, i32 0, !dbg !2891
  %199 = call i32 %195(%struct.CPpmd7* noundef %196, %struct.IPpmd7_RangeDec* noundef %198), !dbg !2892
  call void @llvm.dbg.value(metadata i32 %199, metadata !2858, metadata !DIExpression()), !dbg !2674
  %200 = icmp slt i32 %199, 0, !dbg !2893
  br i1 %200, label %201, label %203, !dbg !2894

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2895
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %202, i32 noundef 84, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0)), !dbg !2897
  br label %325, !dbg !2898

203:                                              ; preds = %194
  %204 = mul nsw i32 %.01, 8, !dbg !2899
  %205 = shl i32 %199, %204, !dbg !2900
  %206 = or i32 %.02, %205, !dbg !2901
  call void @llvm.dbg.value(metadata i32 %206, metadata !2877, metadata !DIExpression()), !dbg !2674
  br label %207, !dbg !2902

207:                                              ; preds = %203
  %208 = add nsw i32 %.01, -1, !dbg !2903
  call void @llvm.dbg.value(metadata i32 %208, metadata !2878, metadata !DIExpression()), !dbg !2674
  br label %192, !dbg !2904, !llvm.loop !2905

209:                                              ; preds = %192
  %210 = load i32 (%struct.CPpmd7*, %struct.IPpmd7_RangeDec*)*, i32 (%struct.CPpmd7*, %struct.IPpmd7_RangeDec*)** getelementptr inbounds (%struct.IPpmd7, %struct.IPpmd7* @__archive_ppmd7_functions, i32 0, i32 8), align 8, !dbg !2907
  %211 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 59, !dbg !2909
  %212 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 60, !dbg !2910
  %213 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %212, i32 0, i32 0, !dbg !2911
  %214 = call i32 %210(%struct.CPpmd7* noundef %211, %struct.IPpmd7_RangeDec* noundef %213), !dbg !2912
  call void @llvm.dbg.value(metadata i32 %214, metadata !2913, metadata !DIExpression()), !dbg !2674
  %215 = icmp slt i32 %214, 0, !dbg !2914
  br i1 %215, label %216, label %218, !dbg !2915

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2916
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %217, i32 noundef 84, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0)), !dbg !2918
  br label %325, !dbg !2919

218:                                              ; preds = %209
  %219 = add nsw i32 %.02, 2, !dbg !2920
  %220 = add nsw i32 %214, 32, !dbg !2921
  call void @lzss_emit_match(%struct.rar* noundef %9, i32 noundef %219, i32 noundef %220), !dbg !2922
  %221 = add nsw i32 %214, 32, !dbg !2923
  %222 = sext i32 %221 to i64, !dbg !2924
  %223 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 24, !dbg !2925
  %224 = load i64, i64* %223, align 8, !dbg !2926
  %225 = add nsw i64 %224, %222, !dbg !2926
  store i64 %225, i64* %223, align 8, !dbg !2926
  br label %247, !dbg !2927

226:                                              ; preds = %183
  %227 = load i32 (%struct.CPpmd7*, %struct.IPpmd7_RangeDec*)*, i32 (%struct.CPpmd7*, %struct.IPpmd7_RangeDec*)** getelementptr inbounds (%struct.IPpmd7, %struct.IPpmd7* @__archive_ppmd7_functions, i32 0, i32 8), align 8, !dbg !2928
  %228 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 59, !dbg !2930
  %229 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 60, !dbg !2931
  %230 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %229, i32 0, i32 0, !dbg !2932
  %231 = call i32 %227(%struct.CPpmd7* noundef %228, %struct.IPpmd7_RangeDec* noundef %230), !dbg !2933
  call void @llvm.dbg.value(metadata i32 %231, metadata !2913, metadata !DIExpression()), !dbg !2674
  %232 = icmp slt i32 %231, 0, !dbg !2934
  br i1 %232, label %233, label %235, !dbg !2935

233:                                              ; preds = %226
  %234 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2936
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %234, i32 noundef 84, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0)), !dbg !2938
  br label %325, !dbg !2939

235:                                              ; preds = %226
  %236 = add nsw i32 %231, 4, !dbg !2940
  call void @lzss_emit_match(%struct.rar* noundef %9, i32 noundef 1, i32 noundef %236), !dbg !2941
  %237 = add nsw i32 %231, 4, !dbg !2942
  %238 = sext i32 %237 to i64, !dbg !2943
  %239 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 24, !dbg !2944
  %240 = load i64, i64* %239, align 8, !dbg !2945
  %241 = add nsw i64 %240, %238, !dbg !2945
  store i64 %241, i64* %239, align 8, !dbg !2945
  br label %247, !dbg !2946

242:                                              ; preds = %183
  %243 = trunc i32 %161 to i8, !dbg !2947
  call void @lzss_emit_literal(%struct.rar* noundef %9, i8 noundef zeroext %243), !dbg !2948
  %244 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 24, !dbg !2949
  %245 = load i64, i64* %244, align 8, !dbg !2950
  %246 = add nsw i64 %245, 1, !dbg !2950
  store i64 %246, i64* %244, align 8, !dbg !2950
  br label %247, !dbg !2951

247:                                              ; preds = %242, %235, %218
  br label %248

248:                                              ; preds = %247, %169
  br label %270, !dbg !2952

249:                                              ; preds = %152
  %250 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 25, !dbg !2953
  %251 = load i64, i64* %250, align 8, !dbg !2953
  call void @llvm.dbg.value(metadata i64 %251, metadata !2955, metadata !DIExpression()), !dbg !2674
  %252 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 32, !dbg !2956
  %253 = load i32, i32* %252, align 8, !dbg !2956
  %254 = zext i32 %253 to i64, !dbg !2957
  %255 = add nsw i64 %251, %254, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %255, metadata !2959, metadata !DIExpression()), !dbg !2674
  %256 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 53, !dbg !2960
  store i64 9223372036854775807, i64* %256, align 8, !dbg !2961
  %257 = call i64 @expand(%struct.archive_read* noundef %0, i64 noundef %255), !dbg !2962
  call void @llvm.dbg.value(metadata i64 %257, metadata !2964, metadata !DIExpression()), !dbg !2674
  %258 = icmp slt i64 %257, 0, !dbg !2965
  br i1 %258, label %259, label %261, !dbg !2966

259:                                              ; preds = %249
  %260 = trunc i64 %257 to i32, !dbg !2967
  br label %325, !dbg !2968

261:                                              ; preds = %249
  %262 = sub nsw i64 %257, %251, !dbg !2969
  %263 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 24, !dbg !2970
  store i64 %262, i64* %263, align 8, !dbg !2971
  %264 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 24, !dbg !2972
  %265 = load i64, i64* %264, align 8, !dbg !2972
  %266 = icmp eq i64 %265, 0, !dbg !2974
  br i1 %266, label %267, label %269, !dbg !2975

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2976
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %268, i32 noundef 84, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0)), !dbg !2978
  br label %325, !dbg !2979

269:                                              ; preds = %261
  br label %270

270:                                              ; preds = %269, %248
  %271 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 24, !dbg !2980
  %272 = load i64, i64* %271, align 8, !dbg !2980
  %273 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 30, !dbg !2982
  %274 = load i32, i32* %273, align 8, !dbg !2982
  %275 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 29, !dbg !2983
  %276 = load i32, i32* %275, align 4, !dbg !2983
  %277 = sub i32 %274, %276, !dbg !2984
  %278 = zext i32 %277 to i64, !dbg !2985
  %279 = icmp sgt i64 %272, %278, !dbg !2986
  br i1 %279, label %280, label %287, !dbg !2987

280:                                              ; preds = %270
  %281 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 30, !dbg !2988
  %282 = load i32, i32* %281, align 8, !dbg !2988
  %283 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 29, !dbg !2989
  %284 = load i32, i32* %283, align 4, !dbg !2989
  %285 = sub i32 %282, %284, !dbg !2990
  %286 = zext i32 %285 to i64, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %286, metadata !2766, metadata !DIExpression()), !dbg !2674
  br label %290, !dbg !2992

287:                                              ; preds = %270
  %288 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 24, !dbg !2993
  %289 = load i64, i64* %288, align 8, !dbg !2993
  call void @llvm.dbg.value(metadata i64 %289, metadata !2766, metadata !DIExpression()), !dbg !2674
  br label %290

290:                                              ; preds = %287, %280
  %.15 = phi i64 [ %286, %280 ], [ %289, %287 ], !dbg !2994
  call void @llvm.dbg.value(metadata i64 %.15, metadata !2766, metadata !DIExpression()), !dbg !2674
  %291 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 25, !dbg !2995
  %292 = load i64, i64* %291, align 8, !dbg !2995
  %293 = trunc i64 %.15 to i32, !dbg !2996
  %294 = call i32 @copy_from_lzss_window(%struct.archive_read* noundef %0, i8** noundef %1, i64 noundef %292, i32 noundef %293), !dbg !2997
  call void @llvm.dbg.value(metadata i32 %294, metadata !2678, metadata !DIExpression()), !dbg !2674
  %295 = icmp ne i32 %294, 0, !dbg !2998
  br i1 %295, label %296, label %297, !dbg !3000

296:                                              ; preds = %290
  br label %325, !dbg !3001

297:                                              ; preds = %290
  %298 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 25, !dbg !3002
  %299 = load i64, i64* %298, align 8, !dbg !3003
  %300 = add i64 %299, %.15, !dbg !3003
  store i64 %300, i64* %298, align 8, !dbg !3003
  %301 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 24, !dbg !3004
  %302 = load i64, i64* %301, align 8, !dbg !3005
  %303 = sub i64 %302, %.15, !dbg !3005
  store i64 %303, i64* %301, align 8, !dbg !3005
  br label %304, !dbg !3006

304:                                              ; preds = %297, %187, %132
  %.3 = phi i32 [ %294, %297 ], [ %.2, %187 ], [ %102, %132 ], !dbg !3007
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2678, metadata !DIExpression()), !dbg !2674
  %305 = load i8*, i8** %1, align 8, !dbg !3008
  %306 = icmp eq i8* %305, null, !dbg !3009
  br i1 %306, label %10, label %307, !dbg !3006, !llvm.loop !3010

307:                                              ; preds = %304
  %308 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 29, !dbg !3012
  store i32 0, i32* %308, align 4, !dbg !3013
  %309 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 30, !dbg !3014
  %310 = load i32, i32* %309, align 8, !dbg !3014
  %311 = zext i32 %310 to i64, !dbg !3015
  store i64 %311, i64* %2, align 8, !dbg !3016
  %312 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 26, !dbg !3017
  %313 = load i64, i64* %312, align 8, !dbg !3017
  store i64 %313, i64* %3, align 8, !dbg !3018
  %314 = load i64, i64* %2, align 8, !dbg !3019
  %315 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 26, !dbg !3020
  %316 = load i64, i64* %315, align 8, !dbg !3021
  %317 = add i64 %316, %314, !dbg !3021
  store i64 %317, i64* %315, align 8, !dbg !3021
  %318 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 35, !dbg !3022
  %319 = load i64, i64* %318, align 8, !dbg !3022
  %320 = load i8*, i8** %1, align 8, !dbg !3023
  %321 = load i64, i64* %2, align 8, !dbg !3024
  %322 = trunc i64 %321 to i32, !dbg !3025
  %323 = call i64 @crc32(i64 noundef %319, i8* noundef %320, i32 noundef %322), !dbg !3026
  %324 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 35, !dbg !3027
  store i64 %323, i64* %324, align 8, !dbg !3028
  br label %325, !dbg !3029

325:                                              ; preds = %307, %296, %267, %259, %233, %216, %201, %189, %184, %181, %163, %151, %142, %114, %104, %64, %62, %34, %14
  %.0 = phi i32 [ 0, %34 ], [ -30, %62 ], [ 1, %64 ], [ %149, %151 ], [ -30, %163 ], [ %294, %296 ], [ %.3, %307 ], [ -30, %181 ], [ -30, %233 ], [ -30, %201 ], [ -30, %216 ], [ -25, %189 ], [ %186, %184 ], [ %260, %259 ], [ -30, %267 ], [ %140, %142 ], [ %102, %104 ], [ %102, %114 ], [ -30, %14 ], !dbg !2674
  ret i32 %.0, !dbg !3030
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @copy_from_lzss_window(%struct.archive_read* noundef %0, i8** noundef %1, i64 noundef %2, i32 noundef %3) #0 !dbg !3031 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !3034, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i8** %1, metadata !3036, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %2, metadata !3037, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i32 %3, metadata !3038, metadata !DIExpression()), !dbg !3035
  %5 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !3039
  %6 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %5, align 8, !dbg !3039
  %7 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %6, i32 0, i32 0, !dbg !3040
  %8 = load i8*, i8** %7, align 8, !dbg !3040
  %9 = bitcast i8* %8 to %struct.rar*, !dbg !3041
  call void @llvm.dbg.value(metadata %struct.rar* %9, metadata !3042, metadata !DIExpression()), !dbg !3035
  %10 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 31, !dbg !3043
  %11 = load i8*, i8** %10, align 8, !dbg !3043
  %12 = icmp ne i8* %11, null, !dbg !3045
  br i1 %12, label %23, label %13, !dbg !3046

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 30, !dbg !3047
  %15 = load i32, i32* %14, align 8, !dbg !3047
  %16 = zext i32 %15 to i64, !dbg !3050
  %17 = call noalias i8* @malloc(i64 noundef %16) #8, !dbg !3051
  %18 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 31, !dbg !3052
  store i8* %17, i8** %18, align 8, !dbg !3053
  %19 = icmp eq i8* %17, null, !dbg !3054
  br i1 %19, label %20, label %22, !dbg !3055

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !3056
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %21, i32 noundef 12, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i64 0, i64 0)), !dbg !3058
  br label %106, !dbg !3059

22:                                               ; preds = %13
  br label %23, !dbg !3060

23:                                               ; preds = %22, %4
  %24 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 46, !dbg !3061
  %25 = call i32 @lzss_offset_for_position(%struct.lzss* noundef %24, i64 noundef %2), !dbg !3062
  call void @llvm.dbg.value(metadata i32 %25, metadata !3063, metadata !DIExpression()), !dbg !3035
  %26 = add nsw i32 %25, %3, !dbg !3064
  %27 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 46, !dbg !3066
  %28 = call i32 @lzss_size(%struct.lzss* noundef %27), !dbg !3067
  %29 = icmp sle i32 %26, %28, !dbg !3068
  br i1 %29, label %30, label %43, !dbg !3069

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 31, !dbg !3070
  %32 = load i8*, i8** %31, align 8, !dbg !3070
  %33 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 29, !dbg !3071
  %34 = load i32, i32* %33, align 4, !dbg !3071
  %35 = zext i32 %34 to i64, !dbg !3072
  %36 = getelementptr inbounds i8, i8* %32, i64 %35, !dbg !3072
  %37 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 46, !dbg !3073
  %38 = getelementptr inbounds %struct.lzss, %struct.lzss* %37, i32 0, i32 0, !dbg !3074
  %39 = load i8*, i8** %38, align 8, !dbg !3074
  %40 = sext i32 %25 to i64, !dbg !3075
  %41 = getelementptr inbounds i8, i8* %39, i64 %40, !dbg !3075
  %42 = sext i32 %3 to i64, !dbg !3076
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %41, i64 %42, i1 false), !dbg !3077
  br label %92, !dbg !3077

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 46, !dbg !3078
  %45 = call i32 @lzss_size(%struct.lzss* noundef %44), !dbg !3080
  %46 = sub nsw i32 %45, %25, !dbg !3081
  call void @llvm.dbg.value(metadata i32 %46, metadata !3082, metadata !DIExpression()), !dbg !3035
  %47 = icmp slt i32 %46, 0, !dbg !3083
  br i1 %47, label %48, label %50, !dbg !3085

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !3086
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %49, i32 noundef 84, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0)), !dbg !3088
  br label %106, !dbg !3089

50:                                               ; preds = %43
  %51 = icmp slt i32 %46, %3, !dbg !3090
  br i1 %51, label %52, label %78, !dbg !3092

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 31, !dbg !3093
  %54 = load i8*, i8** %53, align 8, !dbg !3093
  %55 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 29, !dbg !3095
  %56 = load i32, i32* %55, align 4, !dbg !3095
  %57 = zext i32 %56 to i64, !dbg !3096
  %58 = getelementptr inbounds i8, i8* %54, i64 %57, !dbg !3096
  %59 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 46, !dbg !3097
  %60 = getelementptr inbounds %struct.lzss, %struct.lzss* %59, i32 0, i32 0, !dbg !3098
  %61 = load i8*, i8** %60, align 8, !dbg !3098
  %62 = sext i32 %25 to i64, !dbg !3099
  %63 = getelementptr inbounds i8, i8* %61, i64 %62, !dbg !3099
  %64 = sext i32 %46 to i64, !dbg !3100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %58, i8* align 1 %63, i64 %64, i1 false), !dbg !3101
  %65 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 31, !dbg !3102
  %66 = load i8*, i8** %65, align 8, !dbg !3102
  %67 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 29, !dbg !3103
  %68 = load i32, i32* %67, align 4, !dbg !3103
  %69 = add i32 %68, %46, !dbg !3104
  %70 = zext i32 %69 to i64, !dbg !3105
  %71 = getelementptr inbounds i8, i8* %66, i64 %70, !dbg !3105
  %72 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 46, !dbg !3106
  %73 = getelementptr inbounds %struct.lzss, %struct.lzss* %72, i32 0, i32 0, !dbg !3107
  %74 = load i8*, i8** %73, align 8, !dbg !3107
  %75 = getelementptr inbounds i8, i8* %74, i64 0, !dbg !3108
  %76 = sub nsw i32 %3, %46, !dbg !3109
  %77 = sext i32 %76 to i64, !dbg !3110
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %71, i8* align 1 %75, i64 %77, i1 false), !dbg !3111
  br label %91, !dbg !3112

78:                                               ; preds = %50
  %79 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 31, !dbg !3113
  %80 = load i8*, i8** %79, align 8, !dbg !3113
  %81 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 29, !dbg !3114
  %82 = load i32, i32* %81, align 4, !dbg !3114
  %83 = zext i32 %82 to i64, !dbg !3115
  %84 = getelementptr inbounds i8, i8* %80, i64 %83, !dbg !3115
  %85 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 46, !dbg !3116
  %86 = getelementptr inbounds %struct.lzss, %struct.lzss* %85, i32 0, i32 0, !dbg !3117
  %87 = load i8*, i8** %86, align 8, !dbg !3117
  %88 = sext i32 %25 to i64, !dbg !3118
  %89 = getelementptr inbounds i8, i8* %87, i64 %88, !dbg !3118
  %90 = sext i32 %3 to i64, !dbg !3119
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %84, i8* align 1 %89, i64 %90, i1 false), !dbg !3120
  br label %91

91:                                               ; preds = %78, %52
  br label %92

92:                                               ; preds = %91, %30
  %93 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 29, !dbg !3121
  %94 = load i32, i32* %93, align 4, !dbg !3122
  %95 = add i32 %94, %3, !dbg !3122
  store i32 %95, i32* %93, align 4, !dbg !3122
  %96 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 29, !dbg !3123
  %97 = load i32, i32* %96, align 4, !dbg !3123
  %98 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 30, !dbg !3125
  %99 = load i32, i32* %98, align 8, !dbg !3125
  %100 = icmp uge i32 %97, %99, !dbg !3126
  br i1 %100, label %101, label %104, !dbg !3127

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 31, !dbg !3128
  %103 = load i8*, i8** %102, align 8, !dbg !3128
  store i8* %103, i8** %1, align 8, !dbg !3129
  br label %105, !dbg !3130

104:                                              ; preds = %92
  store i8* null, i8** %1, align 8, !dbg !3131
  br label %105

105:                                              ; preds = %104, %101
  br label %106, !dbg !3132

106:                                              ; preds = %105, %48, %20
  %.0 = phi i32 [ 0, %105 ], [ -30, %48 ], [ -30, %20 ], !dbg !3035
  ret i32 %.0, !dbg !3133
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rar_br_preparation(%struct.archive_read* noundef %0, %struct.rar_br* noundef %1) #0 !dbg !3134 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !3138, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata %struct.rar_br* %1, metadata !3140, metadata !DIExpression()), !dbg !3139
  %3 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !3141
  %4 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %3, align 8, !dbg !3141
  %5 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %4, i32 0, i32 0, !dbg !3142
  %6 = load i8*, i8** %5, align 8, !dbg !3142
  %7 = bitcast i8* %6 to %struct.rar*, !dbg !3143
  call void @llvm.dbg.value(metadata %struct.rar* %7, metadata !3144, metadata !DIExpression()), !dbg !3139
  %8 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 23, !dbg !3145
  %9 = load i64, i64* %8, align 8, !dbg !3145
  %10 = icmp sgt i64 %9, 0, !dbg !3147
  br i1 %10, label %11, label %27, !dbg !3148

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 2, !dbg !3149
  %13 = call i8* @rar_read_ahead(%struct.archive_read* noundef %0, i64 noundef 1, i64* noundef %12), !dbg !3151
  %14 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !3152
  store i8* %13, i8** %14, align 8, !dbg !3153
  %15 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !3154
  %16 = load i8*, i8** %15, align 8, !dbg !3154
  %17 = icmp eq i8* %16, null, !dbg !3156
  br i1 %17, label %18, label %20, !dbg !3157

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !3158
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %19, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0)), !dbg !3160
  br label %28, !dbg !3161

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 1, !dbg !3162
  %22 = load i32, i32* %21, align 8, !dbg !3162
  %23 = icmp eq i32 %22, 0, !dbg !3164
  br i1 %23, label %24, label %26, !dbg !3165

24:                                               ; preds = %20
  %25 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %1), !dbg !3166
  br label %26, !dbg !3167

26:                                               ; preds = %24, %20
  br label %27, !dbg !3168

27:                                               ; preds = %26, %2
  br label %28, !dbg !3169

28:                                               ; preds = %27, %18
  %.0 = phi i32 [ -30, %18 ], [ 0, %27 ], !dbg !3139
  ret i32 %.0, !dbg !3170
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_codes(%struct.archive_read* noundef %0) #0 !dbg !3171 {
  %2 = alloca [20 x i8], align 16
  %3 = alloca %struct.huffman_code, align 8
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !3172, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.declare(metadata [20 x i8]* %2, metadata !3174, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.declare(metadata %struct.huffman_code* %3, metadata !3179, metadata !DIExpression()), !dbg !3180
  %4 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !3181
  %5 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %4, align 8, !dbg !3181
  %6 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %5, i32 0, i32 0, !dbg !3182
  %7 = load i8*, i8** %6, align 8, !dbg !3182
  %8 = bitcast i8* %7 to %struct.rar*, !dbg !3183
  call void @llvm.dbg.value(metadata %struct.rar* %8, metadata !3184, metadata !DIExpression()), !dbg !3173
  %9 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 67, !dbg !3185
  call void @llvm.dbg.value(metadata %struct.rar_br* %9, metadata !3186, metadata !DIExpression()), !dbg !3173
  call void @free_codes(%struct.archive_read* noundef %0), !dbg !3187
  %10 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3188
  %11 = load i32, i32* %10, align 8, !dbg !3188
  %12 = and i32 %11, -8, !dbg !3188
  store i32 %12, i32* %10, align 8, !dbg !3188
  %13 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3189
  %14 = load i32, i32* %13, align 8, !dbg !3189
  %15 = icmp sge i32 %14, 1, !dbg !3189
  br i1 %15, label %24, label %16, !dbg !3189

16:                                               ; preds = %1
  %17 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %9), !dbg !3189
  %18 = icmp ne i32 %17, 0, !dbg !3189
  br i1 %18, label %24, label %19, !dbg !3189

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3189
  %21 = load i32, i32* %20, align 8, !dbg !3189
  %22 = icmp sge i32 %21, 1, !dbg !3189
  br i1 %22, label %24, label %23, !dbg !3191

23:                                               ; preds = %19
  br label %627, !dbg !3192

24:                                               ; preds = %19, %16, %1
  %25 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 0, !dbg !3193
  %26 = load i64, i64* %25, align 8, !dbg !3193
  %27 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3193
  %28 = load i32, i32* %27, align 8, !dbg !3193
  %29 = sub nsw i32 %28, 1, !dbg !3193
  %30 = zext i32 %29 to i64, !dbg !3193
  %31 = lshr i64 %26, %30, !dbg !3193
  %32 = trunc i64 %31 to i32, !dbg !3193
  %33 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @cache_masks, i64 0, i64 1), align 4, !dbg !3193
  %34 = and i32 %32, %33, !dbg !3193
  %35 = trunc i32 %34 to i8, !dbg !3193
  %36 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 57, !dbg !3195
  store i8 %35, i8* %36, align 1, !dbg !3196
  %37 = sext i8 %35 to i32, !dbg !3197
  %38 = icmp ne i32 %37, 0, !dbg !3198
  br i1 %38, label %39, label %201, !dbg !3199

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3200
  %41 = load i32, i32* %40, align 8, !dbg !3200
  %42 = sub nsw i32 %41, 1, !dbg !3200
  store i32 %42, i32* %40, align 8, !dbg !3200
  %43 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3202
  %44 = load i32, i32* %43, align 8, !dbg !3202
  %45 = icmp sge i32 %44, 7, !dbg !3202
  br i1 %45, label %54, label %46, !dbg !3202

46:                                               ; preds = %39
  %47 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %9), !dbg !3202
  %48 = icmp ne i32 %47, 0, !dbg !3202
  br i1 %48, label %54, label %49, !dbg !3202

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3202
  %51 = load i32, i32* %50, align 8, !dbg !3202
  %52 = icmp sge i32 %51, 7, !dbg !3202
  br i1 %52, label %54, label %53, !dbg !3204

53:                                               ; preds = %49
  br label %627, !dbg !3205

54:                                               ; preds = %49, %46, %39
  %55 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 0, !dbg !3206
  %56 = load i64, i64* %55, align 8, !dbg !3206
  %57 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3206
  %58 = load i32, i32* %57, align 8, !dbg !3206
  %59 = sub nsw i32 %58, 7, !dbg !3206
  %60 = zext i32 %59 to i64, !dbg !3206
  %61 = lshr i64 %56, %60, !dbg !3206
  %62 = trunc i64 %61 to i32, !dbg !3206
  %63 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @cache_masks, i64 0, i64 7), align 4, !dbg !3206
  %64 = and i32 %62, %63, !dbg !3206
  %65 = trunc i32 %64 to i8, !dbg !3206
  call void @llvm.dbg.value(metadata i8 %65, metadata !3207, metadata !DIExpression()), !dbg !3173
  %66 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3208
  %67 = load i32, i32* %66, align 8, !dbg !3208
  %68 = sub nsw i32 %67, 7, !dbg !3208
  store i32 %68, i32* %66, align 8, !dbg !3208
  %69 = zext i8 %65 to i32, !dbg !3209
  %70 = and i32 %69, 32, !dbg !3211
  %71 = icmp ne i32 %70, 0, !dbg !3211
  br i1 %71, label %72, label %101, !dbg !3212

72:                                               ; preds = %54
  %73 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3213
  %74 = load i32, i32* %73, align 8, !dbg !3213
  %75 = icmp sge i32 %74, 8, !dbg !3213
  br i1 %75, label %84, label %76, !dbg !3213

76:                                               ; preds = %72
  %77 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %9), !dbg !3213
  %78 = icmp ne i32 %77, 0, !dbg !3213
  br i1 %78, label %84, label %79, !dbg !3213

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3213
  %81 = load i32, i32* %80, align 8, !dbg !3213
  %82 = icmp sge i32 %81, 8, !dbg !3213
  br i1 %82, label %84, label %83, !dbg !3216

83:                                               ; preds = %79
  br label %627, !dbg !3217

84:                                               ; preds = %79, %76, %72
  %85 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 0, !dbg !3218
  %86 = load i64, i64* %85, align 8, !dbg !3218
  %87 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3218
  %88 = load i32, i32* %87, align 8, !dbg !3218
  %89 = sub nsw i32 %88, 8, !dbg !3218
  %90 = zext i32 %89 to i64, !dbg !3218
  %91 = lshr i64 %86, %90, !dbg !3218
  %92 = trunc i64 %91 to i32, !dbg !3218
  %93 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @cache_masks, i64 0, i64 8), align 16, !dbg !3218
  %94 = and i32 %92, %93, !dbg !3218
  %95 = add i32 %94, 1, !dbg !3219
  %96 = shl i32 %95, 20, !dbg !3220
  %97 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 32, !dbg !3221
  store i32 %96, i32* %97, align 8, !dbg !3222
  %98 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3223
  %99 = load i32, i32* %98, align 8, !dbg !3223
  %100 = sub nsw i32 %99, 8, !dbg !3223
  store i32 %100, i32* %98, align 8, !dbg !3223
  br label %101, !dbg !3224

101:                                              ; preds = %84, %54
  %102 = zext i8 %65 to i32, !dbg !3225
  %103 = and i32 %102, 64, !dbg !3227
  %104 = icmp ne i32 %103, 0, !dbg !3227
  br i1 %104, label %105, label %134, !dbg !3228

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3229
  %107 = load i32, i32* %106, align 8, !dbg !3229
  %108 = icmp sge i32 %107, 8, !dbg !3229
  br i1 %108, label %117, label %109, !dbg !3229

109:                                              ; preds = %105
  %110 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %9), !dbg !3229
  %111 = icmp ne i32 %110, 0, !dbg !3229
  br i1 %111, label %117, label %112, !dbg !3229

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3229
  %114 = load i32, i32* %113, align 8, !dbg !3229
  %115 = icmp sge i32 %114, 8, !dbg !3229
  br i1 %115, label %117, label %116, !dbg !3232

116:                                              ; preds = %112
  br label %627, !dbg !3233

117:                                              ; preds = %112, %109, %105
  %118 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 0, !dbg !3234
  %119 = load i64, i64* %118, align 8, !dbg !3234
  %120 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3234
  %121 = load i32, i32* %120, align 8, !dbg !3234
  %122 = sub nsw i32 %121, 8, !dbg !3234
  %123 = zext i32 %122 to i64, !dbg !3234
  %124 = lshr i64 %119, %123, !dbg !3234
  %125 = trunc i64 %124 to i32, !dbg !3234
  %126 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @cache_masks, i64 0, i64 8), align 16, !dbg !3234
  %127 = and i32 %125, %126, !dbg !3234
  %128 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 59, !dbg !3235
  %129 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %128, i32 0, i32 4, !dbg !3236
  store i32 %127, i32* %129, align 4, !dbg !3237
  %130 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 58, !dbg !3238
  store i32 %127, i32* %130, align 4, !dbg !3239
  %131 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3240
  %132 = load i32, i32* %131, align 8, !dbg !3240
  %133 = sub nsw i32 %132, 8, !dbg !3240
  store i32 %133, i32* %131, align 8, !dbg !3240
  br label %136, !dbg !3241

134:                                              ; preds = %101
  %135 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 58, !dbg !3242
  store i32 2, i32* %135, align 4, !dbg !3243
  br label %136

136:                                              ; preds = %134, %117
  %137 = zext i8 %65 to i32, !dbg !3244
  %138 = and i32 %137, 32, !dbg !3246
  %139 = icmp ne i32 %138, 0, !dbg !3246
  br i1 %139, label %140, label %186, !dbg !3247

140:                                              ; preds = %136
  %141 = zext i8 %65 to i32, !dbg !3248
  %142 = and i32 %141, 31, !dbg !3250
  %143 = add nsw i32 %142, 1, !dbg !3251
  call void @llvm.dbg.value(metadata i32 %143, metadata !3252, metadata !DIExpression()), !dbg !3173
  %144 = icmp ugt i32 %143, 16, !dbg !3253
  br i1 %144, label %145, label %149, !dbg !3255

145:                                              ; preds = %140
  %146 = sub i32 %143, 16, !dbg !3256
  %147 = mul i32 %146, 3, !dbg !3257
  %148 = add i32 16, %147, !dbg !3258
  call void @llvm.dbg.value(metadata i32 %148, metadata !3252, metadata !DIExpression()), !dbg !3173
  br label %149, !dbg !3259

149:                                              ; preds = %145, %140
  %.06 = phi i32 [ %148, %145 ], [ %143, %140 ], !dbg !3260
  call void @llvm.dbg.value(metadata i32 %.06, metadata !3252, metadata !DIExpression()), !dbg !3173
  %150 = icmp eq i32 %.06, 1, !dbg !3261
  br i1 %150, label %151, label %153, !dbg !3263

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !3264
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %152, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0)), !dbg !3266
  br label %630, !dbg !3267

153:                                              ; preds = %149
  %154 = load void (%struct.CPpmd7*, %struct.ISzAlloc*)*, void (%struct.CPpmd7*, %struct.ISzAlloc*)** getelementptr inbounds (%struct.IPpmd7, %struct.IPpmd7* @__archive_ppmd7_functions, i32 0, i32 2), align 8, !dbg !3268
  %155 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 59, !dbg !3269
  call void %154(%struct.CPpmd7* noundef %155, %struct.ISzAlloc* noundef @g_szalloc), !dbg !3270
  %156 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 61, !dbg !3271
  %157 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %156, i32 0, i32 0, !dbg !3272
  store %struct.archive_read* %0, %struct.archive_read** %157, align 8, !dbg !3273
  %158 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 61, !dbg !3274
  %159 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %158, i32 0, i32 1, !dbg !3275
  store i8 (i8*)* @ppmd_read, i8 (i8*)** %159, align 8, !dbg !3276
  %160 = load void (%struct.CPpmd7z_RangeDec*)*, void (%struct.CPpmd7z_RangeDec*)** getelementptr inbounds (%struct.IPpmd7, %struct.IPpmd7* @__archive_ppmd7_functions, i32 0, i32 5), align 8, !dbg !3277
  %161 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 60, !dbg !3278
  call void %160(%struct.CPpmd7z_RangeDec* noundef %161), !dbg !3279
  %162 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 61, !dbg !3280
  %163 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 60, !dbg !3281
  %164 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %163, i32 0, i32 5, !dbg !3282
  store %struct.IByteIn* %162, %struct.IByteIn** %164, align 8, !dbg !3283
  %165 = load void (%struct.CPpmd7*)*, void (%struct.CPpmd7*)** getelementptr inbounds (%struct.IPpmd7, %struct.IPpmd7* @__archive_ppmd7_functions, i32 0, i32 0), align 8, !dbg !3284
  %166 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 59, !dbg !3285
  call void %165(%struct.CPpmd7* noundef %166), !dbg !3286
  %167 = load i32 (%struct.CPpmd7*, i32, %struct.ISzAlloc*)*, i32 (%struct.CPpmd7*, i32, %struct.ISzAlloc*)** getelementptr inbounds (%struct.IPpmd7, %struct.IPpmd7* @__archive_ppmd7_functions, i32 0, i32 1), align 8, !dbg !3287
  %168 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 59, !dbg !3289
  %169 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 32, !dbg !3290
  %170 = load i32, i32* %169, align 8, !dbg !3290
  %171 = call i32 %167(%struct.CPpmd7* noundef %168, i32 noundef %170, %struct.ISzAlloc* noundef @g_szalloc), !dbg !3291
  %172 = icmp ne i32 %171, 0, !dbg !3291
  br i1 %172, label %175, label %173, !dbg !3292

173:                                              ; preds = %153
  %174 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !3293
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %174, i32 noundef 12, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0)), !dbg !3295
  br label %630, !dbg !3296

175:                                              ; preds = %153
  %176 = load i32 (%struct.CPpmd7z_RangeDec*)*, i32 (%struct.CPpmd7z_RangeDec*)** getelementptr inbounds (%struct.IPpmd7, %struct.IPpmd7* @__archive_ppmd7_functions, i32 0, i32 7), align 8, !dbg !3297
  %177 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 60, !dbg !3299
  %178 = call i32 %176(%struct.CPpmd7z_RangeDec* noundef %177), !dbg !3300
  %179 = icmp ne i32 %178, 0, !dbg !3300
  br i1 %179, label %182, label %180, !dbg !3301

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !3302
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %181, i32 noundef 84, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0)), !dbg !3304
  br label %630, !dbg !3305

182:                                              ; preds = %175
  %183 = load void (%struct.CPpmd7*, i32)*, void (%struct.CPpmd7*, i32)** getelementptr inbounds (%struct.IPpmd7, %struct.IPpmd7* @__archive_ppmd7_functions, i32 0, i32 3), align 8, !dbg !3306
  %184 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 59, !dbg !3307
  call void %183(%struct.CPpmd7* noundef %184, i32 noundef %.06), !dbg !3308
  %185 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 55, !dbg !3309
  store i8 1, i8* %185, align 1, !dbg !3310
  br label %200, !dbg !3311

186:                                              ; preds = %136
  %187 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 55, !dbg !3312
  %188 = load i8, i8* %187, align 1, !dbg !3312
  %189 = icmp ne i8 %188, 0, !dbg !3315
  br i1 %189, label %192, label %190, !dbg !3316

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !3317
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %191, i32 noundef 84, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0)), !dbg !3319
  br label %630, !dbg !3320

192:                                              ; preds = %186
  %193 = load i32 (%struct.CPpmd7z_RangeDec*)*, i32 (%struct.CPpmd7z_RangeDec*)** getelementptr inbounds (%struct.IPpmd7, %struct.IPpmd7* @__archive_ppmd7_functions, i32 0, i32 7), align 8, !dbg !3321
  %194 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 60, !dbg !3323
  %195 = call i32 %193(%struct.CPpmd7z_RangeDec* noundef %194), !dbg !3324
  %196 = icmp ne i32 %195, 0, !dbg !3324
  br i1 %196, label %199, label %197, !dbg !3325

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !3326
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %198, i32 noundef 84, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0)), !dbg !3328
  br label %630, !dbg !3329

199:                                              ; preds = %192
  br label %200

200:                                              ; preds = %199, %182
  br label %581, !dbg !3330

201:                                              ; preds = %24
  %202 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3331
  %203 = load i32, i32* %202, align 8, !dbg !3331
  %204 = sub nsw i32 %203, 1, !dbg !3331
  store i32 %204, i32* %202, align 8, !dbg !3331
  %205 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3333
  %206 = load i32, i32* %205, align 8, !dbg !3333
  %207 = icmp sge i32 %206, 1, !dbg !3333
  br i1 %207, label %216, label %208, !dbg !3333

208:                                              ; preds = %201
  %209 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %9), !dbg !3333
  %210 = icmp ne i32 %209, 0, !dbg !3333
  br i1 %210, label %216, label %211, !dbg !3333

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3333
  %213 = load i32, i32* %212, align 8, !dbg !3333
  %214 = icmp sge i32 %213, 1, !dbg !3333
  br i1 %214, label %216, label %215, !dbg !3335

215:                                              ; preds = %211
  br label %627, !dbg !3336

216:                                              ; preds = %211, %208, %201
  %217 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 0, !dbg !3337
  %218 = load i64, i64* %217, align 8, !dbg !3337
  %219 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3337
  %220 = load i32, i32* %219, align 8, !dbg !3337
  %221 = sub nsw i32 %220, 1, !dbg !3337
  %222 = zext i32 %221 to i64, !dbg !3337
  %223 = lshr i64 %218, %222, !dbg !3337
  %224 = trunc i64 %223 to i32, !dbg !3337
  %225 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @cache_masks, i64 0, i64 1), align 4, !dbg !3337
  %226 = and i32 %224, %225, !dbg !3337
  %227 = icmp ne i32 %226, 0, !dbg !3337
  br i1 %227, label %231, label %228, !dbg !3339

228:                                              ; preds = %216
  %229 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 45, !dbg !3340
  %230 = getelementptr inbounds [404 x i8], [404 x i8]* %229, i64 0, i64 0, !dbg !3341
  call void @llvm.memset.p0i8.i64(i8* align 8 %230, i8 0, i64 404, i1 false), !dbg !3341
  br label %231, !dbg !3341

231:                                              ; preds = %228, %216
  %232 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3342
  %233 = load i32, i32* %232, align 8, !dbg !3342
  %234 = sub nsw i32 %233, 1, !dbg !3342
  store i32 %234, i32* %232, align 8, !dbg !3342
  %235 = bitcast [20 x i8]* %2 to i8*, !dbg !3343
  call void @llvm.memset.p0i8.i64(i8* align 16 %235, i8 0, i64 20, i1 false), !dbg !3343
  call void @llvm.dbg.value(metadata i32 0, metadata !3344, metadata !DIExpression()), !dbg !3173
  br label %236, !dbg !3345

236:                                              ; preds = %320, %231
  %.02 = phi i32 [ 0, %231 ], [ %.3, %320 ], !dbg !3347
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3344, metadata !DIExpression()), !dbg !3173
  %237 = icmp slt i32 %.02, 20, !dbg !3348
  br i1 %237, label %238, label %321, !dbg !3350

238:                                              ; preds = %236
  %239 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3351
  %240 = load i32, i32* %239, align 8, !dbg !3351
  %241 = icmp sge i32 %240, 4, !dbg !3351
  br i1 %241, label %250, label %242, !dbg !3351

242:                                              ; preds = %238
  %243 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %9), !dbg !3351
  %244 = icmp ne i32 %243, 0, !dbg !3351
  br i1 %244, label %250, label %245, !dbg !3351

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3351
  %247 = load i32, i32* %246, align 8, !dbg !3351
  %248 = icmp sge i32 %247, 4, !dbg !3351
  br i1 %248, label %250, label %249, !dbg !3354

249:                                              ; preds = %245
  br label %627, !dbg !3355

250:                                              ; preds = %245, %242, %238
  %251 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 0, !dbg !3356
  %252 = load i64, i64* %251, align 8, !dbg !3356
  %253 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3356
  %254 = load i32, i32* %253, align 8, !dbg !3356
  %255 = sub nsw i32 %254, 4, !dbg !3356
  %256 = zext i32 %255 to i64, !dbg !3356
  %257 = lshr i64 %252, %256, !dbg !3356
  %258 = trunc i64 %257 to i32, !dbg !3356
  %259 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @cache_masks, i64 0, i64 4), align 16, !dbg !3356
  %260 = and i32 %258, %259, !dbg !3356
  %261 = trunc i32 %260 to i8, !dbg !3356
  %262 = add nsw i32 %.02, 1, !dbg !3357
  call void @llvm.dbg.value(metadata i32 %262, metadata !3344, metadata !DIExpression()), !dbg !3173
  %263 = sext i32 %.02 to i64, !dbg !3358
  %264 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 %263, !dbg !3358
  store i8 %261, i8* %264, align 1, !dbg !3359
  %265 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3360
  %266 = load i32, i32* %265, align 8, !dbg !3360
  %267 = sub nsw i32 %266, 4, !dbg !3360
  store i32 %267, i32* %265, align 8, !dbg !3360
  %268 = sub nsw i32 %262, 1, !dbg !3361
  %269 = sext i32 %268 to i64, !dbg !3363
  %270 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 %269, !dbg !3363
  %271 = load i8, i8* %270, align 1, !dbg !3363
  %272 = zext i8 %271 to i32, !dbg !3363
  %273 = icmp eq i32 %272, 15, !dbg !3364
  br i1 %273, label %274, label %320, !dbg !3365

274:                                              ; preds = %250
  %275 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3366
  %276 = load i32, i32* %275, align 8, !dbg !3366
  %277 = icmp sge i32 %276, 4, !dbg !3366
  br i1 %277, label %286, label %278, !dbg !3366

278:                                              ; preds = %274
  %279 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %9), !dbg !3366
  %280 = icmp ne i32 %279, 0, !dbg !3366
  br i1 %280, label %286, label %281, !dbg !3366

281:                                              ; preds = %278
  %282 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3366
  %283 = load i32, i32* %282, align 8, !dbg !3366
  %284 = icmp sge i32 %283, 4, !dbg !3366
  br i1 %284, label %286, label %285, !dbg !3369

285:                                              ; preds = %281
  br label %627, !dbg !3370

286:                                              ; preds = %281, %278, %274
  %287 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 0, !dbg !3371
  %288 = load i64, i64* %287, align 8, !dbg !3371
  %289 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3371
  %290 = load i32, i32* %289, align 8, !dbg !3371
  %291 = sub nsw i32 %290, 4, !dbg !3371
  %292 = zext i32 %291 to i64, !dbg !3371
  %293 = lshr i64 %288, %292, !dbg !3371
  %294 = trunc i64 %293 to i32, !dbg !3371
  %295 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @cache_masks, i64 0, i64 4), align 16, !dbg !3371
  %296 = and i32 %294, %295, !dbg !3371
  %297 = trunc i32 %296 to i8, !dbg !3371
  call void @llvm.dbg.value(metadata i8 %297, metadata !3372, metadata !DIExpression()), !dbg !3173
  %298 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3373
  %299 = load i32, i32* %298, align 8, !dbg !3373
  %300 = sub nsw i32 %299, 4, !dbg !3373
  store i32 %300, i32* %298, align 8, !dbg !3373
  %301 = icmp ne i8 %297, 0, !dbg !3374
  br i1 %301, label %302, label %319, !dbg !3376

302:                                              ; preds = %286
  %303 = add nsw i32 %262, -1, !dbg !3377
  call void @llvm.dbg.value(metadata i32 %303, metadata !3344, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 0, metadata !3379, metadata !DIExpression()), !dbg !3173
  br label %304, !dbg !3380

304:                                              ; preds = %316, %302
  %.03 = phi i32 [ 0, %302 ], [ %317, %316 ], !dbg !3382
  %.1 = phi i32 [ %303, %302 ], [ %313, %316 ], !dbg !3383
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3344, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 %.03, metadata !3379, metadata !DIExpression()), !dbg !3173
  %305 = zext i8 %297 to i32, !dbg !3384
  %306 = add nsw i32 %305, 2, !dbg !3386
  %307 = icmp slt i32 %.03, %306, !dbg !3387
  br i1 %307, label %308, label %310, !dbg !3388

308:                                              ; preds = %304
  %309 = icmp slt i32 %.1, 20, !dbg !3389
  br label %310

310:                                              ; preds = %308, %304
  %311 = phi i1 [ false, %304 ], [ %309, %308 ], !dbg !3390
  br i1 %311, label %312, label %318, !dbg !3391

312:                                              ; preds = %310
  %313 = add nsw i32 %.1, 1, !dbg !3392
  call void @llvm.dbg.value(metadata i32 %313, metadata !3344, metadata !DIExpression()), !dbg !3173
  %314 = sext i32 %.1 to i64, !dbg !3393
  %315 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 %314, !dbg !3393
  store i8 0, i8* %315, align 1, !dbg !3394
  br label %316, !dbg !3393

316:                                              ; preds = %312
  %317 = add nsw i32 %.03, 1, !dbg !3395
  call void @llvm.dbg.value(metadata i32 %317, metadata !3379, metadata !DIExpression()), !dbg !3173
  br label %304, !dbg !3396, !llvm.loop !3397

318:                                              ; preds = %310
  br label %319, !dbg !3399

319:                                              ; preds = %318, %286
  %.2 = phi i32 [ %.1, %318 ], [ %262, %286 ], !dbg !3400
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3344, metadata !DIExpression()), !dbg !3173
  br label %320, !dbg !3401

320:                                              ; preds = %319, %250
  %.3 = phi i32 [ %.2, %319 ], [ %262, %250 ], !dbg !3400
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3344, metadata !DIExpression()), !dbg !3173
  br label %236, !dbg !3402, !llvm.loop !3403

321:                                              ; preds = %236
  %322 = bitcast %struct.huffman_code* %3 to i8*, !dbg !3405
  call void @llvm.memset.p0i8.i64(i8* align 8 %322, i8 0, i64 32, i1 false), !dbg !3405
  %323 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0, !dbg !3406
  %324 = call i32 @create_code(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %3, i8* noundef %323, i32 noundef 20, i8 noundef signext 15), !dbg !3407
  call void @llvm.dbg.value(metadata i32 %324, metadata !3408, metadata !DIExpression()), !dbg !3173
  %325 = icmp ne i32 %324, 0, !dbg !3409
  br i1 %325, label %326, label %333, !dbg !3411

326:                                              ; preds = %321
  %327 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 0, !dbg !3412
  %328 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %327, align 8, !dbg !3412
  %329 = bitcast %struct.huffman_tree_node* %328 to i8*, !dbg !3414
  call void @free(i8* noundef %329) #8, !dbg !3415
  %330 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 5, !dbg !3416
  %331 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %330, align 8, !dbg !3416
  %332 = bitcast %struct.huffman_table_entry* %331 to i8*, !dbg !3417
  call void @free(i8* noundef %332) #8, !dbg !3418
  br label %630, !dbg !3419

333:                                              ; preds = %321
  call void @llvm.dbg.value(metadata i32 0, metadata !3344, metadata !DIExpression()), !dbg !3173
  br label %334, !dbg !3420

334:                                              ; preds = %545, %333
  %.4 = phi i32 [ 0, %333 ], [ %.8, %545 ], !dbg !3422
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3344, metadata !DIExpression()), !dbg !3173
  %335 = icmp slt i32 %.4, 404, !dbg !3423
  br i1 %335, label %336, label %546, !dbg !3425

336:                                              ; preds = %334
  %337 = call i32 @read_next_symbol(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %3), !dbg !3426
  call void @llvm.dbg.value(metadata i32 %337, metadata !3429, metadata !DIExpression()), !dbg !3173
  %338 = icmp slt i32 %337, 0, !dbg !3430
  br i1 %338, label %339, label %346, !dbg !3431

339:                                              ; preds = %336
  %340 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 0, !dbg !3432
  %341 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %340, align 8, !dbg !3432
  %342 = bitcast %struct.huffman_tree_node* %341 to i8*, !dbg !3434
  call void @free(i8* noundef %342) #8, !dbg !3435
  %343 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 5, !dbg !3436
  %344 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %343, align 8, !dbg !3436
  %345 = bitcast %struct.huffman_table_entry* %344 to i8*, !dbg !3437
  call void @free(i8* noundef %345) #8, !dbg !3438
  br label %630, !dbg !3439

346:                                              ; preds = %336
  %347 = icmp slt i32 %337, 16, !dbg !3440
  br i1 %347, label %348, label %361, !dbg !3442

348:                                              ; preds = %346
  %349 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 45, !dbg !3443
  %350 = sext i32 %.4 to i64, !dbg !3445
  %351 = getelementptr inbounds [404 x i8], [404 x i8]* %349, i64 0, i64 %350, !dbg !3445
  %352 = load i8, i8* %351, align 1, !dbg !3445
  %353 = zext i8 %352 to i32, !dbg !3445
  %354 = add nsw i32 %353, %337, !dbg !3446
  %355 = and i32 %354, 15, !dbg !3447
  %356 = trunc i32 %355 to i8, !dbg !3448
  %357 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 45, !dbg !3449
  %358 = sext i32 %.4 to i64, !dbg !3450
  %359 = getelementptr inbounds [404 x i8], [404 x i8]* %357, i64 0, i64 %358, !dbg !3450
  store i8 %356, i8* %359, align 1, !dbg !3451
  %360 = add nsw i32 %.4, 1, !dbg !3452
  call void @llvm.dbg.value(metadata i32 %360, metadata !3344, metadata !DIExpression()), !dbg !3173
  br label %545, !dbg !3453

361:                                              ; preds = %346
  %362 = icmp slt i32 %337, 18, !dbg !3454
  br i1 %362, label %363, label %461, !dbg !3456

363:                                              ; preds = %361
  %364 = icmp eq i32 %.4, 0, !dbg !3457
  br i1 %364, label %365, label %373, !dbg !3460

365:                                              ; preds = %363
  %366 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 0, !dbg !3461
  %367 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %366, align 8, !dbg !3461
  %368 = bitcast %struct.huffman_tree_node* %367 to i8*, !dbg !3463
  call void @free(i8* noundef %368) #8, !dbg !3464
  %369 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 5, !dbg !3465
  %370 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %369, align 8, !dbg !3465
  %371 = bitcast %struct.huffman_table_entry* %370 to i8*, !dbg !3466
  call void @free(i8* noundef %371) #8, !dbg !3467
  %372 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !3468
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %372, i32 noundef 84, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i64 0, i64 0)), !dbg !3469
  br label %630, !dbg !3470

373:                                              ; preds = %363
  %374 = icmp eq i32 %337, 16, !dbg !3471
  br i1 %374, label %375, label %408, !dbg !3473

375:                                              ; preds = %373
  %376 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3474
  %377 = load i32, i32* %376, align 8, !dbg !3474
  %378 = icmp sge i32 %377, 3, !dbg !3474
  br i1 %378, label %393, label %379, !dbg !3474

379:                                              ; preds = %375
  %380 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %9), !dbg !3474
  %381 = icmp ne i32 %380, 0, !dbg !3474
  br i1 %381, label %393, label %382, !dbg !3474

382:                                              ; preds = %379
  %383 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3474
  %384 = load i32, i32* %383, align 8, !dbg !3474
  %385 = icmp sge i32 %384, 3, !dbg !3474
  br i1 %385, label %393, label %386, !dbg !3477

386:                                              ; preds = %382
  %387 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 0, !dbg !3478
  %388 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %387, align 8, !dbg !3478
  %389 = bitcast %struct.huffman_tree_node* %388 to i8*, !dbg !3480
  call void @free(i8* noundef %389) #8, !dbg !3481
  %390 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 5, !dbg !3482
  %391 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %390, align 8, !dbg !3482
  %392 = bitcast %struct.huffman_table_entry* %391 to i8*, !dbg !3483
  call void @free(i8* noundef %392) #8, !dbg !3484
  br label %627, !dbg !3485

393:                                              ; preds = %382, %379, %375
  %394 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 0, !dbg !3486
  %395 = load i64, i64* %394, align 8, !dbg !3486
  %396 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3486
  %397 = load i32, i32* %396, align 8, !dbg !3486
  %398 = sub nsw i32 %397, 3, !dbg !3486
  %399 = zext i32 %398 to i64, !dbg !3486
  %400 = lshr i64 %395, %399, !dbg !3486
  %401 = trunc i64 %400 to i32, !dbg !3486
  %402 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @cache_masks, i64 0, i64 3), align 4, !dbg !3486
  %403 = and i32 %401, %402, !dbg !3486
  %404 = add i32 %403, 3, !dbg !3487
  call void @llvm.dbg.value(metadata i32 %404, metadata !3488, metadata !DIExpression()), !dbg !3173
  %405 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3489
  %406 = load i32, i32* %405, align 8, !dbg !3489
  %407 = sub nsw i32 %406, 3, !dbg !3489
  store i32 %407, i32* %405, align 8, !dbg !3489
  br label %441, !dbg !3490

408:                                              ; preds = %373
  %409 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3491
  %410 = load i32, i32* %409, align 8, !dbg !3491
  %411 = icmp sge i32 %410, 7, !dbg !3491
  br i1 %411, label %426, label %412, !dbg !3491

412:                                              ; preds = %408
  %413 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %9), !dbg !3491
  %414 = icmp ne i32 %413, 0, !dbg !3491
  br i1 %414, label %426, label %415, !dbg !3491

415:                                              ; preds = %412
  %416 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3491
  %417 = load i32, i32* %416, align 8, !dbg !3491
  %418 = icmp sge i32 %417, 7, !dbg !3491
  br i1 %418, label %426, label %419, !dbg !3494

419:                                              ; preds = %415
  %420 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 0, !dbg !3495
  %421 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %420, align 8, !dbg !3495
  %422 = bitcast %struct.huffman_tree_node* %421 to i8*, !dbg !3497
  call void @free(i8* noundef %422) #8, !dbg !3498
  %423 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 5, !dbg !3499
  %424 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %423, align 8, !dbg !3499
  %425 = bitcast %struct.huffman_table_entry* %424 to i8*, !dbg !3500
  call void @free(i8* noundef %425) #8, !dbg !3501
  br label %627, !dbg !3502

426:                                              ; preds = %415, %412, %408
  %427 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 0, !dbg !3503
  %428 = load i64, i64* %427, align 8, !dbg !3503
  %429 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3503
  %430 = load i32, i32* %429, align 8, !dbg !3503
  %431 = sub nsw i32 %430, 7, !dbg !3503
  %432 = zext i32 %431 to i64, !dbg !3503
  %433 = lshr i64 %428, %432, !dbg !3503
  %434 = trunc i64 %433 to i32, !dbg !3503
  %435 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @cache_masks, i64 0, i64 7), align 4, !dbg !3503
  %436 = and i32 %434, %435, !dbg !3503
  %437 = add i32 %436, 11, !dbg !3504
  call void @llvm.dbg.value(metadata i32 %437, metadata !3488, metadata !DIExpression()), !dbg !3173
  %438 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3505
  %439 = load i32, i32* %438, align 8, !dbg !3505
  %440 = sub nsw i32 %439, 7, !dbg !3505
  store i32 %440, i32* %438, align 8, !dbg !3505
  br label %441

441:                                              ; preds = %426, %393
  %.07 = phi i32 [ %404, %393 ], [ %437, %426 ], !dbg !3506
  call void @llvm.dbg.value(metadata i32 %.07, metadata !3488, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 0, metadata !3379, metadata !DIExpression()), !dbg !3173
  br label %442, !dbg !3507

442:                                              ; preds = %458, %441
  %.14 = phi i32 [ 0, %441 ], [ %459, %458 ], !dbg !3509
  %.5 = phi i32 [ %.4, %441 ], [ %457, %458 ], !dbg !3422
  call void @llvm.dbg.value(metadata i32 %.5, metadata !3344, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 %.14, metadata !3379, metadata !DIExpression()), !dbg !3173
  %443 = icmp slt i32 %.14, %.07, !dbg !3510
  br i1 %443, label %444, label %446, !dbg !3512

444:                                              ; preds = %442
  %445 = icmp slt i32 %.5, 404, !dbg !3513
  br label %446

446:                                              ; preds = %444, %442
  %447 = phi i1 [ false, %442 ], [ %445, %444 ], !dbg !3514
  br i1 %447, label %448, label %460, !dbg !3515

448:                                              ; preds = %446
  %449 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 45, !dbg !3516
  %450 = sub nsw i32 %.5, 1, !dbg !3518
  %451 = sext i32 %450 to i64, !dbg !3519
  %452 = getelementptr inbounds [404 x i8], [404 x i8]* %449, i64 0, i64 %451, !dbg !3519
  %453 = load i8, i8* %452, align 1, !dbg !3519
  %454 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 45, !dbg !3520
  %455 = sext i32 %.5 to i64, !dbg !3521
  %456 = getelementptr inbounds [404 x i8], [404 x i8]* %454, i64 0, i64 %455, !dbg !3521
  store i8 %453, i8* %456, align 1, !dbg !3522
  %457 = add nsw i32 %.5, 1, !dbg !3523
  call void @llvm.dbg.value(metadata i32 %457, metadata !3344, metadata !DIExpression()), !dbg !3173
  br label %458, !dbg !3524

458:                                              ; preds = %448
  %459 = add nsw i32 %.14, 1, !dbg !3525
  call void @llvm.dbg.value(metadata i32 %459, metadata !3379, metadata !DIExpression()), !dbg !3173
  br label %442, !dbg !3526, !llvm.loop !3527

460:                                              ; preds = %446
  br label %544, !dbg !3529

461:                                              ; preds = %361
  %462 = icmp eq i32 %337, 18, !dbg !3530
  br i1 %462, label %463, label %496, !dbg !3533

463:                                              ; preds = %461
  %464 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3534
  %465 = load i32, i32* %464, align 8, !dbg !3534
  %466 = icmp sge i32 %465, 3, !dbg !3534
  br i1 %466, label %481, label %467, !dbg !3534

467:                                              ; preds = %463
  %468 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %9), !dbg !3534
  %469 = icmp ne i32 %468, 0, !dbg !3534
  br i1 %469, label %481, label %470, !dbg !3534

470:                                              ; preds = %467
  %471 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3534
  %472 = load i32, i32* %471, align 8, !dbg !3534
  %473 = icmp sge i32 %472, 3, !dbg !3534
  br i1 %473, label %481, label %474, !dbg !3537

474:                                              ; preds = %470
  %475 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 0, !dbg !3538
  %476 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %475, align 8, !dbg !3538
  %477 = bitcast %struct.huffman_tree_node* %476 to i8*, !dbg !3540
  call void @free(i8* noundef %477) #8, !dbg !3541
  %478 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 5, !dbg !3542
  %479 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %478, align 8, !dbg !3542
  %480 = bitcast %struct.huffman_table_entry* %479 to i8*, !dbg !3543
  call void @free(i8* noundef %480) #8, !dbg !3544
  br label %627, !dbg !3545

481:                                              ; preds = %470, %467, %463
  %482 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 0, !dbg !3546
  %483 = load i64, i64* %482, align 8, !dbg !3546
  %484 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3546
  %485 = load i32, i32* %484, align 8, !dbg !3546
  %486 = sub nsw i32 %485, 3, !dbg !3546
  %487 = zext i32 %486 to i64, !dbg !3546
  %488 = lshr i64 %483, %487, !dbg !3546
  %489 = trunc i64 %488 to i32, !dbg !3546
  %490 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @cache_masks, i64 0, i64 3), align 4, !dbg !3546
  %491 = and i32 %489, %490, !dbg !3546
  %492 = add i32 %491, 3, !dbg !3547
  call void @llvm.dbg.value(metadata i32 %492, metadata !3488, metadata !DIExpression()), !dbg !3173
  %493 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3548
  %494 = load i32, i32* %493, align 8, !dbg !3548
  %495 = sub nsw i32 %494, 3, !dbg !3548
  store i32 %495, i32* %493, align 8, !dbg !3548
  br label %529, !dbg !3549

496:                                              ; preds = %461
  %497 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3550
  %498 = load i32, i32* %497, align 8, !dbg !3550
  %499 = icmp sge i32 %498, 7, !dbg !3550
  br i1 %499, label %514, label %500, !dbg !3550

500:                                              ; preds = %496
  %501 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %9), !dbg !3550
  %502 = icmp ne i32 %501, 0, !dbg !3550
  br i1 %502, label %514, label %503, !dbg !3550

503:                                              ; preds = %500
  %504 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3550
  %505 = load i32, i32* %504, align 8, !dbg !3550
  %506 = icmp sge i32 %505, 7, !dbg !3550
  br i1 %506, label %514, label %507, !dbg !3553

507:                                              ; preds = %503
  %508 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 0, !dbg !3554
  %509 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %508, align 8, !dbg !3554
  %510 = bitcast %struct.huffman_tree_node* %509 to i8*, !dbg !3556
  call void @free(i8* noundef %510) #8, !dbg !3557
  %511 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 5, !dbg !3558
  %512 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %511, align 8, !dbg !3558
  %513 = bitcast %struct.huffman_table_entry* %512 to i8*, !dbg !3559
  call void @free(i8* noundef %513) #8, !dbg !3560
  br label %627, !dbg !3561

514:                                              ; preds = %503, %500, %496
  %515 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 0, !dbg !3562
  %516 = load i64, i64* %515, align 8, !dbg !3562
  %517 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3562
  %518 = load i32, i32* %517, align 8, !dbg !3562
  %519 = sub nsw i32 %518, 7, !dbg !3562
  %520 = zext i32 %519 to i64, !dbg !3562
  %521 = lshr i64 %516, %520, !dbg !3562
  %522 = trunc i64 %521 to i32, !dbg !3562
  %523 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @cache_masks, i64 0, i64 7), align 4, !dbg !3562
  %524 = and i32 %522, %523, !dbg !3562
  %525 = add i32 %524, 11, !dbg !3563
  call void @llvm.dbg.value(metadata i32 %525, metadata !3488, metadata !DIExpression()), !dbg !3173
  %526 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %9, i32 0, i32 1, !dbg !3564
  %527 = load i32, i32* %526, align 8, !dbg !3564
  %528 = sub nsw i32 %527, 7, !dbg !3564
  store i32 %528, i32* %526, align 8, !dbg !3564
  br label %529

529:                                              ; preds = %514, %481
  %.18 = phi i32 [ %492, %481 ], [ %525, %514 ], !dbg !3565
  call void @llvm.dbg.value(metadata i32 %.18, metadata !3488, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 0, metadata !3379, metadata !DIExpression()), !dbg !3173
  br label %530, !dbg !3566

530:                                              ; preds = %541, %529
  %.25 = phi i32 [ 0, %529 ], [ %542, %541 ], !dbg !3568
  %.6 = phi i32 [ %.4, %529 ], [ %538, %541 ], !dbg !3422
  call void @llvm.dbg.value(metadata i32 %.6, metadata !3344, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 %.25, metadata !3379, metadata !DIExpression()), !dbg !3173
  %531 = icmp slt i32 %.25, %.18, !dbg !3569
  br i1 %531, label %532, label %534, !dbg !3571

532:                                              ; preds = %530
  %533 = icmp slt i32 %.6, 404, !dbg !3572
  br label %534

534:                                              ; preds = %532, %530
  %535 = phi i1 [ false, %530 ], [ %533, %532 ], !dbg !3573
  br i1 %535, label %536, label %543, !dbg !3574

536:                                              ; preds = %534
  %537 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 45, !dbg !3575
  %538 = add nsw i32 %.6, 1, !dbg !3576
  call void @llvm.dbg.value(metadata i32 %538, metadata !3344, metadata !DIExpression()), !dbg !3173
  %539 = sext i32 %.6 to i64, !dbg !3577
  %540 = getelementptr inbounds [404 x i8], [404 x i8]* %537, i64 0, i64 %539, !dbg !3577
  store i8 0, i8* %540, align 1, !dbg !3578
  br label %541, !dbg !3577

541:                                              ; preds = %536
  %542 = add nsw i32 %.25, 1, !dbg !3579
  call void @llvm.dbg.value(metadata i32 %542, metadata !3379, metadata !DIExpression()), !dbg !3173
  br label %530, !dbg !3580, !llvm.loop !3581

543:                                              ; preds = %534
  br label %544

544:                                              ; preds = %543, %460
  %.7 = phi i32 [ %.5, %460 ], [ %.6, %543 ], !dbg !3583
  call void @llvm.dbg.value(metadata i32 %.7, metadata !3344, metadata !DIExpression()), !dbg !3173
  br label %545

545:                                              ; preds = %544, %348
  %.8 = phi i32 [ %360, %348 ], [ %.7, %544 ], !dbg !3422
  call void @llvm.dbg.value(metadata i32 %.8, metadata !3344, metadata !DIExpression()), !dbg !3173
  br label %334, !dbg !3584, !llvm.loop !3585

546:                                              ; preds = %334
  %547 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 0, !dbg !3587
  %548 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %547, align 8, !dbg !3587
  %549 = bitcast %struct.huffman_tree_node* %548 to i8*, !dbg !3588
  call void @free(i8* noundef %549) #8, !dbg !3589
  %550 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %3, i32 0, i32 5, !dbg !3590
  %551 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %550, align 8, !dbg !3590
  %552 = bitcast %struct.huffman_table_entry* %551 to i8*, !dbg !3591
  call void @free(i8* noundef %552) #8, !dbg !3592
  %553 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 41, !dbg !3593
  %554 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 45, !dbg !3594
  %555 = getelementptr inbounds [404 x i8], [404 x i8]* %554, i64 0, i64 0, !dbg !3595
  %556 = call i32 @create_code(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %553, i8* noundef %555, i32 noundef 299, i8 noundef signext 15), !dbg !3596
  call void @llvm.dbg.value(metadata i32 %556, metadata !3408, metadata !DIExpression()), !dbg !3173
  %557 = icmp ne i32 %556, 0, !dbg !3597
  br i1 %557, label %558, label %559, !dbg !3599

558:                                              ; preds = %546
  br label %630, !dbg !3600

559:                                              ; preds = %546
  %560 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 42, !dbg !3601
  %561 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 45, !dbg !3602
  %562 = getelementptr inbounds [404 x i8], [404 x i8]* %561, i64 0, i64 299, !dbg !3603
  %563 = call i32 @create_code(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %560, i8* noundef %562, i32 noundef 60, i8 noundef signext 15), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %563, metadata !3408, metadata !DIExpression()), !dbg !3173
  %564 = icmp ne i32 %563, 0, !dbg !3605
  br i1 %564, label %565, label %566, !dbg !3607

565:                                              ; preds = %559
  br label %630, !dbg !3608

566:                                              ; preds = %559
  %567 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 43, !dbg !3609
  %568 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 45, !dbg !3610
  %569 = getelementptr inbounds [404 x i8], [404 x i8]* %568, i64 0, i64 359, !dbg !3611
  %570 = call i32 @create_code(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %567, i8* noundef %569, i32 noundef 17, i8 noundef signext 15), !dbg !3612
  call void @llvm.dbg.value(metadata i32 %570, metadata !3408, metadata !DIExpression()), !dbg !3173
  %571 = icmp ne i32 %570, 0, !dbg !3613
  br i1 %571, label %572, label %573, !dbg !3615

572:                                              ; preds = %566
  br label %630, !dbg !3616

573:                                              ; preds = %566
  %574 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 44, !dbg !3617
  %575 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 45, !dbg !3618
  %576 = getelementptr inbounds [404 x i8], [404 x i8]* %575, i64 0, i64 376, !dbg !3619
  %577 = call i32 @create_code(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %574, i8* noundef %576, i32 noundef 28, i8 noundef signext 15), !dbg !3620
  call void @llvm.dbg.value(metadata i32 %577, metadata !3408, metadata !DIExpression()), !dbg !3173
  %578 = icmp ne i32 %577, 0, !dbg !3621
  br i1 %578, label %579, label %580, !dbg !3623

579:                                              ; preds = %573
  br label %630, !dbg !3624

580:                                              ; preds = %573
  br label %581

581:                                              ; preds = %580, %200
  %582 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 32, !dbg !3625
  %583 = load i32, i32* %582, align 8, !dbg !3625
  %584 = icmp ne i32 %583, 0, !dbg !3627
  br i1 %584, label %585, label %590, !dbg !3628

585:                                              ; preds = %581
  %586 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 46, !dbg !3629
  %587 = getelementptr inbounds %struct.lzss, %struct.lzss* %586, i32 0, i32 0, !dbg !3630
  %588 = load i8*, i8** %587, align 8, !dbg !3630
  %589 = icmp ne i8* %588, null, !dbg !3631
  br i1 %589, label %625, label %590, !dbg !3632

590:                                              ; preds = %585, %581
  %591 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 8, !dbg !3633
  %592 = load i64, i64* %591, align 8, !dbg !3633
  %593 = icmp sge i64 %592, 4194304, !dbg !3636
  br i1 %593, label %594, label %595, !dbg !3637

594:                                              ; preds = %590
  call void @llvm.dbg.value(metadata i32 4194304, metadata !3638, metadata !DIExpression()), !dbg !3639
  br label %601, !dbg !3640

595:                                              ; preds = %590
  %596 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 8, !dbg !3641
  %597 = load i64, i64* %596, align 8, !dbg !3641
  %598 = trunc i64 %597 to i32, !dbg !3642
  %599 = call i32 @rar_fls(i32 noundef %598), !dbg !3643
  %600 = shl i32 %599, 1, !dbg !3644
  call void @llvm.dbg.value(metadata i32 %600, metadata !3638, metadata !DIExpression()), !dbg !3639
  br label %601

601:                                              ; preds = %595, %594
  %.01 = phi i32 [ 4194304, %594 ], [ %600, %595 ], !dbg !3645
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3638, metadata !DIExpression()), !dbg !3639
  %602 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 46, !dbg !3646
  %603 = getelementptr inbounds %struct.lzss, %struct.lzss* %602, i32 0, i32 0, !dbg !3647
  %604 = load i8*, i8** %603, align 8, !dbg !3647
  %605 = zext i32 %.01 to i64, !dbg !3648
  %606 = call i8* @realloc(i8* noundef %604, i64 noundef %605) #8, !dbg !3649
  call void @llvm.dbg.value(metadata i8* %606, metadata !3650, metadata !DIExpression()), !dbg !3639
  %607 = icmp eq i8* %606, null, !dbg !3651
  br i1 %607, label %608, label %610, !dbg !3653

608:                                              ; preds = %601
  %609 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !3654
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %609, i32 noundef 12, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i64 0, i64 0)), !dbg !3656
  br label %630, !dbg !3657

610:                                              ; preds = %601
  %611 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 46, !dbg !3658
  %612 = getelementptr inbounds %struct.lzss, %struct.lzss* %611, i32 0, i32 0, !dbg !3659
  store i8* %606, i8** %612, align 8, !dbg !3660
  %613 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 32, !dbg !3661
  store i32 %.01, i32* %613, align 8, !dbg !3662
  %614 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 46, !dbg !3663
  %615 = getelementptr inbounds %struct.lzss, %struct.lzss* %614, i32 0, i32 0, !dbg !3664
  %616 = load i8*, i8** %615, align 8, !dbg !3664
  %617 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 32, !dbg !3665
  %618 = load i32, i32* %617, align 8, !dbg !3665
  %619 = zext i32 %618 to i64, !dbg !3666
  call void @llvm.memset.p0i8.i64(i8* align 1 %616, i8 0, i64 %619, i1 false), !dbg !3667
  %620 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 32, !dbg !3668
  %621 = load i32, i32* %620, align 8, !dbg !3668
  %622 = sub i32 %621, 1, !dbg !3669
  %623 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 46, !dbg !3670
  %624 = getelementptr inbounds %struct.lzss, %struct.lzss* %623, i32 0, i32 1, !dbg !3671
  store i32 %622, i32* %624, align 8, !dbg !3672
  br label %625, !dbg !3673

625:                                              ; preds = %610, %585
  %626 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 54, !dbg !3674
  store i8 0, i8* %626, align 8, !dbg !3675
  br label %630, !dbg !3676

627:                                              ; preds = %507, %474, %419, %386, %285, %249, %215, %116, %83, %53, %23
  call void @llvm.dbg.label(metadata !3677), !dbg !3678
  %628 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !3679
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %628, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0)), !dbg !3680
  %629 = getelementptr inbounds %struct.rar, %struct.rar* %8, i32 0, i32 28, !dbg !3681
  store i8 0, i8* %629, align 8, !dbg !3682
  br label %630, !dbg !3683

630:                                              ; preds = %627, %625, %608, %579, %572, %565, %558, %365, %339, %326, %197, %190, %180, %173, %151
  %.0 = phi i32 [ -30, %151 ], [ 0, %625 ], [ -30, %608 ], [ -30, %180 ], [ -30, %173 ], [ -30, %197 ], [ -30, %190 ], [ -30, %627 ], [ %324, %326 ], [ -30, %339 ], [ -30, %365 ], [ %556, %558 ], [ %563, %565 ], [ %570, %572 ], [ %577, %579 ], !dbg !3173
  ret i32 %.0, !dbg !3684
}

; Function Attrs: noinline nounwind uwtable
define internal void @lzss_emit_literal(%struct.rar* noundef %0, i8 noundef zeroext %1) #0 !dbg !3685 {
  call void @llvm.dbg.value(metadata %struct.rar* %0, metadata !3688, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i8 %1, metadata !3690, metadata !DIExpression()), !dbg !3689
  %3 = getelementptr inbounds %struct.rar, %struct.rar* %0, i32 0, i32 46, !dbg !3691
  %4 = call i8* @lzss_current_pointer(%struct.lzss* noundef %3), !dbg !3692
  store i8 %1, i8* %4, align 1, !dbg !3693
  %5 = getelementptr inbounds %struct.rar, %struct.rar* %0, i32 0, i32 46, !dbg !3694
  %6 = getelementptr inbounds %struct.lzss, %struct.lzss* %5, i32 0, i32 2, !dbg !3695
  %7 = load i64, i64* %6, align 8, !dbg !3696
  %8 = add nsw i64 %7, 1, !dbg !3696
  store i64 %8, i64* %6, align 8, !dbg !3696
  ret void, !dbg !3697
}

; Function Attrs: noinline nounwind uwtable
define internal void @lzss_emit_match(%struct.rar* noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !3698 {
  call void @llvm.dbg.value(metadata %struct.rar* %0, metadata !3701, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 %1, metadata !3703, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 %2, metadata !3704, metadata !DIExpression()), !dbg !3702
  %4 = getelementptr inbounds %struct.rar, %struct.rar* %0, i32 0, i32 46, !dbg !3705
  %5 = call i32 @lzss_current_offset(%struct.lzss* noundef %4), !dbg !3706
  call void @llvm.dbg.value(metadata i32 %5, metadata !3707, metadata !DIExpression()), !dbg !3702
  %6 = sub nsw i32 %5, %1, !dbg !3708
  %7 = getelementptr inbounds %struct.rar, %struct.rar* %0, i32 0, i32 46, !dbg !3709
  %8 = call i32 @lzss_mask(%struct.lzss* noundef %7), !dbg !3710
  %9 = and i32 %6, %8, !dbg !3711
  call void @llvm.dbg.value(metadata i32 %9, metadata !3712, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 %2, metadata !3713, metadata !DIExpression()), !dbg !3702
  br label %10, !dbg !3714

10:                                               ; preds = %64, %3
  %.04 = phi i32 [ %9, %3 ], [ %73, %64 ], !dbg !3702
  %.03 = phi i32 [ %5, %3 ], [ %69, %64 ], !dbg !3702
  %.0 = phi i32 [ %2, %3 ], [ %65, %64 ], !dbg !3702
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3713, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 %.03, metadata !3707, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 %.04, metadata !3712, metadata !DIExpression()), !dbg !3702
  %11 = icmp sgt i32 %.0, 0, !dbg !3715
  br i1 %11, label %12, label %74, !dbg !3714

12:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3716, metadata !DIExpression()), !dbg !3702
  %13 = icmp sgt i32 %.03, %.04, !dbg !3717
  br i1 %13, label %14, label %24, !dbg !3720

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.rar, %struct.rar* %0, i32 0, i32 46, !dbg !3721
  %16 = call i32 @lzss_size(%struct.lzss* noundef %15), !dbg !3724
  %17 = sub nsw i32 %16, %.03, !dbg !3725
  %18 = icmp sgt i32 %.0, %17, !dbg !3726
  br i1 %18, label %19, label %23, !dbg !3727

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rar, %struct.rar* %0, i32 0, i32 46, !dbg !3728
  %21 = call i32 @lzss_size(%struct.lzss* noundef %20), !dbg !3729
  %22 = sub nsw i32 %21, %.03, !dbg !3730
  call void @llvm.dbg.value(metadata i32 %22, metadata !3716, metadata !DIExpression()), !dbg !3702
  br label %23, !dbg !3731

23:                                               ; preds = %19, %14
  %.02 = phi i32 [ %22, %19 ], [ %.0, %14 ], !dbg !3732
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3716, metadata !DIExpression()), !dbg !3702
  br label %34, !dbg !3733

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.rar, %struct.rar* %0, i32 0, i32 46, !dbg !3734
  %26 = call i32 @lzss_size(%struct.lzss* noundef %25), !dbg !3737
  %27 = sub nsw i32 %26, %.04, !dbg !3738
  %28 = icmp sgt i32 %.0, %27, !dbg !3739
  br i1 %28, label %29, label %33, !dbg !3740

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.rar, %struct.rar* %0, i32 0, i32 46, !dbg !3741
  %31 = call i32 @lzss_size(%struct.lzss* noundef %30), !dbg !3742
  %32 = sub nsw i32 %31, %.04, !dbg !3743
  call void @llvm.dbg.value(metadata i32 %32, metadata !3716, metadata !DIExpression()), !dbg !3702
  br label %33, !dbg !3744

33:                                               ; preds = %29, %24
  %.1 = phi i32 [ %32, %29 ], [ %.0, %24 ], !dbg !3732
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3716, metadata !DIExpression()), !dbg !3702
  br label %34

34:                                               ; preds = %33, %23
  %.2 = phi i32 [ %.02, %23 ], [ %.1, %33 ], !dbg !3745
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3716, metadata !DIExpression()), !dbg !3702
  %35 = getelementptr inbounds %struct.rar, %struct.rar* %0, i32 0, i32 46, !dbg !3746
  %36 = getelementptr inbounds %struct.lzss, %struct.lzss* %35, i32 0, i32 0, !dbg !3747
  %37 = load i8*, i8** %36, align 8, !dbg !3747
  %38 = sext i32 %.03 to i64, !dbg !3748
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3748
  call void @llvm.dbg.value(metadata i8* %39, metadata !3749, metadata !DIExpression()), !dbg !3702
  %40 = getelementptr inbounds %struct.rar, %struct.rar* %0, i32 0, i32 46, !dbg !3750
  %41 = getelementptr inbounds %struct.lzss, %struct.lzss* %40, i32 0, i32 0, !dbg !3751
  %42 = load i8*, i8** %41, align 8, !dbg !3751
  %43 = sext i32 %.04 to i64, !dbg !3752
  %44 = getelementptr inbounds i8, i8* %42, i64 %43, !dbg !3752
  call void @llvm.dbg.value(metadata i8* %44, metadata !3753, metadata !DIExpression()), !dbg !3702
  %45 = add nsw i32 %.03, %.2, !dbg !3754
  %46 = icmp slt i32 %45, %.04, !dbg !3756
  br i1 %46, label %50, label %47, !dbg !3757

47:                                               ; preds = %34
  %48 = add nsw i32 %.04, %.2, !dbg !3758
  %49 = icmp slt i32 %48, %.03, !dbg !3759
  br i1 %49, label %50, label %52, !dbg !3760

50:                                               ; preds = %47, %34
  %51 = sext i32 %.2 to i64, !dbg !3761
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 %44, i64 %51, i1 false), !dbg !3762
  br label %64, !dbg !3762

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 0, metadata !3763, metadata !DIExpression()), !dbg !3702
  br label %53, !dbg !3764

53:                                               ; preds = %61, %52
  %.01 = phi i32 [ 0, %52 ], [ %62, %61 ], !dbg !3767
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3763, metadata !DIExpression()), !dbg !3702
  %54 = icmp slt i32 %.01, %.2, !dbg !3768
  br i1 %54, label %55, label %63, !dbg !3770

55:                                               ; preds = %53
  %56 = sext i32 %.01 to i64, !dbg !3771
  %57 = getelementptr inbounds i8, i8* %44, i64 %56, !dbg !3771
  %58 = load i8, i8* %57, align 1, !dbg !3771
  %59 = sext i32 %.01 to i64, !dbg !3772
  %60 = getelementptr inbounds i8, i8* %39, i64 %59, !dbg !3772
  store i8 %58, i8* %60, align 1, !dbg !3773
  br label %61, !dbg !3772

61:                                               ; preds = %55
  %62 = add nsw i32 %.01, 1, !dbg !3774
  call void @llvm.dbg.value(metadata i32 %62, metadata !3763, metadata !DIExpression()), !dbg !3702
  br label %53, !dbg !3775, !llvm.loop !3776

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %50
  %65 = sub nsw i32 %.0, %.2, !dbg !3778
  call void @llvm.dbg.value(metadata i32 %65, metadata !3713, metadata !DIExpression()), !dbg !3702
  %66 = add nsw i32 %.03, %.2, !dbg !3779
  %67 = getelementptr inbounds %struct.rar, %struct.rar* %0, i32 0, i32 46, !dbg !3780
  %68 = call i32 @lzss_mask(%struct.lzss* noundef %67), !dbg !3781
  %69 = and i32 %66, %68, !dbg !3782
  call void @llvm.dbg.value(metadata i32 %69, metadata !3707, metadata !DIExpression()), !dbg !3702
  %70 = add nsw i32 %.04, %.2, !dbg !3783
  %71 = getelementptr inbounds %struct.rar, %struct.rar* %0, i32 0, i32 46, !dbg !3784
  %72 = call i32 @lzss_mask(%struct.lzss* noundef %71), !dbg !3785
  %73 = and i32 %70, %72, !dbg !3786
  call void @llvm.dbg.value(metadata i32 %73, metadata !3712, metadata !DIExpression()), !dbg !3702
  br label %10, !dbg !3714, !llvm.loop !3787

74:                                               ; preds = %10
  %75 = sext i32 %2 to i64, !dbg !3789
  %76 = getelementptr inbounds %struct.rar, %struct.rar* %0, i32 0, i32 46, !dbg !3790
  %77 = getelementptr inbounds %struct.lzss, %struct.lzss* %76, i32 0, i32 2, !dbg !3791
  %78 = load i64, i64* %77, align 8, !dbg !3792
  %79 = add nsw i64 %78, %75, !dbg !3792
  store i64 %79, i64* %77, align 8, !dbg !3792
  ret void, !dbg !3793
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @expand(%struct.archive_read* noundef %0, i64 noundef %1) #0 !dbg !520 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !3794, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 %1, metadata !3796, metadata !DIExpression()), !dbg !3795
  %3 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !3797
  %4 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %3, align 8, !dbg !3797
  %5 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %4, i32 0, i32 0, !dbg !3798
  %6 = load i8*, i8** %5, align 8, !dbg !3798
  %7 = bitcast i8* %6 to %struct.rar*, !dbg !3799
  call void @llvm.dbg.value(metadata %struct.rar* %7, metadata !3800, metadata !DIExpression()), !dbg !3795
  %8 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 67, !dbg !3801
  call void @llvm.dbg.value(metadata %struct.rar_br* %8, metadata !3802, metadata !DIExpression()), !dbg !3795
  %9 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 53, !dbg !3803
  %10 = load i64, i64* %9, align 8, !dbg !3803
  %11 = icmp slt i64 %10, %1, !dbg !3805
  br i1 %11, label %12, label %15, !dbg !3806

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 53, !dbg !3807
  %14 = load i64, i64* %13, align 8, !dbg !3807
  call void @llvm.dbg.value(metadata i64 %14, metadata !3796, metadata !DIExpression()), !dbg !3795
  br label %15, !dbg !3808

15:                                               ; preds = %12, %2
  %.02 = phi i64 [ %14, %12 ], [ %1, %2 ]
  call void @llvm.dbg.value(metadata i64 %.02, metadata !3796, metadata !DIExpression()), !dbg !3795
  br label %16, !dbg !3809

16:                                               ; preds = %591, %141, %130, %60, %15
  %17 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 47, !dbg !3810
  %18 = load i8, i8* %17, align 8, !dbg !3810
  %19 = sext i8 %18 to i32, !dbg !3813
  %20 = icmp ne i32 %19, 0, !dbg !3813
  br i1 %20, label %21, label %35, !dbg !3814

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 46, !dbg !3815
  %23 = call i64 @lzss_position(%struct.lzss* noundef %22), !dbg !3816
  %24 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 48, !dbg !3817
  %25 = load i32, i32* %24, align 4, !dbg !3817
  %26 = zext i32 %25 to i64, !dbg !3818
  %27 = add nsw i64 %23, %26, !dbg !3819
  %28 = icmp sle i64 %27, %.02, !dbg !3820
  br i1 %28, label %29, label %35, !dbg !3821

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 49, !dbg !3822
  %31 = load i32, i32* %30, align 8, !dbg !3822
  %32 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 48, !dbg !3824
  %33 = load i32, i32* %32, align 4, !dbg !3824
  call void @lzss_emit_match(%struct.rar* noundef %7, i32 noundef %31, i32 noundef %33), !dbg !3825
  %34 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 47, !dbg !3826
  store i8 0, i8* %34, align 8, !dbg !3827
  br label %35, !dbg !3828

35:                                               ; preds = %29, %21, %16
  %36 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 57, !dbg !3829
  %37 = load i8, i8* %36, align 1, !dbg !3829
  %38 = sext i8 %37 to i32, !dbg !3831
  %39 = icmp ne i32 %38, 0, !dbg !3831
  br i1 %39, label %49, label %40, !dbg !3832

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 47, !dbg !3833
  %42 = load i8, i8* %41, align 8, !dbg !3833
  %43 = sext i8 %42 to i32, !dbg !3834
  %44 = icmp ne i32 %43, 0, !dbg !3834
  br i1 %44, label %49, label %45, !dbg !3835

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 46, !dbg !3836
  %47 = call i64 @lzss_position(%struct.lzss* noundef %46), !dbg !3837
  %48 = icmp sge i64 %47, %.02, !dbg !3838
  br i1 %48, label %49, label %52, !dbg !3839

49:                                               ; preds = %45, %40, %35
  %50 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 46, !dbg !3840
  %51 = call i64 @lzss_position(%struct.lzss* noundef %50), !dbg !3841
  br label %600, !dbg !3842

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 41, !dbg !3843
  %54 = call i32 @read_next_symbol(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %53), !dbg !3845
  call void @llvm.dbg.value(metadata i32 %54, metadata !3846, metadata !DIExpression()), !dbg !3795
  %55 = icmp slt i32 %54, 0, !dbg !3847
  br i1 %55, label %56, label %57, !dbg !3848

56:                                               ; preds = %52
  br label %600, !dbg !3849

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 47, !dbg !3850
  store i8 0, i8* %58, align 8, !dbg !3851
  %59 = icmp slt i32 %54, 256, !dbg !3852
  br i1 %59, label %60, label %62, !dbg !3854

60:                                               ; preds = %57
  %61 = trunc i32 %54 to i8, !dbg !3855
  call void @lzss_emit_literal(%struct.rar* noundef %7, i8 noundef zeroext %61), !dbg !3857
  br label %16, !dbg !3858, !llvm.loop !3859

62:                                               ; preds = %57
  %63 = icmp eq i32 %54, 256, !dbg !3861
  br i1 %63, label %64, label %131, !dbg !3863

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3864
  %66 = load i32, i32* %65, align 8, !dbg !3864
  %67 = icmp sge i32 %66, 1, !dbg !3864
  br i1 %67, label %76, label %68, !dbg !3864

68:                                               ; preds = %64
  %69 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %8), !dbg !3864
  %70 = icmp ne i32 %69, 0, !dbg !3864
  br i1 %70, label %76, label %71, !dbg !3864

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3864
  %73 = load i32, i32* %72, align 8, !dbg !3864
  %74 = icmp sge i32 %73, 1, !dbg !3864
  br i1 %74, label %76, label %75, !dbg !3867

75:                                               ; preds = %71
  br label %595, !dbg !3868

76:                                               ; preds = %71, %68, %64
  %77 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 0, !dbg !3869
  %78 = load i64, i64* %77, align 8, !dbg !3869
  %79 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3869
  %80 = load i32, i32* %79, align 8, !dbg !3869
  %81 = sub nsw i32 %80, 1, !dbg !3869
  %82 = zext i32 %81 to i64, !dbg !3869
  %83 = lshr i64 %78, %82, !dbg !3869
  %84 = trunc i64 %83 to i32, !dbg !3869
  %85 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @cache_masks, i64 0, i64 1), align 4, !dbg !3869
  %86 = and i32 %84, %85, !dbg !3869
  %87 = icmp ne i32 %86, 0, !dbg !3870
  %88 = xor i1 %87, true, !dbg !3870
  %89 = zext i1 %88 to i32, !dbg !3870
  %90 = trunc i32 %89 to i8, !dbg !3870
  call void @llvm.dbg.value(metadata i8 %90, metadata !3871, metadata !DIExpression()), !dbg !3795
  %91 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3872
  %92 = load i32, i32* %91, align 8, !dbg !3872
  %93 = sub nsw i32 %92, 1, !dbg !3872
  store i32 %93, i32* %91, align 8, !dbg !3872
  %94 = icmp ne i8 %90, 0, !dbg !3873
  br i1 %94, label %95, label %126, !dbg !3875

95:                                               ; preds = %76
  %96 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 33, !dbg !3876
  store i8 1, i8* %96, align 4, !dbg !3878
  %97 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3879
  %98 = load i32, i32* %97, align 8, !dbg !3879
  %99 = icmp sge i32 %98, 1, !dbg !3879
  br i1 %99, label %108, label %100, !dbg !3879

100:                                              ; preds = %95
  %101 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %8), !dbg !3879
  %102 = icmp ne i32 %101, 0, !dbg !3879
  br i1 %102, label %108, label %103, !dbg !3879

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3879
  %105 = load i32, i32* %104, align 8, !dbg !3879
  %106 = icmp sge i32 %105, 1, !dbg !3879
  br i1 %106, label %108, label %107, !dbg !3881

107:                                              ; preds = %103
  br label %595, !dbg !3882

108:                                              ; preds = %103, %100, %95
  %109 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 0, !dbg !3883
  %110 = load i64, i64* %109, align 8, !dbg !3883
  %111 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3883
  %112 = load i32, i32* %111, align 8, !dbg !3883
  %113 = sub nsw i32 %112, 1, !dbg !3883
  %114 = zext i32 %113 to i64, !dbg !3883
  %115 = lshr i64 %110, %114, !dbg !3883
  %116 = trunc i64 %115 to i32, !dbg !3883
  %117 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @cache_masks, i64 0, i64 1), align 4, !dbg !3883
  %118 = and i32 %116, %117, !dbg !3883
  %119 = trunc i32 %118 to i8, !dbg !3883
  %120 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 54, !dbg !3884
  store i8 %119, i8* %120, align 8, !dbg !3885
  %121 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3886
  %122 = load i32, i32* %121, align 8, !dbg !3886
  %123 = sub nsw i32 %122, 1, !dbg !3886
  store i32 %123, i32* %121, align 8, !dbg !3886
  %124 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 46, !dbg !3887
  %125 = call i64 @lzss_position(%struct.lzss* noundef %124), !dbg !3888
  br label %600, !dbg !3889

126:                                              ; preds = %76
  %127 = call i32 @parse_codes(%struct.archive_read* noundef %0), !dbg !3890
  %128 = icmp ne i32 %127, 0, !dbg !3893
  br i1 %128, label %129, label %130, !dbg !3894

129:                                              ; preds = %126
  br label %600, !dbg !3895

130:                                              ; preds = %126
  br label %16, !dbg !3896, !llvm.loop !3859

131:                                              ; preds = %62
  %132 = icmp eq i32 %54, 257, !dbg !3897
  br i1 %132, label %133, label %135, !dbg !3899

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !3900
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %134, i32 noundef -1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0)), !dbg !3902
  br label %600, !dbg !3903

135:                                              ; preds = %131
  %136 = icmp eq i32 %54, 258, !dbg !3904
  br i1 %136, label %137, label %147, !dbg !3906

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 48, !dbg !3907
  %139 = load i32, i32* %138, align 4, !dbg !3907
  %140 = icmp eq i32 %139, 0, !dbg !3910
  br i1 %140, label %141, label %142, !dbg !3911

141:                                              ; preds = %137
  br label %16, !dbg !3912, !llvm.loop !3859

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 49, !dbg !3913
  %144 = load i32, i32* %143, align 8, !dbg !3913
  call void @llvm.dbg.value(metadata i32 %144, metadata !3914, metadata !DIExpression()), !dbg !3795
  %145 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 48, !dbg !3915
  %146 = load i32, i32* %145, align 4, !dbg !3915
  call void @llvm.dbg.value(metadata i32 %146, metadata !3916, metadata !DIExpression()), !dbg !3795
  br label %588, !dbg !3917

147:                                              ; preds = %135
  %148 = icmp sle i32 %54, 262, !dbg !3918
  br i1 %148, label %149, label %241, !dbg !3920

149:                                              ; preds = %147
  %150 = sub nsw i32 %54, 259, !dbg !3921
  call void @llvm.dbg.value(metadata i32 %150, metadata !3923, metadata !DIExpression()), !dbg !3795
  %151 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 50, !dbg !3924
  %152 = sext i32 %150 to i64, !dbg !3925
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %151, i64 0, i64 %152, !dbg !3925
  %154 = load i32, i32* %153, align 4, !dbg !3925
  call void @llvm.dbg.value(metadata i32 %154, metadata !3914, metadata !DIExpression()), !dbg !3795
  %155 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 44, !dbg !3926
  %156 = call i32 @read_next_symbol(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %155), !dbg !3928
  call void @llvm.dbg.value(metadata i32 %156, metadata !3929, metadata !DIExpression()), !dbg !3795
  %157 = icmp slt i32 %156, 0, !dbg !3930
  br i1 %157, label %158, label %159, !dbg !3931

158:                                              ; preds = %149
  br label %598, !dbg !3932

159:                                              ; preds = %149
  %160 = icmp sgt i32 %156, 28, !dbg !3933
  br i1 %160, label %161, label %162, !dbg !3935

161:                                              ; preds = %159
  br label %598, !dbg !3936

162:                                              ; preds = %159
  %163 = icmp sgt i32 %156, 28, !dbg !3937
  br i1 %163, label %164, label %165, !dbg !3939

164:                                              ; preds = %162
  br label %598, !dbg !3940

165:                                              ; preds = %162
  %166 = sext i32 %156 to i64, !dbg !3941
  %167 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbases, i64 0, i64 %166, !dbg !3941
  %168 = load i8, i8* %167, align 1, !dbg !3941
  %169 = zext i8 %168 to i32, !dbg !3941
  %170 = add nsw i32 %169, 2, !dbg !3942
  call void @llvm.dbg.value(metadata i32 %170, metadata !3916, metadata !DIExpression()), !dbg !3795
  %171 = sext i32 %156 to i64, !dbg !3943
  %172 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %171, !dbg !3943
  %173 = load i8, i8* %172, align 1, !dbg !3943
  %174 = zext i8 %173 to i32, !dbg !3943
  %175 = icmp sgt i32 %174, 0, !dbg !3945
  br i1 %175, label %176, label %224, !dbg !3946

176:                                              ; preds = %165
  %177 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3947
  %178 = load i32, i32* %177, align 8, !dbg !3947
  %179 = sext i32 %156 to i64, !dbg !3947
  %180 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %179, !dbg !3947
  %181 = load i8, i8* %180, align 1, !dbg !3947
  %182 = zext i8 %181 to i32, !dbg !3947
  %183 = icmp sge i32 %178, %182, !dbg !3947
  br i1 %183, label %196, label %184, !dbg !3947

184:                                              ; preds = %176
  %185 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %8), !dbg !3947
  %186 = icmp ne i32 %185, 0, !dbg !3947
  br i1 %186, label %196, label %187, !dbg !3947

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3947
  %189 = load i32, i32* %188, align 8, !dbg !3947
  %190 = sext i32 %156 to i64, !dbg !3947
  %191 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %190, !dbg !3947
  %192 = load i8, i8* %191, align 1, !dbg !3947
  %193 = zext i8 %192 to i32, !dbg !3947
  %194 = icmp sge i32 %189, %193, !dbg !3947
  br i1 %194, label %196, label %195, !dbg !3950

195:                                              ; preds = %187
  br label %595, !dbg !3951

196:                                              ; preds = %187, %184, %176
  %197 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 0, !dbg !3952
  %198 = load i64, i64* %197, align 8, !dbg !3952
  %199 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3952
  %200 = load i32, i32* %199, align 8, !dbg !3952
  %201 = sext i32 %156 to i64, !dbg !3952
  %202 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %201, !dbg !3952
  %203 = load i8, i8* %202, align 1, !dbg !3952
  %204 = zext i8 %203 to i32, !dbg !3952
  %205 = sub nsw i32 %200, %204, !dbg !3952
  %206 = zext i32 %205 to i64, !dbg !3952
  %207 = lshr i64 %198, %206, !dbg !3952
  %208 = trunc i64 %207 to i32, !dbg !3952
  %209 = sext i32 %156 to i64, !dbg !3952
  %210 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %209, !dbg !3952
  %211 = load i8, i8* %210, align 1, !dbg !3952
  %212 = zext i8 %211 to i64, !dbg !3952
  %213 = getelementptr inbounds [36 x i32], [36 x i32]* @cache_masks, i64 0, i64 %212, !dbg !3952
  %214 = load i32, i32* %213, align 4, !dbg !3952
  %215 = and i32 %208, %214, !dbg !3952
  %216 = add i32 %170, %215, !dbg !3953
  call void @llvm.dbg.value(metadata i32 %216, metadata !3916, metadata !DIExpression()), !dbg !3795
  %217 = sext i32 %156 to i64, !dbg !3954
  %218 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %217, !dbg !3954
  %219 = load i8, i8* %218, align 1, !dbg !3954
  %220 = zext i8 %219 to i32, !dbg !3954
  %221 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3954
  %222 = load i32, i32* %221, align 8, !dbg !3954
  %223 = sub nsw i32 %222, %220, !dbg !3954
  store i32 %223, i32* %221, align 8, !dbg !3954
  br label %224, !dbg !3955

224:                                              ; preds = %196, %165
  %.03 = phi i32 [ %216, %196 ], [ %170, %165 ], !dbg !3956
  call void @llvm.dbg.value(metadata i32 %.03, metadata !3916, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %150, metadata !3957, metadata !DIExpression()), !dbg !3795
  br label %225, !dbg !3958

225:                                              ; preds = %236, %224
  %.01 = phi i32 [ %150, %224 ], [ %237, %236 ], !dbg !3960
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3957, metadata !DIExpression()), !dbg !3795
  %226 = icmp sgt i32 %.01, 0, !dbg !3961
  br i1 %226, label %227, label %238, !dbg !3963

227:                                              ; preds = %225
  %228 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 50, !dbg !3964
  %229 = sub nsw i32 %.01, 1, !dbg !3965
  %230 = sext i32 %229 to i64, !dbg !3966
  %231 = getelementptr inbounds [4 x i32], [4 x i32]* %228, i64 0, i64 %230, !dbg !3966
  %232 = load i32, i32* %231, align 4, !dbg !3966
  %233 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 50, !dbg !3967
  %234 = sext i32 %.01 to i64, !dbg !3968
  %235 = getelementptr inbounds [4 x i32], [4 x i32]* %233, i64 0, i64 %234, !dbg !3968
  store i32 %232, i32* %235, align 4, !dbg !3969
  br label %236, !dbg !3968

236:                                              ; preds = %227
  %237 = add nsw i32 %.01, -1, !dbg !3970
  call void @llvm.dbg.value(metadata i32 %237, metadata !3957, metadata !DIExpression()), !dbg !3795
  br label %225, !dbg !3971, !llvm.loop !3972

238:                                              ; preds = %225
  %239 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 50, !dbg !3974
  %240 = getelementptr inbounds [4 x i32], [4 x i32]* %239, i64 0, i64 0, !dbg !3975
  store i32 %154, i32* %240, align 4, !dbg !3976
  br label %587, !dbg !3977

241:                                              ; preds = %147
  %242 = icmp sle i32 %54, 270, !dbg !3978
  br i1 %242, label %243, label %326, !dbg !3980

243:                                              ; preds = %241
  %244 = sub nsw i32 %54, 263, !dbg !3981
  %245 = sext i32 %244 to i64, !dbg !3983
  %246 = getelementptr inbounds [8 x i8], [8 x i8]* @expand.shortbases, i64 0, i64 %245, !dbg !3983
  %247 = load i8, i8* %246, align 1, !dbg !3983
  %248 = zext i8 %247 to i32, !dbg !3983
  %249 = add nsw i32 %248, 1, !dbg !3984
  call void @llvm.dbg.value(metadata i32 %249, metadata !3914, metadata !DIExpression()), !dbg !3795
  %250 = sub nsw i32 %54, 263, !dbg !3985
  %251 = sext i32 %250 to i64, !dbg !3987
  %252 = getelementptr inbounds [8 x i8], [8 x i8]* @expand.shortbits, i64 0, i64 %251, !dbg !3987
  %253 = load i8, i8* %252, align 1, !dbg !3987
  %254 = zext i8 %253 to i32, !dbg !3987
  %255 = icmp sgt i32 %254, 0, !dbg !3988
  br i1 %255, label %256, label %309, !dbg !3989

256:                                              ; preds = %243
  %257 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3990
  %258 = load i32, i32* %257, align 8, !dbg !3990
  %259 = sub nsw i32 %54, 263, !dbg !3990
  %260 = sext i32 %259 to i64, !dbg !3990
  %261 = getelementptr inbounds [8 x i8], [8 x i8]* @expand.shortbits, i64 0, i64 %260, !dbg !3990
  %262 = load i8, i8* %261, align 1, !dbg !3990
  %263 = zext i8 %262 to i32, !dbg !3990
  %264 = icmp sge i32 %258, %263, !dbg !3990
  br i1 %264, label %278, label %265, !dbg !3990

265:                                              ; preds = %256
  %266 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %8), !dbg !3990
  %267 = icmp ne i32 %266, 0, !dbg !3990
  br i1 %267, label %278, label %268, !dbg !3990

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3990
  %270 = load i32, i32* %269, align 8, !dbg !3990
  %271 = sub nsw i32 %54, 263, !dbg !3990
  %272 = sext i32 %271 to i64, !dbg !3990
  %273 = getelementptr inbounds [8 x i8], [8 x i8]* @expand.shortbits, i64 0, i64 %272, !dbg !3990
  %274 = load i8, i8* %273, align 1, !dbg !3990
  %275 = zext i8 %274 to i32, !dbg !3990
  %276 = icmp sge i32 %270, %275, !dbg !3990
  br i1 %276, label %278, label %277, !dbg !3993

277:                                              ; preds = %268
  br label %595, !dbg !3994

278:                                              ; preds = %268, %265, %256
  %279 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 0, !dbg !3995
  %280 = load i64, i64* %279, align 8, !dbg !3995
  %281 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3995
  %282 = load i32, i32* %281, align 8, !dbg !3995
  %283 = sub nsw i32 %54, 263, !dbg !3995
  %284 = sext i32 %283 to i64, !dbg !3995
  %285 = getelementptr inbounds [8 x i8], [8 x i8]* @expand.shortbits, i64 0, i64 %284, !dbg !3995
  %286 = load i8, i8* %285, align 1, !dbg !3995
  %287 = zext i8 %286 to i32, !dbg !3995
  %288 = sub nsw i32 %282, %287, !dbg !3995
  %289 = zext i32 %288 to i64, !dbg !3995
  %290 = lshr i64 %280, %289, !dbg !3995
  %291 = trunc i64 %290 to i32, !dbg !3995
  %292 = sub nsw i32 %54, 263, !dbg !3995
  %293 = sext i32 %292 to i64, !dbg !3995
  %294 = getelementptr inbounds [8 x i8], [8 x i8]* @expand.shortbits, i64 0, i64 %293, !dbg !3995
  %295 = load i8, i8* %294, align 1, !dbg !3995
  %296 = zext i8 %295 to i64, !dbg !3995
  %297 = getelementptr inbounds [36 x i32], [36 x i32]* @cache_masks, i64 0, i64 %296, !dbg !3995
  %298 = load i32, i32* %297, align 4, !dbg !3995
  %299 = and i32 %291, %298, !dbg !3995
  %300 = add i32 %249, %299, !dbg !3996
  call void @llvm.dbg.value(metadata i32 %300, metadata !3914, metadata !DIExpression()), !dbg !3795
  %301 = sub nsw i32 %54, 263, !dbg !3997
  %302 = sext i32 %301 to i64, !dbg !3997
  %303 = getelementptr inbounds [8 x i8], [8 x i8]* @expand.shortbits, i64 0, i64 %302, !dbg !3997
  %304 = load i8, i8* %303, align 1, !dbg !3997
  %305 = zext i8 %304 to i32, !dbg !3997
  %306 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !3997
  %307 = load i32, i32* %306, align 8, !dbg !3997
  %308 = sub nsw i32 %307, %305, !dbg !3997
  store i32 %308, i32* %306, align 8, !dbg !3997
  br label %309, !dbg !3998

309:                                              ; preds = %278, %243
  %.06 = phi i32 [ %300, %278 ], [ %249, %243 ], !dbg !3999
  call void @llvm.dbg.value(metadata i32 %.06, metadata !3914, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 2, metadata !3916, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 3, metadata !3957, metadata !DIExpression()), !dbg !3795
  br label %310, !dbg !4000

310:                                              ; preds = %321, %309
  %.1 = phi i32 [ 3, %309 ], [ %322, %321 ], !dbg !4002
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3957, metadata !DIExpression()), !dbg !3795
  %311 = icmp sgt i32 %.1, 0, !dbg !4003
  br i1 %311, label %312, label %323, !dbg !4005

312:                                              ; preds = %310
  %313 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 50, !dbg !4006
  %314 = sub nsw i32 %.1, 1, !dbg !4007
  %315 = sext i32 %314 to i64, !dbg !4008
  %316 = getelementptr inbounds [4 x i32], [4 x i32]* %313, i64 0, i64 %315, !dbg !4008
  %317 = load i32, i32* %316, align 4, !dbg !4008
  %318 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 50, !dbg !4009
  %319 = sext i32 %.1 to i64, !dbg !4010
  %320 = getelementptr inbounds [4 x i32], [4 x i32]* %318, i64 0, i64 %319, !dbg !4010
  store i32 %317, i32* %320, align 4, !dbg !4011
  br label %321, !dbg !4010

321:                                              ; preds = %312
  %322 = add nsw i32 %.1, -1, !dbg !4012
  call void @llvm.dbg.value(metadata i32 %322, metadata !3957, metadata !DIExpression()), !dbg !3795
  br label %310, !dbg !4013, !llvm.loop !4014

323:                                              ; preds = %310
  %324 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 50, !dbg !4016
  %325 = getelementptr inbounds [4 x i32], [4 x i32]* %324, i64 0, i64 0, !dbg !4017
  store i32 %.06, i32* %325, align 4, !dbg !4018
  br label %586, !dbg !4019

326:                                              ; preds = %241
  %327 = sub nsw i32 %54, 271, !dbg !4020
  %328 = icmp sgt i32 %327, 28, !dbg !4023
  br i1 %328, label %329, label %330, !dbg !4024

329:                                              ; preds = %326
  br label %598, !dbg !4025

330:                                              ; preds = %326
  %331 = sub nsw i32 %54, 271, !dbg !4026
  %332 = icmp sgt i32 %331, 28, !dbg !4028
  br i1 %332, label %333, label %334, !dbg !4029

333:                                              ; preds = %330
  br label %598, !dbg !4030

334:                                              ; preds = %330
  %335 = sub nsw i32 %54, 271, !dbg !4031
  %336 = sext i32 %335 to i64, !dbg !4032
  %337 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbases, i64 0, i64 %336, !dbg !4032
  %338 = load i8, i8* %337, align 1, !dbg !4032
  %339 = zext i8 %338 to i32, !dbg !4032
  %340 = add nsw i32 %339, 3, !dbg !4033
  call void @llvm.dbg.value(metadata i32 %340, metadata !3916, metadata !DIExpression()), !dbg !3795
  %341 = sub nsw i32 %54, 271, !dbg !4034
  %342 = sext i32 %341 to i64, !dbg !4036
  %343 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %342, !dbg !4036
  %344 = load i8, i8* %343, align 1, !dbg !4036
  %345 = zext i8 %344 to i32, !dbg !4036
  %346 = icmp sgt i32 %345, 0, !dbg !4037
  br i1 %346, label %347, label %400, !dbg !4038

347:                                              ; preds = %334
  %348 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !4039
  %349 = load i32, i32* %348, align 8, !dbg !4039
  %350 = sub nsw i32 %54, 271, !dbg !4039
  %351 = sext i32 %350 to i64, !dbg !4039
  %352 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %351, !dbg !4039
  %353 = load i8, i8* %352, align 1, !dbg !4039
  %354 = zext i8 %353 to i32, !dbg !4039
  %355 = icmp sge i32 %349, %354, !dbg !4039
  br i1 %355, label %369, label %356, !dbg !4039

356:                                              ; preds = %347
  %357 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %8), !dbg !4039
  %358 = icmp ne i32 %357, 0, !dbg !4039
  br i1 %358, label %369, label %359, !dbg !4039

359:                                              ; preds = %356
  %360 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !4039
  %361 = load i32, i32* %360, align 8, !dbg !4039
  %362 = sub nsw i32 %54, 271, !dbg !4039
  %363 = sext i32 %362 to i64, !dbg !4039
  %364 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %363, !dbg !4039
  %365 = load i8, i8* %364, align 1, !dbg !4039
  %366 = zext i8 %365 to i32, !dbg !4039
  %367 = icmp sge i32 %361, %366, !dbg !4039
  br i1 %367, label %369, label %368, !dbg !4042

368:                                              ; preds = %359
  br label %595, !dbg !4043

369:                                              ; preds = %359, %356, %347
  %370 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 0, !dbg !4044
  %371 = load i64, i64* %370, align 8, !dbg !4044
  %372 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !4044
  %373 = load i32, i32* %372, align 8, !dbg !4044
  %374 = sub nsw i32 %54, 271, !dbg !4044
  %375 = sext i32 %374 to i64, !dbg !4044
  %376 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %375, !dbg !4044
  %377 = load i8, i8* %376, align 1, !dbg !4044
  %378 = zext i8 %377 to i32, !dbg !4044
  %379 = sub nsw i32 %373, %378, !dbg !4044
  %380 = zext i32 %379 to i64, !dbg !4044
  %381 = lshr i64 %371, %380, !dbg !4044
  %382 = trunc i64 %381 to i32, !dbg !4044
  %383 = sub nsw i32 %54, 271, !dbg !4044
  %384 = sext i32 %383 to i64, !dbg !4044
  %385 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %384, !dbg !4044
  %386 = load i8, i8* %385, align 1, !dbg !4044
  %387 = zext i8 %386 to i64, !dbg !4044
  %388 = getelementptr inbounds [36 x i32], [36 x i32]* @cache_masks, i64 0, i64 %387, !dbg !4044
  %389 = load i32, i32* %388, align 4, !dbg !4044
  %390 = and i32 %382, %389, !dbg !4044
  %391 = add i32 %340, %390, !dbg !4045
  call void @llvm.dbg.value(metadata i32 %391, metadata !3916, metadata !DIExpression()), !dbg !3795
  %392 = sub nsw i32 %54, 271, !dbg !4046
  %393 = sext i32 %392 to i64, !dbg !4046
  %394 = getelementptr inbounds [28 x i8], [28 x i8]* @expand.lengthbits, i64 0, i64 %393, !dbg !4046
  %395 = load i8, i8* %394, align 1, !dbg !4046
  %396 = zext i8 %395 to i32, !dbg !4046
  %397 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !4046
  %398 = load i32, i32* %397, align 8, !dbg !4046
  %399 = sub nsw i32 %398, %396, !dbg !4046
  store i32 %399, i32* %397, align 8, !dbg !4046
  br label %400, !dbg !4047

400:                                              ; preds = %369, %334
  %.14 = phi i32 [ %391, %369 ], [ %340, %334 ], !dbg !4048
  call void @llvm.dbg.value(metadata i32 %.14, metadata !3916, metadata !DIExpression()), !dbg !3795
  %401 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 42, !dbg !4049
  %402 = call i32 @read_next_symbol(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %401), !dbg !4051
  call void @llvm.dbg.value(metadata i32 %402, metadata !4052, metadata !DIExpression()), !dbg !3795
  %403 = icmp slt i32 %402, 0, !dbg !4053
  br i1 %403, label %404, label %405, !dbg !4054

404:                                              ; preds = %400
  br label %598, !dbg !4055

405:                                              ; preds = %400
  %406 = icmp sgt i32 %402, 60, !dbg !4056
  br i1 %406, label %407, label %408, !dbg !4058

407:                                              ; preds = %405
  br label %598, !dbg !4059

408:                                              ; preds = %405
  %409 = icmp sgt i32 %402, 60, !dbg !4060
  br i1 %409, label %410, label %411, !dbg !4062

410:                                              ; preds = %408
  br label %598, !dbg !4063

411:                                              ; preds = %408
  %412 = sext i32 %402 to i64, !dbg !4064
  %413 = getelementptr inbounds [60 x i32], [60 x i32]* @expand.offsetbases, i64 0, i64 %412, !dbg !4064
  %414 = load i32, i32* %413, align 4, !dbg !4064
  %415 = add i32 %414, 1, !dbg !4065
  call void @llvm.dbg.value(metadata i32 %415, metadata !3914, metadata !DIExpression()), !dbg !3795
  %416 = sext i32 %402 to i64, !dbg !4066
  %417 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %416, !dbg !4066
  %418 = load i8, i8* %417, align 1, !dbg !4066
  %419 = zext i8 %418 to i32, !dbg !4066
  %420 = icmp sgt i32 %419, 0, !dbg !4068
  br i1 %420, label %421, label %561, !dbg !4069

421:                                              ; preds = %411
  %422 = icmp sgt i32 %402, 9, !dbg !4070
  br i1 %422, label %423, label %512, !dbg !4073

423:                                              ; preds = %421
  %424 = sext i32 %402 to i64, !dbg !4074
  %425 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %424, !dbg !4074
  %426 = load i8, i8* %425, align 1, !dbg !4074
  %427 = zext i8 %426 to i32, !dbg !4074
  %428 = icmp sgt i32 %427, 4, !dbg !4077
  br i1 %428, label %429, label %484, !dbg !4078

429:                                              ; preds = %423
  %430 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !4079
  %431 = load i32, i32* %430, align 8, !dbg !4079
  %432 = sext i32 %402 to i64, !dbg !4079
  %433 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %432, !dbg !4079
  %434 = load i8, i8* %433, align 1, !dbg !4079
  %435 = zext i8 %434 to i32, !dbg !4079
  %436 = sub nsw i32 %435, 4, !dbg !4079
  %437 = icmp sge i32 %431, %436, !dbg !4079
  br i1 %437, label %451, label %438, !dbg !4079

438:                                              ; preds = %429
  %439 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %8), !dbg !4079
  %440 = icmp ne i32 %439, 0, !dbg !4079
  br i1 %440, label %451, label %441, !dbg !4079

441:                                              ; preds = %438
  %442 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !4079
  %443 = load i32, i32* %442, align 8, !dbg !4079
  %444 = sext i32 %402 to i64, !dbg !4079
  %445 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %444, !dbg !4079
  %446 = load i8, i8* %445, align 1, !dbg !4079
  %447 = zext i8 %446 to i32, !dbg !4079
  %448 = sub nsw i32 %447, 4, !dbg !4079
  %449 = icmp sge i32 %443, %448, !dbg !4079
  br i1 %449, label %451, label %450, !dbg !4082

450:                                              ; preds = %441
  br label %595, !dbg !4083

451:                                              ; preds = %441, %438, %429
  %452 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 0, !dbg !4084
  %453 = load i64, i64* %452, align 8, !dbg !4084
  %454 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !4084
  %455 = load i32, i32* %454, align 8, !dbg !4084
  %456 = sext i32 %402 to i64, !dbg !4084
  %457 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %456, !dbg !4084
  %458 = load i8, i8* %457, align 1, !dbg !4084
  %459 = zext i8 %458 to i32, !dbg !4084
  %460 = sub nsw i32 %459, 4, !dbg !4084
  %461 = sub nsw i32 %455, %460, !dbg !4084
  %462 = zext i32 %461 to i64, !dbg !4084
  %463 = lshr i64 %453, %462, !dbg !4084
  %464 = trunc i64 %463 to i32, !dbg !4084
  %465 = sext i32 %402 to i64, !dbg !4084
  %466 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %465, !dbg !4084
  %467 = load i8, i8* %466, align 1, !dbg !4084
  %468 = zext i8 %467 to i32, !dbg !4084
  %469 = sub nsw i32 %468, 4, !dbg !4084
  %470 = sext i32 %469 to i64, !dbg !4084
  %471 = getelementptr inbounds [36 x i32], [36 x i32]* @cache_masks, i64 0, i64 %470, !dbg !4084
  %472 = load i32, i32* %471, align 4, !dbg !4084
  %473 = and i32 %464, %472, !dbg !4084
  %474 = shl i32 %473, 4, !dbg !4085
  %475 = add i32 %415, %474, !dbg !4086
  call void @llvm.dbg.value(metadata i32 %475, metadata !3914, metadata !DIExpression()), !dbg !3795
  %476 = sext i32 %402 to i64, !dbg !4087
  %477 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %476, !dbg !4087
  %478 = load i8, i8* %477, align 1, !dbg !4087
  %479 = zext i8 %478 to i32, !dbg !4087
  %480 = sub nsw i32 %479, 4, !dbg !4087
  %481 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !4087
  %482 = load i32, i32* %481, align 8, !dbg !4087
  %483 = sub nsw i32 %482, %480, !dbg !4087
  store i32 %483, i32* %481, align 8, !dbg !4087
  br label %484, !dbg !4088

484:                                              ; preds = %451, %423
  %.17 = phi i32 [ %475, %451 ], [ %415, %423 ], !dbg !4048
  call void @llvm.dbg.value(metadata i32 %.17, metadata !3914, metadata !DIExpression()), !dbg !3795
  %485 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 52, !dbg !4089
  %486 = load i32, i32* %485, align 8, !dbg !4089
  %487 = icmp ugt i32 %486, 0, !dbg !4091
  br i1 %487, label %488, label %495, !dbg !4092

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 52, !dbg !4093
  %490 = load i32, i32* %489, align 8, !dbg !4095
  %491 = add i32 %490, -1, !dbg !4095
  store i32 %491, i32* %489, align 8, !dbg !4095
  %492 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 51, !dbg !4096
  %493 = load i32, i32* %492, align 4, !dbg !4096
  %494 = add i32 %.17, %493, !dbg !4097
  call void @llvm.dbg.value(metadata i32 %494, metadata !3914, metadata !DIExpression()), !dbg !3795
  br label %511, !dbg !4098

495:                                              ; preds = %484
  %496 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 43, !dbg !4099
  %497 = call i32 @read_next_symbol(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %496), !dbg !4102
  call void @llvm.dbg.value(metadata i32 %497, metadata !4103, metadata !DIExpression()), !dbg !3795
  %498 = icmp slt i32 %497, 0, !dbg !4104
  br i1 %498, label %499, label %500, !dbg !4105

499:                                              ; preds = %495
  br label %600, !dbg !4106

500:                                              ; preds = %495
  %501 = icmp eq i32 %497, 16, !dbg !4107
  br i1 %501, label %502, label %507, !dbg !4109

502:                                              ; preds = %500
  %503 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 52, !dbg !4110
  store i32 15, i32* %503, align 8, !dbg !4112
  %504 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 51, !dbg !4113
  %505 = load i32, i32* %504, align 4, !dbg !4113
  %506 = add i32 %.17, %505, !dbg !4114
  call void @llvm.dbg.value(metadata i32 %506, metadata !3914, metadata !DIExpression()), !dbg !3795
  br label %510, !dbg !4115

507:                                              ; preds = %500
  %508 = add nsw i32 %.17, %497, !dbg !4116
  call void @llvm.dbg.value(metadata i32 %508, metadata !3914, metadata !DIExpression()), !dbg !3795
  %509 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 51, !dbg !4118
  store i32 %497, i32* %509, align 4, !dbg !4119
  br label %510

510:                                              ; preds = %507, %502
  %.28 = phi i32 [ %506, %502 ], [ %508, %507 ], !dbg !4120
  call void @llvm.dbg.value(metadata i32 %.28, metadata !3914, metadata !DIExpression()), !dbg !3795
  br label %511

511:                                              ; preds = %510, %488
  %.39 = phi i32 [ %494, %488 ], [ %.28, %510 ], !dbg !4121
  call void @llvm.dbg.value(metadata i32 %.39, metadata !3914, metadata !DIExpression()), !dbg !3795
  br label %560, !dbg !4122

512:                                              ; preds = %421
  %513 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !4123
  %514 = load i32, i32* %513, align 8, !dbg !4123
  %515 = sext i32 %402 to i64, !dbg !4123
  %516 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %515, !dbg !4123
  %517 = load i8, i8* %516, align 1, !dbg !4123
  %518 = zext i8 %517 to i32, !dbg !4123
  %519 = icmp sge i32 %514, %518, !dbg !4123
  br i1 %519, label %532, label %520, !dbg !4123

520:                                              ; preds = %512
  %521 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %8), !dbg !4123
  %522 = icmp ne i32 %521, 0, !dbg !4123
  br i1 %522, label %532, label %523, !dbg !4123

523:                                              ; preds = %520
  %524 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !4123
  %525 = load i32, i32* %524, align 8, !dbg !4123
  %526 = sext i32 %402 to i64, !dbg !4123
  %527 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %526, !dbg !4123
  %528 = load i8, i8* %527, align 1, !dbg !4123
  %529 = zext i8 %528 to i32, !dbg !4123
  %530 = icmp sge i32 %525, %529, !dbg !4123
  br i1 %530, label %532, label %531, !dbg !4126

531:                                              ; preds = %523
  br label %595, !dbg !4127

532:                                              ; preds = %523, %520, %512
  %533 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 0, !dbg !4128
  %534 = load i64, i64* %533, align 8, !dbg !4128
  %535 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !4128
  %536 = load i32, i32* %535, align 8, !dbg !4128
  %537 = sext i32 %402 to i64, !dbg !4128
  %538 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %537, !dbg !4128
  %539 = load i8, i8* %538, align 1, !dbg !4128
  %540 = zext i8 %539 to i32, !dbg !4128
  %541 = sub nsw i32 %536, %540, !dbg !4128
  %542 = zext i32 %541 to i64, !dbg !4128
  %543 = lshr i64 %534, %542, !dbg !4128
  %544 = trunc i64 %543 to i32, !dbg !4128
  %545 = sext i32 %402 to i64, !dbg !4128
  %546 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %545, !dbg !4128
  %547 = load i8, i8* %546, align 1, !dbg !4128
  %548 = zext i8 %547 to i64, !dbg !4128
  %549 = getelementptr inbounds [36 x i32], [36 x i32]* @cache_masks, i64 0, i64 %548, !dbg !4128
  %550 = load i32, i32* %549, align 4, !dbg !4128
  %551 = and i32 %544, %550, !dbg !4128
  %552 = add i32 %415, %551, !dbg !4129
  call void @llvm.dbg.value(metadata i32 %552, metadata !3914, metadata !DIExpression()), !dbg !3795
  %553 = sext i32 %402 to i64, !dbg !4130
  %554 = getelementptr inbounds [60 x i8], [60 x i8]* @expand.offsetbits, i64 0, i64 %553, !dbg !4130
  %555 = load i8, i8* %554, align 1, !dbg !4130
  %556 = zext i8 %555 to i32, !dbg !4130
  %557 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %8, i32 0, i32 1, !dbg !4130
  %558 = load i32, i32* %557, align 8, !dbg !4130
  %559 = sub nsw i32 %558, %556, !dbg !4130
  store i32 %559, i32* %557, align 8, !dbg !4130
  br label %560

560:                                              ; preds = %532, %511
  %.410 = phi i32 [ %.39, %511 ], [ %552, %532 ], !dbg !4131
  call void @llvm.dbg.value(metadata i32 %.410, metadata !3914, metadata !DIExpression()), !dbg !3795
  br label %561, !dbg !4132

561:                                              ; preds = %560, %411
  %.511 = phi i32 [ %.410, %560 ], [ %415, %411 ], !dbg !4048
  call void @llvm.dbg.value(metadata i32 %.511, metadata !3914, metadata !DIExpression()), !dbg !3795
  %562 = icmp sge i32 %.511, 262144, !dbg !4133
  br i1 %562, label %563, label %565, !dbg !4135

563:                                              ; preds = %561
  %564 = add nsw i32 %.14, 1, !dbg !4136
  call void @llvm.dbg.value(metadata i32 %564, metadata !3916, metadata !DIExpression()), !dbg !3795
  br label %565, !dbg !4137

565:                                              ; preds = %563, %561
  %.25 = phi i32 [ %564, %563 ], [ %.14, %561 ], !dbg !4048
  call void @llvm.dbg.value(metadata i32 %.25, metadata !3916, metadata !DIExpression()), !dbg !3795
  %566 = icmp sge i32 %.511, 8192, !dbg !4138
  br i1 %566, label %567, label %569, !dbg !4140

567:                                              ; preds = %565
  %568 = add nsw i32 %.25, 1, !dbg !4141
  call void @llvm.dbg.value(metadata i32 %568, metadata !3916, metadata !DIExpression()), !dbg !3795
  br label %569, !dbg !4142

569:                                              ; preds = %567, %565
  %.3 = phi i32 [ %568, %567 ], [ %.25, %565 ], !dbg !4048
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3916, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 3, metadata !3957, metadata !DIExpression()), !dbg !3795
  br label %570, !dbg !4143

570:                                              ; preds = %581, %569
  %.2 = phi i32 [ 3, %569 ], [ %582, %581 ], !dbg !4145
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3957, metadata !DIExpression()), !dbg !3795
  %571 = icmp sgt i32 %.2, 0, !dbg !4146
  br i1 %571, label %572, label %583, !dbg !4148

572:                                              ; preds = %570
  %573 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 50, !dbg !4149
  %574 = sub nsw i32 %.2, 1, !dbg !4150
  %575 = sext i32 %574 to i64, !dbg !4151
  %576 = getelementptr inbounds [4 x i32], [4 x i32]* %573, i64 0, i64 %575, !dbg !4151
  %577 = load i32, i32* %576, align 4, !dbg !4151
  %578 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 50, !dbg !4152
  %579 = sext i32 %.2 to i64, !dbg !4153
  %580 = getelementptr inbounds [4 x i32], [4 x i32]* %578, i64 0, i64 %579, !dbg !4153
  store i32 %577, i32* %580, align 4, !dbg !4154
  br label %581, !dbg !4153

581:                                              ; preds = %572
  %582 = add nsw i32 %.2, -1, !dbg !4155
  call void @llvm.dbg.value(metadata i32 %582, metadata !3957, metadata !DIExpression()), !dbg !3795
  br label %570, !dbg !4156, !llvm.loop !4157

583:                                              ; preds = %570
  %584 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 50, !dbg !4159
  %585 = getelementptr inbounds [4 x i32], [4 x i32]* %584, i64 0, i64 0, !dbg !4160
  store i32 %.511, i32* %585, align 4, !dbg !4161
  br label %586

586:                                              ; preds = %583, %323
  %.612 = phi i32 [ %.06, %323 ], [ %.511, %583 ], !dbg !4162
  %.4 = phi i32 [ 2, %323 ], [ %.3, %583 ], !dbg !4162
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3916, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %.612, metadata !3914, metadata !DIExpression()), !dbg !3795
  br label %587

587:                                              ; preds = %586, %238
  %.7 = phi i32 [ %154, %238 ], [ %.612, %586 ], !dbg !4163
  %.5 = phi i32 [ %.03, %238 ], [ %.4, %586 ], !dbg !4163
  call void @llvm.dbg.value(metadata i32 %.5, metadata !3916, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %.7, metadata !3914, metadata !DIExpression()), !dbg !3795
  br label %588

588:                                              ; preds = %587, %142
  %.8 = phi i32 [ %144, %142 ], [ %.7, %587 ], !dbg !4164
  %.6 = phi i32 [ %146, %142 ], [ %.5, %587 ], !dbg !4164
  call void @llvm.dbg.value(metadata i32 %.6, metadata !3916, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %.8, metadata !3914, metadata !DIExpression()), !dbg !3795
  br label %589

589:                                              ; preds = %588
  br label %590

590:                                              ; preds = %589
  br label %591

591:                                              ; preds = %590
  %592 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 49, !dbg !4165
  store i32 %.8, i32* %592, align 8, !dbg !4166
  %593 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 48, !dbg !4167
  store i32 %.6, i32* %593, align 4, !dbg !4168
  %594 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 47, !dbg !4169
  store i8 1, i8* %594, align 8, !dbg !4170
  br label %16, !dbg !3809, !llvm.loop !3859

595:                                              ; preds = %531, %450, %368, %277, %195, %107, %75
  call void @llvm.dbg.label(metadata !4171), !dbg !4172
  %596 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4173
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %596, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0)), !dbg !4174
  %597 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 28, !dbg !4175
  store i8 0, i8* %597, align 8, !dbg !4176
  br label %600, !dbg !4177

598:                                              ; preds = %410, %407, %404, %333, %329, %164, %161, %158
  call void @llvm.dbg.label(metadata !4178), !dbg !4179
  %599 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4180
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %599, i32 noundef 84, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0)), !dbg !4181
  br label %600, !dbg !4182

600:                                              ; preds = %598, %595, %499, %133, %129, %108, %56, %49
  %.0 = phi i64 [ %51, %49 ], [ -30, %56 ], [ %125, %108 ], [ -30, %595 ], [ -30, %129 ], [ -25, %133 ], [ -30, %598 ], [ -30, %499 ], !dbg !3795
  ret i64 %.0, !dbg !4183
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @lzss_offset_for_position(%struct.lzss* noundef %0, i64 noundef %1) #0 !dbg !4184 {
  call void @llvm.dbg.value(metadata %struct.lzss* %0, metadata !4188, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i64 %1, metadata !4190, metadata !DIExpression()), !dbg !4189
  %3 = getelementptr inbounds %struct.lzss, %struct.lzss* %0, i32 0, i32 1, !dbg !4191
  %4 = load i32, i32* %3, align 8, !dbg !4191
  %5 = sext i32 %4 to i64, !dbg !4192
  %6 = and i64 %1, %5, !dbg !4193
  %7 = trunc i64 %6 to i32, !dbg !4194
  ret i32 %7, !dbg !4195
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @lzss_size(%struct.lzss* noundef %0) #0 !dbg !4196 {
  call void @llvm.dbg.value(metadata %struct.lzss* %0, metadata !4199, metadata !DIExpression()), !dbg !4200
  %2 = getelementptr inbounds %struct.lzss, %struct.lzss* %0, i32 0, i32 1, !dbg !4201
  %3 = load i32, i32* %2, align 8, !dbg !4201
  %4 = add nsw i32 %3, 1, !dbg !4202
  ret i32 %4, !dbg !4203
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %1) #0 !dbg !4204 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !4205, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata %struct.rar_br* %1, metadata !4207, metadata !DIExpression()), !dbg !4206
  %3 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !4208
  %4 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %3, align 8, !dbg !4208
  %5 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %4, i32 0, i32 0, !dbg !4209
  %6 = load i8*, i8** %5, align 8, !dbg !4209
  %7 = bitcast i8* %6 to %struct.rar*, !dbg !4210
  call void @llvm.dbg.value(metadata %struct.rar* %7, metadata !4211, metadata !DIExpression()), !dbg !4206
  %8 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 1, !dbg !4212
  %9 = load i32, i32* %8, align 8, !dbg !4212
  %10 = sext i32 %9 to i64, !dbg !4213
  %11 = sub i64 64, %10, !dbg !4214
  %12 = trunc i64 %11 to i32, !dbg !4215
  call void @llvm.dbg.value(metadata i32 %12, metadata !4216, metadata !DIExpression()), !dbg !4206
  br label %13, !dbg !4217

13:                                               ; preds = %271, %2
  %.01 = phi i32 [ %12, %2 ], [ %288, %271 ], !dbg !4206
  call void @llvm.dbg.value(metadata i32 %.01, metadata !4216, metadata !DIExpression()), !dbg !4206
  %14 = ashr i32 %.01, 3, !dbg !4218
  switch i32 %14, label %243 [
    i32 8, label %15
    i32 7, label %95
    i32 6, label %172
    i32 0, label %242
  ], !dbg !4222

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 2, !dbg !4223
  %17 = load i64, i64* %16, align 8, !dbg !4223
  %18 = icmp sge i64 %17, 8, !dbg !4226
  br i1 %18, label %19, label %94, !dbg !4227

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4228
  %21 = load i8*, i8** %20, align 8, !dbg !4228
  %22 = getelementptr inbounds i8, i8* %21, i64 0, !dbg !4230
  %23 = load i8, i8* %22, align 1, !dbg !4230
  %24 = zext i8 %23 to i64, !dbg !4231
  %25 = shl i64 %24, 56, !dbg !4232
  %26 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4233
  %27 = load i8*, i8** %26, align 8, !dbg !4233
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !4234
  %29 = load i8, i8* %28, align 1, !dbg !4234
  %30 = zext i8 %29 to i64, !dbg !4235
  %31 = shl i64 %30, 48, !dbg !4236
  %32 = or i64 %25, %31, !dbg !4237
  %33 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4238
  %34 = load i8*, i8** %33, align 8, !dbg !4238
  %35 = getelementptr inbounds i8, i8* %34, i64 2, !dbg !4239
  %36 = load i8, i8* %35, align 1, !dbg !4239
  %37 = zext i8 %36 to i64, !dbg !4240
  %38 = shl i64 %37, 40, !dbg !4241
  %39 = or i64 %32, %38, !dbg !4242
  %40 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4243
  %41 = load i8*, i8** %40, align 8, !dbg !4243
  %42 = getelementptr inbounds i8, i8* %41, i64 3, !dbg !4244
  %43 = load i8, i8* %42, align 1, !dbg !4244
  %44 = zext i8 %43 to i64, !dbg !4245
  %45 = shl i64 %44, 32, !dbg !4246
  %46 = or i64 %39, %45, !dbg !4247
  %47 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4248
  %48 = load i8*, i8** %47, align 8, !dbg !4248
  %49 = getelementptr inbounds i8, i8* %48, i64 4, !dbg !4249
  %50 = load i8, i8* %49, align 1, !dbg !4249
  %51 = zext i8 %50 to i32, !dbg !4250
  %52 = shl i32 %51, 24, !dbg !4251
  %53 = zext i32 %52 to i64, !dbg !4252
  %54 = or i64 %46, %53, !dbg !4253
  %55 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4254
  %56 = load i8*, i8** %55, align 8, !dbg !4254
  %57 = getelementptr inbounds i8, i8* %56, i64 5, !dbg !4255
  %58 = load i8, i8* %57, align 1, !dbg !4255
  %59 = zext i8 %58 to i32, !dbg !4256
  %60 = shl i32 %59, 16, !dbg !4257
  %61 = zext i32 %60 to i64, !dbg !4258
  %62 = or i64 %54, %61, !dbg !4259
  %63 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4260
  %64 = load i8*, i8** %63, align 8, !dbg !4260
  %65 = getelementptr inbounds i8, i8* %64, i64 6, !dbg !4261
  %66 = load i8, i8* %65, align 1, !dbg !4261
  %67 = zext i8 %66 to i32, !dbg !4262
  %68 = shl i32 %67, 8, !dbg !4263
  %69 = zext i32 %68 to i64, !dbg !4264
  %70 = or i64 %62, %69, !dbg !4265
  %71 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4266
  %72 = load i8*, i8** %71, align 8, !dbg !4266
  %73 = getelementptr inbounds i8, i8* %72, i64 7, !dbg !4267
  %74 = load i8, i8* %73, align 1, !dbg !4267
  %75 = zext i8 %74 to i32, !dbg !4268
  %76 = zext i32 %75 to i64, !dbg !4268
  %77 = or i64 %70, %76, !dbg !4269
  %78 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 0, !dbg !4270
  store i64 %77, i64* %78, align 8, !dbg !4271
  %79 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4272
  %80 = load i8*, i8** %79, align 8, !dbg !4273
  %81 = getelementptr inbounds i8, i8* %80, i64 8, !dbg !4273
  store i8* %81, i8** %79, align 8, !dbg !4273
  %82 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 2, !dbg !4274
  %83 = load i64, i64* %82, align 8, !dbg !4275
  %84 = sub nsw i64 %83, 8, !dbg !4275
  store i64 %84, i64* %82, align 8, !dbg !4275
  %85 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 1, !dbg !4276
  %86 = load i32, i32* %85, align 8, !dbg !4277
  %87 = add nsw i32 %86, 64, !dbg !4277
  store i32 %87, i32* %85, align 8, !dbg !4277
  %88 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 22, !dbg !4278
  %89 = load i64, i64* %88, align 8, !dbg !4279
  %90 = add nsw i64 %89, 8, !dbg !4279
  store i64 %90, i64* %88, align 8, !dbg !4279
  %91 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 23, !dbg !4280
  %92 = load i64, i64* %91, align 8, !dbg !4281
  %93 = sub nsw i64 %92, 8, !dbg !4281
  store i64 %93, i64* %91, align 8, !dbg !4281
  br label %295, !dbg !4282

94:                                               ; preds = %15
  br label %244, !dbg !4283

95:                                               ; preds = %13
  %96 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 2, !dbg !4284
  %97 = load i64, i64* %96, align 8, !dbg !4284
  %98 = icmp sge i64 %97, 7, !dbg !4286
  br i1 %98, label %99, label %171, !dbg !4287

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 0, !dbg !4288
  %101 = load i64, i64* %100, align 8, !dbg !4288
  %102 = shl i64 %101, 56, !dbg !4290
  %103 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4291
  %104 = load i8*, i8** %103, align 8, !dbg !4291
  %105 = getelementptr inbounds i8, i8* %104, i64 0, !dbg !4292
  %106 = load i8, i8* %105, align 1, !dbg !4292
  %107 = zext i8 %106 to i64, !dbg !4293
  %108 = shl i64 %107, 48, !dbg !4294
  %109 = or i64 %102, %108, !dbg !4295
  %110 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4296
  %111 = load i8*, i8** %110, align 8, !dbg !4296
  %112 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !4297
  %113 = load i8, i8* %112, align 1, !dbg !4297
  %114 = zext i8 %113 to i64, !dbg !4298
  %115 = shl i64 %114, 40, !dbg !4299
  %116 = or i64 %109, %115, !dbg !4300
  %117 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4301
  %118 = load i8*, i8** %117, align 8, !dbg !4301
  %119 = getelementptr inbounds i8, i8* %118, i64 2, !dbg !4302
  %120 = load i8, i8* %119, align 1, !dbg !4302
  %121 = zext i8 %120 to i64, !dbg !4303
  %122 = shl i64 %121, 32, !dbg !4304
  %123 = or i64 %116, %122, !dbg !4305
  %124 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4306
  %125 = load i8*, i8** %124, align 8, !dbg !4306
  %126 = getelementptr inbounds i8, i8* %125, i64 3, !dbg !4307
  %127 = load i8, i8* %126, align 1, !dbg !4307
  %128 = zext i8 %127 to i32, !dbg !4308
  %129 = shl i32 %128, 24, !dbg !4309
  %130 = zext i32 %129 to i64, !dbg !4310
  %131 = or i64 %123, %130, !dbg !4311
  %132 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4312
  %133 = load i8*, i8** %132, align 8, !dbg !4312
  %134 = getelementptr inbounds i8, i8* %133, i64 4, !dbg !4313
  %135 = load i8, i8* %134, align 1, !dbg !4313
  %136 = zext i8 %135 to i32, !dbg !4314
  %137 = shl i32 %136, 16, !dbg !4315
  %138 = zext i32 %137 to i64, !dbg !4316
  %139 = or i64 %131, %138, !dbg !4317
  %140 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4318
  %141 = load i8*, i8** %140, align 8, !dbg !4318
  %142 = getelementptr inbounds i8, i8* %141, i64 5, !dbg !4319
  %143 = load i8, i8* %142, align 1, !dbg !4319
  %144 = zext i8 %143 to i32, !dbg !4320
  %145 = shl i32 %144, 8, !dbg !4321
  %146 = zext i32 %145 to i64, !dbg !4322
  %147 = or i64 %139, %146, !dbg !4323
  %148 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4324
  %149 = load i8*, i8** %148, align 8, !dbg !4324
  %150 = getelementptr inbounds i8, i8* %149, i64 6, !dbg !4325
  %151 = load i8, i8* %150, align 1, !dbg !4325
  %152 = zext i8 %151 to i32, !dbg !4326
  %153 = zext i32 %152 to i64, !dbg !4326
  %154 = or i64 %147, %153, !dbg !4327
  %155 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 0, !dbg !4328
  store i64 %154, i64* %155, align 8, !dbg !4329
  %156 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4330
  %157 = load i8*, i8** %156, align 8, !dbg !4331
  %158 = getelementptr inbounds i8, i8* %157, i64 7, !dbg !4331
  store i8* %158, i8** %156, align 8, !dbg !4331
  %159 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 2, !dbg !4332
  %160 = load i64, i64* %159, align 8, !dbg !4333
  %161 = sub nsw i64 %160, 7, !dbg !4333
  store i64 %161, i64* %159, align 8, !dbg !4333
  %162 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 1, !dbg !4334
  %163 = load i32, i32* %162, align 8, !dbg !4335
  %164 = add nsw i32 %163, 56, !dbg !4335
  store i32 %164, i32* %162, align 8, !dbg !4335
  %165 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 22, !dbg !4336
  %166 = load i64, i64* %165, align 8, !dbg !4337
  %167 = add nsw i64 %166, 7, !dbg !4337
  store i64 %167, i64* %165, align 8, !dbg !4337
  %168 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 23, !dbg !4338
  %169 = load i64, i64* %168, align 8, !dbg !4339
  %170 = sub nsw i64 %169, 7, !dbg !4339
  store i64 %170, i64* %168, align 8, !dbg !4339
  br label %295, !dbg !4340

171:                                              ; preds = %95
  br label %244, !dbg !4341

172:                                              ; preds = %13
  %173 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 2, !dbg !4342
  %174 = load i64, i64* %173, align 8, !dbg !4342
  %175 = icmp sge i64 %174, 6, !dbg !4344
  br i1 %175, label %176, label %241, !dbg !4345

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 0, !dbg !4346
  %178 = load i64, i64* %177, align 8, !dbg !4346
  %179 = shl i64 %178, 48, !dbg !4348
  %180 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4349
  %181 = load i8*, i8** %180, align 8, !dbg !4349
  %182 = getelementptr inbounds i8, i8* %181, i64 0, !dbg !4350
  %183 = load i8, i8* %182, align 1, !dbg !4350
  %184 = zext i8 %183 to i64, !dbg !4351
  %185 = shl i64 %184, 40, !dbg !4352
  %186 = or i64 %179, %185, !dbg !4353
  %187 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4354
  %188 = load i8*, i8** %187, align 8, !dbg !4354
  %189 = getelementptr inbounds i8, i8* %188, i64 1, !dbg !4355
  %190 = load i8, i8* %189, align 1, !dbg !4355
  %191 = zext i8 %190 to i64, !dbg !4356
  %192 = shl i64 %191, 32, !dbg !4357
  %193 = or i64 %186, %192, !dbg !4358
  %194 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4359
  %195 = load i8*, i8** %194, align 8, !dbg !4359
  %196 = getelementptr inbounds i8, i8* %195, i64 2, !dbg !4360
  %197 = load i8, i8* %196, align 1, !dbg !4360
  %198 = zext i8 %197 to i32, !dbg !4361
  %199 = shl i32 %198, 24, !dbg !4362
  %200 = zext i32 %199 to i64, !dbg !4363
  %201 = or i64 %193, %200, !dbg !4364
  %202 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4365
  %203 = load i8*, i8** %202, align 8, !dbg !4365
  %204 = getelementptr inbounds i8, i8* %203, i64 3, !dbg !4366
  %205 = load i8, i8* %204, align 1, !dbg !4366
  %206 = zext i8 %205 to i32, !dbg !4367
  %207 = shl i32 %206, 16, !dbg !4368
  %208 = zext i32 %207 to i64, !dbg !4369
  %209 = or i64 %201, %208, !dbg !4370
  %210 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4371
  %211 = load i8*, i8** %210, align 8, !dbg !4371
  %212 = getelementptr inbounds i8, i8* %211, i64 4, !dbg !4372
  %213 = load i8, i8* %212, align 1, !dbg !4372
  %214 = zext i8 %213 to i32, !dbg !4373
  %215 = shl i32 %214, 8, !dbg !4374
  %216 = zext i32 %215 to i64, !dbg !4375
  %217 = or i64 %209, %216, !dbg !4376
  %218 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4377
  %219 = load i8*, i8** %218, align 8, !dbg !4377
  %220 = getelementptr inbounds i8, i8* %219, i64 5, !dbg !4378
  %221 = load i8, i8* %220, align 1, !dbg !4378
  %222 = zext i8 %221 to i32, !dbg !4379
  %223 = zext i32 %222 to i64, !dbg !4379
  %224 = or i64 %217, %223, !dbg !4380
  %225 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 0, !dbg !4381
  store i64 %224, i64* %225, align 8, !dbg !4382
  %226 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4383
  %227 = load i8*, i8** %226, align 8, !dbg !4384
  %228 = getelementptr inbounds i8, i8* %227, i64 6, !dbg !4384
  store i8* %228, i8** %226, align 8, !dbg !4384
  %229 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 2, !dbg !4385
  %230 = load i64, i64* %229, align 8, !dbg !4386
  %231 = sub nsw i64 %230, 6, !dbg !4386
  store i64 %231, i64* %229, align 8, !dbg !4386
  %232 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 1, !dbg !4387
  %233 = load i32, i32* %232, align 8, !dbg !4388
  %234 = add nsw i32 %233, 48, !dbg !4388
  store i32 %234, i32* %232, align 8, !dbg !4388
  %235 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 22, !dbg !4389
  %236 = load i64, i64* %235, align 8, !dbg !4390
  %237 = add nsw i64 %236, 6, !dbg !4390
  store i64 %237, i64* %235, align 8, !dbg !4390
  %238 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 23, !dbg !4391
  %239 = load i64, i64* %238, align 8, !dbg !4392
  %240 = sub nsw i64 %239, 6, !dbg !4392
  store i64 %240, i64* %238, align 8, !dbg !4392
  br label %295, !dbg !4393

241:                                              ; preds = %172
  br label %244, !dbg !4394

242:                                              ; preds = %13
  br label %295, !dbg !4395

243:                                              ; preds = %13
  br label %244, !dbg !4396

244:                                              ; preds = %243, %241, %171, %94
  %245 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 2, !dbg !4397
  %246 = load i64, i64* %245, align 8, !dbg !4397
  %247 = icmp sle i64 %246, 0, !dbg !4399
  br i1 %247, label %248, label %271, !dbg !4400

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 22, !dbg !4401
  %250 = load i64, i64* %249, align 8, !dbg !4401
  %251 = icmp sgt i64 %250, 0, !dbg !4404
  br i1 %251, label %252, label %257, !dbg !4405

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 22, !dbg !4406
  %254 = load i64, i64* %253, align 8, !dbg !4406
  %255 = call i64 @__archive_read_consume(%struct.archive_read* noundef %0, i64 noundef %254), !dbg !4408
  %256 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 22, !dbg !4409
  store i64 0, i64* %256, align 8, !dbg !4410
  br label %257, !dbg !4411

257:                                              ; preds = %252, %248
  %258 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 2, !dbg !4412
  %259 = call i8* @rar_read_ahead(%struct.archive_read* noundef %0, i64 noundef 1, i64* noundef %258), !dbg !4413
  %260 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4414
  store i8* %259, i8** %260, align 8, !dbg !4415
  %261 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4416
  %262 = load i8*, i8** %261, align 8, !dbg !4416
  %263 = icmp eq i8* %262, null, !dbg !4418
  br i1 %263, label %264, label %265, !dbg !4419

264:                                              ; preds = %257
  br label %295, !dbg !4420

265:                                              ; preds = %257
  %266 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 2, !dbg !4421
  %267 = load i64, i64* %266, align 8, !dbg !4421
  %268 = icmp eq i64 %267, 0, !dbg !4423
  br i1 %268, label %269, label %270, !dbg !4424

269:                                              ; preds = %265
  br label %295, !dbg !4425

270:                                              ; preds = %265
  br label %271, !dbg !4426

271:                                              ; preds = %270, %244
  %272 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 0, !dbg !4427
  %273 = load i64, i64* %272, align 8, !dbg !4427
  %274 = shl i64 %273, 8, !dbg !4428
  %275 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 3, !dbg !4429
  %276 = load i8*, i8** %275, align 8, !dbg !4430
  %277 = getelementptr inbounds i8, i8* %276, i32 1, !dbg !4430
  store i8* %277, i8** %275, align 8, !dbg !4430
  %278 = load i8, i8* %276, align 1, !dbg !4431
  %279 = zext i8 %278 to i64, !dbg !4431
  %280 = or i64 %274, %279, !dbg !4432
  %281 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 0, !dbg !4433
  store i64 %280, i64* %281, align 8, !dbg !4434
  %282 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 2, !dbg !4435
  %283 = load i64, i64* %282, align 8, !dbg !4436
  %284 = add nsw i64 %283, -1, !dbg !4436
  store i64 %284, i64* %282, align 8, !dbg !4436
  %285 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %1, i32 0, i32 1, !dbg !4437
  %286 = load i32, i32* %285, align 8, !dbg !4438
  %287 = add nsw i32 %286, 8, !dbg !4438
  store i32 %287, i32* %285, align 8, !dbg !4438
  %288 = sub nsw i32 %.01, 8, !dbg !4439
  call void @llvm.dbg.value(metadata i32 %288, metadata !4216, metadata !DIExpression()), !dbg !4206
  %289 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 22, !dbg !4440
  %290 = load i64, i64* %289, align 8, !dbg !4441
  %291 = add nsw i64 %290, 1, !dbg !4441
  store i64 %291, i64* %289, align 8, !dbg !4441
  %292 = getelementptr inbounds %struct.rar, %struct.rar* %7, i32 0, i32 23, !dbg !4442
  %293 = load i64, i64* %292, align 8, !dbg !4443
  %294 = add nsw i64 %293, -1, !dbg !4443
  store i64 %294, i64* %292, align 8, !dbg !4443
  br label %13, !dbg !4444, !llvm.loop !4445

295:                                              ; preds = %269, %264, %242, %176, %99, %19
  %.0 = phi i32 [ 0, %264 ], [ 0, %269 ], [ 1, %242 ], [ 1, %176 ], [ 1, %99 ], [ 1, %19 ], !dbg !4448
  ret i32 %.0, !dbg !4449
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_codes(%struct.archive_read* noundef %0) #0 !dbg !4450 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !4453, metadata !DIExpression()), !dbg !4454
  %2 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !4455
  %3 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %2, align 8, !dbg !4455
  %4 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %3, i32 0, i32 0, !dbg !4456
  %5 = load i8*, i8** %4, align 8, !dbg !4456
  %6 = bitcast i8* %5 to %struct.rar*, !dbg !4457
  call void @llvm.dbg.value(metadata %struct.rar* %6, metadata !4458, metadata !DIExpression()), !dbg !4454
  %7 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 41, !dbg !4459
  %8 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %7, i32 0, i32 0, !dbg !4460
  %9 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %8, align 8, !dbg !4460
  %10 = bitcast %struct.huffman_tree_node* %9 to i8*, !dbg !4461
  call void @free(i8* noundef %10) #8, !dbg !4462
  %11 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 42, !dbg !4463
  %12 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %11, i32 0, i32 0, !dbg !4464
  %13 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %12, align 8, !dbg !4464
  %14 = bitcast %struct.huffman_tree_node* %13 to i8*, !dbg !4465
  call void @free(i8* noundef %14) #8, !dbg !4466
  %15 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 43, !dbg !4467
  %16 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %15, i32 0, i32 0, !dbg !4468
  %17 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %16, align 8, !dbg !4468
  %18 = bitcast %struct.huffman_tree_node* %17 to i8*, !dbg !4469
  call void @free(i8* noundef %18) #8, !dbg !4470
  %19 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 44, !dbg !4471
  %20 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %19, i32 0, i32 0, !dbg !4472
  %21 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %20, align 8, !dbg !4472
  %22 = bitcast %struct.huffman_tree_node* %21 to i8*, !dbg !4473
  call void @free(i8* noundef %22) #8, !dbg !4474
  %23 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 41, !dbg !4475
  %24 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %23, i32 0, i32 5, !dbg !4476
  %25 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %24, align 8, !dbg !4476
  %26 = bitcast %struct.huffman_table_entry* %25 to i8*, !dbg !4477
  call void @free(i8* noundef %26) #8, !dbg !4478
  %27 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 42, !dbg !4479
  %28 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %27, i32 0, i32 5, !dbg !4480
  %29 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %28, align 8, !dbg !4480
  %30 = bitcast %struct.huffman_table_entry* %29 to i8*, !dbg !4481
  call void @free(i8* noundef %30) #8, !dbg !4482
  %31 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 43, !dbg !4483
  %32 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %31, i32 0, i32 5, !dbg !4484
  %33 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %32, align 8, !dbg !4484
  %34 = bitcast %struct.huffman_table_entry* %33 to i8*, !dbg !4485
  call void @free(i8* noundef %34) #8, !dbg !4486
  %35 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 44, !dbg !4487
  %36 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %35, i32 0, i32 5, !dbg !4488
  %37 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %36, align 8, !dbg !4488
  %38 = bitcast %struct.huffman_table_entry* %37 to i8*, !dbg !4489
  call void @free(i8* noundef %38) #8, !dbg !4490
  %39 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 41, !dbg !4491
  %40 = bitcast %struct.huffman_code* %39 to i8*, !dbg !4492
  call void @llvm.memset.p0i8.i64(i8* align 8 %40, i8 0, i64 32, i1 false), !dbg !4492
  %41 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 42, !dbg !4493
  %42 = bitcast %struct.huffman_code* %41 to i8*, !dbg !4494
  call void @llvm.memset.p0i8.i64(i8* align 8 %42, i8 0, i64 32, i1 false), !dbg !4494
  %43 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 43, !dbg !4495
  %44 = bitcast %struct.huffman_code* %43 to i8*, !dbg !4496
  call void @llvm.memset.p0i8.i64(i8* align 8 %44, i8 0, i64 32, i1 false), !dbg !4496
  %45 = getelementptr inbounds %struct.rar, %struct.rar* %6, i32 0, i32 44, !dbg !4497
  %46 = bitcast %struct.huffman_code* %45 to i8*, !dbg !4498
  call void @llvm.memset.p0i8.i64(i8* align 8 %46, i8 0, i64 32, i1 false), !dbg !4498
  ret void, !dbg !4499
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @ppmd_read(i8* noundef %0) #0 !dbg !4500 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4501, metadata !DIExpression()), !dbg !4502
  %2 = bitcast i8* %0 to %struct.IByteIn*, !dbg !4503
  %3 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %2, i32 0, i32 0, !dbg !4504
  %4 = load %struct.archive_read*, %struct.archive_read** %3, align 8, !dbg !4504
  call void @llvm.dbg.value(metadata %struct.archive_read* %4, metadata !4505, metadata !DIExpression()), !dbg !4502
  %5 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %4, i32 0, i32 19, !dbg !4506
  %6 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %5, align 8, !dbg !4506
  %7 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %6, i32 0, i32 0, !dbg !4507
  %8 = load i8*, i8** %7, align 8, !dbg !4507
  %9 = bitcast i8* %8 to %struct.rar*, !dbg !4508
  call void @llvm.dbg.value(metadata %struct.rar* %9, metadata !4509, metadata !DIExpression()), !dbg !4502
  %10 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 67, !dbg !4510
  call void @llvm.dbg.value(metadata %struct.rar_br* %10, metadata !4511, metadata !DIExpression()), !dbg !4502
  %11 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %10, i32 0, i32 1, !dbg !4512
  %12 = load i32, i32* %11, align 8, !dbg !4512
  %13 = icmp sge i32 %12, 8, !dbg !4512
  br i1 %13, label %24, label %14, !dbg !4512

14:                                               ; preds = %1
  %15 = call i32 @rar_br_fillup(%struct.archive_read* noundef %4, %struct.rar_br* noundef %10), !dbg !4512
  %16 = icmp ne i32 %15, 0, !dbg !4512
  br i1 %16, label %24, label %17, !dbg !4512

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %10, i32 0, i32 1, !dbg !4512
  %19 = load i32, i32* %18, align 8, !dbg !4512
  %20 = icmp sge i32 %19, 8, !dbg !4512
  br i1 %20, label %24, label %21, !dbg !4514

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %4, i32 0, i32 0, !dbg !4515
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %22, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0)), !dbg !4517
  %23 = getelementptr inbounds %struct.rar, %struct.rar* %9, i32 0, i32 28, !dbg !4518
  store i8 0, i8* %23, align 8, !dbg !4519
  br label %39, !dbg !4520

24:                                               ; preds = %17, %14, %1
  %25 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %10, i32 0, i32 0, !dbg !4521
  %26 = load i64, i64* %25, align 8, !dbg !4521
  %27 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %10, i32 0, i32 1, !dbg !4521
  %28 = load i32, i32* %27, align 8, !dbg !4521
  %29 = sub nsw i32 %28, 8, !dbg !4521
  %30 = zext i32 %29 to i64, !dbg !4521
  %31 = lshr i64 %26, %30, !dbg !4521
  %32 = trunc i64 %31 to i32, !dbg !4521
  %33 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @cache_masks, i64 0, i64 8), align 16, !dbg !4521
  %34 = and i32 %32, %33, !dbg !4521
  %35 = trunc i32 %34 to i8, !dbg !4521
  call void @llvm.dbg.value(metadata i8 %35, metadata !4522, metadata !DIExpression()), !dbg !4502
  %36 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %10, i32 0, i32 1, !dbg !4523
  %37 = load i32, i32* %36, align 8, !dbg !4523
  %38 = sub nsw i32 %37, 8, !dbg !4523
  store i32 %38, i32* %36, align 8, !dbg !4523
  br label %39, !dbg !4524

39:                                               ; preds = %24, %21
  %.0 = phi i8 [ %35, %24 ], [ 0, %21 ], !dbg !4502
  ret i8 %.0, !dbg !4525
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @create_code(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %1, i8* noundef %2, i32 noundef %3, i8 noundef signext %4) #0 !dbg !4526 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !4530, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata %struct.huffman_code* %1, metadata !4532, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i8* %2, metadata !4533, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i32 %3, metadata !4534, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i8 %4, metadata !4535, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i32 0, metadata !4536, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i32 %3, metadata !4537, metadata !DIExpression()), !dbg !4531
  %6 = call i32 @new_node(%struct.huffman_code* noundef %1), !dbg !4538
  %7 = icmp slt i32 %6, 0, !dbg !4540
  br i1 %7, label %8, label %10, !dbg !4541

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4542
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %9, i32 noundef 12, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.40, i64 0, i64 0)), !dbg !4544
  br label %44, !dbg !4545

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 1, !dbg !4546
  store i32 1, i32* %11, align 8, !dbg !4547
  %12 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 2, !dbg !4548
  store i32 2147483647, i32* %12, align 4, !dbg !4549
  %13 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 3, !dbg !4550
  store i32 -2147483648, i32* %13, align 8, !dbg !4551
  call void @llvm.dbg.value(metadata i32 0, metadata !4536, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i32 1, metadata !4552, metadata !DIExpression()), !dbg !4531
  br label %14, !dbg !4553

14:                                               ; preds = %41, %10
  %.07 = phi i32 [ 1, %10 ], [ %42, %41 ], !dbg !4555
  %.02 = phi i32 [ 0, %10 ], [ %40, %41 ], !dbg !4531
  %.01 = phi i32 [ %3, %10 ], [ %.3, %41 ], !dbg !4531
  call void @llvm.dbg.value(metadata i32 %.01, metadata !4537, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i32 %.02, metadata !4536, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i32 %.07, metadata !4552, metadata !DIExpression()), !dbg !4531
  %15 = sext i8 %4 to i32, !dbg !4556
  %16 = icmp sle i32 %.07, %15, !dbg !4558
  br i1 %16, label %17, label %43, !dbg !4559

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !4560, metadata !DIExpression()), !dbg !4531
  br label %18, !dbg !4561

18:                                               ; preds = %37, %17
  %.06 = phi i32 [ 0, %17 ], [ %38, %37 ], !dbg !4564
  %.13 = phi i32 [ %.02, %17 ], [ %.24, %37 ], !dbg !4565
  %.1 = phi i32 [ %.01, %17 ], [ %.2, %37 ], !dbg !4566
  call void @llvm.dbg.value(metadata i32 %.1, metadata !4537, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i32 %.13, metadata !4536, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i32 %.06, metadata !4560, metadata !DIExpression()), !dbg !4531
  %19 = icmp slt i32 %.06, %3, !dbg !4567
  br i1 %19, label %20, label %39, !dbg !4569

20:                                               ; preds = %18
  %21 = sext i32 %.06 to i64, !dbg !4570
  %22 = getelementptr inbounds i8, i8* %2, i64 %21, !dbg !4570
  %23 = load i8, i8* %22, align 1, !dbg !4570
  %24 = zext i8 %23 to i32, !dbg !4570
  %25 = icmp ne i32 %24, %.07, !dbg !4573
  br i1 %25, label %26, label %27, !dbg !4574

26:                                               ; preds = %20
  br label %37, !dbg !4575

27:                                               ; preds = %20
  %28 = call i32 @add_value(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %1, i32 noundef %.06, i32 noundef %.13, i32 noundef %.07), !dbg !4576
  %29 = icmp ne i32 %28, 0, !dbg !4578
  br i1 %29, label %30, label %31, !dbg !4579

30:                                               ; preds = %27
  br label %44, !dbg !4580

31:                                               ; preds = %27
  %32 = add nsw i32 %.13, 1, !dbg !4581
  call void @llvm.dbg.value(metadata i32 %32, metadata !4536, metadata !DIExpression()), !dbg !4531
  %33 = add nsw i32 %.1, -1, !dbg !4582
  call void @llvm.dbg.value(metadata i32 %33, metadata !4537, metadata !DIExpression()), !dbg !4531
  %34 = icmp sle i32 %33, 0, !dbg !4584
  br i1 %34, label %35, label %36, !dbg !4585

35:                                               ; preds = %31
  br label %39, !dbg !4586

36:                                               ; preds = %31
  br label %37, !dbg !4588

37:                                               ; preds = %36, %26
  %.24 = phi i32 [ %.13, %26 ], [ %32, %36 ], !dbg !4531
  %.2 = phi i32 [ %.1, %26 ], [ %33, %36 ], !dbg !4531
  call void @llvm.dbg.value(metadata i32 %.2, metadata !4537, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i32 %.24, metadata !4536, metadata !DIExpression()), !dbg !4531
  %38 = add nsw i32 %.06, 1, !dbg !4589
  call void @llvm.dbg.value(metadata i32 %38, metadata !4560, metadata !DIExpression()), !dbg !4531
  br label %18, !dbg !4590, !llvm.loop !4591

39:                                               ; preds = %35, %18
  %.35 = phi i32 [ %32, %35 ], [ %.13, %18 ], !dbg !4531
  %.3 = phi i32 [ %33, %35 ], [ %.1, %18 ], !dbg !4531
  call void @llvm.dbg.value(metadata i32 %.3, metadata !4537, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i32 %.35, metadata !4536, metadata !DIExpression()), !dbg !4531
  %40 = shl i32 %.35, 1, !dbg !4593
  call void @llvm.dbg.value(metadata i32 %40, metadata !4536, metadata !DIExpression()), !dbg !4531
  br label %41, !dbg !4594

41:                                               ; preds = %39
  %42 = add nsw i32 %.07, 1, !dbg !4595
  call void @llvm.dbg.value(metadata i32 %42, metadata !4552, metadata !DIExpression()), !dbg !4531
  br label %14, !dbg !4596, !llvm.loop !4597

43:                                               ; preds = %14
  br label %44, !dbg !4599

44:                                               ; preds = %43, %30, %8
  %.0 = phi i32 [ -30, %8 ], [ -30, %30 ], [ 0, %43 ], !dbg !4531
  ret i32 %.0, !dbg !4600
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_next_symbol(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %1) #0 !dbg !4601 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !4604, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.value(metadata %struct.huffman_code* %1, metadata !4606, metadata !DIExpression()), !dbg !4605
  %3 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 5, !dbg !4607
  %4 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %3, align 8, !dbg !4607
  %5 = icmp ne %struct.huffman_table_entry* %4, null, !dbg !4609
  br i1 %5, label %11, label %6, !dbg !4610

6:                                                ; preds = %2
  %7 = call i32 @make_table(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %1), !dbg !4611
  %8 = icmp ne i32 %7, 0, !dbg !4614
  br i1 %8, label %9, label %10, !dbg !4615

9:                                                ; preds = %6
  br label %155, !dbg !4616

10:                                               ; preds = %6
  br label %11, !dbg !4617

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !4618
  %13 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %12, align 8, !dbg !4618
  %14 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %13, i32 0, i32 0, !dbg !4619
  %15 = load i8*, i8** %14, align 8, !dbg !4619
  %16 = bitcast i8* %15 to %struct.rar*, !dbg !4620
  call void @llvm.dbg.value(metadata %struct.rar* %16, metadata !4621, metadata !DIExpression()), !dbg !4605
  %17 = getelementptr inbounds %struct.rar, %struct.rar* %16, i32 0, i32 67, !dbg !4622
  call void @llvm.dbg.value(metadata %struct.rar_br* %17, metadata !4623, metadata !DIExpression()), !dbg !4605
  %18 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %17, i32 0, i32 1, !dbg !4624
  %19 = load i32, i32* %18, align 8, !dbg !4624
  %20 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 4, !dbg !4624
  %21 = load i32, i32* %20, align 4, !dbg !4624
  %22 = icmp sge i32 %19, %21, !dbg !4624
  br i1 %22, label %35, label %23, !dbg !4624

23:                                               ; preds = %11
  %24 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %17), !dbg !4624
  %25 = icmp ne i32 %24, 0, !dbg !4624
  br i1 %25, label %35, label %26, !dbg !4624

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %17, i32 0, i32 1, !dbg !4624
  %28 = load i32, i32* %27, align 8, !dbg !4624
  %29 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 4, !dbg !4624
  %30 = load i32, i32* %29, align 4, !dbg !4624
  %31 = icmp sge i32 %28, %30, !dbg !4624
  br i1 %31, label %35, label %32, !dbg !4626

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4627
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %33, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0)), !dbg !4629
  %34 = getelementptr inbounds %struct.rar, %struct.rar* %16, i32 0, i32 28, !dbg !4630
  store i8 0, i8* %34, align 8, !dbg !4631
  br label %155, !dbg !4632

35:                                               ; preds = %26, %23, %11
  %36 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %17, i32 0, i32 0, !dbg !4633
  %37 = load i64, i64* %36, align 8, !dbg !4633
  %38 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %17, i32 0, i32 1, !dbg !4633
  %39 = load i32, i32* %38, align 8, !dbg !4633
  %40 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 4, !dbg !4633
  %41 = load i32, i32* %40, align 4, !dbg !4633
  %42 = sub nsw i32 %39, %41, !dbg !4633
  %43 = zext i32 %42 to i64, !dbg !4633
  %44 = lshr i64 %37, %43, !dbg !4633
  %45 = trunc i64 %44 to i32, !dbg !4633
  %46 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 4, !dbg !4633
  %47 = load i32, i32* %46, align 4, !dbg !4633
  %48 = sext i32 %47 to i64, !dbg !4633
  %49 = getelementptr inbounds [36 x i32], [36 x i32]* @cache_masks, i64 0, i64 %48, !dbg !4633
  %50 = load i32, i32* %49, align 4, !dbg !4633
  %51 = and i32 %45, %50, !dbg !4633
  call void @llvm.dbg.value(metadata i32 %51, metadata !4634, metadata !DIExpression()), !dbg !4605
  %52 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 5, !dbg !4635
  %53 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %52, align 8, !dbg !4635
  %54 = zext i32 %51 to i64, !dbg !4636
  %55 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %53, i64 %54, !dbg !4636
  %56 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %55, i32 0, i32 0, !dbg !4637
  %57 = load i32, i32* %56, align 4, !dbg !4637
  call void @llvm.dbg.value(metadata i32 %57, metadata !4638, metadata !DIExpression()), !dbg !4605
  %58 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 5, !dbg !4639
  %59 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %58, align 8, !dbg !4639
  %60 = zext i32 %51 to i64, !dbg !4640
  %61 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %59, i64 %60, !dbg !4640
  %62 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %61, i32 0, i32 1, !dbg !4641
  %63 = load i32, i32* %62, align 4, !dbg !4641
  call void @llvm.dbg.value(metadata i32 %63, metadata !4642, metadata !DIExpression()), !dbg !4605
  %64 = icmp slt i32 %57, 0, !dbg !4643
  br i1 %64, label %65, label %67, !dbg !4645

65:                                               ; preds = %35
  %66 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4646
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %66, i32 noundef 84, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i64 0, i64 0)), !dbg !4648
  br label %155, !dbg !4649

67:                                               ; preds = %35
  %68 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 4, !dbg !4650
  %69 = load i32, i32* %68, align 4, !dbg !4650
  %70 = icmp sle i32 %57, %69, !dbg !4652
  br i1 %70, label %71, label %75, !dbg !4653

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %17, i32 0, i32 1, !dbg !4654
  %73 = load i32, i32* %72, align 8, !dbg !4654
  %74 = sub nsw i32 %73, %57, !dbg !4654
  store i32 %74, i32* %72, align 8, !dbg !4654
  br label %155, !dbg !4656

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 4, !dbg !4657
  %77 = load i32, i32* %76, align 4, !dbg !4657
  %78 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %17, i32 0, i32 1, !dbg !4657
  %79 = load i32, i32* %78, align 8, !dbg !4657
  %80 = sub nsw i32 %79, %77, !dbg !4657
  store i32 %80, i32* %78, align 8, !dbg !4657
  call void @llvm.dbg.value(metadata i32 %63, metadata !4658, metadata !DIExpression()), !dbg !4605
  br label %81, !dbg !4659

81:                                               ; preds = %138, %75
  %.01 = phi i32 [ %63, %75 ], [ %146, %138 ], !dbg !4605
  call void @llvm.dbg.value(metadata i32 %.01, metadata !4658, metadata !DIExpression()), !dbg !4605
  %82 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4660
  %83 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %82, align 8, !dbg !4660
  %84 = sext i32 %.01 to i64, !dbg !4661
  %85 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %83, i64 %84, !dbg !4661
  %86 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %85, i32 0, i32 0, !dbg !4662
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0, !dbg !4661
  %88 = load i32, i32* %87, align 4, !dbg !4661
  %89 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4663
  %90 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %89, align 8, !dbg !4663
  %91 = sext i32 %.01 to i64, !dbg !4664
  %92 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %90, i64 %91, !dbg !4664
  %93 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %92, i32 0, i32 0, !dbg !4665
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %93, i64 0, i64 1, !dbg !4664
  %95 = load i32, i32* %94, align 4, !dbg !4664
  %96 = icmp eq i32 %88, %95, !dbg !4666
  %97 = xor i1 %96, true, !dbg !4667
  br i1 %97, label %98, label %147, !dbg !4659

98:                                               ; preds = %81
  %99 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %17, i32 0, i32 1, !dbg !4668
  %100 = load i32, i32* %99, align 8, !dbg !4668
  %101 = icmp sge i32 %100, 1, !dbg !4668
  br i1 %101, label %112, label %102, !dbg !4668

102:                                              ; preds = %98
  %103 = call i32 @rar_br_fillup(%struct.archive_read* noundef %0, %struct.rar_br* noundef %17), !dbg !4668
  %104 = icmp ne i32 %103, 0, !dbg !4668
  br i1 %104, label %112, label %105, !dbg !4668

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %17, i32 0, i32 1, !dbg !4668
  %107 = load i32, i32* %106, align 8, !dbg !4668
  %108 = icmp sge i32 %107, 1, !dbg !4668
  br i1 %108, label %112, label %109, !dbg !4671

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4672
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %110, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0)), !dbg !4674
  %111 = getelementptr inbounds %struct.rar, %struct.rar* %16, i32 0, i32 28, !dbg !4675
  store i8 0, i8* %111, align 8, !dbg !4676
  br label %155, !dbg !4677

112:                                              ; preds = %105, %102, %98
  %113 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %17, i32 0, i32 0, !dbg !4678
  %114 = load i64, i64* %113, align 8, !dbg !4678
  %115 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %17, i32 0, i32 1, !dbg !4678
  %116 = load i32, i32* %115, align 8, !dbg !4678
  %117 = sub nsw i32 %116, 1, !dbg !4678
  %118 = zext i32 %117 to i64, !dbg !4678
  %119 = lshr i64 %114, %118, !dbg !4678
  %120 = trunc i64 %119 to i32, !dbg !4678
  %121 = load i32, i32* getelementptr inbounds ([36 x i32], [36 x i32]* @cache_masks, i64 0, i64 1), align 4, !dbg !4678
  %122 = and i32 %120, %121, !dbg !4678
  %123 = trunc i32 %122 to i8, !dbg !4678
  call void @llvm.dbg.value(metadata i8 %123, metadata !4679, metadata !DIExpression()), !dbg !4605
  %124 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %17, i32 0, i32 1, !dbg !4680
  %125 = load i32, i32* %124, align 8, !dbg !4680
  %126 = sub nsw i32 %125, 1, !dbg !4680
  store i32 %126, i32* %124, align 8, !dbg !4680
  %127 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4681
  %128 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %127, align 8, !dbg !4681
  %129 = sext i32 %.01 to i64, !dbg !4683
  %130 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %128, i64 %129, !dbg !4683
  %131 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %130, i32 0, i32 0, !dbg !4684
  %132 = zext i8 %123 to i64, !dbg !4683
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %131, i64 0, i64 %132, !dbg !4683
  %134 = load i32, i32* %133, align 4, !dbg !4683
  %135 = icmp slt i32 %134, 0, !dbg !4685
  br i1 %135, label %136, label %138, !dbg !4686

136:                                              ; preds = %112
  %137 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4687
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %137, i32 noundef 84, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i64 0, i64 0)), !dbg !4689
  br label %155, !dbg !4690

138:                                              ; preds = %112
  %139 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4691
  %140 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %139, align 8, !dbg !4691
  %141 = sext i32 %.01 to i64, !dbg !4692
  %142 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %140, i64 %141, !dbg !4692
  %143 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %142, i32 0, i32 0, !dbg !4693
  %144 = zext i8 %123 to i64, !dbg !4692
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %143, i64 0, i64 %144, !dbg !4692
  %146 = load i32, i32* %145, align 4, !dbg !4692
  call void @llvm.dbg.value(metadata i32 %146, metadata !4658, metadata !DIExpression()), !dbg !4605
  br label %81, !dbg !4659, !llvm.loop !4694

147:                                              ; preds = %81
  %148 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4696
  %149 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %148, align 8, !dbg !4696
  %150 = sext i32 %.01 to i64, !dbg !4697
  %151 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %149, i64 %150, !dbg !4697
  %152 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %151, i32 0, i32 0, !dbg !4698
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %152, i64 0, i64 0, !dbg !4697
  %154 = load i32, i32* %153, align 4, !dbg !4697
  br label %155, !dbg !4699

155:                                              ; preds = %147, %136, %109, %71, %65, %32, %9
  %.0 = phi i32 [ -1, %65 ], [ %63, %71 ], [ -1, %136 ], [ -1, %109 ], [ %154, %147 ], [ -1, %32 ], [ -1, %9 ], !dbg !4605
  ret i32 %.0, !dbg !4700
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rar_fls(i32 noundef %0) #0 !dbg !4701 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4704, metadata !DIExpression()), !dbg !4705
  %2 = lshr i32 %0, 1, !dbg !4706
  %3 = or i32 %0, %2, !dbg !4707
  call void @llvm.dbg.value(metadata i32 %3, metadata !4704, metadata !DIExpression()), !dbg !4705
  %4 = lshr i32 %3, 2, !dbg !4708
  %5 = or i32 %3, %4, !dbg !4709
  call void @llvm.dbg.value(metadata i32 %5, metadata !4704, metadata !DIExpression()), !dbg !4705
  %6 = lshr i32 %5, 4, !dbg !4710
  %7 = or i32 %5, %6, !dbg !4711
  call void @llvm.dbg.value(metadata i32 %7, metadata !4704, metadata !DIExpression()), !dbg !4705
  %8 = lshr i32 %7, 8, !dbg !4712
  %9 = or i32 %7, %8, !dbg !4713
  call void @llvm.dbg.value(metadata i32 %9, metadata !4704, metadata !DIExpression()), !dbg !4705
  %10 = lshr i32 %9, 16, !dbg !4714
  %11 = or i32 %9, %10, !dbg !4715
  call void @llvm.dbg.value(metadata i32 %11, metadata !4704, metadata !DIExpression()), !dbg !4705
  %12 = lshr i32 %11, 1, !dbg !4716
  %13 = sub i32 %11, %12, !dbg !4717
  ret i32 %13, !dbg !4718
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @new_node(%struct.huffman_code* noundef %0) #0 !dbg !4719 {
  call void @llvm.dbg.value(metadata %struct.huffman_code* %0, metadata !4722, metadata !DIExpression()), !dbg !4723
  %2 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %0, i32 0, i32 0, !dbg !4724
  %3 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %2, align 8, !dbg !4724
  %4 = bitcast %struct.huffman_tree_node* %3 to i8*, !dbg !4725
  %5 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %0, i32 0, i32 1, !dbg !4726
  %6 = load i32, i32* %5, align 8, !dbg !4726
  %7 = add nsw i32 %6, 1, !dbg !4727
  %8 = sext i32 %7 to i64, !dbg !4728
  %9 = mul i64 %8, 8, !dbg !4729
  %10 = call i8* @realloc(i8* noundef %4, i64 noundef %9) #8, !dbg !4730
  call void @llvm.dbg.value(metadata i8* %10, metadata !4731, metadata !DIExpression()), !dbg !4723
  %11 = icmp eq i8* %10, null, !dbg !4732
  br i1 %11, label %12, label %13, !dbg !4734

12:                                               ; preds = %1
  br label %32, !dbg !4735

13:                                               ; preds = %1
  %14 = bitcast i8* %10 to %struct.huffman_tree_node*, !dbg !4736
  %15 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %0, i32 0, i32 0, !dbg !4737
  store %struct.huffman_tree_node* %14, %struct.huffman_tree_node** %15, align 8, !dbg !4738
  %16 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %0, i32 0, i32 0, !dbg !4739
  %17 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %16, align 8, !dbg !4739
  %18 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %0, i32 0, i32 1, !dbg !4740
  %19 = load i32, i32* %18, align 8, !dbg !4740
  %20 = sext i32 %19 to i64, !dbg !4741
  %21 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %17, i64 %20, !dbg !4741
  %22 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %21, i32 0, i32 0, !dbg !4742
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0, !dbg !4741
  store i32 -1, i32* %23, align 4, !dbg !4743
  %24 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %0, i32 0, i32 0, !dbg !4744
  %25 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %24, align 8, !dbg !4744
  %26 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %0, i32 0, i32 1, !dbg !4745
  %27 = load i32, i32* %26, align 8, !dbg !4745
  %28 = sext i32 %27 to i64, !dbg !4746
  %29 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %25, i64 %28, !dbg !4746
  %30 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %29, i32 0, i32 0, !dbg !4747
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 1, !dbg !4746
  store i32 -2, i32* %31, align 4, !dbg !4748
  br label %32, !dbg !4749

32:                                               ; preds = %13, %12
  %.0 = phi i32 [ -1, %12 ], [ 1, %13 ], !dbg !4723
  ret i32 %.0, !dbg !4750
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @add_value(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !4751 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !4754, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata %struct.huffman_code* %1, metadata !4756, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata i32 %2, metadata !4757, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata i32 %3, metadata !4758, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata i32 %4, metadata !4759, metadata !DIExpression()), !dbg !4755
  %6 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 5, !dbg !4760
  %7 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %6, align 8, !dbg !4760
  %8 = bitcast %struct.huffman_table_entry* %7 to i8*, !dbg !4761
  call void @free(i8* noundef %8) #8, !dbg !4762
  %9 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 5, !dbg !4763
  store %struct.huffman_table_entry* null, %struct.huffman_table_entry** %9, align 8, !dbg !4764
  %10 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 3, !dbg !4765
  %11 = load i32, i32* %10, align 8, !dbg !4765
  %12 = icmp sgt i32 %4, %11, !dbg !4767
  br i1 %12, label %13, label %15, !dbg !4768

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 3, !dbg !4769
  store i32 %4, i32* %14, align 8, !dbg !4770
  br label %15, !dbg !4771

15:                                               ; preds = %13, %5
  %16 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 2, !dbg !4772
  %17 = load i32, i32* %16, align 4, !dbg !4772
  %18 = icmp slt i32 %4, %17, !dbg !4774
  br i1 %18, label %19, label %21, !dbg !4775

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 2, !dbg !4776
  store i32 %4, i32* %20, align 4, !dbg !4777
  br label %21, !dbg !4778

21:                                               ; preds = %19, %15
  call void @llvm.dbg.value(metadata i32 -1, metadata !4779, metadata !DIExpression()), !dbg !4755
  %22 = icmp eq i32 -1, 0, !dbg !4780
  br i1 %22, label %35, label %23, !dbg !4782

23:                                               ; preds = %21
  %24 = icmp sge i32 -1, 0, !dbg !4783
  br i1 %24, label %25, label %37, !dbg !4784

25:                                               ; preds = %23
  %26 = sub nsw i32 -1, 1, !dbg !4785
  %27 = ashr i32 %3, %26, !dbg !4786
  %28 = and i32 %27, 3, !dbg !4787
  %29 = icmp eq i32 %28, 0, !dbg !4788
  br i1 %29, label %35, label %30, !dbg !4789

30:                                               ; preds = %25
  %31 = sub nsw i32 -1, 1, !dbg !4790
  %32 = ashr i32 %3, %31, !dbg !4791
  %33 = and i32 %32, 3, !dbg !4792
  %34 = icmp eq i32 %33, 3, !dbg !4793
  br i1 %34, label %35, label %37, !dbg !4794

35:                                               ; preds = %30, %25, %21
  %36 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4795
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %36, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0)), !dbg !4797
  br label %180, !dbg !4798

37:                                               ; preds = %30, %23
  call void @llvm.dbg.value(metadata i32 0, metadata !4799, metadata !DIExpression()), !dbg !4755
  %38 = sub nsw i32 %4, 1, !dbg !4800
  call void @llvm.dbg.value(metadata i32 %38, metadata !4802, metadata !DIExpression()), !dbg !4755
  br label %39, !dbg !4803

39:                                               ; preds = %145, %37
  %.02 = phi i32 [ 0, %37 ], [ %.13, %145 ], !dbg !4755
  %.01 = phi i32 [ %38, %37 ], [ %146, %145 ], !dbg !4804
  call void @llvm.dbg.value(metadata i32 %.01, metadata !4802, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata i32 %.02, metadata !4799, metadata !DIExpression()), !dbg !4755
  %40 = icmp sge i32 %.01, 0, !dbg !4805
  br i1 %40, label %41, label %147, !dbg !4807

41:                                               ; preds = %39
  %42 = ashr i32 %3, %.01, !dbg !4808
  %43 = and i32 %42, 1, !dbg !4810
  call void @llvm.dbg.value(metadata i32 %43, metadata !4811, metadata !DIExpression()), !dbg !4755
  %44 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4812
  %45 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %44, align 8, !dbg !4812
  %46 = sext i32 %.02 to i64, !dbg !4814
  %47 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %45, i64 %46, !dbg !4814
  %48 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %47, i32 0, i32 0, !dbg !4815
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 0, i64 0, !dbg !4814
  %50 = load i32, i32* %49, align 4, !dbg !4814
  %51 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4816
  %52 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %51, align 8, !dbg !4816
  %53 = sext i32 %.02 to i64, !dbg !4817
  %54 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %52, i64 %53, !dbg !4817
  %55 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %54, i32 0, i32 0, !dbg !4818
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %55, i64 0, i64 1, !dbg !4817
  %57 = load i32, i32* %56, align 4, !dbg !4817
  %58 = icmp eq i32 %50, %57, !dbg !4819
  br i1 %58, label %59, label %61, !dbg !4820

59:                                               ; preds = %41
  %60 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4821
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %60, i32 noundef 84, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0)), !dbg !4823
  br label %180, !dbg !4824

61:                                               ; preds = %41
  %62 = icmp eq i32 %.01, -1, !dbg !4825
  br i1 %62, label %63, label %109, !dbg !4827

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4828
  %65 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %64, align 8, !dbg !4828
  %66 = sext i32 %.02 to i64, !dbg !4831
  %67 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %65, i64 %66, !dbg !4831
  %68 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %67, i32 0, i32 0, !dbg !4832
  %69 = sext i32 %43 to i64, !dbg !4831
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %68, i64 0, i64 %69, !dbg !4831
  %71 = load i32, i32* %70, align 4, !dbg !4831
  %72 = icmp slt i32 %71, 0, !dbg !4833
  br i1 %72, label %75, label %73, !dbg !4834

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4835
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %74, i32 noundef 84, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0)), !dbg !4837
  br label %180, !dbg !4838

75:                                               ; preds = %63
  %76 = call i32 @new_node(%struct.huffman_code* noundef %1), !dbg !4839
  call void @llvm.dbg.value(metadata i32 %76, metadata !4841, metadata !DIExpression()), !dbg !4755
  %77 = icmp slt i32 %76, 0, !dbg !4842
  br i1 %77, label %78, label %80, !dbg !4843

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4844
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %79, i32 noundef 12, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.40, i64 0, i64 0)), !dbg !4846
  br label %180, !dbg !4847

80:                                               ; preds = %75
  %81 = call i32 @new_node(%struct.huffman_code* noundef %1), !dbg !4848
  call void @llvm.dbg.value(metadata i32 %81, metadata !4850, metadata !DIExpression()), !dbg !4755
  %82 = icmp slt i32 %81, 0, !dbg !4851
  br i1 %82, label %83, label %85, !dbg !4852

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4853
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %84, i32 noundef 12, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.40, i64 0, i64 0)), !dbg !4855
  br label %180, !dbg !4856

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4857
  %87 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %86, align 8, !dbg !4857
  %88 = sext i32 %.02 to i64, !dbg !4858
  %89 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %87, i64 %88, !dbg !4858
  %90 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %89, i32 0, i32 0, !dbg !4859
  %91 = sext i32 %43 to i64, !dbg !4858
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %90, i64 0, i64 %91, !dbg !4858
  store i32 %76, i32* %92, align 4, !dbg !4860
  %93 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4861
  %94 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %93, align 8, !dbg !4861
  %95 = sext i32 %76 to i64, !dbg !4862
  %96 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %94, i64 %95, !dbg !4862
  %97 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %96, i32 0, i32 0, !dbg !4863
  %98 = sext i32 %43 to i64, !dbg !4862
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %97, i64 0, i64 %98, !dbg !4862
  store i32 %76, i32* %99, align 4, !dbg !4864
  %100 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4865
  %101 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %100, align 8, !dbg !4865
  %102 = sext i32 %76 to i64, !dbg !4866
  %103 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %101, i64 %102, !dbg !4866
  %104 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %103, i32 0, i32 0, !dbg !4867
  %105 = xor i32 %43, 1, !dbg !4868
  %106 = sext i32 %105 to i64, !dbg !4866
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %104, i64 0, i64 %106, !dbg !4866
  store i32 %81, i32* %107, align 4, !dbg !4869
  call void @llvm.dbg.value(metadata i32 %81, metadata !4799, metadata !DIExpression()), !dbg !4755
  %108 = add nsw i32 %.01, 1, !dbg !4870
  call void @llvm.dbg.value(metadata i32 %108, metadata !4802, metadata !DIExpression()), !dbg !4755
  br label %144, !dbg !4871

109:                                              ; preds = %61
  %110 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4872
  %111 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %110, align 8, !dbg !4872
  %112 = sext i32 %.02 to i64, !dbg !4875
  %113 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %111, i64 %112, !dbg !4875
  %114 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %113, i32 0, i32 0, !dbg !4876
  %115 = sext i32 %43 to i64, !dbg !4875
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %114, i64 0, i64 %115, !dbg !4875
  %117 = load i32, i32* %116, align 4, !dbg !4875
  %118 = icmp slt i32 %117, 0, !dbg !4877
  br i1 %118, label %119, label %135, !dbg !4878

119:                                              ; preds = %109
  %120 = call i32 @new_node(%struct.huffman_code* noundef %1), !dbg !4879
  %121 = icmp slt i32 %120, 0, !dbg !4882
  br i1 %121, label %122, label %124, !dbg !4883

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4884
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %123, i32 noundef 12, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.40, i64 0, i64 0)), !dbg !4886
  br label %180, !dbg !4887

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 1, !dbg !4888
  %126 = load i32, i32* %125, align 8, !dbg !4889
  %127 = add nsw i32 %126, 1, !dbg !4889
  store i32 %127, i32* %125, align 8, !dbg !4889
  %128 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4890
  %129 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %128, align 8, !dbg !4890
  %130 = sext i32 %.02 to i64, !dbg !4891
  %131 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %129, i64 %130, !dbg !4891
  %132 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %131, i32 0, i32 0, !dbg !4892
  %133 = sext i32 %43 to i64, !dbg !4891
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %132, i64 0, i64 %133, !dbg !4891
  store i32 %126, i32* %134, align 4, !dbg !4893
  br label %135, !dbg !4894

135:                                              ; preds = %124, %109
  %136 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4895
  %137 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %136, align 8, !dbg !4895
  %138 = sext i32 %.02 to i64, !dbg !4896
  %139 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %137, i64 %138, !dbg !4896
  %140 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %139, i32 0, i32 0, !dbg !4897
  %141 = sext i32 %43 to i64, !dbg !4896
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %140, i64 0, i64 %141, !dbg !4896
  %143 = load i32, i32* %142, align 4, !dbg !4896
  call void @llvm.dbg.value(metadata i32 %143, metadata !4799, metadata !DIExpression()), !dbg !4755
  br label %144

144:                                              ; preds = %135, %85
  %.13 = phi i32 [ %81, %85 ], [ %143, %135 ], !dbg !4898
  %.1 = phi i32 [ %108, %85 ], [ %.01, %135 ], !dbg !4804
  call void @llvm.dbg.value(metadata i32 %.1, metadata !4802, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata i32 %.13, metadata !4799, metadata !DIExpression()), !dbg !4755
  br label %145, !dbg !4899

145:                                              ; preds = %144
  %146 = add nsw i32 %.1, -1, !dbg !4900
  call void @llvm.dbg.value(metadata i32 %146, metadata !4802, metadata !DIExpression()), !dbg !4755
  br label %39, !dbg !4901, !llvm.loop !4902

147:                                              ; preds = %39
  %148 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4904
  %149 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %148, align 8, !dbg !4904
  %150 = sext i32 %.02 to i64, !dbg !4906
  %151 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %149, i64 %150, !dbg !4906
  %152 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %151, i32 0, i32 0, !dbg !4907
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %152, i64 0, i64 0, !dbg !4906
  %154 = load i32, i32* %153, align 4, !dbg !4906
  %155 = icmp eq i32 %154, -1, !dbg !4908
  br i1 %155, label %156, label %165, !dbg !4909

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4910
  %158 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %157, align 8, !dbg !4910
  %159 = sext i32 %.02 to i64, !dbg !4911
  %160 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %158, i64 %159, !dbg !4911
  %161 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %160, i32 0, i32 0, !dbg !4912
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %161, i64 0, i64 1, !dbg !4911
  %163 = load i32, i32* %162, align 4, !dbg !4911
  %164 = icmp eq i32 %163, -2, !dbg !4913
  br i1 %164, label %167, label %165, !dbg !4914

165:                                              ; preds = %156, %147
  %166 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4915
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %166, i32 noundef 84, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0)), !dbg !4917
  br label %180, !dbg !4918

167:                                              ; preds = %156
  %168 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4919
  %169 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %168, align 8, !dbg !4919
  %170 = sext i32 %.02 to i64, !dbg !4920
  %171 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %169, i64 %170, !dbg !4920
  %172 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %171, i32 0, i32 0, !dbg !4921
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %172, i64 0, i64 0, !dbg !4920
  store i32 %2, i32* %173, align 4, !dbg !4922
  %174 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4923
  %175 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %174, align 8, !dbg !4923
  %176 = sext i32 %.02 to i64, !dbg !4924
  %177 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %175, i64 %176, !dbg !4924
  %178 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %177, i32 0, i32 0, !dbg !4925
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %178, i64 0, i64 1, !dbg !4924
  store i32 %2, i32* %179, align 4, !dbg !4926
  br label %180, !dbg !4927

180:                                              ; preds = %167, %165, %122, %83, %78, %73, %59, %35
  %.0 = phi i32 [ -30, %35 ], [ -30, %59 ], [ -30, %78 ], [ -30, %83 ], [ -30, %73 ], [ -30, %122 ], [ 0, %167 ], [ -30, %165 ], !dbg !4755
  ret i32 %.0, !dbg !4928
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @make_table(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %1) #0 !dbg !4929 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !4930, metadata !DIExpression()), !dbg !4931
  call void @llvm.dbg.value(metadata %struct.huffman_code* %1, metadata !4932, metadata !DIExpression()), !dbg !4931
  %3 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 3, !dbg !4933
  %4 = load i32, i32* %3, align 8, !dbg !4933
  %5 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 2, !dbg !4935
  %6 = load i32, i32* %5, align 4, !dbg !4935
  %7 = icmp slt i32 %4, %6, !dbg !4936
  br i1 %7, label %12, label %8, !dbg !4937

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 3, !dbg !4938
  %10 = load i32, i32* %9, align 8, !dbg !4938
  %11 = icmp sgt i32 %10, 10, !dbg !4939
  br i1 %11, label %12, label %14, !dbg !4940

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 4, !dbg !4941
  store i32 10, i32* %13, align 4, !dbg !4942
  br label %18, !dbg !4943

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 3, !dbg !4944
  %16 = load i32, i32* %15, align 8, !dbg !4944
  %17 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 4, !dbg !4945
  store i32 %16, i32* %17, align 4, !dbg !4946
  br label %18

18:                                               ; preds = %14, %12
  %19 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 4, !dbg !4947
  %20 = load i32, i32* %19, align 4, !dbg !4947
  %21 = zext i32 %20 to i64, !dbg !4948
  %22 = shl i64 1, %21, !dbg !4948
  %23 = mul i64 8, %22, !dbg !4949
  %24 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %23) #8, !dbg !4950
  %25 = bitcast i8* %24 to %struct.huffman_table_entry*, !dbg !4951
  %26 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 5, !dbg !4952
  store %struct.huffman_table_entry* %25, %struct.huffman_table_entry** %26, align 8, !dbg !4953
  %27 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 5, !dbg !4954
  %28 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %27, align 8, !dbg !4954
  %29 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 4, !dbg !4955
  %30 = load i32, i32* %29, align 4, !dbg !4955
  %31 = call i32 @make_table_recurse(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %1, i32 noundef 0, %struct.huffman_table_entry* noundef %28, i32 noundef 0, i32 noundef %30), !dbg !4956
  ret i32 %31, !dbg !4957
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @make_table_recurse(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %1, i32 noundef %2, %struct.huffman_table_entry* noundef %3, i32 noundef %4, i32 noundef %5) #0 !dbg !4958 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !4961, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata %struct.huffman_code* %1, metadata !4963, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i32 %2, metadata !4964, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata %struct.huffman_table_entry* %3, metadata !4965, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i32 %4, metadata !4966, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i32 %5, metadata !4967, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i32 0, metadata !4968, metadata !DIExpression()), !dbg !4962
  %7 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4969
  %8 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %7, align 8, !dbg !4969
  %9 = icmp ne %struct.huffman_tree_node* %8, null, !dbg !4971
  br i1 %9, label %12, label %10, !dbg !4972

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4973
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %11, i32 noundef 84, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i64 0, i64 0)), !dbg !4975
  br label %105, !dbg !4976

12:                                               ; preds = %6
  %13 = icmp slt i32 %2, 0, !dbg !4977
  br i1 %13, label %18, label %14, !dbg !4979

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 1, !dbg !4980
  %16 = load i32, i32* %15, align 8, !dbg !4980
  %17 = icmp sge i32 %2, %16, !dbg !4981
  br i1 %17, label %18, label %20, !dbg !4982

18:                                               ; preds = %14, %12
  %19 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !4983
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %19, i32 noundef 84, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.46, i64 0, i64 0)), !dbg !4985
  br label %105, !dbg !4986

20:                                               ; preds = %14
  %21 = sub nsw i32 %5, %4, !dbg !4987
  %22 = shl i32 1, %21, !dbg !4988
  call void @llvm.dbg.value(metadata i32 %22, metadata !4989, metadata !DIExpression()), !dbg !4962
  %23 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4990
  %24 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %23, align 8, !dbg !4990
  %25 = sext i32 %2 to i64, !dbg !4992
  %26 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %24, i64 %25, !dbg !4992
  %27 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %26, i32 0, i32 0, !dbg !4993
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0, !dbg !4992
  %29 = load i32, i32* %28, align 4, !dbg !4992
  %30 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !4994
  %31 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %30, align 8, !dbg !4994
  %32 = sext i32 %2 to i64, !dbg !4995
  %33 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %31, i64 %32, !dbg !4995
  %34 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %33, i32 0, i32 0, !dbg !4996
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %34, i64 0, i64 1, !dbg !4995
  %36 = load i32, i32* %35, align 4, !dbg !4995
  %37 = icmp eq i32 %29, %36, !dbg !4997
  br i1 %37, label %38, label %58, !dbg !4998

38:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32 0, metadata !4999, metadata !DIExpression()), !dbg !4962
  br label %39, !dbg !5000

39:                                               ; preds = %55, %38
  %.02 = phi i32 [ 0, %38 ], [ %56, %55 ], !dbg !5003
  call void @llvm.dbg.value(metadata i32 %.02, metadata !4999, metadata !DIExpression()), !dbg !4962
  %40 = icmp slt i32 %.02, %22, !dbg !5004
  br i1 %40, label %41, label %57, !dbg !5006

41:                                               ; preds = %39
  %42 = sext i32 %.02 to i64, !dbg !5007
  %43 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %3, i64 %42, !dbg !5007
  %44 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %43, i32 0, i32 0, !dbg !5009
  store i32 %4, i32* %44, align 4, !dbg !5010
  %45 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !5011
  %46 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %45, align 8, !dbg !5011
  %47 = sext i32 %2 to i64, !dbg !5012
  %48 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %46, i64 %47, !dbg !5012
  %49 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %48, i32 0, i32 0, !dbg !5013
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %49, i64 0, i64 0, !dbg !5012
  %51 = load i32, i32* %50, align 4, !dbg !5012
  %52 = sext i32 %.02 to i64, !dbg !5014
  %53 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %3, i64 %52, !dbg !5014
  %54 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %53, i32 0, i32 1, !dbg !5015
  store i32 %51, i32* %54, align 4, !dbg !5016
  br label %55, !dbg !5017

55:                                               ; preds = %41
  %56 = add nsw i32 %.02, 1, !dbg !5018
  call void @llvm.dbg.value(metadata i32 %56, metadata !4999, metadata !DIExpression()), !dbg !4962
  br label %39, !dbg !5019, !llvm.loop !5020

57:                                               ; preds = %39
  br label %104, !dbg !5022

58:                                               ; preds = %20
  %59 = icmp slt i32 %2, 0, !dbg !5023
  br i1 %59, label %60, label %70, !dbg !5025

60:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i32 0, metadata !4999, metadata !DIExpression()), !dbg !4962
  br label %61, !dbg !5026

61:                                               ; preds = %67, %60
  %.13 = phi i32 [ 0, %60 ], [ %68, %67 ], !dbg !5029
  call void @llvm.dbg.value(metadata i32 %.13, metadata !4999, metadata !DIExpression()), !dbg !4962
  %62 = icmp slt i32 %.13, %22, !dbg !5030
  br i1 %62, label %63, label %69, !dbg !5032

63:                                               ; preds = %61
  %64 = sext i32 %.13 to i64, !dbg !5033
  %65 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %3, i64 %64, !dbg !5033
  %66 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %65, i32 0, i32 0, !dbg !5034
  store i32 -1, i32* %66, align 4, !dbg !5035
  br label %67, !dbg !5033

67:                                               ; preds = %63
  %68 = add nsw i32 %.13, 1, !dbg !5036
  call void @llvm.dbg.value(metadata i32 %68, metadata !4999, metadata !DIExpression()), !dbg !4962
  br label %61, !dbg !5037, !llvm.loop !5038

69:                                               ; preds = %61
  br label %103, !dbg !5040

70:                                               ; preds = %58
  %71 = icmp eq i32 %4, %5, !dbg !5041
  br i1 %71, label %72, label %78, !dbg !5044

72:                                               ; preds = %70
  %73 = add nsw i32 %5, 1, !dbg !5045
  %74 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %3, i64 0, !dbg !5047
  %75 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %74, i32 0, i32 0, !dbg !5048
  store i32 %73, i32* %75, align 4, !dbg !5049
  %76 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %3, i64 0, !dbg !5050
  %77 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %76, i32 0, i32 1, !dbg !5051
  store i32 %2, i32* %77, align 4, !dbg !5052
  br label %102, !dbg !5053

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !5054
  %80 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %79, align 8, !dbg !5054
  %81 = sext i32 %2 to i64, !dbg !5056
  %82 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %80, i64 %81, !dbg !5056
  %83 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %82, i32 0, i32 0, !dbg !5057
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %83, i64 0, i64 0, !dbg !5056
  %85 = load i32, i32* %84, align 4, !dbg !5056
  %86 = add nsw i32 %4, 1, !dbg !5058
  %87 = call i32 @make_table_recurse(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %1, i32 noundef %85, %struct.huffman_table_entry* noundef %3, i32 noundef %86, i32 noundef %5), !dbg !5059
  %88 = or i32 0, %87, !dbg !5060
  call void @llvm.dbg.value(metadata i32 %88, metadata !4968, metadata !DIExpression()), !dbg !4962
  %89 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %1, i32 0, i32 0, !dbg !5061
  %90 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %89, align 8, !dbg !5061
  %91 = sext i32 %2 to i64, !dbg !5062
  %92 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %90, i64 %91, !dbg !5062
  %93 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %92, i32 0, i32 0, !dbg !5063
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %93, i64 0, i64 1, !dbg !5062
  %95 = load i32, i32* %94, align 4, !dbg !5062
  %96 = sdiv i32 %22, 2, !dbg !5064
  %97 = sext i32 %96 to i64, !dbg !5065
  %98 = getelementptr inbounds %struct.huffman_table_entry, %struct.huffman_table_entry* %3, i64 %97, !dbg !5065
  %99 = add nsw i32 %4, 1, !dbg !5066
  %100 = call i32 @make_table_recurse(%struct.archive_read* noundef %0, %struct.huffman_code* noundef %1, i32 noundef %95, %struct.huffman_table_entry* noundef %98, i32 noundef %99, i32 noundef %5), !dbg !5067
  %101 = or i32 %88, %100, !dbg !5068
  call void @llvm.dbg.value(metadata i32 %101, metadata !4968, metadata !DIExpression()), !dbg !4962
  br label %102

102:                                              ; preds = %78, %72
  %.01 = phi i32 [ 0, %72 ], [ %101, %78 ], !dbg !4962
  call void @llvm.dbg.value(metadata i32 %.01, metadata !4968, metadata !DIExpression()), !dbg !4962
  br label %103

103:                                              ; preds = %102, %69
  %.1 = phi i32 [ 0, %69 ], [ %.01, %102 ], !dbg !5069
  call void @llvm.dbg.value(metadata i32 %.1, metadata !4968, metadata !DIExpression()), !dbg !4962
  br label %104

104:                                              ; preds = %103, %57
  %.2 = phi i32 [ 0, %57 ], [ %.1, %103 ], !dbg !5069
  call void @llvm.dbg.value(metadata i32 %.2, metadata !4968, metadata !DIExpression()), !dbg !4962
  br label %105, !dbg !5070

105:                                              ; preds = %104, %18, %10
  %.0 = phi i32 [ -30, %18 ], [ %.2, %104 ], [ -30, %10 ], !dbg !4962
  ret i32 %.0, !dbg !5071
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @lzss_current_pointer(%struct.lzss* noundef %0) #0 !dbg !5072 {
  call void @llvm.dbg.value(metadata %struct.lzss* %0, metadata !5076, metadata !DIExpression()), !dbg !5077
  %2 = getelementptr inbounds %struct.lzss, %struct.lzss* %0, i32 0, i32 2, !dbg !5078
  %3 = load i64, i64* %2, align 8, !dbg !5078
  %4 = call i8* @lzss_pointer_for_position(%struct.lzss* noundef %0, i64 noundef %3), !dbg !5079
  ret i8* %4, !dbg !5080
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @lzss_pointer_for_position(%struct.lzss* noundef %0, i64 noundef %1) #0 !dbg !5081 {
  call void @llvm.dbg.value(metadata %struct.lzss* %0, metadata !5084, metadata !DIExpression()), !dbg !5085
  call void @llvm.dbg.value(metadata i64 %1, metadata !5086, metadata !DIExpression()), !dbg !5085
  %3 = getelementptr inbounds %struct.lzss, %struct.lzss* %0, i32 0, i32 0, !dbg !5087
  %4 = load i8*, i8** %3, align 8, !dbg !5087
  %5 = call i32 @lzss_offset_for_position(%struct.lzss* noundef %0, i64 noundef %1), !dbg !5088
  %6 = sext i32 %5 to i64, !dbg !5089
  %7 = getelementptr inbounds i8, i8* %4, i64 %6, !dbg !5089
  ret i8* %7, !dbg !5090
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @lzss_current_offset(%struct.lzss* noundef %0) #0 !dbg !5091 {
  call void @llvm.dbg.value(metadata %struct.lzss* %0, metadata !5092, metadata !DIExpression()), !dbg !5093
  %2 = getelementptr inbounds %struct.lzss, %struct.lzss* %0, i32 0, i32 2, !dbg !5094
  %3 = load i64, i64* %2, align 8, !dbg !5094
  %4 = call i32 @lzss_offset_for_position(%struct.lzss* noundef %0, i64 noundef %3), !dbg !5095
  ret i32 %4, !dbg !5096
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @lzss_mask(%struct.lzss* noundef %0) #0 !dbg !5097 {
  call void @llvm.dbg.value(metadata %struct.lzss* %0, metadata !5098, metadata !DIExpression()), !dbg !5099
  %2 = getelementptr inbounds %struct.lzss, %struct.lzss* %0, i32 0, i32 1, !dbg !5100
  %3 = load i32, i32* %2, align 8, !dbg !5100
  ret i32 %3, !dbg !5101
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @lzss_position(%struct.lzss* noundef %0) #0 !dbg !5102 {
  call void @llvm.dbg.value(metadata %struct.lzss* %0, metadata !5105, metadata !DIExpression()), !dbg !5106
  %2 = getelementptr inbounds %struct.lzss, %struct.lzss* %0, i32 0, i32 2, !dbg !5107
  %3 = load i64, i64* %2, align 8, !dbg !5107
  ret i64 %3, !dbg !5108
}

declare i64 @__archive_read_seek(%struct.archive_read* noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!554, !555, !556, !557, !558, !559, !560}
!llvm.ident = !{!561}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_szalloc", scope: !2, file: !269, line: 610, type: !543, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !511, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_read_support_format_rar.c", directory: "/home/likaixuan/static_analysis/linux-spec-sast/patchintent", checksumkind: CSK_MD5, checksum: "3680227298f7457c0fb1363d8314fa05")
!4 = !{!5, !267, !125, !507, !14, !82, !53, !46, !84, !97, !292, !501, !39, !24, !509, !317, !482, !338, !348}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_read", file: !7, line: 145, size: 17152, elements: !8)
!7 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_read_private.h", directory: "", checksumkind: CSK_MD5, checksum: "a35fd60873c695863a5a16442c5f057a")
!8 = !{!9, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !159, !223, !224, !225, !226, !227, !228, !261, !263, !266}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "archive", scope: !6, file: !7, line: 146, baseType: !10, size: 896)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive", file: !11, line: 89, size: 896, elements: !12)
!11 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_private.h", directory: "", checksumkind: CSK_MD5, checksum: "966f1c2354e5924868917473d94e61b9")
!12 = !{!13, !15, !16, !85, !86, !87, !88, !89, !90, !91, !92, !100, !101, !102, !103}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !10, file: !11, line: 96, baseType: !14, size: 32)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !10, file: !11, line: 97, baseType: !14, size: 32, offset: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !10, file: !11, line: 103, baseType: !17, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_vtable", file: !11, line: 63, size: 832, elements: !19)
!19 = !{!20, !26, !27, !34, !35, !49, !56, !61, !62, !69, !70, !74, !78}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "archive_close", scope: !18, file: !11, line: 64, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !25}
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "archive_free", scope: !18, file: !11, line: 65, baseType: !21, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "archive_write_header", scope: !18, file: !11, line: 66, baseType: !28, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{!24, !25, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "archive_entry", file: !33, line: 138, flags: DIFlagFwdDecl)
!33 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive.h", directory: "", checksumkind: CSK_MD5, checksum: "703a5ace3500dcd65d2545f8e55e69bb")
!34 = !DIDerivedType(tag: DW_TAG_member, name: "archive_write_finish_entry", scope: !18, file: !11, line: 68, baseType: !21, size: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "archive_write_data", scope: !18, file: !11, line: 69, baseType: !36, size: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !25, !44, !46}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !40, line: 108, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !42, line: 194, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!43 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "archive_write_data_block", scope: !18, file: !11, line: 71, baseType: !50, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!39, !25, !44, !46, !53}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !54, line: 27, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !42, line: 44, baseType: !43)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "archive_read_next_header", scope: !18, file: !11, line: 74, baseType: !57, size: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!24, !25, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "archive_read_next_header2", scope: !18, file: !11, line: 76, baseType: !28, size: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "archive_read_data_block", scope: !18, file: !11, line: 78, baseType: !63, size: 64, offset: 512)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!24, !25, !66, !67, !68}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "archive_filter_count", scope: !18, file: !11, line: 81, baseType: !21, size: 64, offset: 576)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "archive_filter_bytes", scope: !18, file: !11, line: 82, baseType: !71, size: 64, offset: 640)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!53, !25, !24}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "archive_filter_code", scope: !18, file: !11, line: 83, baseType: !75, size: 64, offset: 704)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!24, !25, !24}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "archive_filter_name", scope: !18, file: !11, line: 84, baseType: !79, size: 64, offset: 768)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !25, !24}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "archive_format", scope: !10, file: !11, line: 105, baseType: !24, size: 32, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "archive_format_name", scope: !10, file: !11, line: 106, baseType: !82, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "compression_code", scope: !10, file: !11, line: 108, baseType: !24, size: 32, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "compression_name", scope: !10, file: !11, line: 109, baseType: !82, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "file_count", scope: !10, file: !11, line: 112, baseType: !24, size: 32, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "archive_error_number", scope: !10, file: !11, line: 114, baseType: !24, size: 32, offset: 416)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !10, file: !11, line: 115, baseType: !82, size: 64, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "error_string", scope: !10, file: !11, line: 116, baseType: !93, size: 192, offset: 512)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_string", file: !94, line: 58, size: 192, elements: !95)
!94 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_string.h", directory: "", checksumkind: CSK_MD5, checksum: "12bf639eff6923fc1af151e931c4d9b5")
!95 = !{!96, !98, !99}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !93, file: !94, line: 59, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !93, file: !94, line: 60, baseType: !46, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_length", scope: !93, file: !94, line: 61, baseType: !46, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "current_code", scope: !10, file: !11, line: 118, baseType: !97, size: 64, offset: 704)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "current_codepage", scope: !10, file: !11, line: 119, baseType: !14, size: 32, offset: 768)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "current_oemcp", scope: !10, file: !11, line: 120, baseType: !14, size: 32, offset: 800)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sconv", scope: !10, file: !11, line: 121, baseType: !104, size: 64, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "archive_string_conv", file: !106, line: 36, flags: DIFlagFwdDecl)
!106 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_entry_locale.h", directory: "", checksumkind: CSK_MD5, checksum: "11d0c7adcc0ec9574af99a8497f7cf29")
!107 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6, file: !7, line: 148, baseType: !31, size: 64, offset: 896)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "skip_file_set", scope: !6, file: !7, line: 151, baseType: !24, size: 32, offset: 960)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "skip_file_dev", scope: !6, file: !7, line: 152, baseType: !53, size: 64, offset: 1024)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "skip_file_ino", scope: !6, file: !7, line: 153, baseType: !53, size: 64, offset: 1088)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "read_data_block", scope: !6, file: !7, line: 159, baseType: !82, size: 64, offset: 1152)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "read_data_offset", scope: !6, file: !7, line: 160, baseType: !53, size: 64, offset: 1216)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "read_data_output_offset", scope: !6, file: !7, line: 161, baseType: !53, size: 64, offset: 1280)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "read_data_remaining", scope: !6, file: !7, line: 162, baseType: !46, size: 64, offset: 1344)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "read_data_is_posix_read", scope: !6, file: !7, line: 169, baseType: !84, size: 8, offset: 1408)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "read_data_requested", scope: !6, file: !7, line: 170, baseType: !46, size: 64, offset: 1472)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !6, file: !7, line: 173, baseType: !118, size: 576, offset: 1536)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_read_client", file: !7, line: 132, size: 576, elements: !119)
!119 = !{!120, !126, !131, !136, !141, !144, !149, !150, !151, !152}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "opener", scope: !118, file: !7, line: 133, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "archive_open_callback", file: !33, line: 199, baseType: !123)
!123 = !DISubroutineType(types: !124)
!124 = !{!24, !25, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !118, file: !7, line: 134, baseType: !127, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "archive_read_callback", file: !33, line: 176, baseType: !129)
!129 = !DISubroutineType(types: !130)
!130 = !{!39, !25, !125, !66}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "skipper", scope: !118, file: !7, line: 135, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "archive_skip_callback", file: !33, line: 184, baseType: !134)
!134 = !DISubroutineType(types: !135)
!135 = !{!53, !25, !125, !53}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "seeker", scope: !118, file: !7, line: 136, baseType: !137, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "archive_seek_callback", file: !33, line: 191, baseType: !139)
!139 = !DISubroutineType(types: !140)
!140 = !{!53, !25, !125, !53, !24}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "closer", scope: !118, file: !7, line: 137, baseType: !142, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "archive_close_callback", file: !33, line: 201, baseType: !123)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "switcher", scope: !118, file: !7, line: 138, baseType: !145, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "archive_switch_callback", file: !33, line: 207, baseType: !147)
!147 = !DISubroutineType(types: !148)
!148 = !{!24, !25, !125, !125}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !118, file: !7, line: 139, baseType: !14, size: 32, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !118, file: !7, line: 140, baseType: !14, size: 32, offset: 416)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !118, file: !7, line: 141, baseType: !53, size: 64, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dataset", scope: !118, file: !7, line: 142, baseType: !153, size: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_read_data_node", file: !7, line: 127, size: 192, elements: !155)
!155 = !{!156, !157, !158}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "begin_position", scope: !154, file: !7, line: 128, baseType: !53, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !154, file: !7, line: 129, baseType: !53, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !154, file: !7, line: 130, baseType: !125, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "bidders", scope: !6, file: !7, line: 176, baseType: !160, size: 5376, offset: 2112)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 5376, elements: !221)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_read_filter_bidder", file: !7, line: 58, size: 384, elements: !162)
!162 = !{!163, !164, !165, !212, !213, !217}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !161, file: !7, line: 60, baseType: !125, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !7, line: 62, baseType: !82, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "bid", scope: !161, file: !7, line: 64, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!24, !169, !170}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_read_filter", file: !7, line: 80, size: 1408, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !181, !185, !189, !193, !194, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !171, file: !7, line: 81, baseType: !53, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "bidder", scope: !171, file: !7, line: 84, baseType: !169, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !171, file: !7, line: 85, baseType: !170, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "archive", scope: !171, file: !7, line: 86, baseType: !5, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !171, file: !7, line: 88, baseType: !178, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!24, !170}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !171, file: !7, line: 90, baseType: !182, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!39, !170, !66}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !171, file: !7, line: 92, baseType: !186, size: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!53, !170, !53}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !171, file: !7, line: 94, baseType: !190, size: 64, offset: 448)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!53, !170, !53, !24}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !171, file: !7, line: 96, baseType: !178, size: 64, offset: 512)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sswitch", scope: !171, file: !7, line: 98, baseType: !195, size: 64, offset: 576)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!24, !170, !14}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !171, file: !7, line: 100, baseType: !125, size: 64, offset: 640)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !171, file: !7, line: 102, baseType: !82, size: 64, offset: 704)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !171, file: !7, line: 103, baseType: !24, size: 32, offset: 768)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !171, file: !7, line: 106, baseType: !97, size: 64, offset: 832)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !171, file: !7, line: 107, baseType: !46, size: 64, offset: 896)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !171, file: !7, line: 108, baseType: !97, size: 64, offset: 960)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "avail", scope: !171, file: !7, line: 109, baseType: !46, size: 64, offset: 1024)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "client_buff", scope: !171, file: !7, line: 110, baseType: !44, size: 64, offset: 1088)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "client_total", scope: !171, file: !7, line: 111, baseType: !46, size: 64, offset: 1152)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "client_next", scope: !171, file: !7, line: 112, baseType: !82, size: 64, offset: 1216)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "client_avail", scope: !171, file: !7, line: 113, baseType: !46, size: 64, offset: 1280)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "end_of_file", scope: !171, file: !7, line: 114, baseType: !84, size: 8, offset: 1344)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !171, file: !7, line: 115, baseType: !84, size: 8, offset: 1352)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "fatal", scope: !171, file: !7, line: 116, baseType: !84, size: 8, offset: 1360)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !161, file: !7, line: 67, baseType: !178, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !161, file: !7, line: 69, baseType: !214, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!24, !169, !82, !82}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !161, file: !7, line: 72, baseType: !218, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!24, !169}
!221 = !{!222}
!222 = !DISubrange(count: 14)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !6, file: !7, line: 179, baseType: !170, size: 64, offset: 7488)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "bypass_filter_bidding", scope: !6, file: !7, line: 182, baseType: !24, size: 32, offset: 7552)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "header_position", scope: !6, file: !7, line: 185, baseType: !53, size: 64, offset: 7616)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "data_start_node", scope: !6, file: !7, line: 188, baseType: !14, size: 32, offset: 7680)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "data_end_node", scope: !6, file: !7, line: 189, baseType: !14, size: 32, offset: 7712)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "formats", scope: !6, file: !7, line: 210, baseType: !229, size: 9216, offset: 7744)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 9216, elements: !259)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_format_descriptor", file: !7, line: 199, size: 576, elements: !231)
!231 = !{!232, !233, !234, !238, !242, !246, !250, !254, !258}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !230, file: !7, line: 200, baseType: !125, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !230, file: !7, line: 201, baseType: !82, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "bid", scope: !230, file: !7, line: 202, baseType: !235, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!24, !5, !24}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !230, file: !7, line: 203, baseType: !239, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!24, !5, !82, !82}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "read_header", scope: !230, file: !7, line: 205, baseType: !243, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!24, !5, !31}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "read_data", scope: !230, file: !7, line: 206, baseType: !247, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!24, !5, !66, !67, !68}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "read_data_skip", scope: !230, file: !7, line: 207, baseType: !251, size: 64, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!24, !5}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "seek_data", scope: !230, file: !7, line: 208, baseType: !255, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!53, !5, !53, !24}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !230, file: !7, line: 209, baseType: !251, size: 64, offset: 512)
!259 = !{!260}
!260 = !DISubrange(count: 16)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !6, file: !7, line: 211, baseType: !262, size: 64, offset: 16960)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !6, file: !7, line: 216, baseType: !264, size: 64, offset: 17024)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DICompositeType(tag: DW_TAG_structure_type, name: "extract", file: !7, line: 216, flags: DIFlagFwdDecl)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_archive_extract", scope: !6, file: !7, line: 217, baseType: !251, size: 64, offset: 17088)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rar", file: !269, line: 209, size: 161600, elements: !270)
!269 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_read_support_format_rar.c", directory: "", checksumkind: CSK_MD5, checksum: "3680227298f7457c0fb1363d8314fa05")
!270 = !{!271, !272, !273, !277, !281, !282, !283, !284, !285, !286, !290, !291, !294, !295, !296, !297, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !319, !320, !321, !322, !323, !324, !325, !332, !333, !334, !353, !354, !355, !356, !360, !366, !367, !368, !369, !371, !372, !373, !374, !375, !376, !377, !378, !379, !460, !491, !492, !493, !494, !495, !496, !497}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "main_flags", scope: !268, file: !269, line: 212, baseType: !14, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "file_crc", scope: !268, file: !269, line: 213, baseType: !48, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !268, file: !269, line: 214, baseType: !274, size: 16, offset: 128)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 16, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 2)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !268, file: !269, line: 215, baseType: !278, size: 32, offset: 144)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 32, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 4)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "encryptver", scope: !268, file: !269, line: 216, baseType: !84, size: 8, offset: 176)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "compression_method", scope: !268, file: !269, line: 219, baseType: !84, size: 8, offset: 184)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "file_flags", scope: !268, file: !269, line: 220, baseType: !14, size: 32, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "packed_size", scope: !268, file: !269, line: 221, baseType: !53, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "unp_size", scope: !268, file: !269, line: 222, baseType: !53, size: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !268, file: !269, line: 223, baseType: !287, size: 64, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !288, line: 10, baseType: !289)
!288 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !42, line: 160, baseType: !43)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mnsec", scope: !268, file: !269, line: 224, baseType: !43, size: 64, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !268, file: !269, line: 225, baseType: !292, size: 32, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !40, line: 69, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !42, line: 150, baseType: !14)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !268, file: !269, line: 226, baseType: !97, size: 64, offset: 576)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "filename_save", scope: !268, file: !269, line: 227, baseType: !97, size: 64, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "filename_allocated", scope: !268, file: !269, line: 228, baseType: !46, size: 64, offset: 704)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "salt", scope: !268, file: !269, line: 231, baseType: !298, size: 64, offset: 768)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 64, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 8)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !268, file: !269, line: 232, baseType: !287, size: 64, offset: 832)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ansec", scope: !268, file: !269, line: 233, baseType: !43, size: 64, offset: 896)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !268, file: !269, line: 234, baseType: !287, size: 64, offset: 960)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "cnsec", scope: !268, file: !269, line: 235, baseType: !43, size: 64, offset: 1024)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "arctime", scope: !268, file: !269, line: 236, baseType: !287, size: 64, offset: 1088)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "arcnsec", scope: !268, file: !269, line: 237, baseType: !43, size: 64, offset: 1152)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_unconsumed", scope: !268, file: !269, line: 240, baseType: !53, size: 64, offset: 1216)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_remaining", scope: !268, file: !269, line: 241, baseType: !53, size: 64, offset: 1280)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_uncopied", scope: !268, file: !269, line: 242, baseType: !53, size: 64, offset: 1344)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !268, file: !269, line: 243, baseType: !53, size: 64, offset: 1408)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "offset_outgoing", scope: !268, file: !269, line: 244, baseType: !53, size: 64, offset: 1472)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "offset_seek", scope: !268, file: !269, line: 245, baseType: !53, size: 64, offset: 1536)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !268, file: !269, line: 246, baseType: !84, size: 8, offset: 1600)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "unp_offset", scope: !268, file: !269, line: 247, baseType: !14, size: 32, offset: 1632)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "unp_buffer_size", scope: !268, file: !269, line: 248, baseType: !14, size: 32, offset: 1664)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "unp_buffer", scope: !268, file: !269, line: 249, baseType: !317, size: 64, offset: 1728)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "dictionary_size", scope: !268, file: !269, line: 250, baseType: !14, size: 32, offset: 1792)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "start_new_block", scope: !268, file: !269, line: 251, baseType: !84, size: 8, offset: 1824)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eof", scope: !268, file: !269, line: 252, baseType: !84, size: 8, offset: 1832)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "crc_calculated", scope: !268, file: !269, line: 253, baseType: !48, size: 64, offset: 1856)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "found_first_header", scope: !268, file: !269, line: 254, baseType: !24, size: 32, offset: 1920)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "has_endarc_header", scope: !268, file: !269, line: 255, baseType: !84, size: 8, offset: 1952)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "dbo", scope: !268, file: !269, line: 256, baseType: !326, size: 64, offset: 1984)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_block_offsets", file: !269, line: 202, size: 192, elements: !328)
!328 = !{!329, !330, !331}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !327, file: !269, line: 204, baseType: !53, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "start_offset", scope: !327, file: !269, line: 205, baseType: !53, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "end_offset", scope: !327, file: !269, line: 206, baseType: !53, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !268, file: !269, line: 257, baseType: !14, size: 32, offset: 2048)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !268, file: !269, line: 258, baseType: !14, size: 32, offset: 2080)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "maincode", scope: !268, file: !269, line: 261, baseType: !335, size: 256, offset: 2112)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "huffman_code", file: !269, line: 185, size: 256, elements: !336)
!336 = !{!337, !343, !344, !345, !346, !347}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !335, file: !269, line: 187, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "huffman_tree_node", file: !269, line: 174, size: 64, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "branches", scope: !339, file: !269, line: 176, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, elements: !275)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "numentries", scope: !335, file: !269, line: 188, baseType: !24, size: 32, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "minlength", scope: !335, file: !269, line: 189, baseType: !24, size: 32, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "maxlength", scope: !335, file: !269, line: 190, baseType: !24, size: 32, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tablesize", scope: !335, file: !269, line: 191, baseType: !24, size: 32, offset: 160)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !335, file: !269, line: 192, baseType: !348, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "huffman_table_entry", file: !269, line: 179, size: 64, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !349, file: !269, line: 181, baseType: !14, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !349, file: !269, line: 182, baseType: !24, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "offsetcode", scope: !268, file: !269, line: 262, baseType: !335, size: 256, offset: 2368)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "lowoffsetcode", scope: !268, file: !269, line: 263, baseType: !335, size: 256, offset: 2624)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "lengthcode", scope: !268, file: !269, line: 264, baseType: !335, size: 256, offset: 2880)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "lengthtable", scope: !268, file: !269, line: 265, baseType: !357, size: 3232, offset: 3136)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 3232, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 404)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "lzss", scope: !268, file: !269, line: 266, baseType: !361, size: 192, offset: 6400)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzss", file: !269, line: 195, size: 192, elements: !362)
!362 = !{!363, !364, !365}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !361, file: !269, line: 197, baseType: !317, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !361, file: !269, line: 198, baseType: !24, size: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !361, file: !269, line: 199, baseType: !53, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "output_last_match", scope: !268, file: !269, line: 267, baseType: !84, size: 8, offset: 6592)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "lastlength", scope: !268, file: !269, line: 268, baseType: !14, size: 32, offset: 6624)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "lastoffset", scope: !268, file: !269, line: 269, baseType: !14, size: 32, offset: 6656)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "oldoffset", scope: !268, file: !269, line: 270, baseType: !370, size: 128, offset: 6688)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !279)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "lastlowoffset", scope: !268, file: !269, line: 271, baseType: !14, size: 32, offset: 6816)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "numlowoffsetrepeats", scope: !268, file: !269, line: 272, baseType: !14, size: 32, offset: 6848)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "filterstart", scope: !268, file: !269, line: 273, baseType: !53, size: 64, offset: 6912)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "start_new_table", scope: !268, file: !269, line: 274, baseType: !84, size: 8, offset: 6976)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ppmd_valid", scope: !268, file: !269, line: 277, baseType: !84, size: 8, offset: 6984)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ppmd_eod", scope: !268, file: !269, line: 278, baseType: !84, size: 8, offset: 6992)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "is_ppmd_block", scope: !268, file: !269, line: 279, baseType: !84, size: 8, offset: 7000)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ppmd_escape", scope: !268, file: !269, line: 280, baseType: !24, size: 32, offset: 7008)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ppmd7_context", scope: !268, file: !269, line: 281, baseType: !380, size: 153472, offset: 7040)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "CPpmd7", file: !381, line: 62, baseType: !382)
!381 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_ppmd7_private.h", directory: "", checksumkind: CSK_MD5, checksum: "035c2903f95d759e2a502300a8f70ec3")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 44, size: 153472, elements: !383)
!383 = !{!384, !399, !400, !411, !412, !413, !414, !415, !416, !418, !419, !420, !421, !423, !424, !425, !426, !427, !428, !432, !436, !439, !443, !444, !445, !452, !456}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "MinContext", scope: !382, file: !381, line: 46, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "CPpmd7_Context", file: !381, line: 40, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CPpmd7_Context_", file: !381, line: 34, size: 96, elements: !388)
!388 = !{!389, !393, !394, !397}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "NumStats", scope: !387, file: !381, line: 36, baseType: !390, size: 16)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "UInt16", file: !391, line: 22, baseType: !392)
!391 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_ppmd_private.h", directory: "", checksumkind: CSK_MD5, checksum: "0b9a05f433d33ca889e8684cdbc079c9")
!392 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "SummFreq", scope: !387, file: !381, line: 37, baseType: !390, size: 16, offset: 16)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "Stats", scope: !387, file: !381, line: 38, baseType: !395, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "CPpmd_State_Ref", file: !391, line: 136, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "UInt32", file: !391, line: 29, baseType: !14)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "Suffix", scope: !387, file: !381, line: 39, baseType: !398, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "CPpmd7_Context_Ref", file: !381, line: 32, baseType: !396)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "MaxContext", scope: !382, file: !381, line: 46, baseType: !385, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "FoundState", scope: !382, file: !381, line: 47, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "CPpmd_State", file: !391, line: 128, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 122, size: 48, elements: !404)
!404 = !{!405, !408, !409, !410}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "Symbol", scope: !403, file: !391, line: 124, baseType: !406, size: 8)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !407, line: 391, baseType: !318)
!407 = !DIFile(filename: "/usr/include/zconf.h", directory: "", checksumkind: CSK_MD5, checksum: "95e83c46958f6395f746c80cc6799e76")
!408 = !DIDerivedType(tag: DW_TAG_member, name: "Freq", scope: !403, file: !391, line: 125, baseType: !406, size: 8, offset: 8)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "SuccessorLow", scope: !403, file: !391, line: 126, baseType: !390, size: 16, offset: 16)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "SuccessorHigh", scope: !403, file: !391, line: 127, baseType: !390, size: 16, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "OrderFall", scope: !382, file: !381, line: 48, baseType: !14, size: 32, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "InitEsc", scope: !382, file: !381, line: 48, baseType: !14, size: 32, offset: 224)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "PrevSuccess", scope: !382, file: !381, line: 48, baseType: !14, size: 32, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "MaxOrder", scope: !382, file: !381, line: 48, baseType: !14, size: 32, offset: 288)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "HiBitsFlag", scope: !382, file: !381, line: 48, baseType: !14, size: 32, offset: 320)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "RunLength", scope: !382, file: !381, line: 49, baseType: !417, size: 32, offset: 352)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "Int32", file: !391, line: 28, baseType: !24)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "InitRL", scope: !382, file: !381, line: 49, baseType: !417, size: 32, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !382, file: !381, line: 51, baseType: !396, size: 32, offset: 416)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "GlueCount", scope: !382, file: !381, line: 52, baseType: !396, size: 32, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "Base", scope: !382, file: !381, line: 53, baseType: !422, size: 64, offset: 512)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "LoUnit", scope: !382, file: !381, line: 53, baseType: !422, size: 64, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "HiUnit", scope: !382, file: !381, line: 53, baseType: !422, size: 64, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "Text", scope: !382, file: !381, line: 53, baseType: !422, size: 64, offset: 704)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "UnitsStart", scope: !382, file: !381, line: 53, baseType: !422, size: 64, offset: 768)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "AlignOffset", scope: !382, file: !381, line: 54, baseType: !396, size: 32, offset: 832)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "Indx2Units", scope: !382, file: !381, line: 56, baseType: !429, size: 304, offset: 864)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 304, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 38)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "Units2Indx", scope: !382, file: !381, line: 57, baseType: !433, size: 1024, offset: 1168)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 1024, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "FreeList", scope: !382, file: !381, line: 58, baseType: !437, size: 1216, offset: 2208)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 1216, elements: !430)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "CPpmd_Void_Ref", file: !391, line: 144, baseType: !396)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "NS2Indx", scope: !382, file: !381, line: 59, baseType: !440, size: 2048, offset: 3424)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 2048, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 256)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "NS2BSIndx", scope: !382, file: !381, line: 59, baseType: !440, size: 2048, offset: 5472)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "HB2Flag", scope: !382, file: !381, line: 59, baseType: !440, size: 2048, offset: 7520)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "DummySee", scope: !382, file: !381, line: 60, baseType: !446, size: 32, offset: 9568)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "CPpmd_See", file: !391, line: 117, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 112, size: 32, elements: !448)
!448 = !{!449, !450, !451}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "Summ", scope: !447, file: !391, line: 114, baseType: !390, size: 16)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "Shift", scope: !447, file: !391, line: 115, baseType: !406, size: 8, offset: 16)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "Count", scope: !447, file: !391, line: 116, baseType: !406, size: 8, offset: 24)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "See", scope: !382, file: !381, line: 60, baseType: !453, size: 12800, offset: 9600)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 12800, elements: !454)
!454 = !{!455, !260}
!455 = !DISubrange(count: 25)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "BinSumm", scope: !382, file: !381, line: 61, baseType: !457, size: 131072, offset: 22400)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 131072, elements: !458)
!458 = !{!435, !459}
!459 = !DISubrange(count: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "range_dec", scope: !268, file: !269, line: 282, baseType: !461, size: 384, offset: 160512)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "CPpmd7z_RangeDec", file: !381, line: 81, baseType: !462)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 73, size: 384, elements: !463)
!463 = !{!464, !477, !478, !479, !480, !481}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !462, file: !381, line: 75, baseType: !465, size: 192)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPpmd7_RangeDec", file: !381, line: 71, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 66, size: 192, elements: !467)
!467 = !{!468, !472, !476}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "GetThreshold", scope: !466, file: !381, line: 68, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!396, !125, !396}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "Decode", scope: !466, file: !381, line: 69, baseType: !473, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !125, !396, !396}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeBit", scope: !466, file: !381, line: 70, baseType: !469, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "Range", scope: !462, file: !381, line: 76, baseType: !396, size: 32, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "Code", scope: !462, file: !381, line: 77, baseType: !396, size: 32, offset: 224)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "Low", scope: !462, file: !381, line: 78, baseType: !396, size: 32, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "Bottom", scope: !462, file: !381, line: 79, baseType: !396, size: 32, offset: 288)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "Stream", scope: !462, file: !381, line: 80, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "IByteIn", file: !391, line: 64, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 60, size: 128, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !484, file: !391, line: 62, baseType: !5, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "Read", scope: !484, file: !391, line: 63, baseType: !488, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!406, !125}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "bytein", scope: !268, file: !269, line: 283, baseType: !483, size: 128, offset: 160896)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "init_default_conversion", scope: !268, file: !269, line: 288, baseType: !24, size: 32, offset: 161024)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sconv_default", scope: !268, file: !269, line: 289, baseType: !104, size: 64, offset: 161088)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "opt_sconv", scope: !268, file: !269, line: 290, baseType: !104, size: 64, offset: 161152)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sconv_utf8", scope: !268, file: !269, line: 291, baseType: !104, size: 64, offset: 161216)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sconv_utf16be", scope: !268, file: !269, line: 292, baseType: !104, size: 64, offset: 161280)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "br", scope: !268, file: !269, line: 306, baseType: !498, size: 256, offset: 161344)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rar_br", file: !269, line: 297, size: 256, elements: !499)
!499 = !{!500, !504, !505, !506}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "cache_buffer", scope: !498, file: !269, line: 301, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !502, line: 27, baseType: !503)
!502 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !42, line: 45, baseType: !48)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "cache_avail", scope: !498, file: !269, line: 303, baseType: !24, size: 32, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !498, file: !269, line: 304, baseType: !39, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !498, file: !269, line: 305, baseType: !507, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !502, line: 26, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !42, line: 42, baseType: !14)
!511 = !{!0, !512, !518, !527, !529, !535, !538, !541}
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "cache_masks", scope: !2, file: !269, line: 370, type: !514, isLocal: true, isDefinition: true)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 1152, elements: !516)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!516 = !{!517}
!517 = !DISubrange(count: 36)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "lengthbases", scope: !520, file: !269, line: 2558, type: !524, isLocal: true, isDefinition: true)
!520 = distinct !DISubprogram(name: "expand", scope: !269, file: !269, line: 2556, type: !521, scopeLine: 2557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{!53, !5, !53}
!523 = !{}
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 224, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 28)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(name: "lengthbits", scope: !520, file: !269, line: 2563, type: !524, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "offsetbases", scope: !520, file: !269, line: 2568, type: !531, isLocal: true, isDefinition: true)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 1920, elements: !533)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!533 = !{!534}
!534 = !DISubrange(count: 60)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(name: "offsetbits", scope: !520, file: !269, line: 2579, type: !537, isLocal: true, isDefinition: true)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 480, elements: !533)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "shortbases", scope: !520, file: !269, line: 2585, type: !540, isLocal: true, isDefinition: true)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 64, elements: !299)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "shortbits", scope: !520, file: !269, line: 2587, type: !540, isLocal: true, isDefinition: true)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "ISzAlloc", file: !391, line: 77, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 73, size: 128, elements: !545)
!545 = !{!546, !550}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "Alloc", scope: !544, file: !391, line: 75, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!125, !125, !46}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "Free", scope: !544, file: !391, line: 76, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !125, !125}
!554 = !{i32 7, !"Dwarf Version", i32 5}
!555 = !{i32 2, !"Debug Info Version", i32 3}
!556 = !{i32 1, !"wchar_size", i32 4}
!557 = !{i32 7, !"PIC Level", i32 2}
!558 = !{i32 7, !"PIE Level", i32 2}
!559 = !{i32 7, !"uwtable", i32 1}
!560 = !{i32 7, !"frame-pointer", i32 2}
!561 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!562 = distinct !DISubprogram(name: "archive_read_support_format_rar", scope: !269, file: !269, line: 632, type: !22, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !523)
!563 = !DILocalVariable(name: "_a", arg: 1, scope: !562, file: !269, line: 632, type: !25)
!564 = !DILocation(line: 0, scope: !562)
!565 = !DILocation(line: 634, column: 28, scope: !562)
!566 = !DILocalVariable(name: "a", scope: !562, file: !269, line: 634, type: !5)
!567 = !DILocation(line: 638, column: 3, scope: !562)
!568 = !DILocation(line: 638, column: 3, scope: !569)
!569 = distinct !DILexicalBlock(scope: !562, file: !269, line: 638, column: 3)
!570 = !DILocalVariable(name: "magic_test", scope: !569, file: !269, line: 638, type: !24)
!571 = !DILocation(line: 0, scope: !569)
!572 = !DILocation(line: 638, column: 3, scope: !573)
!573 = distinct !DILexicalBlock(scope: !569, file: !269, line: 638, column: 3)
!574 = !DILocation(line: 641, column: 23, scope: !562)
!575 = !DILocation(line: 641, column: 9, scope: !562)
!576 = !DILocalVariable(name: "rar", scope: !562, file: !269, line: 635, type: !267)
!577 = !DILocation(line: 642, column: 11, scope: !578)
!578 = distinct !DILexicalBlock(scope: !562, file: !269, line: 642, column: 7)
!579 = !DILocation(line: 642, column: 7, scope: !562)
!580 = !DILocation(line: 644, column: 27, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !269, line: 643, column: 3)
!582 = !DILocation(line: 644, column: 5, scope: !581)
!583 = !DILocation(line: 645, column: 5, scope: !581)
!584 = !DILocation(line: 647, column: 3, scope: !562)
!585 = !DILocation(line: 650, column: 38, scope: !562)
!586 = !DILocation(line: 649, column: 7, scope: !562)
!587 = !DILocalVariable(name: "r", scope: !562, file: !269, line: 636, type: !24)
!588 = !DILocation(line: 660, column: 9, scope: !589)
!589 = distinct !DILexicalBlock(scope: !562, file: !269, line: 660, column: 7)
!590 = !DILocation(line: 660, column: 7, scope: !562)
!591 = !DILocation(line: 661, column: 10, scope: !589)
!592 = !DILocation(line: 661, column: 5, scope: !589)
!593 = !DILocation(line: 662, column: 3, scope: !562)
!594 = !DILocation(line: 663, column: 1, scope: !562)
!595 = distinct !DISubprogram(name: "archive_read_format_rar_bid", scope: !269, file: !269, line: 666, type: !236, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!596 = !DILocalVariable(name: "a", arg: 1, scope: !595, file: !269, line: 666, type: !5)
!597 = !DILocation(line: 0, scope: !595)
!598 = !DILocalVariable(name: "best_bid", arg: 2, scope: !595, file: !269, line: 666, type: !24)
!599 = !DILocation(line: 671, column: 16, scope: !600)
!600 = distinct !DILexicalBlock(scope: !595, file: !269, line: 671, column: 7)
!601 = !DILocation(line: 671, column: 7, scope: !595)
!602 = !DILocation(line: 672, column: 4, scope: !600)
!603 = !DILocation(line: 674, column: 12, scope: !604)
!604 = distinct !DILexicalBlock(scope: !595, file: !269, line: 674, column: 7)
!605 = !DILocalVariable(name: "p", scope: !595, file: !269, line: 668, type: !82)
!606 = !DILocation(line: 674, column: 46, scope: !604)
!607 = !DILocation(line: 674, column: 7, scope: !595)
!608 = !DILocation(line: 675, column: 5, scope: !604)
!609 = !DILocation(line: 677, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !595, file: !269, line: 677, column: 7)
!611 = !DILocation(line: 677, column: 35, scope: !610)
!612 = !DILocation(line: 677, column: 7, scope: !595)
!613 = !DILocation(line: 678, column: 5, scope: !610)
!614 = !DILocation(line: 680, column: 8, scope: !615)
!615 = distinct !DILexicalBlock(scope: !595, file: !269, line: 680, column: 7)
!616 = !DILocation(line: 680, column: 13, scope: !615)
!617 = !DILocation(line: 680, column: 20, scope: !615)
!618 = !DILocation(line: 680, column: 23, scope: !615)
!619 = !DILocation(line: 680, column: 28, scope: !615)
!620 = !DILocation(line: 680, column: 36, scope: !615)
!621 = !DILocation(line: 680, column: 39, scope: !615)
!622 = !DILocation(line: 680, column: 66, scope: !615)
!623 = !DILocation(line: 680, column: 7, scope: !595)
!624 = !DILocalVariable(name: "offset", scope: !625, file: !269, line: 682, type: !39)
!625 = distinct !DILexicalBlock(scope: !615, file: !269, line: 680, column: 72)
!626 = !DILocation(line: 0, scope: !625)
!627 = !DILocalVariable(name: "window", scope: !625, file: !269, line: 683, type: !39)
!628 = !DILocalVariable(name: "bytes_avail", scope: !625, file: !269, line: 684, type: !39)
!629 = !DILocation(line: 684, column: 13, scope: !625)
!630 = !DILocation(line: 685, column: 5, scope: !625)
!631 = !DILocation(line: 685, column: 19, scope: !625)
!632 = !DILocation(line: 685, column: 28, scope: !625)
!633 = !DILocation(line: 686, column: 57, scope: !634)
!634 = distinct !DILexicalBlock(scope: !625, file: !269, line: 685, column: 45)
!635 = !DILocation(line: 686, column: 26, scope: !634)
!636 = !DILocalVariable(name: "buff", scope: !634, file: !269, line: 686, type: !82)
!637 = !DILocation(line: 0, scope: !634)
!638 = !DILocation(line: 687, column: 16, scope: !639)
!639 = distinct !DILexicalBlock(scope: !634, file: !269, line: 687, column: 11)
!640 = !DILocation(line: 687, column: 11, scope: !634)
!641 = !DILocation(line: 689, column: 16, scope: !642)
!642 = distinct !DILexicalBlock(scope: !639, file: !269, line: 687, column: 25)
!643 = !DILocation(line: 690, column: 20, scope: !644)
!644 = distinct !DILexicalBlock(scope: !642, file: !269, line: 690, column: 13)
!645 = !DILocation(line: 690, column: 13, scope: !642)
!646 = !DILocation(line: 691, column: 11, scope: !644)
!647 = !DILocation(line: 692, column: 9, scope: !642)
!648 = distinct !{!648, !630, !649, !650}
!649 = !DILocation(line: 701, column: 5, scope: !625)
!650 = !{!"llvm.loop.mustprogress"}
!651 = !DILocation(line: 694, column: 16, scope: !634)
!652 = !DILocation(line: 695, column: 7, scope: !634)
!653 = !DILocation(line: 695, column: 16, scope: !634)
!654 = !DILocation(line: 695, column: 29, scope: !634)
!655 = !DILocation(line: 695, column: 27, scope: !634)
!656 = !DILocation(line: 695, column: 20, scope: !634)
!657 = !DILocation(line: 696, column: 13, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !269, line: 696, column: 13)
!659 = distinct !DILexicalBlock(scope: !634, file: !269, line: 695, column: 42)
!660 = !DILocation(line: 696, column: 41, scope: !658)
!661 = !DILocation(line: 696, column: 13, scope: !659)
!662 = !DILocation(line: 697, column: 11, scope: !658)
!663 = !DILocation(line: 698, column: 11, scope: !659)
!664 = distinct !{!664, !652, !665, !650}
!665 = !DILocation(line: 699, column: 7, scope: !634)
!666 = !DILocation(line: 700, column: 18, scope: !634)
!667 = !DILocation(line: 702, column: 3, scope: !625)
!668 = !DILocation(line: 703, column: 3, scope: !595)
!669 = !DILocation(line: 704, column: 1, scope: !595)
!670 = distinct !DISubprogram(name: "archive_read_format_rar_options", scope: !269, file: !269, line: 753, type: !240, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!671 = !DILocalVariable(name: "a", arg: 1, scope: !670, file: !269, line: 753, type: !5)
!672 = !DILocation(line: 0, scope: !670)
!673 = !DILocalVariable(name: "key", arg: 2, scope: !670, file: !269, line: 754, type: !82)
!674 = !DILocalVariable(name: "val", arg: 3, scope: !670, file: !269, line: 754, type: !82)
!675 = !DILocalVariable(name: "ret", scope: !670, file: !269, line: 757, type: !24)
!676 = !DILocation(line: 759, column: 27, scope: !670)
!677 = !DILocation(line: 759, column: 35, scope: !670)
!678 = !DILocation(line: 759, column: 9, scope: !670)
!679 = !DILocalVariable(name: "rar", scope: !670, file: !269, line: 756, type: !267)
!680 = !DILocation(line: 760, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !670, file: !269, line: 760, column: 7)
!682 = !DILocation(line: 760, column: 34, scope: !681)
!683 = !DILocation(line: 760, column: 7, scope: !670)
!684 = !DILocation(line: 761, column: 13, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !269, line: 761, column: 9)
!686 = distinct !DILexicalBlock(scope: !681, file: !269, line: 760, column: 40)
!687 = !DILocation(line: 761, column: 21, scope: !685)
!688 = !DILocation(line: 761, column: 24, scope: !685)
!689 = !DILocation(line: 761, column: 31, scope: !685)
!690 = !DILocation(line: 761, column: 9, scope: !686)
!691 = !DILocation(line: 762, column: 29, scope: !685)
!692 = !DILocation(line: 762, column: 7, scope: !685)
!693 = !DILocation(line: 767, column: 19, scope: !694)
!694 = distinct !DILexicalBlock(scope: !685, file: !269, line: 764, column: 10)
!695 = !DILocation(line: 766, column: 11, scope: !694)
!696 = !DILocation(line: 765, column: 12, scope: !694)
!697 = !DILocation(line: 765, column: 22, scope: !694)
!698 = !DILocation(line: 768, column: 16, scope: !699)
!699 = distinct !DILexicalBlock(scope: !694, file: !269, line: 768, column: 11)
!700 = !DILocation(line: 768, column: 26, scope: !699)
!701 = !DILocation(line: 768, column: 11, scope: !694)
!702 = !DILocation(line: 769, column: 9, scope: !699)
!703 = !DILocation(line: 0, scope: !699)
!704 = !DILocation(line: 773, column: 5, scope: !686)
!705 = !DILocation(line: 779, column: 3, scope: !670)
!706 = !DILocation(line: 780, column: 1, scope: !670)
!707 = distinct !DISubprogram(name: "archive_read_format_rar_read_header", scope: !269, file: !269, line: 783, type: !244, scopeLine: 785, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!708 = !DILocalVariable(name: "a", arg: 1, scope: !707, file: !269, line: 783, type: !5)
!709 = !DILocation(line: 0, scope: !707)
!710 = !DILocalVariable(name: "entry", arg: 2, scope: !707, file: !269, line: 784, type: !31)
!711 = !DILocation(line: 794, column: 6, scope: !707)
!712 = !DILocation(line: 794, column: 14, scope: !707)
!713 = !DILocation(line: 794, column: 29, scope: !707)
!714 = !DILocation(line: 795, column: 10, scope: !715)
!715 = distinct !DILexicalBlock(scope: !707, file: !269, line: 795, column: 7)
!716 = !DILocation(line: 795, column: 18, scope: !715)
!717 = !DILocation(line: 795, column: 38, scope: !715)
!718 = !DILocation(line: 795, column: 7, scope: !707)
!719 = !DILocation(line: 796, column: 8, scope: !715)
!720 = !DILocation(line: 796, column: 16, scope: !715)
!721 = !DILocation(line: 796, column: 36, scope: !715)
!722 = !DILocation(line: 796, column: 5, scope: !715)
!723 = !DILocation(line: 798, column: 27, scope: !707)
!724 = !DILocation(line: 798, column: 35, scope: !707)
!725 = !DILocation(line: 798, column: 9, scope: !707)
!726 = !DILocalVariable(name: "rar", scope: !707, file: !269, line: 788, type: !267)
!727 = !DILocation(line: 803, column: 12, scope: !728)
!728 = distinct !DILexicalBlock(scope: !707, file: !269, line: 803, column: 7)
!729 = !DILocalVariable(name: "h", scope: !707, file: !269, line: 786, type: !44)
!730 = !DILocation(line: 803, column: 46, scope: !728)
!731 = !DILocation(line: 803, column: 7, scope: !707)
!732 = !DILocation(line: 804, column: 5, scope: !728)
!733 = !DILocalVariable(name: "p", scope: !707, file: !269, line: 787, type: !82)
!734 = !DILocation(line: 807, column: 12, scope: !735)
!735 = distinct !DILexicalBlock(scope: !707, file: !269, line: 807, column: 7)
!736 = !DILocation(line: 807, column: 31, scope: !735)
!737 = !DILocation(line: 807, column: 36, scope: !735)
!738 = !DILocation(line: 808, column: 8, scope: !735)
!739 = !DILocation(line: 808, column: 13, scope: !735)
!740 = !DILocation(line: 808, column: 20, scope: !735)
!741 = !DILocation(line: 808, column: 23, scope: !735)
!742 = !DILocation(line: 808, column: 28, scope: !735)
!743 = !DILocation(line: 808, column: 36, scope: !735)
!744 = !DILocation(line: 808, column: 39, scope: !735)
!745 = !DILocation(line: 808, column: 66, scope: !735)
!746 = !DILocation(line: 807, column: 7, scope: !707)
!747 = !DILocation(line: 810, column: 11, scope: !748)
!748 = distinct !DILexicalBlock(scope: !735, file: !269, line: 808, column: 73)
!749 = !DILocalVariable(name: "ret", scope: !707, file: !269, line: 791, type: !24)
!750 = !DILocation(line: 811, column: 13, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !269, line: 811, column: 9)
!752 = !DILocation(line: 811, column: 9, scope: !748)
!753 = !DILocation(line: 812, column: 7, scope: !751)
!754 = !DILocation(line: 813, column: 3, scope: !748)
!755 = !DILocation(line: 814, column: 8, scope: !707)
!756 = !DILocation(line: 814, column: 27, scope: !707)
!757 = !DILocation(line: 816, column: 3, scope: !707)
!758 = !DILocation(line: 820, column: 14, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !269, line: 820, column: 9)
!760 = distinct !DILexicalBlock(scope: !707, file: !269, line: 817, column: 3)
!761 = !DILocation(line: 820, column: 48, scope: !759)
!762 = !DILocation(line: 820, column: 9, scope: !760)
!763 = !DILocation(line: 821, column: 7, scope: !759)
!764 = !DILocation(line: 824, column: 17, scope: !760)
!765 = !DILocalVariable(name: "head_type", scope: !707, file: !269, line: 790, type: !84)
!766 = !DILocation(line: 825, column: 12, scope: !760)
!767 = !DILocation(line: 825, column: 5, scope: !760)
!768 = !DILocation(line: 828, column: 11, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !269, line: 828, column: 11)
!770 = distinct !DILexicalBlock(scope: !760, file: !269, line: 826, column: 5)
!771 = !DILocation(line: 828, column: 39, scope: !769)
!772 = !DILocation(line: 828, column: 11, scope: !770)
!773 = !DILocation(line: 829, column: 31, scope: !774)
!774 = distinct !DILexicalBlock(scope: !769, file: !269, line: 828, column: 45)
!775 = !DILocation(line: 829, column: 9, scope: !774)
!776 = !DILocation(line: 831, column: 9, scope: !774)
!777 = !DILocation(line: 833, column: 7, scope: !770)
!778 = !DILocation(line: 834, column: 7, scope: !770)
!779 = !DILocation(line: 837, column: 43, scope: !770)
!780 = !DILocation(line: 837, column: 25, scope: !770)
!781 = !DILocation(line: 837, column: 12, scope: !770)
!782 = !DILocation(line: 837, column: 23, scope: !770)
!783 = !DILocation(line: 838, column: 32, scope: !770)
!784 = !DILocation(line: 838, column: 14, scope: !770)
!785 = !DILocalVariable(name: "skip", scope: !707, file: !269, line: 789, type: !46)
!786 = !DILocation(line: 839, column: 16, scope: !787)
!787 = distinct !DILexicalBlock(scope: !770, file: !269, line: 839, column: 11)
!788 = !DILocation(line: 839, column: 11, scope: !770)
!789 = !DILocation(line: 840, column: 31, scope: !790)
!790 = distinct !DILexicalBlock(scope: !787, file: !269, line: 839, column: 71)
!791 = !DILocation(line: 840, column: 9, scope: !790)
!792 = !DILocation(line: 842, column: 9, scope: !790)
!793 = !DILocation(line: 844, column: 16, scope: !794)
!794 = distinct !DILexicalBlock(scope: !770, file: !269, line: 844, column: 11)
!795 = !DILocation(line: 844, column: 53, scope: !794)
!796 = !DILocation(line: 844, column: 11, scope: !770)
!797 = !DILocation(line: 845, column: 9, scope: !794)
!798 = !DILocation(line: 847, column: 19, scope: !770)
!799 = !DILocation(line: 847, column: 7, scope: !770)
!800 = !DILocation(line: 847, column: 32, scope: !770)
!801 = !DILocation(line: 848, column: 19, scope: !770)
!802 = !DILocation(line: 848, column: 7, scope: !770)
!803 = !DILocation(line: 848, column: 32, scope: !770)
!804 = !DILocation(line: 848, column: 36, scope: !770)
!805 = !DILocation(line: 850, column: 16, scope: !806)
!806 = distinct !DILexicalBlock(scope: !770, file: !269, line: 850, column: 11)
!807 = !DILocation(line: 850, column: 27, scope: !806)
!808 = !DILocation(line: 850, column: 11, scope: !770)
!809 = !DILocation(line: 851, column: 18, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !269, line: 851, column: 13)
!811 = distinct !DILexicalBlock(scope: !806, file: !269, line: 850, column: 45)
!812 = !DILocation(line: 851, column: 13, scope: !811)
!813 = !DILocation(line: 852, column: 33, scope: !814)
!814 = distinct !DILexicalBlock(scope: !810, file: !269, line: 851, column: 75)
!815 = !DILocation(line: 852, column: 11, scope: !814)
!816 = !DILocation(line: 854, column: 11, scope: !814)
!817 = !DILocation(line: 856, column: 31, scope: !811)
!818 = !DILocation(line: 856, column: 35, scope: !811)
!819 = !DILocation(line: 856, column: 60, scope: !811)
!820 = !DILocation(line: 856, column: 27, scope: !811)
!821 = !DILocation(line: 856, column: 14, scope: !811)
!822 = !DILocation(line: 856, column: 25, scope: !811)
!823 = !DILocation(line: 858, column: 7, scope: !811)
!824 = !DILocation(line: 860, column: 16, scope: !825)
!825 = distinct !DILexicalBlock(scope: !770, file: !269, line: 860, column: 11)
!826 = !DILocation(line: 860, column: 27, scope: !825)
!827 = !DILocation(line: 860, column: 11, scope: !770)
!828 = !DILocation(line: 862, column: 31, scope: !829)
!829 = distinct !DILexicalBlock(scope: !825, file: !269, line: 861, column: 7)
!830 = !DILocation(line: 862, column: 9, scope: !829)
!831 = !DILocation(line: 864, column: 9, scope: !829)
!832 = !DILocation(line: 867, column: 53, scope: !770)
!833 = !DILocation(line: 867, column: 58, scope: !770)
!834 = !DILocation(line: 867, column: 73, scope: !770)
!835 = !DILocation(line: 867, column: 19, scope: !770)
!836 = !DILocalVariable(name: "crc32_val", scope: !760, file: !269, line: 818, type: !48)
!837 = !DILocation(line: 0, scope: !760)
!838 = !DILocation(line: 868, column: 22, scope: !839)
!839 = distinct !DILexicalBlock(scope: !770, file: !269, line: 868, column: 11)
!840 = !DILocation(line: 868, column: 35, scope: !839)
!841 = !DILocation(line: 868, column: 32, scope: !839)
!842 = !DILocation(line: 868, column: 11, scope: !770)
!843 = !DILocation(line: 869, column: 31, scope: !844)
!844 = distinct !DILexicalBlock(scope: !839, file: !269, line: 868, column: 55)
!845 = !DILocation(line: 869, column: 9, scope: !844)
!846 = !DILocation(line: 871, column: 9, scope: !844)
!847 = !DILocation(line: 873, column: 7, scope: !770)
!848 = !DILocation(line: 874, column: 7, scope: !770)
!849 = !DILocation(line: 877, column: 14, scope: !770)
!850 = !DILocation(line: 877, column: 7, scope: !770)
!851 = !DILocation(line: 885, column: 33, scope: !770)
!852 = !DILocation(line: 885, column: 15, scope: !770)
!853 = !DILocalVariable(name: "flags", scope: !707, file: !269, line: 792, type: !14)
!854 = !DILocation(line: 886, column: 32, scope: !770)
!855 = !DILocation(line: 886, column: 14, scope: !770)
!856 = !DILocation(line: 887, column: 16, scope: !857)
!857 = distinct !DILexicalBlock(scope: !770, file: !269, line: 887, column: 11)
!858 = !DILocation(line: 887, column: 11, scope: !770)
!859 = !DILocation(line: 888, column: 31, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !269, line: 887, column: 21)
!861 = !DILocation(line: 888, column: 9, scope: !860)
!862 = !DILocation(line: 890, column: 9, scope: !860)
!863 = !DILocation(line: 892, column: 16, scope: !864)
!864 = distinct !DILexicalBlock(scope: !770, file: !269, line: 892, column: 11)
!865 = !DILocation(line: 892, column: 11, scope: !770)
!866 = !DILocation(line: 893, column: 18, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !269, line: 893, column: 13)
!868 = distinct !DILexicalBlock(scope: !864, file: !269, line: 892, column: 21)
!869 = !DILocation(line: 893, column: 55, scope: !867)
!870 = !DILocation(line: 893, column: 13, scope: !868)
!871 = !DILocation(line: 894, column: 11, scope: !867)
!872 = !DILocation(line: 896, column: 7, scope: !868)
!873 = !DILocation(line: 897, column: 17, scope: !874)
!874 = distinct !DILexicalBlock(scope: !770, file: !269, line: 897, column: 11)
!875 = !DILocation(line: 897, column: 11, scope: !770)
!876 = !DILocation(line: 899, column: 18, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !269, line: 899, column: 13)
!878 = distinct !DILexicalBlock(scope: !874, file: !269, line: 898, column: 7)
!879 = !DILocation(line: 899, column: 13, scope: !878)
!880 = !DILocation(line: 900, column: 33, scope: !881)
!881 = distinct !DILexicalBlock(scope: !877, file: !269, line: 899, column: 27)
!882 = !DILocation(line: 900, column: 11, scope: !881)
!883 = !DILocation(line: 902, column: 11, scope: !881)
!884 = !DILocation(line: 904, column: 35, scope: !878)
!885 = !DILocation(line: 904, column: 17, scope: !878)
!886 = !DILocation(line: 904, column: 14, scope: !878)
!887 = !DILocation(line: 905, column: 18, scope: !888)
!888 = distinct !DILexicalBlock(scope: !878, file: !269, line: 905, column: 13)
!889 = !DILocation(line: 905, column: 55, scope: !888)
!890 = !DILocation(line: 905, column: 13, scope: !878)
!891 = !DILocation(line: 906, column: 11, scope: !888)
!892 = !DILocation(line: 908, column: 7, scope: !878)
!893 = !DILocation(line: 0, scope: !770)
!894 = !DILocation(line: 910, column: 53, scope: !770)
!895 = !DILocation(line: 910, column: 58, scope: !770)
!896 = !DILocation(line: 910, column: 73, scope: !770)
!897 = !DILocation(line: 910, column: 19, scope: !770)
!898 = !DILocation(line: 911, column: 22, scope: !899)
!899 = distinct !DILexicalBlock(scope: !770, file: !269, line: 911, column: 11)
!900 = !DILocation(line: 911, column: 35, scope: !899)
!901 = !DILocation(line: 911, column: 32, scope: !899)
!902 = !DILocation(line: 911, column: 11, scope: !770)
!903 = !DILocation(line: 912, column: 31, scope: !904)
!904 = distinct !DILexicalBlock(scope: !899, file: !269, line: 911, column: 55)
!905 = !DILocation(line: 912, column: 9, scope: !904)
!906 = !DILocation(line: 914, column: 9, scope: !904)
!907 = !DILocation(line: 916, column: 7, scope: !770)
!908 = !DILocation(line: 917, column: 11, scope: !909)
!909 = distinct !DILexicalBlock(scope: !770, file: !269, line: 917, column: 11)
!910 = !DILocation(line: 917, column: 21, scope: !909)
!911 = !DILocation(line: 917, column: 11, scope: !770)
!912 = !DILocation(line: 918, column: 9, scope: !909)
!913 = !DILocation(line: 919, column: 7, scope: !770)
!914 = !DILocation(line: 922, column: 18, scope: !915)
!915 = distinct !DILexicalBlock(scope: !770, file: !269, line: 922, column: 11)
!916 = !DILocation(line: 922, column: 52, scope: !915)
!917 = !DILocation(line: 922, column: 11, scope: !770)
!918 = !DILocation(line: 923, column: 9, scope: !915)
!919 = !DILocation(line: 924, column: 7, scope: !770)
!920 = !DILocation(line: 927, column: 29, scope: !770)
!921 = !DILocation(line: 927, column: 7, scope: !770)
!922 = !DILocation(line: 929, column: 7, scope: !770)
!923 = distinct !{!923, !757, !924}
!924 = !DILocation(line: 931, column: 3, scope: !707)
!925 = !DILocation(line: 932, column: 1, scope: !707)
!926 = distinct !DISubprogram(name: "archive_read_format_rar_read_data", scope: !269, file: !269, line: 935, type: !248, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!927 = !DILocalVariable(name: "a", arg: 1, scope: !926, file: !269, line: 935, type: !5)
!928 = !DILocation(line: 0, scope: !926)
!929 = !DILocalVariable(name: "buff", arg: 2, scope: !926, file: !269, line: 935, type: !66)
!930 = !DILocalVariable(name: "size", arg: 3, scope: !926, file: !269, line: 936, type: !67)
!931 = !DILocalVariable(name: "offset", arg: 4, scope: !926, file: !269, line: 936, type: !68)
!932 = !DILocation(line: 938, column: 39, scope: !926)
!933 = !DILocation(line: 938, column: 47, scope: !926)
!934 = !DILocation(line: 938, column: 21, scope: !926)
!935 = !DILocalVariable(name: "rar", scope: !926, file: !269, line: 938, type: !267)
!936 = !DILocation(line: 941, column: 12, scope: !937)
!937 = distinct !DILexicalBlock(scope: !926, file: !269, line: 941, column: 7)
!938 = !DILocation(line: 941, column: 29, scope: !937)
!939 = !DILocation(line: 941, column: 7, scope: !926)
!940 = !DILocation(line: 943, column: 38, scope: !941)
!941 = distinct !DILexicalBlock(scope: !937, file: !269, line: 941, column: 34)
!942 = !DILocation(line: 943, column: 7, scope: !941)
!943 = !DILocation(line: 944, column: 12, scope: !941)
!944 = !DILocation(line: 944, column: 29, scope: !941)
!945 = !DILocation(line: 945, column: 3, scope: !941)
!946 = !DILocation(line: 947, column: 12, scope: !947)
!947 = distinct !DILexicalBlock(scope: !926, file: !269, line: 947, column: 7)
!948 = !DILocation(line: 947, column: 7, scope: !947)
!949 = !DILocation(line: 947, column: 22, scope: !947)
!950 = !DILocation(line: 947, column: 30, scope: !947)
!951 = !DILocation(line: 947, column: 50, scope: !947)
!952 = !DILocation(line: 947, column: 42, scope: !947)
!953 = !DILocation(line: 947, column: 7, scope: !926)
!954 = !DILocation(line: 948, column: 11, scope: !955)
!955 = distinct !DILexicalBlock(scope: !947, file: !269, line: 947, column: 60)
!956 = !DILocation(line: 949, column: 11, scope: !955)
!957 = !DILocation(line: 950, column: 20, scope: !955)
!958 = !DILocation(line: 950, column: 13, scope: !955)
!959 = !DILocation(line: 951, column: 9, scope: !960)
!960 = distinct !DILexicalBlock(scope: !955, file: !269, line: 951, column: 9)
!961 = !DILocation(line: 951, column: 24, scope: !960)
!962 = !DILocation(line: 951, column: 17, scope: !960)
!963 = !DILocation(line: 951, column: 9, scope: !955)
!964 = !DILocation(line: 952, column: 22, scope: !960)
!965 = !DILocation(line: 952, column: 15, scope: !960)
!966 = !DILocation(line: 952, column: 7, scope: !960)
!967 = !DILocation(line: 953, column: 5, scope: !955)
!968 = !DILocation(line: 956, column: 16, scope: !926)
!969 = !DILocation(line: 956, column: 11, scope: !926)
!970 = !DILocation(line: 956, column: 3, scope: !926)
!971 = !DILocation(line: 959, column: 11, scope: !972)
!972 = distinct !DILexicalBlock(scope: !926, file: !269, line: 957, column: 3)
!973 = !DILocalVariable(name: "ret", scope: !926, file: !269, line: 939, type: !24)
!974 = !DILocation(line: 960, column: 5, scope: !972)
!975 = !DILocation(line: 967, column: 11, scope: !972)
!976 = !DILocation(line: 968, column: 13, scope: !977)
!977 = distinct !DILexicalBlock(scope: !972, file: !269, line: 968, column: 9)
!978 = !DILocation(line: 968, column: 27, scope: !977)
!979 = !DILocation(line: 968, column: 34, scope: !977)
!980 = !DILocation(line: 968, column: 9, scope: !972)
!981 = !DILocation(line: 969, column: 33, scope: !977)
!982 = !DILocation(line: 969, column: 50, scope: !977)
!983 = !DILocation(line: 969, column: 7, scope: !977)
!984 = !DILocation(line: 970, column: 5, scope: !972)
!985 = !DILocation(line: 973, column: 27, scope: !972)
!986 = !DILocation(line: 973, column: 5, scope: !972)
!987 = !DILocation(line: 976, column: 5, scope: !972)
!988 = !DILocation(line: 0, scope: !972)
!989 = !DILocation(line: 978, column: 3, scope: !926)
!990 = !DILocation(line: 979, column: 1, scope: !926)
!991 = distinct !DISubprogram(name: "archive_read_format_rar_read_data_skip", scope: !269, file: !269, line: 982, type: !252, scopeLine: 983, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!992 = !DILocalVariable(name: "a", arg: 1, scope: !991, file: !269, line: 982, type: !5)
!993 = !DILocation(line: 0, scope: !991)
!994 = !DILocation(line: 988, column: 27, scope: !991)
!995 = !DILocation(line: 988, column: 35, scope: !991)
!996 = !DILocation(line: 988, column: 9, scope: !991)
!997 = !DILocalVariable(name: "rar", scope: !991, file: !269, line: 984, type: !267)
!998 = !DILocation(line: 990, column: 12, scope: !999)
!999 = distinct !DILexicalBlock(scope: !991, file: !269, line: 990, column: 7)
!1000 = !DILocation(line: 990, column: 29, scope: !999)
!1001 = !DILocation(line: 990, column: 7, scope: !991)
!1002 = !DILocation(line: 992, column: 38, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !269, line: 990, column: 34)
!1004 = !DILocation(line: 992, column: 7, scope: !1003)
!1005 = !DILocation(line: 993, column: 12, scope: !1003)
!1006 = !DILocation(line: 993, column: 29, scope: !1003)
!1007 = !DILocation(line: 994, column: 3, scope: !1003)
!1008 = !DILocation(line: 996, column: 12, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !991, file: !269, line: 996, column: 7)
!1010 = !DILocation(line: 996, column: 28, scope: !1009)
!1011 = !DILocation(line: 996, column: 7, scope: !991)
!1012 = !DILocation(line: 997, column: 52, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !269, line: 996, column: 33)
!1014 = !DILocation(line: 997, column: 21, scope: !1013)
!1015 = !DILocalVariable(name: "bytes_skipped", scope: !991, file: !269, line: 985, type: !53)
!1016 = !DILocation(line: 998, column: 23, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1013, file: !269, line: 998, column: 9)
!1018 = !DILocation(line: 998, column: 9, scope: !1013)
!1019 = !DILocation(line: 999, column: 7, scope: !1017)
!1020 = !DILocation(line: 1000, column: 3, scope: !1013)
!1021 = !DILocation(line: 1005, column: 12, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !991, file: !269, line: 1005, column: 7)
!1023 = !DILocation(line: 1005, column: 23, scope: !1022)
!1024 = !DILocation(line: 1005, column: 36, scope: !1022)
!1025 = !DILocation(line: 1005, column: 44, scope: !1022)
!1026 = !DILocation(line: 1005, column: 55, scope: !1022)
!1027 = !DILocation(line: 1005, column: 7, scope: !991)
!1028 = !DILocation(line: 1007, column: 53, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1022, file: !269, line: 1006, column: 3)
!1030 = !DILocation(line: 1007, column: 11, scope: !1029)
!1031 = !DILocalVariable(name: "ret", scope: !991, file: !269, line: 986, type: !24)
!1032 = !DILocation(line: 1008, column: 13, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1029, file: !269, line: 1008, column: 9)
!1034 = !DILocation(line: 1008, column: 9, scope: !1029)
!1035 = !DILocation(line: 1009, column: 55, scope: !1033)
!1036 = !DILocation(line: 1009, column: 13, scope: !1033)
!1037 = !DILocation(line: 1009, column: 7, scope: !1033)
!1038 = !DILocation(line: 0, scope: !1029)
!1039 = !DILocation(line: 1010, column: 13, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1029, file: !269, line: 1010, column: 9)
!1041 = !DILocation(line: 1010, column: 9, scope: !1029)
!1042 = !DILocation(line: 1011, column: 7, scope: !1040)
!1043 = !DILocation(line: 1012, column: 12, scope: !1029)
!1044 = !DILocation(line: 1012, column: 5, scope: !1029)
!1045 = !DILocation(line: 1015, column: 3, scope: !991)
!1046 = !DILocation(line: 1016, column: 1, scope: !991)
!1047 = distinct !DISubprogram(name: "archive_read_format_rar_seek_data", scope: !269, file: !269, line: 1019, type: !256, scopeLine: 1021, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!1048 = !DILocalVariable(name: "a", arg: 1, scope: !1047, file: !269, line: 1019, type: !5)
!1049 = !DILocation(line: 0, scope: !1047)
!1050 = !DILocalVariable(name: "offset", arg: 2, scope: !1047, file: !269, line: 1019, type: !53)
!1051 = !DILocalVariable(name: "whence", arg: 3, scope: !1047, file: !269, line: 1020, type: !24)
!1052 = !DILocation(line: 1024, column: 39, scope: !1047)
!1053 = !DILocation(line: 1024, column: 47, scope: !1047)
!1054 = !DILocation(line: 1024, column: 21, scope: !1047)
!1055 = !DILocalVariable(name: "rar", scope: !1047, file: !269, line: 1024, type: !267)
!1056 = !DILocation(line: 1026, column: 12, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1047, file: !269, line: 1026, column: 7)
!1058 = !DILocation(line: 1026, column: 7, scope: !1057)
!1059 = !DILocation(line: 1026, column: 31, scope: !1057)
!1060 = !DILocation(line: 1026, column: 7, scope: !1047)
!1061 = !DILocation(line: 1029, column: 5, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !269, line: 1027, column: 3)
!1063 = !DILocation(line: 1032, column: 30, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1062, file: !269, line: 1030, column: 5)
!1065 = !DILocalVariable(name: "client_offset", scope: !1047, file: !269, line: 1022, type: !53)
!1066 = !DILocation(line: 1033, column: 9, scope: !1064)
!1067 = !DILocation(line: 1035, column: 30, scope: !1064)
!1068 = !DILocation(line: 1036, column: 9, scope: !1064)
!1069 = !DILocation(line: 1037, column: 7, scope: !1064)
!1070 = !DILocation(line: 1040, column: 5, scope: !1064)
!1071 = !DILocation(line: 0, scope: !1064)
!1072 = !DILocation(line: 1041, column: 19, scope: !1062)
!1073 = !DILocation(line: 1042, column: 23, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1062, file: !269, line: 1042, column: 9)
!1075 = !DILocation(line: 1042, column: 9, scope: !1062)
!1076 = !DILocation(line: 1045, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1074, file: !269, line: 1043, column: 5)
!1078 = !DILocation(line: 1047, column: 35, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !269, line: 1047, column: 14)
!1080 = !DILocation(line: 1047, column: 28, scope: !1079)
!1081 = !DILocation(line: 1047, column: 14, scope: !1074)
!1082 = !DILocation(line: 1053, column: 12, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !269, line: 1048, column: 5)
!1084 = !DILocation(line: 1053, column: 24, scope: !1083)
!1085 = !DILocation(line: 1054, column: 28, scope: !1083)
!1086 = !DILocation(line: 1055, column: 5, scope: !1083)
!1087 = !DILocation(line: 0, scope: !1062)
!1088 = !DILocation(line: 1057, column: 27, scope: !1062)
!1089 = !DILocation(line: 1057, column: 22, scope: !1062)
!1090 = !DILocation(line: 1057, column: 34, scope: !1062)
!1091 = !DILocation(line: 1057, column: 19, scope: !1062)
!1092 = !DILocalVariable(name: "i", scope: !1047, file: !269, line: 1023, type: !14)
!1093 = !DILocation(line: 1059, column: 5, scope: !1062)
!1094 = !DILocation(line: 1059, column: 21, scope: !1062)
!1095 = !DILocation(line: 1059, column: 14, scope: !1062)
!1096 = !DILocation(line: 1061, column: 8, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1062, file: !269, line: 1060, column: 5)
!1098 = !DILocation(line: 1062, column: 29, scope: !1097)
!1099 = !DILocation(line: 1062, column: 24, scope: !1097)
!1100 = !DILocation(line: 1062, column: 36, scope: !1097)
!1101 = !DILocation(line: 1062, column: 56, scope: !1097)
!1102 = !DILocation(line: 1062, column: 61, scope: !1097)
!1103 = !DILocation(line: 1062, column: 51, scope: !1097)
!1104 = !DILocation(line: 1062, column: 65, scope: !1097)
!1105 = !DILocation(line: 1062, column: 49, scope: !1097)
!1106 = !DILocation(line: 1062, column: 21, scope: !1097)
!1107 = distinct !{!1107, !1093, !1108, !650}
!1108 = !DILocation(line: 1063, column: 5, scope: !1062)
!1109 = !DILocation(line: 1064, column: 14, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1062, file: !269, line: 1064, column: 9)
!1111 = !DILocation(line: 1064, column: 25, scope: !1110)
!1112 = !DILocation(line: 1064, column: 9, scope: !1062)
!1113 = !DILocation(line: 1067, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !269, line: 1065, column: 5)
!1115 = !DILocation(line: 1069, column: 34, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !269, line: 1069, column: 13)
!1117 = distinct !DILexicalBlock(scope: !1114, file: !269, line: 1068, column: 7)
!1118 = !DILocation(line: 1069, column: 43, scope: !1116)
!1119 = !DILocation(line: 1069, column: 29, scope: !1116)
!1120 = !DILocation(line: 1069, column: 51, scope: !1116)
!1121 = !DILocation(line: 1069, column: 27, scope: !1116)
!1122 = !DILocation(line: 1069, column: 64, scope: !1116)
!1123 = !DILocation(line: 1070, column: 16, scope: !1116)
!1124 = !DILocation(line: 1070, column: 27, scope: !1116)
!1125 = !DILocation(line: 1069, column: 13, scope: !1117)
!1126 = !DILocation(line: 1073, column: 20, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !269, line: 1073, column: 15)
!1128 = distinct !DILexicalBlock(scope: !1116, file: !269, line: 1071, column: 9)
!1129 = !DILocation(line: 1073, column: 27, scope: !1127)
!1130 = !DILocation(line: 1073, column: 15, scope: !1128)
!1131 = !DILocation(line: 1075, column: 35, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !269, line: 1074, column: 11)
!1133 = !DILocation(line: 1075, column: 13, scope: !1132)
!1134 = !DILocation(line: 1077, column: 13, scope: !1132)
!1135 = !DILocation(line: 1079, column: 16, scope: !1128)
!1136 = !DILocation(line: 1079, column: 22, scope: !1128)
!1137 = !DILocation(line: 1080, column: 33, scope: !1128)
!1138 = !DILocation(line: 1080, column: 42, scope: !1128)
!1139 = !DILocation(line: 1080, column: 48, scope: !1128)
!1140 = !DILocation(line: 1080, column: 28, scope: !1128)
!1141 = !DILocation(line: 1080, column: 52, scope: !1128)
!1142 = !DILocation(line: 1081, column: 18, scope: !1128)
!1143 = !DILocation(line: 1081, column: 27, scope: !1128)
!1144 = !DILocation(line: 1081, column: 13, scope: !1128)
!1145 = !DILocation(line: 1081, column: 35, scope: !1128)
!1146 = !DILocation(line: 1080, column: 65, scope: !1128)
!1147 = !DILocation(line: 1080, column: 25, scope: !1128)
!1148 = !DILocation(line: 1082, column: 36, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1128, file: !269, line: 1082, column: 15)
!1150 = !DILocation(line: 1082, column: 45, scope: !1149)
!1151 = !DILocation(line: 1082, column: 31, scope: !1149)
!1152 = !DILocation(line: 1082, column: 53, scope: !1149)
!1153 = !DILocation(line: 1082, column: 29, scope: !1149)
!1154 = !DILocation(line: 1082, column: 15, scope: !1128)
!1155 = !DILocation(line: 1083, column: 13, scope: !1149)
!1156 = distinct !{!1156, !1113, !1157}
!1157 = !DILocation(line: 1132, column: 7, scope: !1114)
!1158 = !DILocation(line: 1084, column: 45, scope: !1128)
!1159 = !DILocation(line: 1084, column: 54, scope: !1128)
!1160 = !DILocation(line: 1084, column: 40, scope: !1128)
!1161 = !DILocation(line: 1084, column: 62, scope: !1128)
!1162 = !DILocation(line: 1085, column: 18, scope: !1128)
!1163 = !DILocation(line: 1085, column: 27, scope: !1128)
!1164 = !DILocation(line: 1085, column: 13, scope: !1128)
!1165 = !DILocation(line: 1085, column: 35, scope: !1128)
!1166 = !DILocation(line: 1084, column: 75, scope: !1128)
!1167 = !DILocation(line: 1084, column: 17, scope: !1128)
!1168 = !DILocalVariable(name: "ret", scope: !1047, file: !269, line: 1022, type: !53)
!1169 = !DILocation(line: 1086, column: 19, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1128, file: !269, line: 1086, column: 15)
!1171 = !DILocation(line: 1086, column: 15, scope: !1128)
!1172 = !DILocation(line: 1087, column: 13, scope: !1170)
!1173 = !DILocation(line: 1088, column: 59, scope: !1128)
!1174 = !DILocation(line: 1088, column: 17, scope: !1128)
!1175 = !DILocation(line: 1089, column: 19, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1128, file: !269, line: 1089, column: 15)
!1177 = !DILocation(line: 1089, column: 15, scope: !1128)
!1178 = !DILocation(line: 1091, column: 35, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !269, line: 1090, column: 11)
!1180 = !DILocation(line: 1091, column: 13, scope: !1179)
!1181 = !DILocation(line: 1093, column: 13, scope: !1179)
!1182 = !DILocation(line: 1095, column: 16, scope: !1128)
!1183 = !DILocation(line: 1095, column: 22, scope: !1128)
!1184 = !DILocation(line: 1096, column: 11, scope: !1128)
!1185 = !DILocation(line: 1098, column: 39, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1116, file: !269, line: 1098, column: 18)
!1187 = !DILocation(line: 1098, column: 48, scope: !1186)
!1188 = !DILocation(line: 1098, column: 34, scope: !1186)
!1189 = !DILocation(line: 1098, column: 56, scope: !1186)
!1190 = !DILocation(line: 1098, column: 32, scope: !1186)
!1191 = !DILocation(line: 1098, column: 67, scope: !1186)
!1192 = !DILocation(line: 1099, column: 16, scope: !1186)
!1193 = !DILocation(line: 1099, column: 27, scope: !1186)
!1194 = !DILocation(line: 1098, column: 18, scope: !1116)
!1195 = !DILocation(line: 1102, column: 16, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1186, file: !269, line: 1100, column: 9)
!1197 = !DILocation(line: 1102, column: 22, scope: !1196)
!1198 = !DILocation(line: 1103, column: 20, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1196, file: !269, line: 1103, column: 15)
!1200 = !DILocation(line: 1103, column: 34, scope: !1199)
!1201 = !DILocation(line: 1103, column: 27, scope: !1199)
!1202 = !DILocation(line: 1103, column: 40, scope: !1199)
!1203 = !DILocation(line: 1104, column: 34, scope: !1199)
!1204 = !DILocation(line: 1104, column: 43, scope: !1199)
!1205 = !DILocation(line: 1104, column: 29, scope: !1199)
!1206 = !DILocation(line: 1104, column: 51, scope: !1199)
!1207 = !DILocation(line: 1104, column: 27, scope: !1199)
!1208 = !DILocation(line: 1103, column: 15, scope: !1196)
!1209 = !DILocation(line: 1106, column: 35, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1199, file: !269, line: 1105, column: 11)
!1211 = !DILocation(line: 1106, column: 44, scope: !1210)
!1212 = !DILocation(line: 1106, column: 30, scope: !1210)
!1213 = !DILocation(line: 1106, column: 52, scope: !1210)
!1214 = !DILocation(line: 1107, column: 20, scope: !1210)
!1215 = !DILocation(line: 1107, column: 29, scope: !1210)
!1216 = !DILocation(line: 1107, column: 35, scope: !1210)
!1217 = !DILocation(line: 1107, column: 15, scope: !1210)
!1218 = !DILocation(line: 1107, column: 39, scope: !1210)
!1219 = !DILocation(line: 1106, column: 65, scope: !1210)
!1220 = !DILocation(line: 1106, column: 27, scope: !1210)
!1221 = !DILocation(line: 1108, column: 13, scope: !1210)
!1222 = !DILocation(line: 1110, column: 16, scope: !1196)
!1223 = !DILocation(line: 1110, column: 22, scope: !1196)
!1224 = !DILocation(line: 1111, column: 45, scope: !1196)
!1225 = !DILocation(line: 1111, column: 54, scope: !1196)
!1226 = !DILocation(line: 1111, column: 40, scope: !1196)
!1227 = !DILocation(line: 1111, column: 62, scope: !1196)
!1228 = !DILocation(line: 1111, column: 17, scope: !1196)
!1229 = !DILocation(line: 1113, column: 19, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1196, file: !269, line: 1113, column: 15)
!1231 = !DILocation(line: 1113, column: 15, scope: !1196)
!1232 = !DILocation(line: 1114, column: 13, scope: !1230)
!1233 = !DILocation(line: 1115, column: 59, scope: !1196)
!1234 = !DILocation(line: 1115, column: 17, scope: !1196)
!1235 = !DILocation(line: 1116, column: 19, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1196, file: !269, line: 1116, column: 15)
!1237 = !DILocation(line: 1116, column: 15, scope: !1196)
!1238 = !DILocation(line: 1118, column: 18, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !269, line: 1117, column: 11)
!1240 = !DILocation(line: 1118, column: 36, scope: !1239)
!1241 = !DILocation(line: 1119, column: 61, scope: !1239)
!1242 = !DILocation(line: 1119, column: 19, scope: !1239)
!1243 = !DILocation(line: 1120, column: 11, scope: !1239)
!1244 = !DILocation(line: 0, scope: !1196)
!1245 = !DILocation(line: 1121, column: 19, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1196, file: !269, line: 1121, column: 15)
!1247 = !DILocation(line: 1121, column: 15, scope: !1196)
!1248 = !DILocation(line: 1123, column: 35, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !269, line: 1122, column: 11)
!1250 = !DILocation(line: 1123, column: 13, scope: !1249)
!1251 = !DILocation(line: 1125, column: 13, scope: !1249)
!1252 = !DILocation(line: 1127, column: 33, scope: !1196)
!1253 = !DILocation(line: 1127, column: 42, scope: !1196)
!1254 = !DILocation(line: 1127, column: 28, scope: !1196)
!1255 = !DILocation(line: 1127, column: 50, scope: !1196)
!1256 = !DILocation(line: 1128, column: 18, scope: !1196)
!1257 = !DILocation(line: 1128, column: 27, scope: !1196)
!1258 = !DILocation(line: 1128, column: 33, scope: !1196)
!1259 = !DILocation(line: 1128, column: 13, scope: !1196)
!1260 = !DILocation(line: 1128, column: 37, scope: !1196)
!1261 = !DILocation(line: 1127, column: 63, scope: !1196)
!1262 = !DILocation(line: 1127, column: 25, scope: !1196)
!1263 = !DILocation(line: 1129, column: 11, scope: !1196)
!1264 = !DILocation(line: 1131, column: 9, scope: !1117)
!1265 = !DILocation(line: 1133, column: 5, scope: !1114)
!1266 = !DILocation(line: 1135, column: 11, scope: !1062)
!1267 = !DILocation(line: 1136, column: 13, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1062, file: !269, line: 1136, column: 9)
!1269 = !DILocation(line: 1136, column: 9, scope: !1062)
!1270 = !DILocation(line: 1137, column: 7, scope: !1268)
!1271 = !DILocation(line: 1138, column: 33, scope: !1062)
!1272 = !DILocation(line: 1138, column: 42, scope: !1062)
!1273 = !DILocation(line: 1138, column: 28, scope: !1062)
!1274 = !DILocation(line: 1138, column: 50, scope: !1062)
!1275 = !DILocation(line: 1138, column: 61, scope: !1062)
!1276 = !DILocation(line: 1138, column: 10, scope: !1062)
!1277 = !DILocation(line: 1138, column: 26, scope: !1062)
!1278 = !DILocation(line: 1139, column: 14, scope: !1062)
!1279 = !DILocation(line: 1140, column: 5, scope: !1062)
!1280 = !DILocation(line: 1140, column: 14, scope: !1062)
!1281 = !DILocation(line: 1142, column: 8, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1062, file: !269, line: 1141, column: 5)
!1283 = !DILocation(line: 1143, column: 19, scope: !1282)
!1284 = !DILocation(line: 1143, column: 24, scope: !1282)
!1285 = !DILocation(line: 1143, column: 14, scope: !1282)
!1286 = !DILocation(line: 1143, column: 28, scope: !1282)
!1287 = !DILocation(line: 1143, column: 48, scope: !1282)
!1288 = !DILocation(line: 1143, column: 43, scope: !1282)
!1289 = !DILocation(line: 1143, column: 55, scope: !1282)
!1290 = !DILocation(line: 1143, column: 41, scope: !1282)
!1291 = !DILocation(line: 1143, column: 11, scope: !1282)
!1292 = distinct !{!1292, !1279, !1293, !650}
!1293 = !DILocation(line: 1144, column: 5, scope: !1062)
!1294 = !DILocation(line: 1145, column: 17, scope: !1062)
!1295 = !DILocation(line: 1145, column: 12, scope: !1062)
!1296 = !DILocation(line: 1145, column: 24, scope: !1062)
!1297 = !DILocation(line: 1145, column: 9, scope: !1062)
!1298 = !DILocation(line: 1148, column: 8, scope: !1062)
!1299 = !DILocation(line: 1148, column: 24, scope: !1062)
!1300 = !DILocation(line: 1149, column: 8, scope: !1062)
!1301 = !DILocation(line: 1149, column: 25, scope: !1062)
!1302 = !DILocation(line: 1150, column: 8, scope: !1062)
!1303 = !DILocation(line: 1150, column: 32, scope: !1062)
!1304 = !DILocation(line: 1151, column: 8, scope: !1062)
!1305 = !DILocation(line: 1151, column: 28, scope: !1062)
!1306 = !DILocation(line: 1152, column: 10, scope: !1062)
!1307 = !DILocation(line: 1152, column: 27, scope: !1062)
!1308 = !DILocation(line: 1153, column: 10, scope: !1062)
!1309 = !DILocation(line: 1153, column: 17, scope: !1062)
!1310 = !DILocation(line: 1159, column: 21, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1062, file: !269, line: 1159, column: 9)
!1312 = !DILocation(line: 1159, column: 13, scope: !1311)
!1313 = !DILocation(line: 1159, column: 30, scope: !1311)
!1314 = !DILocation(line: 1159, column: 38, scope: !1311)
!1315 = !DILocation(line: 1159, column: 57, scope: !1311)
!1316 = !DILocation(line: 1159, column: 50, scope: !1311)
!1317 = !DILocation(line: 1159, column: 9, scope: !1062)
!1318 = !DILocation(line: 1160, column: 19, scope: !1311)
!1319 = !DILocation(line: 1160, column: 7, scope: !1311)
!1320 = !DILocation(line: 1163, column: 10, scope: !1062)
!1321 = !DILocation(line: 1163, column: 22, scope: !1062)
!1322 = !DILocation(line: 1164, column: 17, scope: !1062)
!1323 = !DILocation(line: 1164, column: 5, scope: !1062)
!1324 = !DILocation(line: 1168, column: 27, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1057, file: !269, line: 1167, column: 3)
!1326 = !DILocation(line: 1168, column: 5, scope: !1325)
!1327 = !DILocation(line: 1171, column: 3, scope: !1047)
!1328 = !DILocation(line: 1172, column: 1, scope: !1047)
!1329 = distinct !DISubprogram(name: "archive_read_format_rar_cleanup", scope: !269, file: !269, line: 1175, type: !252, scopeLine: 1176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!1330 = !DILocalVariable(name: "a", arg: 1, scope: !1329, file: !269, line: 1175, type: !5)
!1331 = !DILocation(line: 0, scope: !1329)
!1332 = !DILocation(line: 1179, column: 27, scope: !1329)
!1333 = !DILocation(line: 1179, column: 35, scope: !1329)
!1334 = !DILocation(line: 1179, column: 9, scope: !1329)
!1335 = !DILocalVariable(name: "rar", scope: !1329, file: !269, line: 1177, type: !267)
!1336 = !DILocation(line: 1180, column: 3, scope: !1329)
!1337 = !DILocation(line: 1181, column: 13, scope: !1329)
!1338 = !DILocation(line: 1181, column: 3, scope: !1329)
!1339 = !DILocation(line: 1182, column: 13, scope: !1329)
!1340 = !DILocation(line: 1182, column: 3, scope: !1329)
!1341 = !DILocation(line: 1183, column: 13, scope: !1329)
!1342 = !DILocation(line: 1183, column: 8, scope: !1329)
!1343 = !DILocation(line: 1183, column: 3, scope: !1329)
!1344 = !DILocation(line: 1184, column: 13, scope: !1329)
!1345 = !DILocation(line: 1184, column: 3, scope: !1329)
!1346 = !DILocation(line: 1185, column: 13, scope: !1329)
!1347 = !DILocation(line: 1185, column: 18, scope: !1329)
!1348 = !DILocation(line: 1185, column: 3, scope: !1329)
!1349 = !DILocation(line: 1186, column: 29, scope: !1329)
!1350 = !DILocation(line: 1186, column: 46, scope: !1329)
!1351 = !DILocation(line: 1186, column: 3, scope: !1329)
!1352 = !DILocation(line: 1187, column: 8, scope: !1329)
!1353 = !DILocation(line: 1187, column: 3, scope: !1329)
!1354 = !DILocation(line: 1188, column: 7, scope: !1329)
!1355 = !DILocation(line: 1188, column: 15, scope: !1329)
!1356 = !DILocation(line: 1188, column: 21, scope: !1329)
!1357 = !DILocation(line: 1189, column: 3, scope: !1329)
!1358 = distinct !DISubprogram(name: "skip_sfx", scope: !269, file: !269, line: 707, type: !252, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!1359 = !DILocalVariable(name: "a", arg: 1, scope: !1358, file: !269, line: 707, type: !5)
!1360 = !DILocation(line: 0, scope: !1358)
!1361 = !DILocalVariable(name: "bytes", scope: !1358, file: !269, line: 712, type: !39)
!1362 = !DILocation(line: 712, column: 11, scope: !1358)
!1363 = !DILocalVariable(name: "total", scope: !1358, file: !269, line: 711, type: !46)
!1364 = !DILocalVariable(name: "window", scope: !1358, file: !269, line: 712, type: !39)
!1365 = !DILocation(line: 716, column: 3, scope: !1358)
!1366 = !DILocation(line: 716, column: 16, scope: !1358)
!1367 = !DILocation(line: 716, column: 25, scope: !1358)
!1368 = !DILocation(line: 717, column: 9, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1358, file: !269, line: 716, column: 42)
!1370 = !DILocalVariable(name: "h", scope: !1358, file: !269, line: 709, type: !44)
!1371 = !DILocation(line: 718, column: 11, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !269, line: 718, column: 9)
!1373 = !DILocation(line: 718, column: 9, scope: !1369)
!1374 = !DILocation(line: 720, column: 14, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !269, line: 718, column: 20)
!1376 = !DILocation(line: 721, column: 18, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1375, file: !269, line: 721, column: 11)
!1378 = !DILocation(line: 721, column: 11, scope: !1375)
!1379 = !DILocation(line: 722, column: 8, scope: !1377)
!1380 = !DILocation(line: 723, column: 7, scope: !1375)
!1381 = distinct !{!1381, !1365, !1382, !650}
!1382 = !DILocation(line: 745, column: 3, scope: !1358)
!1383 = !DILocation(line: 725, column: 9, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1369, file: !269, line: 725, column: 9)
!1385 = !DILocation(line: 725, column: 15, scope: !1384)
!1386 = !DILocation(line: 725, column: 9, scope: !1369)
!1387 = !DILocation(line: 726, column: 7, scope: !1384)
!1388 = !DILocalVariable(name: "p", scope: !1358, file: !269, line: 710, type: !82)
!1389 = !DILocation(line: 728, column: 13, scope: !1369)
!1390 = !DILocation(line: 728, column: 11, scope: !1369)
!1391 = !DILocalVariable(name: "q", scope: !1358, file: !269, line: 710, type: !82)
!1392 = !DILocation(line: 734, column: 5, scope: !1369)
!1393 = !DILocation(line: 0, scope: !1369)
!1394 = !DILocation(line: 734, column: 14, scope: !1369)
!1395 = !DILocation(line: 734, column: 18, scope: !1369)
!1396 = !DILocation(line: 735, column: 11, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !269, line: 735, column: 11)
!1398 = distinct !DILexicalBlock(scope: !1369, file: !269, line: 734, column: 23)
!1399 = !DILocation(line: 735, column: 39, scope: !1397)
!1400 = !DILocation(line: 735, column: 11, scope: !1398)
!1401 = !DILocation(line: 736, column: 17, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !269, line: 735, column: 45)
!1403 = !DILocalVariable(name: "skip", scope: !1358, file: !269, line: 711, type: !46)
!1404 = !DILocation(line: 737, column: 8, scope: !1402)
!1405 = !DILocation(line: 738, column: 8, scope: !1402)
!1406 = !DILocation(line: 740, column: 9, scope: !1398)
!1407 = distinct !{!1407, !1392, !1408, !650}
!1408 = !DILocation(line: 741, column: 5, scope: !1369)
!1409 = !DILocation(line: 742, column: 14, scope: !1369)
!1410 = !DILocation(line: 743, column: 5, scope: !1369)
!1411 = !DILocation(line: 744, column: 8, scope: !1369)
!1412 = !DILabel(scope: !1358, name: "fatal", file: !269, line: 746)
!1413 = !DILocation(line: 746, column: 1, scope: !1358)
!1414 = !DILocation(line: 747, column: 25, scope: !1358)
!1415 = !DILocation(line: 747, column: 3, scope: !1358)
!1416 = !DILocation(line: 749, column: 3, scope: !1358)
!1417 = !DILocation(line: 750, column: 1, scope: !1358)
!1418 = distinct !DISubprogram(name: "archive_le16dec", scope: !1419, file: !1419, line: 81, type: !1420, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!1419 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_endian.h", directory: "", checksumkind: CSK_MD5, checksum: "9e155272eb2b08a7cc6199da2b500265")
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!1422, !44}
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !502, line: 25, baseType: !1423)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !42, line: 40, baseType: !392)
!1424 = !DILocalVariable(name: "pp", arg: 1, scope: !1418, file: !1419, line: 81, type: !44)
!1425 = !DILocation(line: 0, scope: !1418)
!1426 = !DILocalVariable(name: "p", scope: !1418, file: !1419, line: 83, type: !507)
!1427 = !DILocation(line: 85, column: 11, scope: !1418)
!1428 = !DILocation(line: 85, column: 16, scope: !1418)
!1429 = !DILocation(line: 85, column: 24, scope: !1418)
!1430 = !DILocation(line: 85, column: 22, scope: !1418)
!1431 = !DILocation(line: 85, column: 9, scope: !1418)
!1432 = !DILocation(line: 85, column: 2, scope: !1418)
!1433 = distinct !DISubprogram(name: "read_header", scope: !269, file: !269, line: 1193, type: !1434, scopeLine: 1195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!24, !5, !31, !84}
!1436 = !DILocalVariable(name: "a", arg: 1, scope: !1433, file: !269, line: 1193, type: !5)
!1437 = !DILocation(line: 0, scope: !1433)
!1438 = !DILocalVariable(name: "entry", arg: 2, scope: !1433, file: !269, line: 1193, type: !31)
!1439 = !DILocalVariable(name: "head_type", arg: 3, scope: !1433, file: !269, line: 1194, type: !84)
!1440 = !DILocalVariable(name: "rar_header", scope: !1433, file: !269, line: 1199, type: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rar_header", file: !269, line: 152, size: 56, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1446}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !1441, file: !269, line: 154, baseType: !274, size: 16)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1441, file: !269, line: 155, baseType: !84, size: 8, offset: 16)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1441, file: !269, line: 156, baseType: !274, size: 16, offset: 24)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1441, file: !269, line: 157, baseType: !274, size: 16, offset: 40)
!1447 = !DILocation(line: 1199, column: 21, scope: !1433)
!1448 = !DILocalVariable(name: "file_header", scope: !1433, file: !269, line: 1200, type: !1449)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rar_file_header", file: !269, line: 161, size: 200, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "pack_size", scope: !1449, file: !269, line: 163, baseType: !278, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "unp_size", scope: !1449, file: !269, line: 164, baseType: !278, size: 32, offset: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "host_os", scope: !1449, file: !269, line: 165, baseType: !84, size: 8, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "file_crc", scope: !1449, file: !269, line: 166, baseType: !278, size: 32, offset: 72)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "file_time", scope: !1449, file: !269, line: 167, baseType: !278, size: 32, offset: 104)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "unp_ver", scope: !1449, file: !269, line: 168, baseType: !84, size: 8, offset: 136)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1449, file: !269, line: 169, baseType: !84, size: 8, offset: 144)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "name_size", scope: !1449, file: !269, line: 170, baseType: !274, size: 16, offset: 152)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "file_attr", scope: !1449, file: !269, line: 171, baseType: !278, size: 32, offset: 168)
!1460 = !DILocation(line: 1200, column: 26, scope: !1433)
!1461 = !DILocalVariable(name: "packed_size", scope: !1433, file: !269, line: 1205, type: !298)
!1462 = !DILocation(line: 1205, column: 8, scope: !1433)
!1463 = !DILocalVariable(name: "unp_size", scope: !1433, file: !269, line: 1206, type: !298)
!1464 = !DILocation(line: 1206, column: 8, scope: !1433)
!1465 = !DILocalVariable(name: "ret", scope: !1433, file: !269, line: 1210, type: !24)
!1466 = !DILocation(line: 1212, column: 27, scope: !1433)
!1467 = !DILocation(line: 1212, column: 35, scope: !1433)
!1468 = !DILocation(line: 1212, column: 9, scope: !1433)
!1469 = !DILocalVariable(name: "rar", scope: !1433, file: !269, line: 1198, type: !267)
!1470 = !DILocation(line: 1215, column: 16, scope: !1433)
!1471 = !DILocalVariable(name: "sconv", scope: !1433, file: !269, line: 1208, type: !104)
!1472 = !DILocation(line: 1216, column: 13, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1216, column: 7)
!1474 = !DILocation(line: 1216, column: 7, scope: !1433)
!1475 = !DILocation(line: 1217, column: 15, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !269, line: 1217, column: 9)
!1477 = distinct !DILexicalBlock(scope: !1473, file: !269, line: 1216, column: 22)
!1478 = !DILocation(line: 1217, column: 10, scope: !1476)
!1479 = !DILocation(line: 1217, column: 9, scope: !1477)
!1480 = !DILocation(line: 1220, column: 18, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !269, line: 1217, column: 40)
!1482 = !DILocation(line: 1219, column: 11, scope: !1481)
!1483 = !DILocation(line: 1218, column: 12, scope: !1481)
!1484 = !DILocation(line: 1218, column: 26, scope: !1481)
!1485 = !DILocation(line: 1221, column: 12, scope: !1481)
!1486 = !DILocation(line: 1221, column: 36, scope: !1481)
!1487 = !DILocation(line: 1222, column: 5, scope: !1481)
!1488 = !DILocation(line: 1223, column: 18, scope: !1477)
!1489 = !DILocation(line: 1224, column: 3, scope: !1477)
!1490 = !DILocation(line: 1227, column: 12, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1227, column: 7)
!1492 = !DILocalVariable(name: "h", scope: !1433, file: !269, line: 1196, type: !44)
!1493 = !DILocation(line: 1227, column: 46, scope: !1491)
!1494 = !DILocation(line: 1227, column: 7, scope: !1433)
!1495 = !DILocation(line: 1228, column: 5, scope: !1491)
!1496 = !DILocalVariable(name: "p", scope: !1433, file: !269, line: 1197, type: !82)
!1497 = !DILocation(line: 1230, column: 3, scope: !1433)
!1498 = !DILocation(line: 1231, column: 48, scope: !1433)
!1499 = !DILocation(line: 1231, column: 37, scope: !1433)
!1500 = !DILocation(line: 1231, column: 21, scope: !1433)
!1501 = !DILocation(line: 1231, column: 8, scope: !1433)
!1502 = !DILocation(line: 1231, column: 19, scope: !1433)
!1503 = !DILocation(line: 1232, column: 44, scope: !1433)
!1504 = !DILocation(line: 1232, column: 33, scope: !1433)
!1505 = !DILocation(line: 1232, column: 17, scope: !1433)
!1506 = !DILocalVariable(name: "header_size", scope: !1433, file: !269, line: 1201, type: !53)
!1507 = !DILocation(line: 1233, column: 19, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1233, column: 7)
!1509 = !DILocation(line: 1233, column: 7, scope: !1433)
!1510 = !DILocation(line: 1234, column: 27, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !269, line: 1233, column: 55)
!1512 = !DILocation(line: 1234, column: 5, scope: !1511)
!1513 = !DILocation(line: 1236, column: 5, scope: !1511)
!1514 = !DILocation(line: 1238, column: 49, scope: !1433)
!1515 = !DILocation(line: 1238, column: 15, scope: !1433)
!1516 = !DILocalVariable(name: "crc32_val", scope: !1433, file: !269, line: 1209, type: !48)
!1517 = !DILocation(line: 1239, column: 3, scope: !1433)
!1518 = !DILocation(line: 1241, column: 14, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1241, column: 7)
!1520 = !DILocation(line: 1241, column: 25, scope: !1519)
!1521 = !DILocation(line: 1241, column: 7, scope: !1433)
!1522 = !DILocation(line: 1243, column: 10, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !269, line: 1242, column: 3)
!1524 = !DILocation(line: 1243, column: 29, scope: !1523)
!1525 = !DILocation(line: 1244, column: 10, scope: !1523)
!1526 = !DILocation(line: 1244, column: 22, scope: !1523)
!1527 = !DILocation(line: 1245, column: 10, scope: !1523)
!1528 = !DILocation(line: 1245, column: 19, scope: !1523)
!1529 = !DILocation(line: 1246, column: 10, scope: !1523)
!1530 = !DILocation(line: 1246, column: 16, scope: !1523)
!1531 = !DILocation(line: 1247, column: 10, scope: !1523)
!1532 = !DILocation(line: 1247, column: 16, scope: !1523)
!1533 = !DILocation(line: 1248, column: 10, scope: !1523)
!1534 = !DILocation(line: 1248, column: 16, scope: !1523)
!1535 = !DILocation(line: 1249, column: 10, scope: !1523)
!1536 = !DILocation(line: 1249, column: 18, scope: !1523)
!1537 = !DILocation(line: 1250, column: 10, scope: !1523)
!1538 = !DILocation(line: 1250, column: 15, scope: !1523)
!1539 = !DILocation(line: 1251, column: 18, scope: !1523)
!1540 = !DILocation(line: 1251, column: 5, scope: !1523)
!1541 = !DILocation(line: 1252, column: 10, scope: !1523)
!1542 = !DILocation(line: 1252, column: 16, scope: !1523)
!1543 = !DILocation(line: 1253, column: 10, scope: !1523)
!1544 = !DILocation(line: 1253, column: 16, scope: !1523)
!1545 = !DILocation(line: 1254, column: 10, scope: !1523)
!1546 = !DILocation(line: 1254, column: 16, scope: !1523)
!1547 = !DILocation(line: 1255, column: 10, scope: !1523)
!1548 = !DILocation(line: 1255, column: 16, scope: !1523)
!1549 = !DILocation(line: 1256, column: 10, scope: !1523)
!1550 = !DILocation(line: 1256, column: 16, scope: !1523)
!1551 = !DILocation(line: 1257, column: 10, scope: !1523)
!1552 = !DILocation(line: 1257, column: 16, scope: !1523)
!1553 = !DILocation(line: 1258, column: 10, scope: !1523)
!1554 = !DILocation(line: 1258, column: 18, scope: !1523)
!1555 = !DILocation(line: 1259, column: 10, scope: !1523)
!1556 = !DILocation(line: 1259, column: 18, scope: !1523)
!1557 = !DILocation(line: 1260, column: 3, scope: !1523)
!1558 = !DILocation(line: 1263, column: 27, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1519, file: !269, line: 1262, column: 3)
!1560 = !DILocation(line: 1263, column: 5, scope: !1559)
!1561 = !DILocation(line: 1265, column: 5, scope: !1559)
!1562 = !DILocation(line: 1268, column: 56, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1268, column: 7)
!1564 = !DILocation(line: 1268, column: 12, scope: !1563)
!1565 = !DILocation(line: 1268, column: 68, scope: !1563)
!1566 = !DILocation(line: 1268, column: 7, scope: !1433)
!1567 = !DILocation(line: 1269, column: 5, scope: !1563)
!1568 = !DILocation(line: 1272, column: 58, scope: !1433)
!1569 = !DILocation(line: 1272, column: 35, scope: !1433)
!1570 = !DILocation(line: 1272, column: 15, scope: !1433)
!1571 = !DILocation(line: 1273, column: 18, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1273, column: 7)
!1573 = !DILocation(line: 1273, column: 58, scope: !1572)
!1574 = !DILocation(line: 1273, column: 47, scope: !1572)
!1575 = !DILocation(line: 1273, column: 31, scope: !1572)
!1576 = !DILocation(line: 1273, column: 28, scope: !1572)
!1577 = !DILocation(line: 1273, column: 7, scope: !1433)
!1578 = !DILocation(line: 1274, column: 27, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1572, file: !269, line: 1273, column: 64)
!1580 = !DILocation(line: 1274, column: 5, scope: !1579)
!1581 = !DILocation(line: 1276, column: 5, scope: !1579)
!1582 = !DILocation(line: 1280, column: 12, scope: !1433)
!1583 = !DILocation(line: 1280, column: 26, scope: !1433)
!1584 = !DILocalVariable(name: "endp", scope: !1433, file: !269, line: 1197, type: !82)
!1585 = !DILocation(line: 1281, column: 3, scope: !1433)
!1586 = !DILocation(line: 1282, column: 5, scope: !1433)
!1587 = !DILocation(line: 1284, column: 41, scope: !1433)
!1588 = !DILocation(line: 1284, column: 8, scope: !1433)
!1589 = !DILocation(line: 1284, column: 27, scope: !1433)
!1590 = !DILocation(line: 1286, column: 39, scope: !1433)
!1591 = !DILocation(line: 1286, column: 27, scope: !1433)
!1592 = !DILocation(line: 1286, column: 11, scope: !1433)
!1593 = !DILocalVariable(name: "ttime", scope: !1433, file: !269, line: 1207, type: !24)
!1594 = !DILocation(line: 1287, column: 16, scope: !1433)
!1595 = !DILocation(line: 1287, column: 8, scope: !1433)
!1596 = !DILocation(line: 1287, column: 14, scope: !1433)
!1597 = !DILocation(line: 1289, column: 47, scope: !1433)
!1598 = !DILocation(line: 1289, column: 35, scope: !1433)
!1599 = !DILocation(line: 1289, column: 19, scope: !1433)
!1600 = !DILocation(line: 1289, column: 8, scope: !1433)
!1601 = !DILocation(line: 1289, column: 17, scope: !1433)
!1602 = !DILocation(line: 1291, column: 12, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1291, column: 7)
!1604 = !DILocation(line: 1291, column: 23, scope: !1603)
!1605 = !DILocation(line: 1291, column: 7, scope: !1433)
!1606 = !DILocation(line: 1293, column: 27, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1603, file: !269, line: 1292, column: 3)
!1608 = !DILocation(line: 1293, column: 5, scope: !1607)
!1609 = !DILocation(line: 1295, column: 5, scope: !1607)
!1610 = !DILocation(line: 1298, column: 12, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1298, column: 7)
!1612 = !DILocation(line: 1298, column: 23, scope: !1611)
!1613 = !DILocation(line: 1298, column: 7, scope: !1433)
!1614 = !DILocation(line: 1300, column: 5, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !269, line: 1299, column: 3)
!1616 = !DILocation(line: 1300, column: 37, scope: !1615)
!1617 = !DILocation(line: 1301, column: 12, scope: !1615)
!1618 = !DILocation(line: 1301, column: 24, scope: !1615)
!1619 = !DILocation(line: 1301, column: 5, scope: !1615)
!1620 = !DILocation(line: 1302, column: 7, scope: !1615)
!1621 = !DILocation(line: 1303, column: 5, scope: !1615)
!1622 = !DILocation(line: 1303, column: 34, scope: !1615)
!1623 = !DILocation(line: 1304, column: 12, scope: !1615)
!1624 = !DILocation(line: 1304, column: 21, scope: !1615)
!1625 = !DILocation(line: 1304, column: 5, scope: !1615)
!1626 = !DILocation(line: 1305, column: 7, scope: !1615)
!1627 = !DILocation(line: 1306, column: 40, scope: !1615)
!1628 = !DILocation(line: 1306, column: 24, scope: !1615)
!1629 = !DILocation(line: 1306, column: 10, scope: !1615)
!1630 = !DILocation(line: 1306, column: 22, scope: !1615)
!1631 = !DILocation(line: 1307, column: 37, scope: !1615)
!1632 = !DILocation(line: 1307, column: 21, scope: !1615)
!1633 = !DILocation(line: 1307, column: 10, scope: !1615)
!1634 = !DILocation(line: 1307, column: 19, scope: !1615)
!1635 = !DILocation(line: 1308, column: 3, scope: !1615)
!1636 = !DILocation(line: 1311, column: 52, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1611, file: !269, line: 1310, column: 3)
!1638 = !DILocation(line: 1311, column: 40, scope: !1637)
!1639 = !DILocation(line: 1311, column: 24, scope: !1637)
!1640 = !DILocation(line: 1311, column: 10, scope: !1637)
!1641 = !DILocation(line: 1311, column: 22, scope: !1637)
!1642 = !DILocation(line: 1312, column: 49, scope: !1637)
!1643 = !DILocation(line: 1312, column: 37, scope: !1637)
!1644 = !DILocation(line: 1312, column: 21, scope: !1637)
!1645 = !DILocation(line: 1312, column: 10, scope: !1637)
!1646 = !DILocation(line: 1312, column: 19, scope: !1637)
!1647 = !DILocation(line: 1315, column: 12, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1315, column: 7)
!1649 = !DILocation(line: 1315, column: 24, scope: !1648)
!1650 = !DILocation(line: 1315, column: 28, scope: !1648)
!1651 = !DILocation(line: 1315, column: 36, scope: !1648)
!1652 = !DILocation(line: 1315, column: 45, scope: !1648)
!1653 = !DILocation(line: 1315, column: 7, scope: !1433)
!1654 = !DILocation(line: 1317, column: 27, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1648, file: !269, line: 1316, column: 3)
!1656 = !DILocation(line: 1317, column: 5, scope: !1655)
!1657 = !DILocation(line: 1319, column: 5, scope: !1655)
!1658 = !DILocation(line: 1322, column: 31, scope: !1433)
!1659 = !DILocation(line: 1322, column: 8, scope: !1433)
!1660 = !DILocation(line: 1322, column: 24, scope: !1433)
!1661 = !DILocation(line: 1327, column: 7, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1327, column: 7)
!1663 = !DILocation(line: 1327, column: 17, scope: !1662)
!1664 = !DILocation(line: 1327, column: 7, scope: !1433)
!1665 = !DILocation(line: 1328, column: 25, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !269, line: 1327, column: 33)
!1667 = !DILocalVariable(name: "distance", scope: !1666, file: !269, line: 1328, type: !46)
!1668 = !DILocation(line: 0, scope: !1666)
!1669 = !DILocation(line: 1329, column: 25, scope: !1666)
!1670 = !DILocation(line: 1329, column: 17, scope: !1666)
!1671 = !DILocation(line: 1331, column: 58, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1666, file: !269, line: 1331, column: 9)
!1673 = !DILocation(line: 1331, column: 14, scope: !1672)
!1674 = !DILocation(line: 1331, column: 70, scope: !1672)
!1675 = !DILocation(line: 1331, column: 9, scope: !1666)
!1676 = !DILocation(line: 1332, column: 9, scope: !1672)
!1677 = !DILocation(line: 1334, column: 14, scope: !1666)
!1678 = !DILocation(line: 1334, column: 28, scope: !1666)
!1679 = !DILocation(line: 1335, column: 7, scope: !1666)
!1680 = !DILocation(line: 1336, column: 3, scope: !1666)
!1681 = !DILocation(line: 1338, column: 47, scope: !1433)
!1682 = !DILocation(line: 1338, column: 35, scope: !1433)
!1683 = !DILocation(line: 1338, column: 19, scope: !1433)
!1684 = !DILocalVariable(name: "filename_size", scope: !1433, file: !269, line: 1202, type: !14)
!1685 = !DILocation(line: 1339, column: 9, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1339, column: 7)
!1687 = !DILocation(line: 1339, column: 25, scope: !1686)
!1688 = !DILocation(line: 1339, column: 7, scope: !1433)
!1689 = !DILocation(line: 1340, column: 27, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !269, line: 1339, column: 33)
!1691 = !DILocation(line: 1340, column: 5, scope: !1690)
!1692 = !DILocation(line: 1342, column: 5, scope: !1690)
!1693 = !DILocation(line: 1344, column: 12, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1344, column: 7)
!1695 = !DILocation(line: 1344, column: 47, scope: !1694)
!1696 = !DILocation(line: 1344, column: 51, scope: !1694)
!1697 = !DILocation(line: 1344, column: 33, scope: !1694)
!1698 = !DILocation(line: 1344, column: 31, scope: !1694)
!1699 = !DILocation(line: 1344, column: 7, scope: !1433)
!1700 = !DILocation(line: 1346, column: 36, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1694, file: !269, line: 1344, column: 56)
!1702 = !DILocation(line: 1346, column: 40, scope: !1701)
!1703 = !DILocation(line: 1346, column: 22, scope: !1701)
!1704 = !DILocalVariable(name: "newsize", scope: !1701, file: !269, line: 1346, type: !46)
!1705 = !DILocation(line: 0, scope: !1701)
!1706 = !DILocation(line: 1347, column: 27, scope: !1701)
!1707 = !DILocation(line: 1347, column: 14, scope: !1701)
!1708 = !DILocalVariable(name: "newptr", scope: !1701, file: !269, line: 1345, type: !97)
!1709 = !DILocation(line: 1348, column: 16, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1701, file: !269, line: 1348, column: 9)
!1711 = !DILocation(line: 1348, column: 9, scope: !1701)
!1712 = !DILocation(line: 1349, column: 29, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1710, file: !269, line: 1348, column: 25)
!1714 = !DILocation(line: 1349, column: 7, scope: !1713)
!1715 = !DILocation(line: 1351, column: 7, scope: !1713)
!1716 = !DILocation(line: 1353, column: 10, scope: !1701)
!1717 = !DILocation(line: 1353, column: 19, scope: !1701)
!1718 = !DILocation(line: 1354, column: 10, scope: !1701)
!1719 = !DILocation(line: 1354, column: 29, scope: !1701)
!1720 = !DILocation(line: 1355, column: 3, scope: !1701)
!1721 = !DILocation(line: 1356, column: 19, scope: !1433)
!1722 = !DILocalVariable(name: "filename", scope: !1433, file: !269, line: 1203, type: !97)
!1723 = !DILocation(line: 1357, column: 23, scope: !1433)
!1724 = !DILocation(line: 1357, column: 3, scope: !1433)
!1725 = !DILocation(line: 1358, column: 3, scope: !1433)
!1726 = !DILocation(line: 1358, column: 27, scope: !1433)
!1727 = !DILocation(line: 1359, column: 12, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1359, column: 7)
!1729 = !DILocation(line: 1359, column: 23, scope: !1728)
!1730 = !DILocation(line: 1359, column: 7, scope: !1433)
!1731 = !DILocation(line: 1361, column: 9, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !269, line: 1361, column: 9)
!1733 = distinct !DILexicalBlock(scope: !1728, file: !269, line: 1360, column: 3)
!1734 = !DILocation(line: 1361, column: 26, scope: !1732)
!1735 = !DILocation(line: 1361, column: 23, scope: !1732)
!1736 = !DILocation(line: 1361, column: 9, scope: !1733)
!1737 = !DILocalVariable(name: "end", scope: !1433, file: !269, line: 1202, type: !14)
!1738 = !DILocation(line: 1367, column: 30, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1732, file: !269, line: 1362, column: 5)
!1740 = !DILocalVariable(name: "fn_end", scope: !1739, file: !269, line: 1364, type: !14)
!1741 = !DILocation(line: 0, scope: !1739)
!1742 = !DILocation(line: 1369, column: 26, scope: !1739)
!1743 = !DILocation(line: 1369, column: 16, scope: !1739)
!1744 = !DILocation(line: 1369, column: 43, scope: !1739)
!1745 = !DILocalVariable(name: "offset", scope: !1739, file: !269, line: 1364, type: !14)
!1746 = !DILocation(line: 1370, column: 30, scope: !1739)
!1747 = !DILocation(line: 1370, column: 22, scope: !1739)
!1748 = !DILocation(line: 1370, column: 18, scope: !1739)
!1749 = !DILocalVariable(name: "highbyte", scope: !1739, file: !269, line: 1363, type: !318)
!1750 = !DILocalVariable(name: "flagbits", scope: !1739, file: !269, line: 1363, type: !318)
!1751 = !DILocalVariable(name: "flagbyte", scope: !1739, file: !269, line: 1363, type: !318)
!1752 = !DILocation(line: 1373, column: 7, scope: !1739)
!1753 = !DILocation(line: 1372, column: 16, scope: !1739)
!1754 = !DILocation(line: 1368, column: 21, scope: !1739)
!1755 = !DILocation(line: 1373, column: 21, scope: !1739)
!1756 = !DILocation(line: 1373, column: 27, scope: !1739)
!1757 = !DILocation(line: 1373, column: 44, scope: !1739)
!1758 = !DILocation(line: 1375, column: 14, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !269, line: 1375, column: 13)
!1760 = distinct !DILexicalBlock(scope: !1739, file: !269, line: 1374, column: 7)
!1761 = !DILocation(line: 1375, column: 13, scope: !1760)
!1762 = !DILocation(line: 1377, column: 34, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !269, line: 1376, column: 9)
!1764 = !DILocation(line: 1377, column: 26, scope: !1763)
!1765 = !DILocation(line: 1377, column: 22, scope: !1763)
!1766 = !DILocation(line: 1379, column: 9, scope: !1763)
!1767 = !DILocation(line: 1381, column: 18, scope: !1760)
!1768 = !DILocation(line: 1382, column: 17, scope: !1760)
!1769 = !DILocation(line: 1382, column: 29, scope: !1760)
!1770 = !DILocation(line: 1382, column: 26, scope: !1760)
!1771 = !DILocation(line: 1382, column: 39, scope: !1760)
!1772 = !DILocation(line: 1382, column: 9, scope: !1760)
!1773 = !DILocation(line: 1385, column: 35, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1760, file: !269, line: 1383, column: 9)
!1775 = !DILocation(line: 1385, column: 13, scope: !1774)
!1776 = !DILocation(line: 1385, column: 39, scope: !1774)
!1777 = !DILocation(line: 1386, column: 53, scope: !1774)
!1778 = !DILocation(line: 1386, column: 45, scope: !1774)
!1779 = !DILocation(line: 1386, column: 41, scope: !1774)
!1780 = !DILocation(line: 1386, column: 35, scope: !1774)
!1781 = !DILocation(line: 1386, column: 13, scope: !1774)
!1782 = !DILocation(line: 1386, column: 39, scope: !1774)
!1783 = !DILocation(line: 1387, column: 13, scope: !1774)
!1784 = !DILocation(line: 1389, column: 35, scope: !1774)
!1785 = !DILocation(line: 1389, column: 13, scope: !1774)
!1786 = !DILocation(line: 1389, column: 39, scope: !1774)
!1787 = !DILocation(line: 1390, column: 53, scope: !1774)
!1788 = !DILocation(line: 1390, column: 45, scope: !1774)
!1789 = !DILocation(line: 1390, column: 41, scope: !1774)
!1790 = !DILocation(line: 1390, column: 35, scope: !1774)
!1791 = !DILocation(line: 1390, column: 13, scope: !1774)
!1792 = !DILocation(line: 1390, column: 39, scope: !1774)
!1793 = !DILocation(line: 1391, column: 13, scope: !1774)
!1794 = !DILocation(line: 1393, column: 45, scope: !1774)
!1795 = !DILocation(line: 1393, column: 54, scope: !1774)
!1796 = !DILocation(line: 1393, column: 41, scope: !1774)
!1797 = !DILocation(line: 1393, column: 35, scope: !1774)
!1798 = !DILocation(line: 1393, column: 13, scope: !1774)
!1799 = !DILocation(line: 1393, column: 39, scope: !1774)
!1800 = !DILocation(line: 1394, column: 45, scope: !1774)
!1801 = !DILocation(line: 1394, column: 41, scope: !1774)
!1802 = !DILocation(line: 1394, column: 35, scope: !1774)
!1803 = !DILocation(line: 1394, column: 13, scope: !1774)
!1804 = !DILocation(line: 1394, column: 39, scope: !1774)
!1805 = !DILocation(line: 1395, column: 20, scope: !1774)
!1806 = !DILocation(line: 1396, column: 13, scope: !1774)
!1807 = !DILocation(line: 1400, column: 42, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1774, file: !269, line: 1398, column: 11)
!1809 = !DILocation(line: 1400, column: 34, scope: !1808)
!1810 = !DILocation(line: 1400, column: 30, scope: !1808)
!1811 = !DILocalVariable(name: "length", scope: !1808, file: !269, line: 1400, type: !1812)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !502, line: 24, baseType: !1813)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !42, line: 38, baseType: !318)
!1814 = !DILocation(line: 0, scope: !1808)
!1815 = !DILocation(line: 1402, column: 17, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1808, file: !269, line: 1402, column: 17)
!1817 = !DILocation(line: 1402, column: 24, scope: !1816)
!1818 = !DILocation(line: 1402, column: 17, scope: !1808)
!1819 = !DILocation(line: 1403, column: 35, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !269, line: 1402, column: 32)
!1821 = !DILocation(line: 1403, column: 27, scope: !1820)
!1822 = !DILocation(line: 1403, column: 23, scope: !1820)
!1823 = !DILocalVariable(name: "extra", scope: !1808, file: !269, line: 1399, type: !84)
!1824 = !DILocalVariable(name: "high", scope: !1808, file: !269, line: 1399, type: !84)
!1825 = !DILocation(line: 1405, column: 13, scope: !1820)
!1826 = !DILocation(line: 0, scope: !1816)
!1827 = !DILocation(line: 1407, column: 23, scope: !1808)
!1828 = !DILocation(line: 1407, column: 30, scope: !1808)
!1829 = !DILocation(line: 1407, column: 38, scope: !1808)
!1830 = !DILocation(line: 1407, column: 22, scope: !1808)
!1831 = !DILocation(line: 1408, column: 13, scope: !1808)
!1832 = !DILocation(line: 1408, column: 20, scope: !1808)
!1833 = !DILocation(line: 1408, column: 27, scope: !1808)
!1834 = !DILocation(line: 1408, column: 44, scope: !1808)
!1835 = !DILocation(line: 1409, column: 43, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1808, file: !269, line: 1408, column: 54)
!1837 = !DILocalVariable(name: "cp", scope: !1836, file: !269, line: 1409, type: !14)
!1838 = !DILocation(line: 0, scope: !1836)
!1839 = !DILocation(line: 1410, column: 37, scope: !1836)
!1840 = !DILocation(line: 1410, column: 15, scope: !1836)
!1841 = !DILocation(line: 1410, column: 41, scope: !1836)
!1842 = !DILocation(line: 1411, column: 43, scope: !1836)
!1843 = !DILocation(line: 1411, column: 51, scope: !1836)
!1844 = !DILocation(line: 1411, column: 49, scope: !1836)
!1845 = !DILocation(line: 1411, column: 37, scope: !1836)
!1846 = !DILocation(line: 1411, column: 15, scope: !1836)
!1847 = !DILocation(line: 1411, column: 41, scope: !1836)
!1848 = !DILocation(line: 1412, column: 21, scope: !1836)
!1849 = distinct !{!1849, !1831, !1850, !650}
!1850 = !DILocation(line: 1413, column: 13, scope: !1808)
!1851 = !DILocation(line: 1415, column: 11, scope: !1774)
!1852 = distinct !{!1852, !1752, !1853, !650}
!1853 = !DILocation(line: 1417, column: 7, scope: !1739)
!1854 = !DILocation(line: 1418, column: 25, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1739, file: !269, line: 1418, column: 11)
!1856 = !DILocation(line: 1418, column: 11, scope: !1739)
!1857 = !DILocation(line: 1419, column: 31, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1855, file: !269, line: 1418, column: 35)
!1859 = !DILocation(line: 1419, column: 9, scope: !1858)
!1860 = !DILocation(line: 1421, column: 9, scope: !1858)
!1861 = !DILocation(line: 1423, column: 29, scope: !1739)
!1862 = !DILocation(line: 1423, column: 7, scope: !1739)
!1863 = !DILocation(line: 1423, column: 33, scope: !1739)
!1864 = !DILocation(line: 1424, column: 29, scope: !1739)
!1865 = !DILocation(line: 1424, column: 7, scope: !1739)
!1866 = !DILocation(line: 1424, column: 33, scope: !1739)
!1867 = !DILocation(line: 1428, column: 16, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1739, file: !269, line: 1428, column: 11)
!1869 = !DILocation(line: 1428, column: 30, scope: !1868)
!1870 = !DILocation(line: 1428, column: 11, scope: !1739)
!1871 = !DILocation(line: 1430, column: 16, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !269, line: 1428, column: 39)
!1873 = !DILocation(line: 1429, column: 30, scope: !1872)
!1874 = !DILocation(line: 1429, column: 14, scope: !1872)
!1875 = !DILocation(line: 1429, column: 28, scope: !1872)
!1876 = !DILocation(line: 1431, column: 18, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1872, file: !269, line: 1431, column: 13)
!1878 = !DILocation(line: 1431, column: 32, scope: !1877)
!1879 = !DILocation(line: 1431, column: 13, scope: !1872)
!1880 = !DILocation(line: 1432, column: 11, scope: !1877)
!1881 = !DILocation(line: 1433, column: 7, scope: !1872)
!1882 = !DILocation(line: 1434, column: 23, scope: !1739)
!1883 = !DILocalVariable(name: "fn_sconv", scope: !1433, file: !269, line: 1208, type: !104)
!1884 = !DILocalVariable(name: "strp", scope: !1433, file: !269, line: 1204, type: !97)
!1885 = !DILocation(line: 1437, column: 7, scope: !1739)
!1886 = !DILocation(line: 1437, column: 14, scope: !1739)
!1887 = !DILocation(line: 1439, column: 14, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !269, line: 1439, column: 13)
!1889 = distinct !DILexicalBlock(scope: !1739, file: !269, line: 1438, column: 7)
!1890 = !DILocation(line: 1439, column: 13, scope: !1889)
!1891 = !DILocation(line: 1440, column: 18, scope: !1888)
!1892 = !DILocation(line: 1440, column: 23, scope: !1888)
!1893 = !DILocation(line: 1440, column: 11, scope: !1888)
!1894 = !DILocation(line: 1441, column: 14, scope: !1889)
!1895 = distinct !{!1895, !1885, !1896, !650}
!1896 = !DILocation(line: 1442, column: 7, scope: !1739)
!1897 = !DILocation(line: 1443, column: 9, scope: !1739)
!1898 = !DILocation(line: 1444, column: 5, scope: !1739)
!1899 = !DILocation(line: 1450, column: 16, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !269, line: 1450, column: 11)
!1901 = distinct !DILexicalBlock(scope: !1732, file: !269, line: 1444, column: 12)
!1902 = !DILocation(line: 1450, column: 27, scope: !1900)
!1903 = !DILocation(line: 1450, column: 11, scope: !1901)
!1904 = !DILocation(line: 1452, column: 16, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1900, file: !269, line: 1450, column: 36)
!1906 = !DILocation(line: 1451, column: 27, scope: !1905)
!1907 = !DILocation(line: 1451, column: 14, scope: !1905)
!1908 = !DILocation(line: 1451, column: 25, scope: !1905)
!1909 = !DILocation(line: 1453, column: 18, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1905, file: !269, line: 1453, column: 13)
!1911 = !DILocation(line: 1453, column: 29, scope: !1910)
!1912 = !DILocation(line: 1453, column: 13, scope: !1905)
!1913 = !DILocation(line: 1454, column: 11, scope: !1910)
!1914 = !DILocation(line: 1455, column: 7, scope: !1905)
!1915 = !DILocation(line: 1456, column: 23, scope: !1901)
!1916 = !DILocation(line: 1457, column: 7, scope: !1901)
!1917 = !DILocation(line: 1457, column: 22, scope: !1901)
!1918 = !DILocation(line: 1457, column: 46, scope: !1901)
!1919 = !DILocation(line: 1458, column: 15, scope: !1901)
!1920 = distinct !{!1920, !1916, !1921, !650}
!1921 = !DILocation(line: 1458, column: 17, scope: !1901)
!1922 = !DILocation(line: 1459, column: 9, scope: !1901)
!1923 = !DILocation(line: 0, scope: !1732)
!1924 = !DILocation(line: 1461, column: 3, scope: !1733)
!1925 = !DILocation(line: 1465, column: 5, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1728, file: !269, line: 1463, column: 3)
!1927 = !DILocation(line: 1465, column: 20, scope: !1926)
!1928 = !DILocation(line: 1465, column: 44, scope: !1926)
!1929 = !DILocation(line: 1466, column: 13, scope: !1926)
!1930 = distinct !{!1930, !1925, !1931, !650}
!1931 = !DILocation(line: 1466, column: 15, scope: !1926)
!1932 = !DILocation(line: 1467, column: 7, scope: !1926)
!1933 = !DILocation(line: 0, scope: !1728)
!1934 = !DILocation(line: 1471, column: 12, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1471, column: 7)
!1936 = !DILocation(line: 1471, column: 7, scope: !1935)
!1937 = !DILocation(line: 1471, column: 26, scope: !1935)
!1938 = !DILocation(line: 1472, column: 18, scope: !1935)
!1939 = !DILocation(line: 1472, column: 33, scope: !1935)
!1940 = !DILocation(line: 1472, column: 62, scope: !1935)
!1941 = !DILocation(line: 1472, column: 48, scope: !1935)
!1942 = !DILocation(line: 1472, column: 6, scope: !1935)
!1943 = !DILocation(line: 1471, column: 7, scope: !1433)
!1944 = !DILocation(line: 1474, column: 43, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1935, file: !269, line: 1473, column: 3)
!1946 = !DILocation(line: 1474, column: 5, scope: !1945)
!1947 = !DILocation(line: 1475, column: 10, scope: !1945)
!1948 = !DILocation(line: 1475, column: 16, scope: !1945)
!1949 = !DILocation(line: 1476, column: 14, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1945, file: !269, line: 1476, column: 9)
!1951 = !DILocation(line: 1476, column: 29, scope: !1950)
!1952 = !DILocation(line: 1476, column: 21, scope: !1950)
!1953 = !DILocation(line: 1476, column: 9, scope: !1945)
!1954 = !DILocation(line: 1478, column: 12, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1950, file: !269, line: 1477, column: 5)
!1956 = !DILocation(line: 1478, column: 17, scope: !1955)
!1957 = !DILocation(line: 1480, column: 22, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !269, line: 1479, column: 11)
!1959 = !DILocation(line: 1480, column: 17, scope: !1958)
!1960 = !DILocation(line: 1480, column: 52, scope: !1958)
!1961 = !DILocation(line: 1480, column: 47, scope: !1958)
!1962 = !DILocation(line: 1480, column: 45, scope: !1958)
!1963 = !DILocation(line: 1480, column: 9, scope: !1958)
!1964 = !DILocation(line: 1479, column: 17, scope: !1958)
!1965 = !DILocation(line: 1479, column: 21, scope: !1958)
!1966 = !DILocation(line: 1480, column: 60, scope: !1958)
!1967 = !DILocation(line: 1479, column: 11, scope: !1955)
!1968 = !DILocation(line: 1482, column: 31, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1958, file: !269, line: 1481, column: 7)
!1970 = !DILocation(line: 1482, column: 9, scope: !1969)
!1971 = !DILocation(line: 1483, column: 9, scope: !1969)
!1972 = !DILocation(line: 1485, column: 12, scope: !1955)
!1973 = !DILocation(line: 1485, column: 21, scope: !1955)
!1974 = !DILocation(line: 1485, column: 7, scope: !1955)
!1975 = !DILocation(line: 1485, column: 29, scope: !1955)
!1976 = !DILocation(line: 1485, column: 41, scope: !1955)
!1977 = !DILocation(line: 1486, column: 12, scope: !1955)
!1978 = !DILocation(line: 1486, column: 21, scope: !1955)
!1979 = !DILocation(line: 1486, column: 7, scope: !1955)
!1980 = !DILocation(line: 1486, column: 29, scope: !1955)
!1981 = !DILocation(line: 1486, column: 42, scope: !1955)
!1982 = !DILocation(line: 1487, column: 12, scope: !1955)
!1983 = !DILocation(line: 1487, column: 21, scope: !1955)
!1984 = !DILocation(line: 1487, column: 7, scope: !1955)
!1985 = !DILocation(line: 1487, column: 29, scope: !1955)
!1986 = !DILocation(line: 1487, column: 40, scope: !1955)
!1987 = !DILocation(line: 1488, column: 5, scope: !1955)
!1988 = !DILocation(line: 1489, column: 14, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1945, file: !269, line: 1489, column: 9)
!1990 = !DILocation(line: 1489, column: 23, scope: !1989)
!1991 = !DILocation(line: 1489, column: 9, scope: !1989)
!1992 = !DILocation(line: 1489, column: 31, scope: !1989)
!1993 = !DILocation(line: 1489, column: 44, scope: !1989)
!1994 = !DILocation(line: 1489, column: 9, scope: !1945)
!1995 = !DILocation(line: 1491, column: 47, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1989, file: !269, line: 1490, column: 5)
!1997 = !DILocation(line: 1491, column: 55, scope: !1996)
!1998 = !DILocation(line: 1491, column: 12, scope: !1996)
!1999 = !DILocation(line: 1491, column: 21, scope: !1996)
!2000 = !DILocation(line: 1491, column: 7, scope: !1996)
!2001 = !DILocation(line: 1491, column: 29, scope: !1996)
!2002 = !DILocation(line: 1491, column: 42, scope: !1996)
!2003 = !DILocation(line: 1492, column: 47, scope: !1996)
!2004 = !DILocation(line: 1492, column: 56, scope: !1996)
!2005 = !DILocation(line: 1492, column: 42, scope: !1996)
!2006 = !DILocation(line: 1492, column: 64, scope: !1996)
!2007 = !DILocation(line: 1493, column: 14, scope: !1996)
!2008 = !DILocation(line: 1492, column: 77, scope: !1996)
!2009 = !DILocation(line: 1492, column: 12, scope: !1996)
!2010 = !DILocation(line: 1492, column: 21, scope: !1996)
!2011 = !DILocation(line: 1492, column: 7, scope: !1996)
!2012 = !DILocation(line: 1492, column: 29, scope: !1996)
!2013 = !DILocation(line: 1492, column: 40, scope: !1996)
!2014 = !DILocation(line: 1494, column: 5, scope: !1996)
!2015 = !DILocation(line: 1495, column: 5, scope: !1945)
!2016 = !DILocation(line: 1498, column: 44, scope: !1433)
!2017 = !DILocation(line: 1499, column: 53, scope: !1433)
!2018 = !DILocation(line: 1499, column: 39, scope: !1433)
!2019 = !DILocation(line: 1498, column: 31, scope: !1433)
!2020 = !DILocation(line: 1498, column: 8, scope: !1433)
!2021 = !DILocation(line: 1498, column: 22, scope: !1433)
!2022 = !DILocation(line: 1500, column: 15, scope: !1433)
!2023 = !DILocation(line: 1500, column: 35, scope: !1433)
!2024 = !DILocation(line: 1500, column: 59, scope: !1433)
!2025 = !DILocation(line: 1500, column: 45, scope: !1433)
!2026 = !DILocation(line: 1500, column: 3, scope: !1433)
!2027 = !DILocation(line: 1503, column: 13, scope: !1433)
!2028 = !DILocation(line: 1503, column: 8, scope: !1433)
!2029 = !DILocation(line: 1503, column: 3, scope: !1433)
!2030 = !DILocation(line: 1504, column: 19, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1504, column: 7)
!2032 = !DILocation(line: 1504, column: 13, scope: !2031)
!2033 = !DILocation(line: 1504, column: 17, scope: !2031)
!2034 = !DILocation(line: 1504, column: 49, scope: !2031)
!2035 = !DILocation(line: 1504, column: 7, scope: !1433)
!2036 = !DILocation(line: 1506, column: 27, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2031, file: !269, line: 1505, column: 3)
!2038 = !DILocation(line: 1506, column: 5, scope: !2037)
!2039 = !DILocation(line: 1507, column: 5, scope: !2037)
!2040 = !DILocation(line: 1509, column: 8, scope: !1433)
!2041 = !DILocation(line: 1509, column: 3, scope: !1433)
!2042 = !DILocation(line: 1509, column: 15, scope: !1433)
!2043 = !DILocation(line: 1509, column: 27, scope: !1433)
!2044 = !DILocation(line: 1510, column: 8, scope: !1433)
!2045 = !DILocation(line: 1510, column: 3, scope: !1433)
!2046 = !DILocation(line: 1510, column: 15, scope: !1433)
!2047 = !DILocation(line: 1510, column: 28, scope: !1433)
!2048 = !DILocation(line: 1511, column: 8, scope: !1433)
!2049 = !DILocation(line: 1511, column: 3, scope: !1433)
!2050 = !DILocation(line: 1511, column: 15, scope: !1433)
!2051 = !DILocation(line: 1511, column: 26, scope: !1433)
!2052 = !DILocation(line: 1512, column: 8, scope: !1433)
!2053 = !DILocation(line: 1512, column: 15, scope: !1433)
!2054 = !DILocation(line: 1513, column: 8, scope: !1433)
!2055 = !DILocation(line: 1513, column: 14, scope: !1433)
!2056 = !DILocation(line: 1515, column: 12, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1515, column: 7)
!2058 = !DILocation(line: 1515, column: 23, scope: !2057)
!2059 = !DILocation(line: 1515, column: 7, scope: !1433)
!2060 = !DILocation(line: 1517, column: 11, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !269, line: 1517, column: 9)
!2062 = distinct !DILexicalBlock(scope: !2057, file: !269, line: 1516, column: 3)
!2063 = !DILocation(line: 1517, column: 15, scope: !2061)
!2064 = !DILocation(line: 1517, column: 9, scope: !2062)
!2065 = !DILocation(line: 1518, column: 29, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2061, file: !269, line: 1517, column: 23)
!2067 = !DILocation(line: 1518, column: 7, scope: !2066)
!2068 = !DILocation(line: 1520, column: 7, scope: !2066)
!2069 = !DILocation(line: 1522, column: 17, scope: !2062)
!2070 = !DILocation(line: 1522, column: 5, scope: !2062)
!2071 = !DILocation(line: 1523, column: 7, scope: !2062)
!2072 = !DILocation(line: 1524, column: 3, scope: !2062)
!2073 = !DILocation(line: 1526, column: 12, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1526, column: 7)
!2075 = !DILocation(line: 1526, column: 23, scope: !2074)
!2076 = !DILocation(line: 1526, column: 7, scope: !1433)
!2077 = !DILocation(line: 1527, column: 9, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !269, line: 1527, column: 9)
!2079 = distinct !DILexicalBlock(scope: !2074, file: !269, line: 1526, column: 38)
!2080 = !DILocation(line: 1527, column: 36, scope: !2078)
!2081 = !DILocation(line: 1527, column: 9, scope: !2079)
!2082 = !DILocation(line: 1528, column: 29, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2078, file: !269, line: 1527, column: 41)
!2084 = !DILocation(line: 1528, column: 7, scope: !2083)
!2085 = !DILocation(line: 1530, column: 7, scope: !2083)
!2086 = !DILocation(line: 1532, column: 3, scope: !2079)
!2087 = !DILocation(line: 1534, column: 41, scope: !1433)
!2088 = !DILocation(line: 1534, column: 3, scope: !1433)
!2089 = !DILocation(line: 1535, column: 33, scope: !1433)
!2090 = !DILocation(line: 1535, column: 41, scope: !1433)
!2091 = !DILocation(line: 1535, column: 8, scope: !1433)
!2092 = !DILocation(line: 1535, column: 3, scope: !1433)
!2093 = !DILocation(line: 1535, column: 15, scope: !1433)
!2094 = !DILocation(line: 1535, column: 28, scope: !1433)
!2095 = !DILocation(line: 1536, column: 33, scope: !1433)
!2096 = !DILocation(line: 1536, column: 28, scope: !1433)
!2097 = !DILocation(line: 1536, column: 40, scope: !1433)
!2098 = !DILocation(line: 1536, column: 60, scope: !1433)
!2099 = !DILocation(line: 1536, column: 53, scope: !1433)
!2100 = !DILocation(line: 1536, column: 8, scope: !1433)
!2101 = !DILocation(line: 1536, column: 3, scope: !1433)
!2102 = !DILocation(line: 1536, column: 15, scope: !1433)
!2103 = !DILocation(line: 1536, column: 26, scope: !1433)
!2104 = !DILocation(line: 1538, column: 22, scope: !1433)
!2105 = !DILocation(line: 1538, column: 10, scope: !1433)
!2106 = !DILocation(line: 1538, column: 3, scope: !1433)
!2107 = !DILocation(line: 1543, column: 45, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1539, column: 3)
!2109 = !DILocation(line: 1543, column: 33, scope: !2108)
!2110 = !DILocation(line: 1543, column: 17, scope: !2108)
!2111 = !DILocation(line: 1543, column: 10, scope: !2108)
!2112 = !DILocation(line: 1543, column: 15, scope: !2108)
!2113 = !DILocation(line: 1544, column: 14, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2108, file: !269, line: 1544, column: 9)
!2115 = !DILocation(line: 1544, column: 19, scope: !2114)
!2116 = !DILocation(line: 1544, column: 9, scope: !2108)
!2117 = !DILocation(line: 1545, column: 12, scope: !2114)
!2118 = !DILocation(line: 1545, column: 17, scope: !2114)
!2119 = !DILocation(line: 1545, column: 7, scope: !2114)
!2120 = !DILocation(line: 1547, column: 12, scope: !2114)
!2121 = !DILocation(line: 1547, column: 17, scope: !2114)
!2122 = !DILocation(line: 1548, column: 10, scope: !2108)
!2123 = !DILocation(line: 1548, column: 15, scope: !2108)
!2124 = !DILocation(line: 1549, column: 5, scope: !2108)
!2125 = !DILocation(line: 1554, column: 45, scope: !2108)
!2126 = !DILocation(line: 1554, column: 33, scope: !2108)
!2127 = !DILocation(line: 1554, column: 17, scope: !2108)
!2128 = !DILocation(line: 1554, column: 10, scope: !2108)
!2129 = !DILocation(line: 1554, column: 15, scope: !2108)
!2130 = !DILocation(line: 1555, column: 5, scope: !2108)
!2131 = !DILocation(line: 1558, column: 27, scope: !2108)
!2132 = !DILocation(line: 1558, column: 5, scope: !2108)
!2133 = !DILocation(line: 1560, column: 5, scope: !2108)
!2134 = !DILocation(line: 1563, column: 30, scope: !1433)
!2135 = !DILocation(line: 1563, column: 47, scope: !1433)
!2136 = !DILocation(line: 1563, column: 8, scope: !1433)
!2137 = !DILocation(line: 1563, column: 23, scope: !1433)
!2138 = !DILocation(line: 1564, column: 29, scope: !1433)
!2139 = !DILocation(line: 1564, column: 36, scope: !1433)
!2140 = !DILocation(line: 1564, column: 8, scope: !1433)
!2141 = !DILocation(line: 1564, column: 13, scope: !1433)
!2142 = !DILocation(line: 1564, column: 22, scope: !1433)
!2143 = !DILocation(line: 1565, column: 8, scope: !1433)
!2144 = !DILocation(line: 1565, column: 20, scope: !1433)
!2145 = !DILocation(line: 1566, column: 8, scope: !1433)
!2146 = !DILocation(line: 1566, column: 24, scope: !1433)
!2147 = !DILocation(line: 1567, column: 8, scope: !1433)
!2148 = !DILocation(line: 1567, column: 24, scope: !1433)
!2149 = !DILocation(line: 1568, column: 8, scope: !1433)
!2150 = !DILocation(line: 1568, column: 11, scope: !1433)
!2151 = !DILocation(line: 1568, column: 23, scope: !1433)
!2152 = !DILocation(line: 1569, column: 8, scope: !1433)
!2153 = !DILocation(line: 1569, column: 11, scope: !1433)
!2154 = !DILocation(line: 1569, column: 20, scope: !1433)
!2155 = !DILocation(line: 1570, column: 8, scope: !1433)
!2156 = !DILocation(line: 1570, column: 23, scope: !1433)
!2157 = !DILocation(line: 1571, column: 8, scope: !1433)
!2158 = !DILocation(line: 1571, column: 18, scope: !1433)
!2159 = !DILocation(line: 1572, column: 8, scope: !1433)
!2160 = !DILocation(line: 1572, column: 14, scope: !1433)
!2161 = !DILocation(line: 1573, column: 8, scope: !1433)
!2162 = !DILocation(line: 1573, column: 22, scope: !1433)
!2163 = !DILocation(line: 1574, column: 8, scope: !1433)
!2164 = !DILocation(line: 1574, column: 24, scope: !1433)
!2165 = !DILocation(line: 1575, column: 13, scope: !1433)
!2166 = !DILocation(line: 1575, column: 3, scope: !1433)
!2167 = !DILocation(line: 1576, column: 8, scope: !1433)
!2168 = !DILocation(line: 1576, column: 19, scope: !1433)
!2169 = !DILocation(line: 1577, column: 8, scope: !1433)
!2170 = !DILocation(line: 1577, column: 19, scope: !1433)
!2171 = !DILocation(line: 1578, column: 8, scope: !1433)
!2172 = !DILocation(line: 1578, column: 24, scope: !1433)
!2173 = !DILocation(line: 1579, column: 15, scope: !1433)
!2174 = !DILocation(line: 1579, column: 3, scope: !1433)
!2175 = !DILocation(line: 1580, column: 29, scope: !1433)
!2176 = !DILocation(line: 1580, column: 46, scope: !1433)
!2177 = !DILocation(line: 1580, column: 3, scope: !1433)
!2178 = !DILocation(line: 1581, column: 26, scope: !1433)
!2179 = !DILocation(line: 1581, column: 35, scope: !1433)
!2180 = !DILocation(line: 1581, column: 8, scope: !1433)
!2181 = !DILocation(line: 1581, column: 19, scope: !1433)
!2182 = !DILocation(line: 1584, column: 7, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1584, column: 7)
!2184 = !DILocation(line: 1584, column: 17, scope: !2183)
!2185 = !DILocation(line: 1584, column: 7, scope: !1433)
!2186 = !DILocation(line: 1585, column: 5, scope: !2183)
!2187 = !DILocation(line: 1587, column: 39, scope: !1433)
!2188 = !DILocation(line: 1587, column: 51, scope: !1433)
!2189 = !DILocation(line: 1587, column: 3, scope: !1433)
!2190 = !DILocation(line: 1588, column: 39, scope: !1433)
!2191 = !DILocation(line: 1588, column: 51, scope: !1433)
!2192 = !DILocation(line: 1588, column: 3, scope: !1433)
!2193 = !DILocation(line: 1589, column: 39, scope: !1433)
!2194 = !DILocation(line: 1589, column: 51, scope: !1433)
!2195 = !DILocation(line: 1589, column: 3, scope: !1433)
!2196 = !DILocation(line: 1590, column: 38, scope: !1433)
!2197 = !DILocation(line: 1590, column: 3, scope: !1433)
!2198 = !DILocation(line: 1591, column: 38, scope: !1433)
!2199 = !DILocation(line: 1591, column: 3, scope: !1433)
!2200 = !DILocation(line: 1593, column: 54, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1593, column: 7)
!2202 = !DILocation(line: 1593, column: 7, scope: !2201)
!2203 = !DILocation(line: 1593, column: 7, scope: !1433)
!2204 = !DILocation(line: 1595, column: 9, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !269, line: 1595, column: 9)
!2206 = distinct !DILexicalBlock(scope: !2201, file: !269, line: 1594, column: 3)
!2207 = !DILocation(line: 1595, column: 15, scope: !2205)
!2208 = !DILocation(line: 1595, column: 9, scope: !2206)
!2209 = !DILocation(line: 1597, column: 29, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2205, file: !269, line: 1596, column: 5)
!2211 = !DILocation(line: 1597, column: 7, scope: !2210)
!2212 = !DILocation(line: 1599, column: 7, scope: !2210)
!2213 = !DILocation(line: 1601, column: 27, scope: !2206)
!2214 = !DILocation(line: 1603, column: 23, scope: !2206)
!2215 = !DILocation(line: 1601, column: 5, scope: !2206)
!2216 = !DILocation(line: 1605, column: 3, scope: !2206)
!2217 = !DILocation(line: 1607, column: 14, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1607, column: 7)
!2219 = !DILocation(line: 1607, column: 20, scope: !2218)
!2220 = !DILocation(line: 1607, column: 31, scope: !2218)
!2221 = !DILocation(line: 1607, column: 7, scope: !1433)
!2222 = !DILocation(line: 1610, column: 10, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2218, file: !269, line: 1608, column: 3)
!2224 = !DILocation(line: 1610, column: 26, scope: !2223)
!2225 = !DILocation(line: 1611, column: 5, scope: !2223)
!2226 = !DILocation(line: 1614, column: 17, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !269, line: 1614, column: 9)
!2228 = !DILocalVariable(name: "ret2", scope: !1433, file: !269, line: 1210, type: !24)
!2229 = !DILocation(line: 1614, column: 55, scope: !2227)
!2230 = !DILocation(line: 1614, column: 9, scope: !2223)
!2231 = !DILocation(line: 1615, column: 7, scope: !2227)
!2232 = !DILocation(line: 1616, column: 13, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2223, file: !269, line: 1616, column: 9)
!2234 = !DILocation(line: 1616, column: 9, scope: !2223)
!2235 = !DILocation(line: 1617, column: 7, scope: !2233)
!2236 = !DILocation(line: 1618, column: 3, scope: !2223)
!2237 = !DILocation(line: 1620, column: 12, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 1620, column: 7)
!2239 = !DILocation(line: 1620, column: 28, scope: !2238)
!2240 = !DILocation(line: 1620, column: 7, scope: !1433)
!2241 = !DILocation(line: 1621, column: 10, scope: !2238)
!2242 = !DILocation(line: 1621, column: 20, scope: !2238)
!2243 = !DILocation(line: 1621, column: 5, scope: !2238)
!2244 = !DILocation(line: 1623, column: 3, scope: !1433)
!2245 = !DILocation(line: 1624, column: 1, scope: !1433)
!2246 = distinct !DISubprogram(name: "archive_le32dec", scope: !1419, file: !1419, line: 89, type: !2247, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!509, !44}
!2249 = !DILocalVariable(name: "pp", arg: 1, scope: !2246, file: !1419, line: 89, type: !44)
!2250 = !DILocation(line: 0, scope: !2246)
!2251 = !DILocalVariable(name: "p", scope: !2246, file: !1419, line: 91, type: !507)
!2252 = !DILocation(line: 93, column: 11, scope: !2246)
!2253 = !DILocation(line: 93, column: 16, scope: !2246)
!2254 = !DILocation(line: 93, column: 26, scope: !2246)
!2255 = !DILocation(line: 93, column: 31, scope: !2246)
!2256 = !DILocation(line: 93, column: 23, scope: !2246)
!2257 = !DILocation(line: 93, column: 41, scope: !2246)
!2258 = !DILocation(line: 93, column: 46, scope: !2246)
!2259 = !DILocation(line: 93, column: 38, scope: !2246)
!2260 = !DILocation(line: 93, column: 54, scope: !2246)
!2261 = !DILocation(line: 93, column: 52, scope: !2246)
!2262 = !DILocation(line: 93, column: 2, scope: !2246)
!2263 = distinct !DISubprogram(name: "get_time", scope: !269, file: !269, line: 1627, type: !2264, scopeLine: 1628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!287, !24}
!2266 = !DILocalVariable(name: "ttime", arg: 1, scope: !2263, file: !269, line: 1627, type: !24)
!2267 = !DILocation(line: 0, scope: !2263)
!2268 = !DILocalVariable(name: "tm", scope: !2263, file: !269, line: 1629, type: !2269)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !2270, line: 7, size: 448, elements: !2271)
!2270 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "", checksumkind: CSK_MD5, checksum: "9e5545b565ef031c4cd0faf90b69386f")
!2271 = !{!2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !2269, file: !2270, line: 9, baseType: !24, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !2269, file: !2270, line: 10, baseType: !24, size: 32, offset: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !2269, file: !2270, line: 11, baseType: !24, size: 32, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !2269, file: !2270, line: 12, baseType: !24, size: 32, offset: 96)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !2269, file: !2270, line: 13, baseType: !24, size: 32, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !2269, file: !2270, line: 14, baseType: !24, size: 32, offset: 160)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !2269, file: !2270, line: 15, baseType: !24, size: 32, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !2269, file: !2270, line: 16, baseType: !24, size: 32, offset: 224)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !2269, file: !2270, line: 17, baseType: !24, size: 32, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !2269, file: !2270, line: 20, baseType: !43, size: 64, offset: 320)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !2269, file: !2270, line: 21, baseType: !82, size: 64, offset: 384)
!2283 = !DILocation(line: 1629, column: 13, scope: !2263)
!2284 = !DILocation(line: 1630, column: 26, scope: !2263)
!2285 = !DILocation(line: 1630, column: 17, scope: !2263)
!2286 = !DILocation(line: 1630, column: 6, scope: !2263)
!2287 = !DILocation(line: 1630, column: 13, scope: !2263)
!2288 = !DILocation(line: 1631, column: 22, scope: !2263)
!2289 = !DILocation(line: 1631, column: 28, scope: !2263)
!2290 = !DILocation(line: 1631, column: 6, scope: !2263)
!2291 = !DILocation(line: 1631, column: 13, scope: !2263)
!2292 = !DILocation(line: 1632, column: 23, scope: !2263)
!2293 = !DILocation(line: 1632, column: 30, scope: !2263)
!2294 = !DILocation(line: 1632, column: 6, scope: !2263)
!2295 = !DILocation(line: 1632, column: 14, scope: !2263)
!2296 = !DILocation(line: 1633, column: 23, scope: !2263)
!2297 = !DILocation(line: 1633, column: 30, scope: !2263)
!2298 = !DILocation(line: 1633, column: 6, scope: !2263)
!2299 = !DILocation(line: 1633, column: 14, scope: !2263)
!2300 = !DILocation(line: 1634, column: 23, scope: !2263)
!2301 = !DILocation(line: 1634, column: 30, scope: !2263)
!2302 = !DILocation(line: 1634, column: 38, scope: !2263)
!2303 = !DILocation(line: 1634, column: 6, scope: !2263)
!2304 = !DILocation(line: 1634, column: 13, scope: !2263)
!2305 = !DILocation(line: 1635, column: 24, scope: !2263)
!2306 = !DILocation(line: 1635, column: 31, scope: !2263)
!2307 = !DILocation(line: 1635, column: 39, scope: !2263)
!2308 = !DILocation(line: 1635, column: 6, scope: !2263)
!2309 = !DILocation(line: 1635, column: 14, scope: !2263)
!2310 = !DILocation(line: 1636, column: 6, scope: !2263)
!2311 = !DILocation(line: 1636, column: 15, scope: !2263)
!2312 = !DILocation(line: 1637, column: 10, scope: !2263)
!2313 = !DILocation(line: 1637, column: 3, scope: !2263)
!2314 = distinct !DISubprogram(name: "archive_le64dec", scope: !1419, file: !1419, line: 97, type: !2315, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!501, !44}
!2317 = !DILocalVariable(name: "pp", arg: 1, scope: !2314, file: !1419, line: 97, type: !44)
!2318 = !DILocation(line: 0, scope: !2314)
!2319 = !DILocalVariable(name: "p", scope: !2314, file: !1419, line: 99, type: !507)
!2320 = !DILocation(line: 101, column: 39, scope: !2314)
!2321 = !DILocation(line: 101, column: 21, scope: !2314)
!2322 = !DILocation(line: 101, column: 11, scope: !2314)
!2323 = !DILocation(line: 101, column: 44, scope: !2314)
!2324 = !DILocation(line: 101, column: 53, scope: !2314)
!2325 = !DILocation(line: 101, column: 51, scope: !2314)
!2326 = !DILocation(line: 101, column: 2, scope: !2314)
!2327 = distinct !DISubprogram(name: "read_exttime", scope: !269, file: !269, line: 1641, type: !2328, scopeLine: 1642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!24, !82, !267, !82}
!2330 = !DILocalVariable(name: "p", arg: 1, scope: !2327, file: !269, line: 1641, type: !82)
!2331 = !DILocation(line: 0, scope: !2327)
!2332 = !DILocalVariable(name: "rar", arg: 2, scope: !2327, file: !269, line: 1641, type: !267)
!2333 = !DILocalVariable(name: "endp", arg: 3, scope: !2327, file: !269, line: 1641, type: !82)
!2334 = !DILocalVariable(name: "t", scope: !2327, file: !269, line: 1646, type: !287)
!2335 = !DILocation(line: 1646, column: 10, scope: !2327)
!2336 = !DILocation(line: 1649, column: 9, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2327, file: !269, line: 1649, column: 7)
!2338 = !DILocation(line: 1649, column: 13, scope: !2337)
!2339 = !DILocation(line: 1649, column: 7, scope: !2327)
!2340 = !DILocation(line: 1650, column: 5, scope: !2337)
!2341 = !DILocation(line: 1651, column: 11, scope: !2327)
!2342 = !DILocalVariable(name: "flags", scope: !2327, file: !269, line: 1643, type: !14)
!2343 = !DILocation(line: 1652, column: 5, scope: !2327)
!2344 = !DILocalVariable(name: "i", scope: !2327, file: !269, line: 1644, type: !24)
!2345 = !DILocation(line: 1654, column: 8, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2327, file: !269, line: 1654, column: 3)
!2347 = !DILocation(line: 0, scope: !2346)
!2348 = !DILocation(line: 1654, column: 17, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2346, file: !269, line: 1654, column: 3)
!2350 = !DILocation(line: 1654, column: 3, scope: !2346)
!2351 = !DILocation(line: 1656, column: 7, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2349, file: !269, line: 1655, column: 3)
!2353 = !DILocation(line: 1657, column: 11, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2352, file: !269, line: 1657, column: 9)
!2355 = !DILocation(line: 1657, column: 9, scope: !2352)
!2356 = !DILocation(line: 1658, column: 16, scope: !2354)
!2357 = !DILocation(line: 1658, column: 9, scope: !2354)
!2358 = !DILocation(line: 1658, column: 7, scope: !2354)
!2359 = !DILocation(line: 1659, column: 24, scope: !2352)
!2360 = !DILocation(line: 1659, column: 19, scope: !2352)
!2361 = !DILocalVariable(name: "rmode", scope: !2327, file: !269, line: 1643, type: !14)
!2362 = !DILocation(line: 1660, column: 15, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2352, file: !269, line: 1660, column: 9)
!2364 = !DILocation(line: 1660, column: 9, scope: !2352)
!2365 = !DILocation(line: 1662, column: 12, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !269, line: 1662, column: 11)
!2367 = distinct !DILexicalBlock(scope: !2363, file: !269, line: 1661, column: 5)
!2368 = !DILocation(line: 1662, column: 11, scope: !2367)
!2369 = !DILocation(line: 1664, column: 15, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !269, line: 1664, column: 13)
!2371 = distinct !DILexicalBlock(scope: !2366, file: !269, line: 1663, column: 7)
!2372 = !DILocation(line: 1664, column: 19, scope: !2370)
!2373 = !DILocation(line: 1664, column: 13, scope: !2371)
!2374 = !DILocation(line: 1665, column: 11, scope: !2370)
!2375 = !DILocation(line: 1666, column: 17, scope: !2371)
!2376 = !DILocalVariable(name: "ttime", scope: !2327, file: !269, line: 1644, type: !24)
!2377 = !DILocation(line: 1667, column: 13, scope: !2371)
!2378 = !DILocation(line: 1667, column: 11, scope: !2371)
!2379 = !DILocation(line: 1668, column: 11, scope: !2371)
!2380 = !DILocation(line: 1669, column: 7, scope: !2371)
!2381 = !DILocalVariable(name: "rem", scope: !2327, file: !269, line: 1643, type: !14)
!2382 = !DILocation(line: 1671, column: 21, scope: !2367)
!2383 = !DILocalVariable(name: "count", scope: !2327, file: !269, line: 1643, type: !14)
!2384 = !DILocation(line: 1672, column: 13, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2367, file: !269, line: 1672, column: 11)
!2386 = !DILocation(line: 1672, column: 21, scope: !2385)
!2387 = !DILocation(line: 1672, column: 11, scope: !2367)
!2388 = !DILocation(line: 1673, column: 9, scope: !2385)
!2389 = !DILocalVariable(name: "j", scope: !2327, file: !269, line: 1643, type: !14)
!2390 = !DILocation(line: 1674, column: 12, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2367, file: !269, line: 1674, column: 7)
!2392 = !DILocation(line: 0, scope: !2367)
!2393 = !DILocation(line: 0, scope: !2391)
!2394 = !DILocation(line: 1674, column: 21, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2391, file: !269, line: 1674, column: 7)
!2396 = !DILocation(line: 1674, column: 7, scope: !2391)
!2397 = !DILocation(line: 1676, column: 17, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2395, file: !269, line: 1675, column: 7)
!2399 = !DILocation(line: 1676, column: 16, scope: !2398)
!2400 = !DILocation(line: 1676, column: 21, scope: !2398)
!2401 = !DILocation(line: 1676, column: 35, scope: !2398)
!2402 = !DILocation(line: 1676, column: 28, scope: !2398)
!2403 = !DILocation(line: 1677, column: 10, scope: !2398)
!2404 = !DILocation(line: 1678, column: 7, scope: !2398)
!2405 = !DILocation(line: 1674, column: 31, scope: !2395)
!2406 = !DILocation(line: 1674, column: 7, scope: !2395)
!2407 = distinct !{!2407, !2396, !2408, !650}
!2408 = !DILocation(line: 1678, column: 7, scope: !2391)
!2409 = !DILocation(line: 1679, column: 12, scope: !2367)
!2410 = !DILocalVariable(name: "tm", scope: !2327, file: !269, line: 1645, type: !2411)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2412 = !DILocation(line: 1680, column: 18, scope: !2367)
!2413 = !DILocation(line: 1680, column: 31, scope: !2367)
!2414 = !DILocation(line: 1680, column: 25, scope: !2367)
!2415 = !DILocation(line: 1680, column: 14, scope: !2367)
!2416 = !DILocalVariable(name: "nsec", scope: !2327, file: !269, line: 1647, type: !43)
!2417 = !DILocation(line: 1681, column: 17, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2367, file: !269, line: 1681, column: 11)
!2419 = !DILocation(line: 1681, column: 11, scope: !2367)
!2420 = !DILocation(line: 1683, column: 13, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2418, file: !269, line: 1682, column: 7)
!2422 = !DILocation(line: 1683, column: 19, scope: !2421)
!2423 = !DILocation(line: 1684, column: 13, scope: !2421)
!2424 = !DILocation(line: 1684, column: 11, scope: !2421)
!2425 = !DILocation(line: 1685, column: 7, scope: !2421)
!2426 = !DILocation(line: 1686, column: 13, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2367, file: !269, line: 1686, column: 11)
!2428 = !DILocation(line: 1686, column: 11, scope: !2367)
!2429 = !DILocation(line: 1688, column: 22, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2427, file: !269, line: 1687, column: 7)
!2431 = !DILocation(line: 1688, column: 14, scope: !2430)
!2432 = !DILocation(line: 1688, column: 20, scope: !2430)
!2433 = !DILocation(line: 1689, column: 14, scope: !2430)
!2434 = !DILocation(line: 1689, column: 20, scope: !2430)
!2435 = !DILocation(line: 1690, column: 7, scope: !2430)
!2436 = !DILocation(line: 1691, column: 18, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2427, file: !269, line: 1691, column: 16)
!2438 = !DILocation(line: 1691, column: 16, scope: !2427)
!2439 = !DILocation(line: 1693, column: 22, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2437, file: !269, line: 1692, column: 7)
!2441 = !DILocation(line: 1693, column: 14, scope: !2440)
!2442 = !DILocation(line: 1693, column: 20, scope: !2440)
!2443 = !DILocation(line: 1694, column: 14, scope: !2440)
!2444 = !DILocation(line: 1694, column: 20, scope: !2440)
!2445 = !DILocation(line: 1695, column: 7, scope: !2440)
!2446 = !DILocation(line: 1696, column: 18, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2437, file: !269, line: 1696, column: 16)
!2448 = !DILocation(line: 1696, column: 16, scope: !2437)
!2449 = !DILocation(line: 1698, column: 22, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2447, file: !269, line: 1697, column: 7)
!2451 = !DILocation(line: 1698, column: 14, scope: !2450)
!2452 = !DILocation(line: 1698, column: 20, scope: !2450)
!2453 = !DILocation(line: 1699, column: 14, scope: !2450)
!2454 = !DILocation(line: 1699, column: 20, scope: !2450)
!2455 = !DILocation(line: 1700, column: 7, scope: !2450)
!2456 = !DILocation(line: 1703, column: 24, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2447, file: !269, line: 1702, column: 7)
!2458 = !DILocation(line: 1703, column: 14, scope: !2457)
!2459 = !DILocation(line: 1703, column: 22, scope: !2457)
!2460 = !DILocation(line: 1704, column: 14, scope: !2457)
!2461 = !DILocation(line: 1704, column: 22, scope: !2457)
!2462 = !DILocation(line: 1706, column: 5, scope: !2367)
!2463 = !DILocation(line: 1707, column: 3, scope: !2352)
!2464 = !DILocation(line: 1654, column: 24, scope: !2349)
!2465 = !DILocation(line: 1654, column: 3, scope: !2349)
!2466 = distinct !{!2466, !2350, !2467, !650}
!2467 = !DILocation(line: 1707, column: 3, scope: !2346)
!2468 = !DILocation(line: 1708, column: 3, scope: !2327)
!2469 = !DILocation(line: 1709, column: 1, scope: !2327)
!2470 = distinct !DISubprogram(name: "read_symlink_stored", scope: !269, file: !269, line: 1712, type: !2471, scopeLine: 1714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!24, !5, !31, !104}
!2473 = !DILocalVariable(name: "a", arg: 1, scope: !2470, file: !269, line: 1712, type: !5)
!2474 = !DILocation(line: 0, scope: !2470)
!2475 = !DILocalVariable(name: "entry", arg: 2, scope: !2470, file: !269, line: 1712, type: !31)
!2476 = !DILocalVariable(name: "sconv", arg: 3, scope: !2470, file: !269, line: 1713, type: !104)
!2477 = !DILocalVariable(name: "ret", scope: !2470, file: !269, line: 1718, type: !24)
!2478 = !DILocation(line: 1720, column: 27, scope: !2470)
!2479 = !DILocation(line: 1720, column: 35, scope: !2470)
!2480 = !DILocation(line: 1720, column: 9, scope: !2470)
!2481 = !DILocalVariable(name: "rar", scope: !2470, file: !269, line: 1717, type: !267)
!2482 = !DILocation(line: 1721, column: 43, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2470, file: !269, line: 1721, column: 7)
!2484 = !DILocation(line: 1721, column: 12, scope: !2483)
!2485 = !DILocalVariable(name: "h", scope: !2470, file: !269, line: 1715, type: !44)
!2486 = !DILocation(line: 1721, column: 63, scope: !2483)
!2487 = !DILocation(line: 1721, column: 7, scope: !2470)
!2488 = !DILocation(line: 1722, column: 5, scope: !2483)
!2489 = !DILocalVariable(name: "p", scope: !2470, file: !269, line: 1716, type: !82)
!2490 = !DILocation(line: 1726, column: 23, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2470, file: !269, line: 1725, column: 7)
!2492 = !DILocation(line: 1725, column: 7, scope: !2491)
!2493 = !DILocation(line: 1725, column: 7, scope: !2470)
!2494 = !DILocation(line: 1728, column: 9, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !269, line: 1728, column: 9)
!2496 = distinct !DILexicalBlock(scope: !2491, file: !269, line: 1727, column: 3)
!2497 = !DILocation(line: 1728, column: 15, scope: !2495)
!2498 = !DILocation(line: 1728, column: 9, scope: !2496)
!2499 = !DILocation(line: 1730, column: 29, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2495, file: !269, line: 1729, column: 5)
!2501 = !DILocation(line: 1730, column: 7, scope: !2500)
!2502 = !DILocation(line: 1732, column: 7, scope: !2500)
!2503 = !DILocation(line: 1734, column: 27, scope: !2496)
!2504 = !DILocation(line: 1736, column: 23, scope: !2496)
!2505 = !DILocation(line: 1734, column: 5, scope: !2496)
!2506 = !DILocation(line: 1738, column: 3, scope: !2496)
!2507 = !DILocation(line: 1739, column: 34, scope: !2470)
!2508 = !DILocation(line: 1739, column: 3, scope: !2470)
!2509 = !DILocation(line: 1740, column: 3, scope: !2470)
!2510 = !DILocation(line: 1741, column: 1, scope: !2470)
!2511 = distinct !DISubprogram(name: "ppmd_alloc", scope: !269, file: !269, line: 599, type: !548, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!2512 = !DILocalVariable(name: "p", arg: 1, scope: !2511, file: !269, line: 599, type: !125)
!2513 = !DILocation(line: 0, scope: !2511)
!2514 = !DILocalVariable(name: "size", arg: 2, scope: !2511, file: !269, line: 599, type: !46)
!2515 = !DILocation(line: 602, column: 10, scope: !2511)
!2516 = !DILocation(line: 602, column: 3, scope: !2511)
!2517 = distinct !DISubprogram(name: "ppmd_free", scope: !269, file: !269, line: 605, type: !552, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!2518 = !DILocalVariable(name: "p", arg: 1, scope: !2517, file: !269, line: 605, type: !125)
!2519 = !DILocation(line: 0, scope: !2517)
!2520 = !DILocalVariable(name: "address", arg: 2, scope: !2517, file: !269, line: 605, type: !125)
!2521 = !DILocation(line: 608, column: 3, scope: !2517)
!2522 = !DILocation(line: 609, column: 1, scope: !2517)
!2523 = distinct !DISubprogram(name: "rar_read_ahead", scope: !269, file: !269, line: 2830, type: !2524, scopeLine: 2831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!44, !5, !46, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!2527 = !DILocalVariable(name: "a", arg: 1, scope: !2523, file: !269, line: 2830, type: !5)
!2528 = !DILocation(line: 0, scope: !2523)
!2529 = !DILocalVariable(name: "min", arg: 2, scope: !2523, file: !269, line: 2830, type: !46)
!2530 = !DILocalVariable(name: "avail", arg: 3, scope: !2523, file: !269, line: 2830, type: !2526)
!2531 = !DILocation(line: 2832, column: 39, scope: !2523)
!2532 = !DILocation(line: 2832, column: 47, scope: !2523)
!2533 = !DILocation(line: 2832, column: 21, scope: !2523)
!2534 = !DILocalVariable(name: "rar", scope: !2523, file: !269, line: 2832, type: !267)
!2535 = !DILocation(line: 2833, column: 19, scope: !2523)
!2536 = !DILocalVariable(name: "h", scope: !2523, file: !269, line: 2833, type: !44)
!2537 = !DILocation(line: 2835, column: 7, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2523, file: !269, line: 2835, column: 7)
!2539 = !DILocation(line: 2835, column: 7, scope: !2523)
!2540 = !DILocation(line: 2837, column: 12, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !269, line: 2837, column: 9)
!2542 = distinct !DILexicalBlock(scope: !2538, file: !269, line: 2836, column: 3)
!2543 = !DILocation(line: 2837, column: 9, scope: !2541)
!2544 = !DILocation(line: 2837, column: 36, scope: !2541)
!2545 = !DILocation(line: 2837, column: 39, scope: !2541)
!2546 = !DILocation(line: 2837, column: 60, scope: !2541)
!2547 = !DILocation(line: 2837, column: 46, scope: !2541)
!2548 = !DILocation(line: 2837, column: 9, scope: !2542)
!2549 = !DILocation(line: 2838, column: 19, scope: !2541)
!2550 = !DILocation(line: 2838, column: 14, scope: !2541)
!2551 = !DILocation(line: 2838, column: 7, scope: !2541)
!2552 = !DILocation(line: 2839, column: 9, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2542, file: !269, line: 2839, column: 9)
!2554 = !DILocation(line: 2839, column: 23, scope: !2553)
!2555 = !DILocation(line: 2839, column: 16, scope: !2553)
!2556 = !DILocation(line: 2839, column: 9, scope: !2542)
!2557 = !DILocation(line: 2840, column: 30, scope: !2553)
!2558 = !DILocation(line: 2840, column: 14, scope: !2553)
!2559 = !DILocation(line: 2840, column: 7, scope: !2553)
!2560 = !DILocation(line: 2841, column: 9, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2542, file: !269, line: 2841, column: 9)
!2562 = !DILocation(line: 2841, column: 16, scope: !2561)
!2563 = !DILocation(line: 2841, column: 9, scope: !2542)
!2564 = !DILocation(line: 2842, column: 7, scope: !2561)
!2565 = !DILocation(line: 2843, column: 14, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2561, file: !269, line: 2843, column: 14)
!2567 = !DILocation(line: 2843, column: 21, scope: !2566)
!2568 = !DILocation(line: 2843, column: 26, scope: !2566)
!2569 = !DILocation(line: 2843, column: 34, scope: !2566)
!2570 = !DILocation(line: 2843, column: 45, scope: !2566)
!2571 = !DILocation(line: 2843, column: 58, scope: !2566)
!2572 = !DILocation(line: 2844, column: 12, scope: !2566)
!2573 = !DILocation(line: 2844, column: 23, scope: !2566)
!2574 = !DILocation(line: 2843, column: 14, scope: !2561)
!2575 = !DILocation(line: 2846, column: 55, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2566, file: !269, line: 2845, column: 5)
!2577 = !DILocation(line: 2846, column: 13, scope: !2576)
!2578 = !DILocalVariable(name: "ret", scope: !2523, file: !269, line: 2834, type: !24)
!2579 = !DILocation(line: 2847, column: 15, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2576, file: !269, line: 2847, column: 11)
!2581 = !DILocation(line: 2847, column: 11, scope: !2576)
!2582 = !DILocation(line: 2849, column: 14, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2580, file: !269, line: 2848, column: 7)
!2584 = !DILocation(line: 2849, column: 32, scope: !2583)
!2585 = !DILocation(line: 2850, column: 57, scope: !2583)
!2586 = !DILocation(line: 2850, column: 15, scope: !2583)
!2587 = !DILocation(line: 2851, column: 7, scope: !2583)
!2588 = !DILocation(line: 0, scope: !2576)
!2589 = !DILocation(line: 2852, column: 15, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2576, file: !269, line: 2852, column: 11)
!2591 = !DILocation(line: 2852, column: 11, scope: !2576)
!2592 = !DILocation(line: 2853, column: 9, scope: !2590)
!2593 = !DILocation(line: 2854, column: 14, scope: !2576)
!2594 = !DILocation(line: 2854, column: 7, scope: !2576)
!2595 = !DILocation(line: 2856, column: 3, scope: !2542)
!2596 = !DILocation(line: 2857, column: 3, scope: !2523)
!2597 = !DILocation(line: 2858, column: 1, scope: !2523)
!2598 = distinct !DISubprogram(name: "read_data_stored", scope: !269, file: !269, line: 1744, type: !248, scopeLine: 1746, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!2599 = !DILocalVariable(name: "a", arg: 1, scope: !2598, file: !269, line: 1744, type: !5)
!2600 = !DILocation(line: 0, scope: !2598)
!2601 = !DILocalVariable(name: "buff", arg: 2, scope: !2598, file: !269, line: 1744, type: !66)
!2602 = !DILocalVariable(name: "size", arg: 3, scope: !2598, file: !269, line: 1744, type: !67)
!2603 = !DILocalVariable(name: "offset", arg: 4, scope: !2598, file: !269, line: 1745, type: !68)
!2604 = !DILocalVariable(name: "bytes_avail", scope: !2598, file: !269, line: 1748, type: !39)
!2605 = !DILocation(line: 1748, column: 11, scope: !2598)
!2606 = !DILocation(line: 1750, column: 27, scope: !2598)
!2607 = !DILocation(line: 1750, column: 35, scope: !2598)
!2608 = !DILocation(line: 1750, column: 9, scope: !2598)
!2609 = !DILocalVariable(name: "rar", scope: !2598, file: !269, line: 1747, type: !267)
!2610 = !DILocation(line: 1751, column: 12, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2598, file: !269, line: 1751, column: 7)
!2612 = !DILocation(line: 1751, column: 28, scope: !2611)
!2613 = !DILocation(line: 1751, column: 33, scope: !2611)
!2614 = !DILocation(line: 1752, column: 12, scope: !2611)
!2615 = !DILocation(line: 1752, column: 23, scope: !2611)
!2616 = !DILocation(line: 1752, column: 36, scope: !2611)
!2617 = !DILocation(line: 1752, column: 44, scope: !2611)
!2618 = !DILocation(line: 1752, column: 55, scope: !2611)
!2619 = !DILocation(line: 1751, column: 7, scope: !2598)
!2620 = !DILocation(line: 1754, column: 11, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2611, file: !269, line: 1753, column: 3)
!2622 = !DILocation(line: 1755, column: 11, scope: !2621)
!2623 = !DILocation(line: 1756, column: 20, scope: !2621)
!2624 = !DILocation(line: 1756, column: 13, scope: !2621)
!2625 = !DILocation(line: 1757, column: 14, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2621, file: !269, line: 1757, column: 9)
!2627 = !DILocation(line: 1757, column: 31, scope: !2626)
!2628 = !DILocation(line: 1757, column: 23, scope: !2626)
!2629 = !DILocation(line: 1757, column: 9, scope: !2621)
!2630 = !DILocation(line: 1758, column: 29, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2626, file: !269, line: 1757, column: 47)
!2632 = !DILocation(line: 1758, column: 7, scope: !2631)
!2633 = !DILocation(line: 1760, column: 7, scope: !2631)
!2634 = !DILocation(line: 1762, column: 10, scope: !2621)
!2635 = !DILocation(line: 1762, column: 20, scope: !2621)
!2636 = !DILocation(line: 1763, column: 5, scope: !2621)
!2637 = !DILocation(line: 1766, column: 11, scope: !2598)
!2638 = !DILocation(line: 1766, column: 9, scope: !2598)
!2639 = !DILocation(line: 1767, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2598, file: !269, line: 1767, column: 7)
!2641 = !DILocation(line: 1767, column: 19, scope: !2640)
!2642 = !DILocation(line: 1767, column: 7, scope: !2598)
!2643 = !DILocation(line: 1769, column: 27, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2640, file: !269, line: 1768, column: 3)
!2645 = !DILocation(line: 1769, column: 5, scope: !2644)
!2646 = !DILocation(line: 1771, column: 5, scope: !2644)
!2647 = !DILocation(line: 1774, column: 11, scope: !2598)
!2648 = !DILocation(line: 1774, column: 9, scope: !2598)
!2649 = !DILocation(line: 1775, column: 18, scope: !2598)
!2650 = !DILocation(line: 1775, column: 11, scope: !2598)
!2651 = !DILocation(line: 1776, column: 18, scope: !2598)
!2652 = !DILocation(line: 1776, column: 8, scope: !2598)
!2653 = !DILocation(line: 1776, column: 15, scope: !2598)
!2654 = !DILocation(line: 1777, column: 23, scope: !2598)
!2655 = !DILocation(line: 1777, column: 8, scope: !2598)
!2656 = !DILocation(line: 1777, column: 20, scope: !2598)
!2657 = !DILocation(line: 1778, column: 27, scope: !2598)
!2658 = !DILocation(line: 1778, column: 8, scope: !2598)
!2659 = !DILocation(line: 1778, column: 24, scope: !2598)
!2660 = !DILocation(line: 1779, column: 27, scope: !2598)
!2661 = !DILocation(line: 1779, column: 8, scope: !2598)
!2662 = !DILocation(line: 1779, column: 25, scope: !2598)
!2663 = !DILocation(line: 1781, column: 36, scope: !2598)
!2664 = !DILocation(line: 1781, column: 52, scope: !2598)
!2665 = !DILocation(line: 1782, column: 15, scope: !2598)
!2666 = !DILocation(line: 1782, column: 5, scope: !2598)
!2667 = !DILocation(line: 1781, column: 25, scope: !2598)
!2668 = !DILocation(line: 1781, column: 8, scope: !2598)
!2669 = !DILocation(line: 1781, column: 23, scope: !2598)
!2670 = !DILocation(line: 1783, column: 3, scope: !2598)
!2671 = !DILocation(line: 1784, column: 1, scope: !2598)
!2672 = distinct !DISubprogram(name: "read_data_compressed", scope: !269, file: !269, line: 1787, type: !248, scopeLine: 1789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!2673 = !DILocalVariable(name: "a", arg: 1, scope: !2672, file: !269, line: 1787, type: !5)
!2674 = !DILocation(line: 0, scope: !2672)
!2675 = !DILocalVariable(name: "buff", arg: 2, scope: !2672, file: !269, line: 1787, type: !66)
!2676 = !DILocalVariable(name: "size", arg: 3, scope: !2672, file: !269, line: 1787, type: !67)
!2677 = !DILocalVariable(name: "offset", arg: 4, scope: !2672, file: !269, line: 1788, type: !68)
!2678 = !DILocalVariable(name: "ret", scope: !2672, file: !269, line: 1793, type: !24)
!2679 = !DILocation(line: 1795, column: 27, scope: !2672)
!2680 = !DILocation(line: 1795, column: 35, scope: !2672)
!2681 = !DILocation(line: 1795, column: 9, scope: !2672)
!2682 = !DILocalVariable(name: "rar", scope: !2672, file: !269, line: 1790, type: !267)
!2683 = !DILocation(line: 1797, column: 3, scope: !2672)
!2684 = !DILocation(line: 1798, column: 15, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !269, line: 1798, column: 9)
!2686 = distinct !DILexicalBlock(scope: !2672, file: !269, line: 1797, column: 6)
!2687 = !DILocation(line: 1798, column: 10, scope: !2685)
!2688 = !DILocation(line: 1798, column: 9, scope: !2686)
!2689 = !DILocation(line: 1799, column: 7, scope: !2685)
!2690 = !DILocation(line: 1800, column: 14, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2686, file: !269, line: 1800, column: 9)
!2692 = !DILocation(line: 1800, column: 9, scope: !2691)
!2693 = !DILocation(line: 1800, column: 23, scope: !2691)
!2694 = !DILocation(line: 1801, column: 14, scope: !2691)
!2695 = !DILocation(line: 1801, column: 9, scope: !2691)
!2696 = !DILocation(line: 1801, column: 30, scope: !2691)
!2697 = !DILocation(line: 1801, column: 38, scope: !2691)
!2698 = !DILocation(line: 1801, column: 53, scope: !2691)
!2699 = !DILocation(line: 1801, column: 45, scope: !2691)
!2700 = !DILocation(line: 1800, column: 9, scope: !2686)
!2701 = !DILocation(line: 1803, column: 16, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !269, line: 1803, column: 11)
!2703 = distinct !DILexicalBlock(scope: !2691, file: !269, line: 1802, column: 5)
!2704 = !DILocation(line: 1803, column: 27, scope: !2702)
!2705 = !DILocation(line: 1803, column: 11, scope: !2703)
!2706 = !DILocation(line: 1807, column: 22, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2702, file: !269, line: 1803, column: 32)
!2708 = !DILocation(line: 1807, column: 15, scope: !2707)
!2709 = !DILocation(line: 1808, column: 22, scope: !2707)
!2710 = !DILocation(line: 1808, column: 17, scope: !2707)
!2711 = !DILocation(line: 1808, column: 15, scope: !2707)
!2712 = !DILocation(line: 1809, column: 24, scope: !2707)
!2713 = !DILocation(line: 1809, column: 17, scope: !2707)
!2714 = !DILocation(line: 1810, column: 33, scope: !2707)
!2715 = !DILocation(line: 1810, column: 14, scope: !2707)
!2716 = !DILocation(line: 1810, column: 30, scope: !2707)
!2717 = !DILocation(line: 1812, column: 42, scope: !2707)
!2718 = !DILocation(line: 1812, column: 58, scope: !2707)
!2719 = !DILocation(line: 1813, column: 21, scope: !2707)
!2720 = !DILocation(line: 1813, column: 11, scope: !2707)
!2721 = !DILocation(line: 1812, column: 31, scope: !2707)
!2722 = !DILocation(line: 1812, column: 14, scope: !2707)
!2723 = !DILocation(line: 1812, column: 29, scope: !2707)
!2724 = !DILocation(line: 1814, column: 14, scope: !2707)
!2725 = !DILocation(line: 1814, column: 25, scope: !2707)
!2726 = !DILocation(line: 1815, column: 9, scope: !2707)
!2727 = !DILocation(line: 1817, column: 13, scope: !2703)
!2728 = !DILocation(line: 1818, column: 13, scope: !2703)
!2729 = !DILocation(line: 1819, column: 22, scope: !2703)
!2730 = !DILocation(line: 1819, column: 15, scope: !2703)
!2731 = !DILocation(line: 1820, column: 16, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2703, file: !269, line: 1820, column: 11)
!2733 = !DILocation(line: 1820, column: 33, scope: !2732)
!2734 = !DILocation(line: 1820, column: 25, scope: !2732)
!2735 = !DILocation(line: 1820, column: 11, scope: !2703)
!2736 = !DILocation(line: 1821, column: 31, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2732, file: !269, line: 1820, column: 49)
!2738 = !DILocation(line: 1821, column: 9, scope: !2737)
!2739 = !DILocation(line: 1823, column: 9, scope: !2737)
!2740 = !DILocation(line: 1825, column: 12, scope: !2703)
!2741 = !DILocation(line: 1825, column: 22, scope: !2703)
!2742 = !DILocation(line: 1826, column: 7, scope: !2703)
!2743 = !DILocation(line: 1829, column: 15, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2686, file: !269, line: 1829, column: 9)
!2745 = !DILocation(line: 1829, column: 10, scope: !2744)
!2746 = !DILocation(line: 1829, column: 29, scope: !2744)
!2747 = !DILocation(line: 1829, column: 37, scope: !2744)
!2748 = !DILocation(line: 1829, column: 32, scope: !2744)
!2749 = !DILocation(line: 1829, column: 53, scope: !2744)
!2750 = !DILocation(line: 1829, column: 61, scope: !2744)
!2751 = !DILocation(line: 1829, column: 76, scope: !2744)
!2752 = !DILocation(line: 1829, column: 9, scope: !2686)
!2753 = !DILocation(line: 1831, column: 16, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !269, line: 1831, column: 11)
!2755 = distinct !DILexicalBlock(scope: !2744, file: !269, line: 1830, column: 5)
!2756 = !DILocation(line: 1831, column: 39, scope: !2754)
!2757 = !DILocation(line: 1831, column: 62, scope: !2754)
!2758 = !DILocation(line: 1831, column: 55, scope: !2754)
!2759 = !DILocation(line: 1831, column: 33, scope: !2754)
!2760 = !DILocation(line: 1831, column: 31, scope: !2754)
!2761 = !DILocation(line: 1831, column: 11, scope: !2755)
!2762 = !DILocation(line: 1832, column: 19, scope: !2754)
!2763 = !DILocation(line: 1832, column: 42, scope: !2754)
!2764 = !DILocation(line: 1832, column: 35, scope: !2754)
!2765 = !DILocation(line: 1832, column: 14, scope: !2754)
!2766 = !DILocalVariable(name: "bs", scope: !2672, file: !269, line: 1792, type: !46)
!2767 = !DILocation(line: 1832, column: 9, scope: !2754)
!2768 = !DILocation(line: 1834, column: 27, scope: !2754)
!2769 = !DILocation(line: 0, scope: !2754)
!2770 = !DILocation(line: 1835, column: 49, scope: !2755)
!2771 = !DILocation(line: 1835, column: 57, scope: !2755)
!2772 = !DILocation(line: 1835, column: 13, scope: !2755)
!2773 = !DILocation(line: 1836, column: 15, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2755, file: !269, line: 1836, column: 11)
!2775 = !DILocation(line: 1836, column: 11, scope: !2755)
!2776 = !DILocation(line: 1837, column: 9, scope: !2774)
!2777 = !DILocation(line: 1838, column: 12, scope: !2755)
!2778 = !DILocation(line: 1838, column: 19, scope: !2755)
!2779 = !DILocation(line: 1839, column: 12, scope: !2755)
!2780 = !DILocation(line: 1839, column: 27, scope: !2755)
!2781 = !DILocation(line: 1840, column: 11, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2755, file: !269, line: 1840, column: 11)
!2783 = !DILocation(line: 1840, column: 17, scope: !2782)
!2784 = !DILocation(line: 1840, column: 11, scope: !2755)
!2785 = !DILocation(line: 1841, column: 14, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2782, file: !269, line: 1840, column: 26)
!2787 = !DILocation(line: 1841, column: 25, scope: !2786)
!2788 = !DILocation(line: 1842, column: 22, scope: !2786)
!2789 = !DILocation(line: 1842, column: 17, scope: !2786)
!2790 = !DILocation(line: 1842, column: 15, scope: !2786)
!2791 = !DILocation(line: 1843, column: 24, scope: !2786)
!2792 = !DILocation(line: 1843, column: 17, scope: !2786)
!2793 = !DILocation(line: 1844, column: 33, scope: !2786)
!2794 = !DILocation(line: 1844, column: 14, scope: !2786)
!2795 = !DILocation(line: 1844, column: 30, scope: !2786)
!2796 = !DILocation(line: 1846, column: 42, scope: !2786)
!2797 = !DILocation(line: 1846, column: 58, scope: !2786)
!2798 = !DILocation(line: 1847, column: 21, scope: !2786)
!2799 = !DILocation(line: 1847, column: 11, scope: !2786)
!2800 = !DILocation(line: 1846, column: 31, scope: !2786)
!2801 = !DILocation(line: 1846, column: 14, scope: !2786)
!2802 = !DILocation(line: 1846, column: 29, scope: !2786)
!2803 = !DILocation(line: 1848, column: 9, scope: !2786)
!2804 = !DILocation(line: 1850, column: 7, scope: !2755)
!2805 = !DILocation(line: 1853, column: 15, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2686, file: !269, line: 1853, column: 9)
!2807 = !DILocation(line: 1853, column: 18, scope: !2806)
!2808 = !DILocation(line: 1853, column: 10, scope: !2806)
!2809 = !DILocation(line: 1853, column: 26, scope: !2806)
!2810 = !DILocation(line: 1854, column: 43, scope: !2806)
!2811 = !DILocation(line: 1854, column: 14, scope: !2806)
!2812 = !DILocation(line: 1854, column: 49, scope: !2806)
!2813 = !DILocation(line: 1853, column: 9, scope: !2686)
!2814 = !DILocation(line: 1855, column: 7, scope: !2806)
!2815 = !DILocation(line: 1856, column: 14, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2686, file: !269, line: 1856, column: 9)
!2817 = !DILocation(line: 1856, column: 9, scope: !2816)
!2818 = !DILocation(line: 1856, column: 30, scope: !2816)
!2819 = !DILocation(line: 1856, column: 41, scope: !2816)
!2820 = !DILocation(line: 1856, column: 57, scope: !2816)
!2821 = !DILocation(line: 1856, column: 9, scope: !2686)
!2822 = !DILocation(line: 1857, column: 7, scope: !2816)
!2823 = !DILocation(line: 1859, column: 14, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2686, file: !269, line: 1859, column: 9)
!2825 = !DILocation(line: 1859, column: 9, scope: !2824)
!2826 = !DILocation(line: 1859, column: 9, scope: !2686)
!2827 = !DILocation(line: 1861, column: 44, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !269, line: 1861, column: 11)
!2829 = distinct !DILexicalBlock(scope: !2824, file: !269, line: 1860, column: 5)
!2830 = !DILocation(line: 1862, column: 15, scope: !2828)
!2831 = !DILocation(line: 1862, column: 36, scope: !2828)
!2832 = !DILocation(line: 1862, column: 46, scope: !2828)
!2833 = !DILocation(line: 1861, column: 18, scope: !2828)
!2834 = !DILocalVariable(name: "sym", scope: !2672, file: !269, line: 1793, type: !24)
!2835 = !DILocation(line: 1862, column: 50, scope: !2828)
!2836 = !DILocation(line: 1861, column: 11, scope: !2829)
!2837 = !DILocation(line: 1864, column: 31, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2828, file: !269, line: 1863, column: 7)
!2839 = !DILocation(line: 1864, column: 9, scope: !2838)
!2840 = !DILocation(line: 1866, column: 9, scope: !2838)
!2841 = !DILocation(line: 1868, column: 22, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2829, file: !269, line: 1868, column: 10)
!2843 = !DILocation(line: 1868, column: 14, scope: !2842)
!2844 = !DILocation(line: 1868, column: 10, scope: !2829)
!2845 = !DILocation(line: 1870, column: 32, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !269, line: 1869, column: 7)
!2847 = !DILocation(line: 1870, column: 9, scope: !2846)
!2848 = !DILocation(line: 1871, column: 14, scope: !2846)
!2849 = !DILocation(line: 1871, column: 28, scope: !2846)
!2850 = !DILocation(line: 1872, column: 7, scope: !2846)
!2851 = !DILocation(line: 1875, column: 47, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !269, line: 1875, column: 13)
!2853 = distinct !DILexicalBlock(scope: !2842, file: !269, line: 1874, column: 7)
!2854 = !DILocation(line: 1876, column: 17, scope: !2852)
!2855 = !DILocation(line: 1876, column: 38, scope: !2852)
!2856 = !DILocation(line: 1876, column: 48, scope: !2852)
!2857 = !DILocation(line: 1875, column: 21, scope: !2852)
!2858 = !DILocalVariable(name: "code", scope: !2672, file: !269, line: 1793, type: !24)
!2859 = !DILocation(line: 1876, column: 52, scope: !2852)
!2860 = !DILocation(line: 1875, column: 13, scope: !2853)
!2861 = !DILocation(line: 1878, column: 33, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2852, file: !269, line: 1877, column: 9)
!2863 = !DILocation(line: 1878, column: 11, scope: !2862)
!2864 = !DILocation(line: 1880, column: 11, scope: !2862)
!2865 = !DILocation(line: 1883, column: 9, scope: !2853)
!2866 = !DILocation(line: 1886, column: 18, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2853, file: !269, line: 1884, column: 9)
!2868 = !DILocation(line: 1886, column: 34, scope: !2867)
!2869 = !DILocation(line: 1887, column: 20, scope: !2867)
!2870 = !DILocation(line: 1887, column: 13, scope: !2867)
!2871 = !DILocation(line: 1890, column: 18, scope: !2867)
!2872 = !DILocation(line: 1890, column: 27, scope: !2867)
!2873 = !DILocation(line: 1891, column: 13, scope: !2867)
!2874 = !DILocation(line: 1894, column: 35, scope: !2867)
!2875 = !DILocation(line: 1894, column: 13, scope: !2867)
!2876 = !DILocation(line: 1896, column: 13, scope: !2867)
!2877 = !DILocalVariable(name: "lzss_offset", scope: !2672, file: !269, line: 1793, type: !24)
!2878 = !DILocalVariable(name: "i", scope: !2672, file: !269, line: 1793, type: !24)
!2879 = !DILocation(line: 1900, column: 18, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2867, file: !269, line: 1900, column: 13)
!2881 = !DILocation(line: 0, scope: !2867)
!2882 = !DILocation(line: 0, scope: !2880)
!2883 = !DILocation(line: 1900, column: 27, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2880, file: !269, line: 1900, column: 13)
!2885 = !DILocation(line: 1900, column: 13, scope: !2880)
!2886 = !DILocation(line: 1902, column: 53, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !269, line: 1902, column: 19)
!2888 = distinct !DILexicalBlock(scope: !2884, file: !269, line: 1901, column: 13)
!2889 = !DILocation(line: 1903, column: 23, scope: !2887)
!2890 = !DILocation(line: 1903, column: 44, scope: !2887)
!2891 = !DILocation(line: 1903, column: 54, scope: !2887)
!2892 = !DILocation(line: 1902, column: 27, scope: !2887)
!2893 = !DILocation(line: 1903, column: 58, scope: !2887)
!2894 = !DILocation(line: 1902, column: 19, scope: !2888)
!2895 = !DILocation(line: 1905, column: 39, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2887, file: !269, line: 1904, column: 15)
!2897 = !DILocation(line: 1905, column: 17, scope: !2896)
!2898 = !DILocation(line: 1907, column: 17, scope: !2896)
!2899 = !DILocation(line: 1909, column: 41, scope: !2888)
!2900 = !DILocation(line: 1909, column: 35, scope: !2888)
!2901 = !DILocation(line: 1909, column: 27, scope: !2888)
!2902 = !DILocation(line: 1910, column: 13, scope: !2888)
!2903 = !DILocation(line: 1900, column: 34, scope: !2884)
!2904 = !DILocation(line: 1900, column: 13, scope: !2884)
!2905 = distinct !{!2905, !2885, !2906, !650}
!2906 = !DILocation(line: 1910, column: 13, scope: !2880)
!2907 = !DILocation(line: 1911, column: 53, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2867, file: !269, line: 1911, column: 17)
!2909 = !DILocation(line: 1912, column: 21, scope: !2908)
!2910 = !DILocation(line: 1912, column: 42, scope: !2908)
!2911 = !DILocation(line: 1912, column: 52, scope: !2908)
!2912 = !DILocation(line: 1911, column: 27, scope: !2908)
!2913 = !DILocalVariable(name: "length", scope: !2672, file: !269, line: 1793, type: !24)
!2914 = !DILocation(line: 1912, column: 56, scope: !2908)
!2915 = !DILocation(line: 1911, column: 17, scope: !2867)
!2916 = !DILocation(line: 1914, column: 37, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2908, file: !269, line: 1913, column: 13)
!2918 = !DILocation(line: 1914, column: 15, scope: !2917)
!2919 = !DILocation(line: 1916, column: 15, scope: !2917)
!2920 = !DILocation(line: 1918, column: 46, scope: !2867)
!2921 = !DILocation(line: 1918, column: 58, scope: !2867)
!2922 = !DILocation(line: 1918, column: 13, scope: !2867)
!2923 = !DILocation(line: 1919, column: 43, scope: !2867)
!2924 = !DILocation(line: 1919, column: 36, scope: !2867)
!2925 = !DILocation(line: 1919, column: 18, scope: !2867)
!2926 = !DILocation(line: 1919, column: 33, scope: !2867)
!2927 = !DILocation(line: 1920, column: 13, scope: !2867)
!2928 = !DILocation(line: 1923, column: 53, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2867, file: !269, line: 1923, column: 17)
!2930 = !DILocation(line: 1924, column: 21, scope: !2929)
!2931 = !DILocation(line: 1924, column: 42, scope: !2929)
!2932 = !DILocation(line: 1924, column: 52, scope: !2929)
!2933 = !DILocation(line: 1923, column: 27, scope: !2929)
!2934 = !DILocation(line: 1924, column: 56, scope: !2929)
!2935 = !DILocation(line: 1923, column: 17, scope: !2867)
!2936 = !DILocation(line: 1926, column: 37, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2929, file: !269, line: 1925, column: 13)
!2938 = !DILocation(line: 1926, column: 15, scope: !2937)
!2939 = !DILocation(line: 1928, column: 15, scope: !2937)
!2940 = !DILocation(line: 1930, column: 44, scope: !2867)
!2941 = !DILocation(line: 1930, column: 13, scope: !2867)
!2942 = !DILocation(line: 1931, column: 43, scope: !2867)
!2943 = !DILocation(line: 1931, column: 36, scope: !2867)
!2944 = !DILocation(line: 1931, column: 18, scope: !2867)
!2945 = !DILocation(line: 1931, column: 33, scope: !2867)
!2946 = !DILocation(line: 1932, column: 13, scope: !2867)
!2947 = !DILocation(line: 1935, column: 35, scope: !2867)
!2948 = !DILocation(line: 1935, column: 12, scope: !2867)
!2949 = !DILocation(line: 1936, column: 17, scope: !2867)
!2950 = !DILocation(line: 1936, column: 31, scope: !2867)
!2951 = !DILocation(line: 1937, column: 9, scope: !2867)
!2952 = !DILocation(line: 1939, column: 5, scope: !2829)
!2953 = !DILocation(line: 1942, column: 20, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2824, file: !269, line: 1941, column: 5)
!2955 = !DILocalVariable(name: "start", scope: !2672, file: !269, line: 1791, type: !53)
!2956 = !DILocation(line: 1943, column: 26, scope: !2954)
!2957 = !DILocation(line: 1943, column: 21, scope: !2954)
!2958 = !DILocation(line: 1943, column: 19, scope: !2954)
!2959 = !DILocalVariable(name: "end", scope: !2672, file: !269, line: 1791, type: !53)
!2960 = !DILocation(line: 1944, column: 12, scope: !2954)
!2961 = !DILocation(line: 1944, column: 24, scope: !2954)
!2962 = !DILocation(line: 1946, column: 24, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2954, file: !269, line: 1946, column: 11)
!2964 = !DILocalVariable(name: "actualend", scope: !2672, file: !269, line: 1791, type: !53)
!2965 = !DILocation(line: 1946, column: 40, scope: !2963)
!2966 = !DILocation(line: 1946, column: 11, scope: !2954)
!2967 = !DILocation(line: 1947, column: 17, scope: !2963)
!2968 = !DILocation(line: 1947, column: 9, scope: !2963)
!2969 = !DILocation(line: 1949, column: 39, scope: !2954)
!2970 = !DILocation(line: 1949, column: 12, scope: !2954)
!2971 = !DILocation(line: 1949, column: 27, scope: !2954)
!2972 = !DILocation(line: 1950, column: 16, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2954, file: !269, line: 1950, column: 11)
!2974 = !DILocation(line: 1950, column: 31, scope: !2973)
!2975 = !DILocation(line: 1950, column: 11, scope: !2954)
!2976 = !DILocation(line: 1955, column: 33, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2973, file: !269, line: 1950, column: 37)
!2978 = !DILocation(line: 1955, column: 11, scope: !2977)
!2979 = !DILocation(line: 1957, column: 11, scope: !2977)
!2980 = !DILocation(line: 1960, column: 14, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2686, file: !269, line: 1960, column: 9)
!2982 = !DILocation(line: 1960, column: 37, scope: !2981)
!2983 = !DILocation(line: 1960, column: 60, scope: !2981)
!2984 = !DILocation(line: 1960, column: 53, scope: !2981)
!2985 = !DILocation(line: 1960, column: 31, scope: !2981)
!2986 = !DILocation(line: 1960, column: 29, scope: !2981)
!2987 = !DILocation(line: 1960, column: 9, scope: !2686)
!2988 = !DILocation(line: 1961, column: 17, scope: !2981)
!2989 = !DILocation(line: 1961, column: 40, scope: !2981)
!2990 = !DILocation(line: 1961, column: 33, scope: !2981)
!2991 = !DILocation(line: 1961, column: 12, scope: !2981)
!2992 = !DILocation(line: 1961, column: 7, scope: !2981)
!2993 = !DILocation(line: 1963, column: 25, scope: !2981)
!2994 = !DILocation(line: 0, scope: !2981)
!2995 = !DILocation(line: 1964, column: 47, scope: !2686)
!2996 = !DILocation(line: 1964, column: 55, scope: !2686)
!2997 = !DILocation(line: 1964, column: 11, scope: !2686)
!2998 = !DILocation(line: 1965, column: 13, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2686, file: !269, line: 1965, column: 9)
!3000 = !DILocation(line: 1965, column: 9, scope: !2686)
!3001 = !DILocation(line: 1966, column: 7, scope: !2999)
!3002 = !DILocation(line: 1967, column: 10, scope: !2686)
!3003 = !DILocation(line: 1967, column: 17, scope: !2686)
!3004 = !DILocation(line: 1968, column: 10, scope: !2686)
!3005 = !DILocation(line: 1968, column: 25, scope: !2686)
!3006 = !DILocation(line: 1973, column: 3, scope: !2686)
!3007 = !DILocation(line: 0, scope: !2686)
!3008 = !DILocation(line: 1973, column: 12, scope: !2672)
!3009 = !DILocation(line: 1973, column: 18, scope: !2672)
!3010 = distinct !{!3010, !2683, !3011, !650}
!3011 = !DILocation(line: 1973, column: 25, scope: !2672)
!3012 = !DILocation(line: 1975, column: 8, scope: !2672)
!3013 = !DILocation(line: 1975, column: 19, scope: !2672)
!3014 = !DILocation(line: 1976, column: 16, scope: !2672)
!3015 = !DILocation(line: 1976, column: 11, scope: !2672)
!3016 = !DILocation(line: 1976, column: 9, scope: !2672)
!3017 = !DILocation(line: 1977, column: 18, scope: !2672)
!3018 = !DILocation(line: 1977, column: 11, scope: !2672)
!3019 = !DILocation(line: 1978, column: 27, scope: !2672)
!3020 = !DILocation(line: 1978, column: 8, scope: !2672)
!3021 = !DILocation(line: 1978, column: 24, scope: !2672)
!3022 = !DILocation(line: 1980, column: 36, scope: !2672)
!3023 = !DILocation(line: 1980, column: 52, scope: !2672)
!3024 = !DILocation(line: 1980, column: 69, scope: !2672)
!3025 = !DILocation(line: 1980, column: 59, scope: !2672)
!3026 = !DILocation(line: 1980, column: 25, scope: !2672)
!3027 = !DILocation(line: 1980, column: 8, scope: !2672)
!3028 = !DILocation(line: 1980, column: 23, scope: !2672)
!3029 = !DILocation(line: 1981, column: 3, scope: !2672)
!3030 = !DILocation(line: 1982, column: 1, scope: !2672)
!3031 = distinct !DISubprogram(name: "copy_from_lzss_window", scope: !269, file: !269, line: 2784, type: !3032, scopeLine: 2786, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!24, !5, !66, !53, !24}
!3034 = !DILocalVariable(name: "a", arg: 1, scope: !3031, file: !269, line: 2784, type: !5)
!3035 = !DILocation(line: 0, scope: !3031)
!3036 = !DILocalVariable(name: "buffer", arg: 2, scope: !3031, file: !269, line: 2784, type: !66)
!3037 = !DILocalVariable(name: "startpos", arg: 3, scope: !3031, file: !269, line: 2785, type: !53)
!3038 = !DILocalVariable(name: "length", arg: 4, scope: !3031, file: !269, line: 2785, type: !24)
!3039 = !DILocation(line: 2788, column: 39, scope: !3031)
!3040 = !DILocation(line: 2788, column: 47, scope: !3031)
!3041 = !DILocation(line: 2788, column: 21, scope: !3031)
!3042 = !DILocalVariable(name: "rar", scope: !3031, file: !269, line: 2788, type: !267)
!3043 = !DILocation(line: 2790, column: 13, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3031, file: !269, line: 2790, column: 7)
!3045 = !DILocation(line: 2790, column: 8, scope: !3044)
!3046 = !DILocation(line: 2790, column: 7, scope: !3031)
!3047 = !DILocation(line: 2792, column: 40, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !269, line: 2792, column: 9)
!3049 = distinct !DILexicalBlock(scope: !3044, file: !269, line: 2791, column: 3)
!3050 = !DILocation(line: 2792, column: 35, scope: !3048)
!3051 = !DILocation(line: 2792, column: 28, scope: !3048)
!3052 = !DILocation(line: 2792, column: 15, scope: !3048)
!3053 = !DILocation(line: 2792, column: 26, scope: !3048)
!3054 = !DILocation(line: 2792, column: 58, scope: !3048)
!3055 = !DILocation(line: 2792, column: 9, scope: !3049)
!3056 = !DILocation(line: 2794, column: 29, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3048, file: !269, line: 2793, column: 5)
!3058 = !DILocation(line: 2794, column: 7, scope: !3057)
!3059 = !DILocation(line: 2796, column: 7, scope: !3057)
!3060 = !DILocation(line: 2798, column: 3, scope: !3049)
!3061 = !DILocation(line: 2800, column: 47, scope: !3031)
!3062 = !DILocation(line: 2800, column: 16, scope: !3031)
!3063 = !DILocalVariable(name: "windowoffs", scope: !3031, file: !269, line: 2787, type: !24)
!3064 = !DILocation(line: 2801, column: 17, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3031, file: !269, line: 2801, column: 6)
!3066 = !DILocation(line: 2801, column: 45, scope: !3065)
!3067 = !DILocation(line: 2801, column: 29, scope: !3065)
!3068 = !DILocation(line: 2801, column: 26, scope: !3065)
!3069 = !DILocation(line: 2801, column: 6, scope: !3031)
!3070 = !DILocation(line: 2802, column: 18, scope: !3065)
!3071 = !DILocation(line: 2802, column: 34, scope: !3065)
!3072 = !DILocation(line: 2802, column: 13, scope: !3065)
!3073 = !DILocation(line: 2802, column: 53, scope: !3065)
!3074 = !DILocation(line: 2802, column: 58, scope: !3065)
!3075 = !DILocation(line: 2802, column: 48, scope: !3065)
!3076 = !DILocation(line: 2803, column: 12, scope: !3065)
!3077 = !DILocation(line: 2802, column: 5, scope: !3065)
!3078 = !DILocation(line: 2806, column: 33, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3065, file: !269, line: 2805, column: 3)
!3080 = !DILocation(line: 2806, column: 17, scope: !3079)
!3081 = !DILocation(line: 2806, column: 39, scope: !3079)
!3082 = !DILocalVariable(name: "firstpart", scope: !3031, file: !269, line: 2787, type: !24)
!3083 = !DILocation(line: 2807, column: 19, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3079, file: !269, line: 2807, column: 9)
!3085 = !DILocation(line: 2807, column: 9, scope: !3079)
!3086 = !DILocation(line: 2808, column: 29, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3084, file: !269, line: 2807, column: 24)
!3088 = !DILocation(line: 2808, column: 7, scope: !3087)
!3089 = !DILocation(line: 2810, column: 7, scope: !3087)
!3090 = !DILocation(line: 2812, column: 19, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3079, file: !269, line: 2812, column: 9)
!3092 = !DILocation(line: 2812, column: 9, scope: !3079)
!3093 = !DILocation(line: 2813, column: 20, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3091, file: !269, line: 2812, column: 29)
!3095 = !DILocation(line: 2813, column: 36, scope: !3094)
!3096 = !DILocation(line: 2813, column: 15, scope: !3094)
!3097 = !DILocation(line: 2814, column: 20, scope: !3094)
!3098 = !DILocation(line: 2814, column: 25, scope: !3094)
!3099 = !DILocation(line: 2814, column: 15, scope: !3094)
!3100 = !DILocation(line: 2814, column: 45, scope: !3094)
!3101 = !DILocation(line: 2813, column: 7, scope: !3094)
!3102 = !DILocation(line: 2815, column: 20, scope: !3094)
!3103 = !DILocation(line: 2815, column: 36, scope: !3094)
!3104 = !DILocation(line: 2815, column: 47, scope: !3094)
!3105 = !DILocation(line: 2815, column: 15, scope: !3094)
!3106 = !DILocation(line: 2816, column: 20, scope: !3094)
!3107 = !DILocation(line: 2816, column: 25, scope: !3094)
!3108 = !DILocation(line: 2816, column: 15, scope: !3094)
!3109 = !DILocation(line: 2816, column: 43, scope: !3094)
!3110 = !DILocation(line: 2816, column: 36, scope: !3094)
!3111 = !DILocation(line: 2815, column: 7, scope: !3094)
!3112 = !DILocation(line: 2817, column: 5, scope: !3094)
!3113 = !DILocation(line: 2818, column: 20, scope: !3091)
!3114 = !DILocation(line: 2818, column: 36, scope: !3091)
!3115 = !DILocation(line: 2818, column: 15, scope: !3091)
!3116 = !DILocation(line: 2819, column: 20, scope: !3091)
!3117 = !DILocation(line: 2819, column: 25, scope: !3091)
!3118 = !DILocation(line: 2819, column: 15, scope: !3091)
!3119 = !DILocation(line: 2819, column: 45, scope: !3091)
!3120 = !DILocation(line: 2818, column: 7, scope: !3091)
!3121 = !DILocation(line: 2821, column: 8, scope: !3031)
!3122 = !DILocation(line: 2821, column: 19, scope: !3031)
!3123 = !DILocation(line: 2822, column: 12, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3031, file: !269, line: 2822, column: 7)
!3125 = !DILocation(line: 2822, column: 31, scope: !3124)
!3126 = !DILocation(line: 2822, column: 23, scope: !3124)
!3127 = !DILocation(line: 2822, column: 7, scope: !3031)
!3128 = !DILocation(line: 2823, column: 20, scope: !3124)
!3129 = !DILocation(line: 2823, column: 13, scope: !3124)
!3130 = !DILocation(line: 2823, column: 5, scope: !3124)
!3131 = !DILocation(line: 2825, column: 13, scope: !3124)
!3132 = !DILocation(line: 2826, column: 3, scope: !3031)
!3133 = !DILocation(line: 2827, column: 1, scope: !3031)
!3134 = distinct !DISubprogram(name: "rar_br_preparation", scope: !269, file: !269, line: 485, type: !3135, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!24, !5, !3137}
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!3138 = !DILocalVariable(name: "a", arg: 1, scope: !3134, file: !269, line: 485, type: !5)
!3139 = !DILocation(line: 0, scope: !3134)
!3140 = !DILocalVariable(name: "br", arg: 2, scope: !3134, file: !269, line: 485, type: !3137)
!3141 = !DILocation(line: 487, column: 39, scope: !3134)
!3142 = !DILocation(line: 487, column: 47, scope: !3134)
!3143 = !DILocation(line: 487, column: 21, scope: !3134)
!3144 = !DILocalVariable(name: "rar", scope: !3134, file: !269, line: 487, type: !267)
!3145 = !DILocation(line: 489, column: 12, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3134, file: !269, line: 489, column: 7)
!3147 = !DILocation(line: 489, column: 28, scope: !3146)
!3148 = !DILocation(line: 489, column: 7, scope: !3134)
!3149 = !DILocation(line: 490, column: 46, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3146, file: !269, line: 489, column: 33)
!3151 = !DILocation(line: 490, column: 19, scope: !3150)
!3152 = !DILocation(line: 490, column: 9, scope: !3150)
!3153 = !DILocation(line: 490, column: 17, scope: !3150)
!3154 = !DILocation(line: 491, column: 13, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3150, file: !269, line: 491, column: 9)
!3156 = !DILocation(line: 491, column: 21, scope: !3155)
!3157 = !DILocation(line: 491, column: 9, scope: !3150)
!3158 = !DILocation(line: 492, column: 29, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3155, file: !269, line: 491, column: 30)
!3160 = !DILocation(line: 492, column: 7, scope: !3159)
!3161 = !DILocation(line: 495, column: 7, scope: !3159)
!3162 = !DILocation(line: 497, column: 13, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3150, file: !269, line: 497, column: 9)
!3164 = !DILocation(line: 497, column: 25, scope: !3163)
!3165 = !DILocation(line: 497, column: 9, scope: !3150)
!3166 = !DILocation(line: 498, column: 13, scope: !3163)
!3167 = !DILocation(line: 498, column: 7, scope: !3163)
!3168 = !DILocation(line: 499, column: 3, scope: !3150)
!3169 = !DILocation(line: 500, column: 3, scope: !3134)
!3170 = !DILocation(line: 501, column: 1, scope: !3134)
!3171 = distinct !DISubprogram(name: "parse_codes", scope: !269, file: !269, line: 1985, type: !252, scopeLine: 1986, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!3172 = !DILocalVariable(name: "a", arg: 1, scope: !3171, file: !269, line: 1985, type: !5)
!3173 = !DILocation(line: 0, scope: !3171)
!3174 = !DILocalVariable(name: "bitlengths", scope: !3171, file: !269, line: 1988, type: !3175)
!3175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 160, elements: !3176)
!3176 = !{!3177}
!3177 = !DISubrange(count: 20)
!3178 = !DILocation(line: 1988, column: 17, scope: !3171)
!3179 = !DILocalVariable(name: "precode", scope: !3171, file: !269, line: 1990, type: !335)
!3180 = !DILocation(line: 1990, column: 23, scope: !3171)
!3181 = !DILocation(line: 1991, column: 39, scope: !3171)
!3182 = !DILocation(line: 1991, column: 47, scope: !3171)
!3183 = !DILocation(line: 1991, column: 21, scope: !3171)
!3184 = !DILocalVariable(name: "rar", scope: !3171, file: !269, line: 1991, type: !267)
!3185 = !DILocation(line: 1992, column: 30, scope: !3171)
!3186 = !DILocalVariable(name: "br", scope: !3171, file: !269, line: 1992, type: !3137)
!3187 = !DILocation(line: 1994, column: 3, scope: !3171)
!3188 = !DILocation(line: 1997, column: 3, scope: !3171)
!3189 = !DILocation(line: 2000, column: 8, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3171, file: !269, line: 2000, column: 7)
!3191 = !DILocation(line: 2000, column: 7, scope: !3171)
!3192 = !DILocation(line: 2001, column: 5, scope: !3190)
!3193 = !DILocation(line: 2002, column: 29, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3171, file: !269, line: 2002, column: 7)
!3195 = !DILocation(line: 2002, column: 13, scope: !3194)
!3196 = !DILocation(line: 2002, column: 27, scope: !3194)
!3197 = !DILocation(line: 2002, column: 7, scope: !3194)
!3198 = !DILocation(line: 2002, column: 49, scope: !3194)
!3199 = !DILocation(line: 2002, column: 7, scope: !3171)
!3200 = !DILocation(line: 2004, column: 5, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3194, file: !269, line: 2003, column: 3)
!3202 = !DILocation(line: 2005, column: 10, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3201, file: !269, line: 2005, column: 9)
!3204 = !DILocation(line: 2005, column: 9, scope: !3201)
!3205 = !DILocation(line: 2006, column: 7, scope: !3203)
!3206 = !DILocation(line: 2007, column: 18, scope: !3201)
!3207 = !DILocalVariable(name: "ppmd_flags", scope: !3171, file: !269, line: 1988, type: !318)
!3208 = !DILocation(line: 2008, column: 5, scope: !3201)
!3209 = !DILocation(line: 2011, column: 9, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3201, file: !269, line: 2011, column: 9)
!3211 = !DILocation(line: 2011, column: 20, scope: !3210)
!3212 = !DILocation(line: 2011, column: 9, scope: !3201)
!3213 = !DILocation(line: 2013, column: 12, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !269, line: 2013, column: 11)
!3215 = distinct !DILexicalBlock(scope: !3210, file: !269, line: 2012, column: 5)
!3216 = !DILocation(line: 2013, column: 11, scope: !3215)
!3217 = !DILocation(line: 2014, column: 9, scope: !3214)
!3218 = !DILocation(line: 2015, column: 31, scope: !3215)
!3219 = !DILocation(line: 2015, column: 50, scope: !3215)
!3220 = !DILocation(line: 2015, column: 55, scope: !3215)
!3221 = !DILocation(line: 2015, column: 12, scope: !3215)
!3222 = !DILocation(line: 2015, column: 28, scope: !3215)
!3223 = !DILocation(line: 2016, column: 7, scope: !3215)
!3224 = !DILocation(line: 2017, column: 5, scope: !3215)
!3225 = !DILocation(line: 2019, column: 9, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3201, file: !269, line: 2019, column: 9)
!3227 = !DILocation(line: 2019, column: 20, scope: !3226)
!3228 = !DILocation(line: 2019, column: 9, scope: !3201)
!3229 = !DILocation(line: 2021, column: 12, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !269, line: 2021, column: 11)
!3231 = distinct !DILexicalBlock(scope: !3226, file: !269, line: 2020, column: 5)
!3232 = !DILocation(line: 2021, column: 11, scope: !3231)
!3233 = !DILocation(line: 2022, column: 9, scope: !3230)
!3234 = !DILocation(line: 2023, column: 55, scope: !3231)
!3235 = !DILocation(line: 2023, column: 31, scope: !3231)
!3236 = !DILocation(line: 2023, column: 45, scope: !3231)
!3237 = !DILocation(line: 2023, column: 53, scope: !3231)
!3238 = !DILocation(line: 2023, column: 12, scope: !3231)
!3239 = !DILocation(line: 2023, column: 24, scope: !3231)
!3240 = !DILocation(line: 2024, column: 7, scope: !3231)
!3241 = !DILocation(line: 2025, column: 5, scope: !3231)
!3242 = !DILocation(line: 2027, column: 12, scope: !3226)
!3243 = !DILocation(line: 2027, column: 24, scope: !3226)
!3244 = !DILocation(line: 2029, column: 9, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3201, file: !269, line: 2029, column: 9)
!3246 = !DILocation(line: 2029, column: 20, scope: !3245)
!3247 = !DILocation(line: 2029, column: 9, scope: !3201)
!3248 = !DILocation(line: 2031, column: 19, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3245, file: !269, line: 2030, column: 5)
!3250 = !DILocation(line: 2031, column: 30, scope: !3249)
!3251 = !DILocation(line: 2031, column: 38, scope: !3249)
!3252 = !DILocalVariable(name: "maxorder", scope: !3171, file: !269, line: 1989, type: !14)
!3253 = !DILocation(line: 2032, column: 19, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3249, file: !269, line: 2032, column: 10)
!3255 = !DILocation(line: 2032, column: 10, scope: !3249)
!3256 = !DILocation(line: 2033, column: 35, scope: !3254)
!3257 = !DILocation(line: 2033, column: 41, scope: !3254)
!3258 = !DILocation(line: 2033, column: 23, scope: !3254)
!3259 = !DILocation(line: 2033, column: 9, scope: !3254)
!3260 = !DILocation(line: 0, scope: !3249)
!3261 = !DILocation(line: 2035, column: 20, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3249, file: !269, line: 2035, column: 11)
!3263 = !DILocation(line: 2035, column: 11, scope: !3249)
!3264 = !DILocation(line: 2037, column: 31, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3262, file: !269, line: 2036, column: 7)
!3266 = !DILocation(line: 2037, column: 9, scope: !3265)
!3267 = !DILocation(line: 2039, column: 9, scope: !3265)
!3268 = !DILocation(line: 2044, column: 33, scope: !3249)
!3269 = !DILocation(line: 2044, column: 50, scope: !3249)
!3270 = !DILocation(line: 2044, column: 7, scope: !3249)
!3271 = !DILocation(line: 2046, column: 12, scope: !3249)
!3272 = !DILocation(line: 2046, column: 19, scope: !3249)
!3273 = !DILocation(line: 2046, column: 21, scope: !3249)
!3274 = !DILocation(line: 2047, column: 12, scope: !3249)
!3275 = !DILocation(line: 2047, column: 19, scope: !3249)
!3276 = !DILocation(line: 2047, column: 24, scope: !3249)
!3277 = !DILocation(line: 2048, column: 33, scope: !3249)
!3278 = !DILocation(line: 2048, column: 69, scope: !3249)
!3279 = !DILocation(line: 2048, column: 7, scope: !3249)
!3280 = !DILocation(line: 2049, column: 37, scope: !3249)
!3281 = !DILocation(line: 2049, column: 12, scope: !3249)
!3282 = !DILocation(line: 2049, column: 22, scope: !3249)
!3283 = !DILocation(line: 2049, column: 29, scope: !3249)
!3284 = !DILocation(line: 2050, column: 33, scope: !3249)
!3285 = !DILocation(line: 2050, column: 55, scope: !3249)
!3286 = !DILocation(line: 2050, column: 7, scope: !3249)
!3287 = !DILocation(line: 2052, column: 38, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3249, file: !269, line: 2052, column: 11)
!3289 = !DILocation(line: 2052, column: 56, scope: !3288)
!3290 = !DILocation(line: 2053, column: 14, scope: !3288)
!3291 = !DILocation(line: 2052, column: 12, scope: !3288)
!3292 = !DILocation(line: 2052, column: 11, scope: !3249)
!3293 = !DILocation(line: 2055, column: 31, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3288, file: !269, line: 2054, column: 7)
!3295 = !DILocation(line: 2055, column: 9, scope: !3294)
!3296 = !DILocation(line: 2057, column: 9, scope: !3294)
!3297 = !DILocation(line: 2059, column: 38, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3249, file: !269, line: 2059, column: 11)
!3299 = !DILocation(line: 2059, column: 66, scope: !3298)
!3300 = !DILocation(line: 2059, column: 12, scope: !3298)
!3301 = !DILocation(line: 2059, column: 11, scope: !3249)
!3302 = !DILocation(line: 2061, column: 31, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3298, file: !269, line: 2060, column: 7)
!3304 = !DILocation(line: 2061, column: 9, scope: !3303)
!3305 = !DILocation(line: 2063, column: 9, scope: !3303)
!3306 = !DILocation(line: 2065, column: 33, scope: !3249)
!3307 = !DILocation(line: 2065, column: 50, scope: !3249)
!3308 = !DILocation(line: 2065, column: 7, scope: !3249)
!3309 = !DILocation(line: 2066, column: 12, scope: !3249)
!3310 = !DILocation(line: 2066, column: 23, scope: !3249)
!3311 = !DILocation(line: 2067, column: 5, scope: !3249)
!3312 = !DILocation(line: 2070, column: 17, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !269, line: 2070, column: 11)
!3314 = distinct !DILexicalBlock(scope: !3245, file: !269, line: 2069, column: 5)
!3315 = !DILocation(line: 2070, column: 12, scope: !3313)
!3316 = !DILocation(line: 2070, column: 11, scope: !3314)
!3317 = !DILocation(line: 2071, column: 31, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3313, file: !269, line: 2070, column: 29)
!3319 = !DILocation(line: 2071, column: 9, scope: !3318)
!3320 = !DILocation(line: 2073, column: 9, scope: !3318)
!3321 = !DILocation(line: 2075, column: 38, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3314, file: !269, line: 2075, column: 11)
!3323 = !DILocation(line: 2075, column: 66, scope: !3322)
!3324 = !DILocation(line: 2075, column: 12, scope: !3322)
!3325 = !DILocation(line: 2075, column: 11, scope: !3314)
!3326 = !DILocation(line: 2077, column: 31, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3322, file: !269, line: 2076, column: 7)
!3328 = !DILocation(line: 2077, column: 9, scope: !3327)
!3329 = !DILocation(line: 2079, column: 9, scope: !3327)
!3330 = !DILocation(line: 2082, column: 3, scope: !3201)
!3331 = !DILocation(line: 2085, column: 5, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3194, file: !269, line: 2084, column: 3)
!3333 = !DILocation(line: 2088, column: 10, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3332, file: !269, line: 2088, column: 9)
!3335 = !DILocation(line: 2088, column: 9, scope: !3332)
!3336 = !DILocation(line: 2089, column: 7, scope: !3334)
!3337 = !DILocation(line: 2090, column: 10, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3332, file: !269, line: 2090, column: 9)
!3339 = !DILocation(line: 2090, column: 9, scope: !3332)
!3340 = !DILocation(line: 2091, column: 19, scope: !3338)
!3341 = !DILocation(line: 2091, column: 7, scope: !3338)
!3342 = !DILocation(line: 2092, column: 5, scope: !3332)
!3343 = !DILocation(line: 2094, column: 5, scope: !3332)
!3344 = !DILocalVariable(name: "i", scope: !3171, file: !269, line: 1987, type: !24)
!3345 = !DILocation(line: 2095, column: 10, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3332, file: !269, line: 2095, column: 5)
!3347 = !DILocation(line: 0, scope: !3346)
!3348 = !DILocation(line: 2095, column: 19, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3346, file: !269, line: 2095, column: 5)
!3350 = !DILocation(line: 2095, column: 5, scope: !3346)
!3351 = !DILocation(line: 2097, column: 12, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !269, line: 2097, column: 11)
!3353 = distinct !DILexicalBlock(scope: !3349, file: !269, line: 2096, column: 5)
!3354 = !DILocation(line: 2097, column: 11, scope: !3353)
!3355 = !DILocation(line: 2098, column: 9, scope: !3352)
!3356 = !DILocation(line: 2099, column: 25, scope: !3353)
!3357 = !DILocation(line: 2099, column: 19, scope: !3353)
!3358 = !DILocation(line: 2099, column: 7, scope: !3353)
!3359 = !DILocation(line: 2099, column: 23, scope: !3353)
!3360 = !DILocation(line: 2100, column: 7, scope: !3353)
!3361 = !DILocation(line: 2101, column: 23, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3353, file: !269, line: 2101, column: 11)
!3363 = !DILocation(line: 2101, column: 11, scope: !3362)
!3364 = !DILocation(line: 2101, column: 27, scope: !3362)
!3365 = !DILocation(line: 2101, column: 11, scope: !3353)
!3366 = !DILocation(line: 2103, column: 14, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !269, line: 2103, column: 13)
!3368 = distinct !DILexicalBlock(scope: !3362, file: !269, line: 2102, column: 7)
!3369 = !DILocation(line: 2103, column: 13, scope: !3368)
!3370 = !DILocation(line: 2104, column: 11, scope: !3367)
!3371 = !DILocation(line: 2105, column: 21, scope: !3368)
!3372 = !DILocalVariable(name: "zerocount", scope: !3171, file: !269, line: 1988, type: !318)
!3373 = !DILocation(line: 2106, column: 9, scope: !3368)
!3374 = !DILocation(line: 2107, column: 13, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3368, file: !269, line: 2107, column: 13)
!3376 = !DILocation(line: 2107, column: 13, scope: !3368)
!3377 = !DILocation(line: 2109, column: 12, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3375, file: !269, line: 2108, column: 9)
!3379 = !DILocalVariable(name: "j", scope: !3171, file: !269, line: 1987, type: !24)
!3380 = !DILocation(line: 2110, column: 16, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3378, file: !269, line: 2110, column: 11)
!3382 = !DILocation(line: 0, scope: !3381)
!3383 = !DILocation(line: 0, scope: !3378)
!3384 = !DILocation(line: 2110, column: 27, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3381, file: !269, line: 2110, column: 11)
!3386 = !DILocation(line: 2110, column: 37, scope: !3385)
!3387 = !DILocation(line: 2110, column: 25, scope: !3385)
!3388 = !DILocation(line: 2110, column: 41, scope: !3385)
!3389 = !DILocation(line: 2110, column: 46, scope: !3385)
!3390 = !DILocation(line: 0, scope: !3385)
!3391 = !DILocation(line: 2110, column: 11, scope: !3381)
!3392 = !DILocation(line: 2111, column: 25, scope: !3385)
!3393 = !DILocation(line: 2111, column: 13, scope: !3385)
!3394 = !DILocation(line: 2111, column: 29, scope: !3385)
!3395 = !DILocation(line: 2110, column: 62, scope: !3385)
!3396 = !DILocation(line: 2110, column: 11, scope: !3385)
!3397 = distinct !{!3397, !3391, !3398, !650}
!3398 = !DILocation(line: 2111, column: 31, scope: !3381)
!3399 = !DILocation(line: 2112, column: 9, scope: !3378)
!3400 = !DILocation(line: 0, scope: !3353)
!3401 = !DILocation(line: 2113, column: 7, scope: !3368)
!3402 = !DILocation(line: 2095, column: 5, scope: !3349)
!3403 = distinct !{!3403, !3350, !3404, !650}
!3404 = !DILocation(line: 2114, column: 5, scope: !3346)
!3405 = !DILocation(line: 2116, column: 5, scope: !3332)
!3406 = !DILocation(line: 2117, column: 34, scope: !3332)
!3407 = !DILocation(line: 2117, column: 9, scope: !3332)
!3408 = !DILocalVariable(name: "r", scope: !3171, file: !269, line: 1987, type: !24)
!3409 = !DILocation(line: 2118, column: 11, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3332, file: !269, line: 2118, column: 9)
!3411 = !DILocation(line: 2118, column: 9, scope: !3332)
!3412 = !DILocation(line: 2119, column: 20, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3410, file: !269, line: 2118, column: 26)
!3414 = !DILocation(line: 2119, column: 12, scope: !3413)
!3415 = !DILocation(line: 2119, column: 7, scope: !3413)
!3416 = !DILocation(line: 2120, column: 20, scope: !3413)
!3417 = !DILocation(line: 2120, column: 12, scope: !3413)
!3418 = !DILocation(line: 2120, column: 7, scope: !3413)
!3419 = !DILocation(line: 2121, column: 7, scope: !3413)
!3420 = !DILocation(line: 2124, column: 10, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3332, file: !269, line: 2124, column: 5)
!3422 = !DILocation(line: 0, scope: !3421)
!3423 = !DILocation(line: 2124, column: 19, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3421, file: !269, line: 2124, column: 5)
!3425 = !DILocation(line: 2124, column: 5, scope: !3421)
!3426 = !DILocation(line: 2126, column: 18, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !269, line: 2126, column: 11)
!3428 = distinct !DILexicalBlock(scope: !3424, file: !269, line: 2125, column: 5)
!3429 = !DILocalVariable(name: "val", scope: !3171, file: !269, line: 1987, type: !24)
!3430 = !DILocation(line: 2126, column: 49, scope: !3427)
!3431 = !DILocation(line: 2126, column: 11, scope: !3428)
!3432 = !DILocation(line: 2127, column: 22, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3427, file: !269, line: 2126, column: 54)
!3434 = !DILocation(line: 2127, column: 14, scope: !3433)
!3435 = !DILocation(line: 2127, column: 9, scope: !3433)
!3436 = !DILocation(line: 2128, column: 22, scope: !3433)
!3437 = !DILocation(line: 2128, column: 14, scope: !3433)
!3438 = !DILocation(line: 2128, column: 9, scope: !3433)
!3439 = !DILocation(line: 2129, column: 9, scope: !3433)
!3440 = !DILocation(line: 2131, column: 15, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3428, file: !269, line: 2131, column: 11)
!3442 = !DILocation(line: 2131, column: 11, scope: !3428)
!3443 = !DILocation(line: 2133, column: 37, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3441, file: !269, line: 2132, column: 7)
!3445 = !DILocation(line: 2133, column: 32, scope: !3444)
!3446 = !DILocation(line: 2133, column: 52, scope: !3444)
!3447 = !DILocation(line: 2133, column: 59, scope: !3444)
!3448 = !DILocation(line: 2133, column: 31, scope: !3444)
!3449 = !DILocation(line: 2133, column: 14, scope: !3444)
!3450 = !DILocation(line: 2133, column: 9, scope: !3444)
!3451 = !DILocation(line: 2133, column: 29, scope: !3444)
!3452 = !DILocation(line: 2134, column: 10, scope: !3444)
!3453 = !DILocation(line: 2135, column: 7, scope: !3444)
!3454 = !DILocation(line: 2136, column: 20, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3441, file: !269, line: 2136, column: 16)
!3456 = !DILocation(line: 2136, column: 16, scope: !3441)
!3457 = !DILocation(line: 2138, column: 15, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !269, line: 2138, column: 13)
!3459 = distinct !DILexicalBlock(scope: !3455, file: !269, line: 2137, column: 7)
!3460 = !DILocation(line: 2138, column: 13, scope: !3459)
!3461 = !DILocation(line: 2140, column: 24, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3458, file: !269, line: 2139, column: 9)
!3463 = !DILocation(line: 2140, column: 16, scope: !3462)
!3464 = !DILocation(line: 2140, column: 11, scope: !3462)
!3465 = !DILocation(line: 2141, column: 24, scope: !3462)
!3466 = !DILocation(line: 2141, column: 16, scope: !3462)
!3467 = !DILocation(line: 2141, column: 11, scope: !3462)
!3468 = !DILocation(line: 2142, column: 33, scope: !3462)
!3469 = !DILocation(line: 2142, column: 11, scope: !3462)
!3470 = !DILocation(line: 2144, column: 11, scope: !3462)
!3471 = !DILocation(line: 2147, column: 16, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3459, file: !269, line: 2147, column: 12)
!3473 = !DILocation(line: 2147, column: 12, scope: !3459)
!3474 = !DILocation(line: 2148, column: 16, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !269, line: 2148, column: 15)
!3476 = distinct !DILexicalBlock(scope: !3472, file: !269, line: 2147, column: 23)
!3477 = !DILocation(line: 2148, column: 15, scope: !3476)
!3478 = !DILocation(line: 2149, column: 26, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3475, file: !269, line: 2148, column: 45)
!3480 = !DILocation(line: 2149, column: 18, scope: !3479)
!3481 = !DILocation(line: 2149, column: 13, scope: !3479)
!3482 = !DILocation(line: 2150, column: 26, scope: !3479)
!3483 = !DILocation(line: 2150, column: 18, scope: !3479)
!3484 = !DILocation(line: 2150, column: 13, scope: !3479)
!3485 = !DILocation(line: 2151, column: 13, scope: !3479)
!3486 = !DILocation(line: 2153, column: 15, scope: !3476)
!3487 = !DILocation(line: 2153, column: 34, scope: !3476)
!3488 = !DILocalVariable(name: "n", scope: !3171, file: !269, line: 1987, type: !24)
!3489 = !DILocation(line: 2154, column: 11, scope: !3476)
!3490 = !DILocation(line: 2155, column: 9, scope: !3476)
!3491 = !DILocation(line: 2156, column: 16, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !269, line: 2156, column: 15)
!3493 = distinct !DILexicalBlock(scope: !3472, file: !269, line: 2155, column: 16)
!3494 = !DILocation(line: 2156, column: 15, scope: !3493)
!3495 = !DILocation(line: 2157, column: 26, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3492, file: !269, line: 2156, column: 45)
!3497 = !DILocation(line: 2157, column: 18, scope: !3496)
!3498 = !DILocation(line: 2157, column: 13, scope: !3496)
!3499 = !DILocation(line: 2158, column: 26, scope: !3496)
!3500 = !DILocation(line: 2158, column: 18, scope: !3496)
!3501 = !DILocation(line: 2158, column: 13, scope: !3496)
!3502 = !DILocation(line: 2159, column: 13, scope: !3496)
!3503 = !DILocation(line: 2161, column: 15, scope: !3493)
!3504 = !DILocation(line: 2161, column: 34, scope: !3493)
!3505 = !DILocation(line: 2162, column: 11, scope: !3493)
!3506 = !DILocation(line: 0, scope: !3472)
!3507 = !DILocation(line: 2165, column: 14, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3459, file: !269, line: 2165, column: 9)
!3509 = !DILocation(line: 0, scope: !3508)
!3510 = !DILocation(line: 2165, column: 23, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3508, file: !269, line: 2165, column: 9)
!3512 = !DILocation(line: 2165, column: 27, scope: !3511)
!3513 = !DILocation(line: 2165, column: 32, scope: !3511)
!3514 = !DILocation(line: 0, scope: !3511)
!3515 = !DILocation(line: 2165, column: 9, scope: !3508)
!3516 = !DILocation(line: 2167, column: 38, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3511, file: !269, line: 2166, column: 9)
!3518 = !DILocation(line: 2167, column: 51, scope: !3517)
!3519 = !DILocation(line: 2167, column: 33, scope: !3517)
!3520 = !DILocation(line: 2167, column: 16, scope: !3517)
!3521 = !DILocation(line: 2167, column: 11, scope: !3517)
!3522 = !DILocation(line: 2167, column: 31, scope: !3517)
!3523 = !DILocation(line: 2168, column: 12, scope: !3517)
!3524 = !DILocation(line: 2169, column: 9, scope: !3517)
!3525 = !DILocation(line: 2165, column: 55, scope: !3511)
!3526 = !DILocation(line: 2165, column: 9, scope: !3511)
!3527 = distinct !{!3527, !3515, !3528, !650}
!3528 = !DILocation(line: 2169, column: 9, scope: !3508)
!3529 = !DILocation(line: 2170, column: 7, scope: !3459)
!3530 = !DILocation(line: 2173, column: 16, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !269, line: 2173, column: 12)
!3532 = distinct !DILexicalBlock(scope: !3455, file: !269, line: 2172, column: 7)
!3533 = !DILocation(line: 2173, column: 12, scope: !3532)
!3534 = !DILocation(line: 2174, column: 16, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !269, line: 2174, column: 15)
!3536 = distinct !DILexicalBlock(scope: !3531, file: !269, line: 2173, column: 23)
!3537 = !DILocation(line: 2174, column: 15, scope: !3536)
!3538 = !DILocation(line: 2175, column: 26, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3535, file: !269, line: 2174, column: 45)
!3540 = !DILocation(line: 2175, column: 18, scope: !3539)
!3541 = !DILocation(line: 2175, column: 13, scope: !3539)
!3542 = !DILocation(line: 2176, column: 26, scope: !3539)
!3543 = !DILocation(line: 2176, column: 18, scope: !3539)
!3544 = !DILocation(line: 2176, column: 13, scope: !3539)
!3545 = !DILocation(line: 2177, column: 13, scope: !3539)
!3546 = !DILocation(line: 2179, column: 15, scope: !3536)
!3547 = !DILocation(line: 2179, column: 34, scope: !3536)
!3548 = !DILocation(line: 2180, column: 11, scope: !3536)
!3549 = !DILocation(line: 2181, column: 9, scope: !3536)
!3550 = !DILocation(line: 2182, column: 16, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !269, line: 2182, column: 15)
!3552 = distinct !DILexicalBlock(scope: !3531, file: !269, line: 2181, column: 16)
!3553 = !DILocation(line: 2182, column: 15, scope: !3552)
!3554 = !DILocation(line: 2183, column: 26, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3551, file: !269, line: 2182, column: 45)
!3556 = !DILocation(line: 2183, column: 18, scope: !3555)
!3557 = !DILocation(line: 2183, column: 13, scope: !3555)
!3558 = !DILocation(line: 2184, column: 26, scope: !3555)
!3559 = !DILocation(line: 2184, column: 18, scope: !3555)
!3560 = !DILocation(line: 2184, column: 13, scope: !3555)
!3561 = !DILocation(line: 2185, column: 13, scope: !3555)
!3562 = !DILocation(line: 2187, column: 15, scope: !3552)
!3563 = !DILocation(line: 2187, column: 34, scope: !3552)
!3564 = !DILocation(line: 2188, column: 11, scope: !3552)
!3565 = !DILocation(line: 0, scope: !3531)
!3566 = !DILocation(line: 2191, column: 13, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3532, file: !269, line: 2191, column: 9)
!3568 = !DILocation(line: 0, scope: !3567)
!3569 = !DILocation(line: 2191, column: 22, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3567, file: !269, line: 2191, column: 9)
!3571 = !DILocation(line: 2191, column: 26, scope: !3570)
!3572 = !DILocation(line: 2191, column: 31, scope: !3570)
!3573 = !DILocation(line: 0, scope: !3570)
!3574 = !DILocation(line: 2191, column: 9, scope: !3567)
!3575 = !DILocation(line: 2192, column: 16, scope: !3570)
!3576 = !DILocation(line: 2192, column: 29, scope: !3570)
!3577 = !DILocation(line: 2192, column: 11, scope: !3570)
!3578 = !DILocation(line: 2192, column: 33, scope: !3570)
!3579 = !DILocation(line: 2191, column: 54, scope: !3570)
!3580 = !DILocation(line: 2191, column: 9, scope: !3570)
!3581 = distinct !{!3581, !3574, !3582, !650}
!3582 = !DILocation(line: 2192, column: 35, scope: !3567)
!3583 = !DILocation(line: 2124, column: 12, scope: !3421)
!3584 = !DILocation(line: 2124, column: 5, scope: !3424)
!3585 = distinct !{!3585, !3425, !3586, !650}
!3586 = !DILocation(line: 2194, column: 5, scope: !3421)
!3587 = !DILocation(line: 2195, column: 18, scope: !3332)
!3588 = !DILocation(line: 2195, column: 10, scope: !3332)
!3589 = !DILocation(line: 2195, column: 5, scope: !3332)
!3590 = !DILocation(line: 2196, column: 18, scope: !3332)
!3591 = !DILocation(line: 2196, column: 10, scope: !3332)
!3592 = !DILocation(line: 2196, column: 5, scope: !3332)
!3593 = !DILocation(line: 2198, column: 30, scope: !3332)
!3594 = !DILocation(line: 2198, column: 46, scope: !3332)
!3595 = !DILocation(line: 2198, column: 41, scope: !3332)
!3596 = !DILocation(line: 2198, column: 9, scope: !3332)
!3597 = !DILocation(line: 2200, column: 11, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3332, file: !269, line: 2200, column: 9)
!3599 = !DILocation(line: 2200, column: 9, scope: !3332)
!3600 = !DILocation(line: 2201, column: 7, scope: !3598)
!3601 = !DILocation(line: 2202, column: 30, scope: !3332)
!3602 = !DILocation(line: 2202, column: 48, scope: !3332)
!3603 = !DILocation(line: 2202, column: 43, scope: !3332)
!3604 = !DILocation(line: 2202, column: 9, scope: !3332)
!3605 = !DILocation(line: 2204, column: 11, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3332, file: !269, line: 2204, column: 9)
!3607 = !DILocation(line: 2204, column: 9, scope: !3332)
!3608 = !DILocation(line: 2205, column: 7, scope: !3606)
!3609 = !DILocation(line: 2206, column: 30, scope: !3332)
!3610 = !DILocation(line: 2207, column: 23, scope: !3332)
!3611 = !DILocation(line: 2207, column: 18, scope: !3332)
!3612 = !DILocation(line: 2206, column: 9, scope: !3332)
!3613 = !DILocation(line: 2209, column: 11, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3332, file: !269, line: 2209, column: 9)
!3615 = !DILocation(line: 2209, column: 9, scope: !3332)
!3616 = !DILocation(line: 2210, column: 7, scope: !3614)
!3617 = !DILocation(line: 2211, column: 30, scope: !3332)
!3618 = !DILocation(line: 2212, column: 23, scope: !3332)
!3619 = !DILocation(line: 2212, column: 18, scope: !3332)
!3620 = !DILocation(line: 2211, column: 9, scope: !3332)
!3621 = !DILocation(line: 2214, column: 11, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3332, file: !269, line: 2214, column: 9)
!3623 = !DILocation(line: 2214, column: 9, scope: !3332)
!3624 = !DILocation(line: 2215, column: 7, scope: !3622)
!3625 = !DILocation(line: 2218, column: 13, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3171, file: !269, line: 2218, column: 7)
!3627 = !DILocation(line: 2218, column: 8, scope: !3626)
!3628 = !DILocation(line: 2218, column: 29, scope: !3626)
!3629 = !DILocation(line: 2218, column: 38, scope: !3626)
!3630 = !DILocation(line: 2218, column: 43, scope: !3626)
!3631 = !DILocation(line: 2218, column: 33, scope: !3626)
!3632 = !DILocation(line: 2218, column: 7, scope: !3171)
!3633 = !DILocation(line: 2226, column: 14, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !269, line: 2226, column: 9)
!3635 = distinct !DILexicalBlock(scope: !3626, file: !269, line: 2219, column: 3)
!3636 = !DILocation(line: 2226, column: 23, scope: !3634)
!3637 = !DILocation(line: 2226, column: 9, scope: !3635)
!3638 = !DILocalVariable(name: "new_size", scope: !3635, file: !269, line: 2224, type: !14)
!3639 = !DILocation(line: 0, scope: !3635)
!3640 = !DILocation(line: 2227, column: 7, scope: !3634)
!3641 = !DILocation(line: 2229, column: 45, scope: !3634)
!3642 = !DILocation(line: 2229, column: 26, scope: !3634)
!3643 = !DILocation(line: 2229, column: 18, scope: !3634)
!3644 = !DILocation(line: 2229, column: 55, scope: !3634)
!3645 = !DILocation(line: 0, scope: !3634)
!3646 = !DILocation(line: 2230, column: 31, scope: !3635)
!3647 = !DILocation(line: 2230, column: 36, scope: !3635)
!3648 = !DILocation(line: 2230, column: 44, scope: !3635)
!3649 = !DILocation(line: 2230, column: 18, scope: !3635)
!3650 = !DILocalVariable(name: "new_window", scope: !3635, file: !269, line: 2223, type: !125)
!3651 = !DILocation(line: 2231, column: 20, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3635, file: !269, line: 2231, column: 9)
!3653 = !DILocation(line: 2231, column: 9, scope: !3635)
!3654 = !DILocation(line: 2232, column: 29, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3652, file: !269, line: 2231, column: 29)
!3656 = !DILocation(line: 2232, column: 7, scope: !3655)
!3657 = !DILocation(line: 2234, column: 7, scope: !3655)
!3658 = !DILocation(line: 2236, column: 10, scope: !3635)
!3659 = !DILocation(line: 2236, column: 15, scope: !3635)
!3660 = !DILocation(line: 2236, column: 22, scope: !3635)
!3661 = !DILocation(line: 2237, column: 10, scope: !3635)
!3662 = !DILocation(line: 2237, column: 26, scope: !3635)
!3663 = !DILocation(line: 2238, column: 17, scope: !3635)
!3664 = !DILocation(line: 2238, column: 22, scope: !3635)
!3665 = !DILocation(line: 2238, column: 38, scope: !3635)
!3666 = !DILocation(line: 2238, column: 33, scope: !3635)
!3667 = !DILocation(line: 2238, column: 5, scope: !3635)
!3668 = !DILocation(line: 2239, column: 27, scope: !3635)
!3669 = !DILocation(line: 2239, column: 43, scope: !3635)
!3670 = !DILocation(line: 2239, column: 10, scope: !3635)
!3671 = !DILocation(line: 2239, column: 15, scope: !3635)
!3672 = !DILocation(line: 2239, column: 20, scope: !3635)
!3673 = !DILocation(line: 2240, column: 3, scope: !3635)
!3674 = !DILocation(line: 2242, column: 8, scope: !3171)
!3675 = !DILocation(line: 2242, column: 24, scope: !3171)
!3676 = !DILocation(line: 2243, column: 3, scope: !3171)
!3677 = !DILabel(scope: !3171, name: "truncated_data", file: !269, line: 2244)
!3678 = !DILocation(line: 2244, column: 1, scope: !3171)
!3679 = !DILocation(line: 2245, column: 25, scope: !3171)
!3680 = !DILocation(line: 2245, column: 3, scope: !3171)
!3681 = !DILocation(line: 2247, column: 8, scope: !3171)
!3682 = !DILocation(line: 2247, column: 14, scope: !3171)
!3683 = !DILocation(line: 2248, column: 3, scope: !3171)
!3684 = !DILocation(line: 2249, column: 1, scope: !3171)
!3685 = distinct !DISubprogram(name: "lzss_emit_literal", scope: !269, file: !269, line: 559, type: !3686, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{null, !267, !1812}
!3688 = !DILocalVariable(name: "rar", arg: 1, scope: !3685, file: !269, line: 559, type: !267)
!3689 = !DILocation(line: 0, scope: !3685)
!3690 = !DILocalVariable(name: "literal", arg: 2, scope: !3685, file: !269, line: 559, type: !1812)
!3691 = !DILocation(line: 561, column: 31, scope: !3685)
!3692 = !DILocation(line: 561, column: 4, scope: !3685)
!3693 = !DILocation(line: 561, column: 37, scope: !3685)
!3694 = !DILocation(line: 562, column: 8, scope: !3685)
!3695 = !DILocation(line: 562, column: 13, scope: !3685)
!3696 = !DILocation(line: 562, column: 21, scope: !3685)
!3697 = !DILocation(line: 563, column: 1, scope: !3685)
!3698 = distinct !DISubprogram(name: "lzss_emit_match", scope: !269, file: !269, line: 566, type: !3699, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{null, !267, !24, !24}
!3701 = !DILocalVariable(name: "rar", arg: 1, scope: !3698, file: !269, line: 566, type: !267)
!3702 = !DILocation(line: 0, scope: !3698)
!3703 = !DILocalVariable(name: "offset", arg: 2, scope: !3698, file: !269, line: 566, type: !24)
!3704 = !DILocalVariable(name: "length", arg: 3, scope: !3698, file: !269, line: 566, type: !24)
!3705 = !DILocation(line: 568, column: 43, scope: !3698)
!3706 = !DILocation(line: 568, column: 17, scope: !3698)
!3707 = !DILocalVariable(name: "dstoffs", scope: !3698, file: !269, line: 568, type: !24)
!3708 = !DILocation(line: 569, column: 26, scope: !3698)
!3709 = !DILocation(line: 569, column: 54, scope: !3698)
!3710 = !DILocation(line: 569, column: 38, scope: !3698)
!3711 = !DILocation(line: 569, column: 36, scope: !3698)
!3712 = !DILocalVariable(name: "srcoffs", scope: !3698, file: !269, line: 569, type: !24)
!3713 = !DILocalVariable(name: "remaining", scope: !3698, file: !269, line: 570, type: !24)
!3714 = !DILocation(line: 574, column: 3, scope: !3698)
!3715 = !DILocation(line: 574, column: 20, scope: !3698)
!3716 = !DILocalVariable(name: "l", scope: !3698, file: !269, line: 570, type: !24)
!3717 = !DILocation(line: 576, column: 17, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3719, file: !269, line: 576, column: 9)
!3719 = distinct !DILexicalBlock(scope: !3698, file: !269, line: 574, column: 25)
!3720 = !DILocation(line: 576, column: 9, scope: !3719)
!3721 = !DILocation(line: 577, column: 31, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3723, file: !269, line: 577, column: 11)
!3723 = distinct !DILexicalBlock(scope: !3718, file: !269, line: 576, column: 28)
!3724 = !DILocation(line: 577, column: 15, scope: !3722)
!3725 = !DILocation(line: 577, column: 37, scope: !3722)
!3726 = !DILocation(line: 577, column: 13, scope: !3722)
!3727 = !DILocation(line: 577, column: 11, scope: !3723)
!3728 = !DILocation(line: 578, column: 29, scope: !3722)
!3729 = !DILocation(line: 578, column: 13, scope: !3722)
!3730 = !DILocation(line: 578, column: 35, scope: !3722)
!3731 = !DILocation(line: 578, column: 9, scope: !3722)
!3732 = !DILocation(line: 0, scope: !3719)
!3733 = !DILocation(line: 579, column: 5, scope: !3723)
!3734 = !DILocation(line: 580, column: 31, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !269, line: 580, column: 11)
!3736 = distinct !DILexicalBlock(scope: !3718, file: !269, line: 579, column: 12)
!3737 = !DILocation(line: 580, column: 15, scope: !3735)
!3738 = !DILocation(line: 580, column: 37, scope: !3735)
!3739 = !DILocation(line: 580, column: 13, scope: !3735)
!3740 = !DILocation(line: 580, column: 11, scope: !3736)
!3741 = !DILocation(line: 581, column: 29, scope: !3735)
!3742 = !DILocation(line: 581, column: 13, scope: !3735)
!3743 = !DILocation(line: 581, column: 35, scope: !3735)
!3744 = !DILocation(line: 581, column: 9, scope: !3735)
!3745 = !DILocation(line: 0, scope: !3718)
!3746 = !DILocation(line: 583, column: 16, scope: !3719)
!3747 = !DILocation(line: 583, column: 21, scope: !3719)
!3748 = !DILocation(line: 583, column: 11, scope: !3719)
!3749 = !DILocalVariable(name: "d", scope: !3698, file: !269, line: 571, type: !317)
!3750 = !DILocation(line: 584, column: 16, scope: !3719)
!3751 = !DILocation(line: 584, column: 21, scope: !3719)
!3752 = !DILocation(line: 584, column: 11, scope: !3719)
!3753 = !DILocalVariable(name: "s", scope: !3698, file: !269, line: 571, type: !317)
!3754 = !DILocation(line: 585, column: 18, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3719, file: !269, line: 585, column: 9)
!3756 = !DILocation(line: 585, column: 22, scope: !3755)
!3757 = !DILocation(line: 585, column: 33, scope: !3755)
!3758 = !DILocation(line: 585, column: 45, scope: !3755)
!3759 = !DILocation(line: 585, column: 49, scope: !3755)
!3760 = !DILocation(line: 585, column: 9, scope: !3719)
!3761 = !DILocation(line: 586, column: 20, scope: !3755)
!3762 = !DILocation(line: 586, column: 7, scope: !3755)
!3763 = !DILocalVariable(name: "li", scope: !3698, file: !269, line: 570, type: !24)
!3764 = !DILocation(line: 588, column: 12, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !269, line: 588, column: 7)
!3766 = distinct !DILexicalBlock(scope: !3755, file: !269, line: 587, column: 10)
!3767 = !DILocation(line: 0, scope: !3765)
!3768 = !DILocation(line: 588, column: 23, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3765, file: !269, line: 588, column: 7)
!3770 = !DILocation(line: 588, column: 7, scope: !3765)
!3771 = !DILocation(line: 589, column: 17, scope: !3769)
!3772 = !DILocation(line: 589, column: 9, scope: !3769)
!3773 = !DILocation(line: 589, column: 15, scope: !3769)
!3774 = !DILocation(line: 588, column: 30, scope: !3769)
!3775 = !DILocation(line: 588, column: 7, scope: !3769)
!3776 = distinct !{!3776, !3770, !3777, !650}
!3777 = !DILocation(line: 589, column: 21, scope: !3765)
!3778 = !DILocation(line: 591, column: 15, scope: !3719)
!3779 = !DILocation(line: 592, column: 24, scope: !3719)
!3780 = !DILocation(line: 592, column: 48, scope: !3719)
!3781 = !DILocation(line: 592, column: 31, scope: !3719)
!3782 = !DILocation(line: 592, column: 29, scope: !3719)
!3783 = !DILocation(line: 593, column: 24, scope: !3719)
!3784 = !DILocation(line: 593, column: 48, scope: !3719)
!3785 = !DILocation(line: 593, column: 31, scope: !3719)
!3786 = !DILocation(line: 593, column: 29, scope: !3719)
!3787 = distinct !{!3787, !3714, !3788, !650}
!3788 = !DILocation(line: 594, column: 3, scope: !3698)
!3789 = !DILocation(line: 595, column: 25, scope: !3698)
!3790 = !DILocation(line: 595, column: 8, scope: !3698)
!3791 = !DILocation(line: 595, column: 13, scope: !3698)
!3792 = !DILocation(line: 595, column: 22, scope: !3698)
!3793 = !DILocation(line: 596, column: 1, scope: !3698)
!3794 = !DILocalVariable(name: "a", arg: 1, scope: !520, file: !269, line: 2556, type: !5)
!3795 = !DILocation(line: 0, scope: !520)
!3796 = !DILocalVariable(name: "end", arg: 2, scope: !520, file: !269, line: 2556, type: !53)
!3797 = !DILocation(line: 2592, column: 39, scope: !520)
!3798 = !DILocation(line: 2592, column: 47, scope: !520)
!3799 = !DILocation(line: 2592, column: 21, scope: !520)
!3800 = !DILocalVariable(name: "rar", scope: !520, file: !269, line: 2592, type: !267)
!3801 = !DILocation(line: 2593, column: 30, scope: !520)
!3802 = !DILocalVariable(name: "br", scope: !520, file: !269, line: 2593, type: !3137)
!3803 = !DILocation(line: 2595, column: 12, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !520, file: !269, line: 2595, column: 7)
!3805 = !DILocation(line: 2595, column: 24, scope: !3804)
!3806 = !DILocation(line: 2595, column: 7, scope: !520)
!3807 = !DILocation(line: 2596, column: 16, scope: !3804)
!3808 = !DILocation(line: 2596, column: 5, scope: !3804)
!3809 = !DILocation(line: 2598, column: 3, scope: !520)
!3810 = !DILocation(line: 2600, column: 14, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3812, file: !269, line: 2600, column: 9)
!3812 = distinct !DILexicalBlock(scope: !520, file: !269, line: 2599, column: 3)
!3813 = !DILocation(line: 2600, column: 9, scope: !3811)
!3814 = !DILocation(line: 2600, column: 32, scope: !3811)
!3815 = !DILocation(line: 2601, column: 27, scope: !3811)
!3816 = !DILocation(line: 2601, column: 7, scope: !3811)
!3817 = !DILocation(line: 2601, column: 40, scope: !3811)
!3818 = !DILocation(line: 2601, column: 35, scope: !3811)
!3819 = !DILocation(line: 2601, column: 33, scope: !3811)
!3820 = !DILocation(line: 2601, column: 51, scope: !3811)
!3821 = !DILocation(line: 2600, column: 9, scope: !3812)
!3822 = !DILocation(line: 2603, column: 33, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3811, file: !269, line: 2602, column: 5)
!3824 = !DILocation(line: 2603, column: 50, scope: !3823)
!3825 = !DILocation(line: 2603, column: 7, scope: !3823)
!3826 = !DILocation(line: 2604, column: 12, scope: !3823)
!3827 = !DILocation(line: 2604, column: 30, scope: !3823)
!3828 = !DILocation(line: 2605, column: 5, scope: !3823)
!3829 = !DILocation(line: 2607, column: 13, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3812, file: !269, line: 2607, column: 8)
!3831 = !DILocation(line: 2607, column: 8, scope: !3830)
!3832 = !DILocation(line: 2607, column: 27, scope: !3830)
!3833 = !DILocation(line: 2607, column: 35, scope: !3830)
!3834 = !DILocation(line: 2607, column: 30, scope: !3830)
!3835 = !DILocation(line: 2607, column: 53, scope: !3830)
!3836 = !DILocation(line: 2608, column: 27, scope: !3830)
!3837 = !DILocation(line: 2608, column: 7, scope: !3830)
!3838 = !DILocation(line: 2608, column: 33, scope: !3830)
!3839 = !DILocation(line: 2607, column: 8, scope: !3812)
!3840 = !DILocation(line: 2609, column: 34, scope: !3830)
!3841 = !DILocation(line: 2609, column: 14, scope: !3830)
!3842 = !DILocation(line: 2609, column: 7, scope: !3830)
!3843 = !DILocation(line: 2611, column: 45, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3812, file: !269, line: 2611, column: 9)
!3845 = !DILocation(line: 2611, column: 19, scope: !3844)
!3846 = !DILocalVariable(name: "symbol", scope: !520, file: !269, line: 2590, type: !24)
!3847 = !DILocation(line: 2611, column: 56, scope: !3844)
!3848 = !DILocation(line: 2611, column: 9, scope: !3812)
!3849 = !DILocation(line: 2612, column: 7, scope: !3844)
!3850 = !DILocation(line: 2613, column: 10, scope: !3812)
!3851 = !DILocation(line: 2613, column: 28, scope: !3812)
!3852 = !DILocation(line: 2615, column: 16, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3812, file: !269, line: 2615, column: 9)
!3854 = !DILocation(line: 2615, column: 9, scope: !3812)
!3855 = !DILocation(line: 2617, column: 30, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3853, file: !269, line: 2616, column: 5)
!3857 = !DILocation(line: 2617, column: 7, scope: !3856)
!3858 = !DILocation(line: 2618, column: 7, scope: !3856)
!3859 = distinct !{!3859, !3809, !3860}
!3860 = !DILocation(line: 2771, column: 3, scope: !520)
!3861 = !DILocation(line: 2620, column: 21, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3853, file: !269, line: 2620, column: 14)
!3863 = !DILocation(line: 2620, column: 14, scope: !3853)
!3864 = !DILocation(line: 2622, column: 12, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !269, line: 2622, column: 11)
!3866 = distinct !DILexicalBlock(scope: !3862, file: !269, line: 2621, column: 5)
!3867 = !DILocation(line: 2622, column: 11, scope: !3866)
!3868 = !DILocation(line: 2623, column: 9, scope: !3865)
!3869 = !DILocation(line: 2624, column: 18, scope: !3866)
!3870 = !DILocation(line: 2624, column: 17, scope: !3866)
!3871 = !DILocalVariable(name: "newfile", scope: !520, file: !269, line: 2591, type: !318)
!3872 = !DILocation(line: 2625, column: 7, scope: !3866)
!3873 = !DILocation(line: 2627, column: 10, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3866, file: !269, line: 2627, column: 10)
!3875 = !DILocation(line: 2627, column: 10, scope: !3866)
!3876 = !DILocation(line: 2629, column: 14, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3874, file: !269, line: 2628, column: 7)
!3878 = !DILocation(line: 2629, column: 30, scope: !3877)
!3879 = !DILocation(line: 2630, column: 14, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3877, file: !269, line: 2630, column: 13)
!3881 = !DILocation(line: 2630, column: 13, scope: !3877)
!3882 = !DILocation(line: 2631, column: 11, scope: !3880)
!3883 = !DILocation(line: 2632, column: 32, scope: !3877)
!3884 = !DILocation(line: 2632, column: 14, scope: !3877)
!3885 = !DILocation(line: 2632, column: 30, scope: !3877)
!3886 = !DILocation(line: 2633, column: 9, scope: !3877)
!3887 = !DILocation(line: 2634, column: 36, scope: !3877)
!3888 = !DILocation(line: 2634, column: 16, scope: !3877)
!3889 = !DILocation(line: 2634, column: 9, scope: !3877)
!3890 = !DILocation(line: 2638, column: 13, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !269, line: 2638, column: 13)
!3892 = distinct !DILexicalBlock(scope: !3874, file: !269, line: 2637, column: 7)
!3893 = !DILocation(line: 2638, column: 28, scope: !3891)
!3894 = !DILocation(line: 2638, column: 13, scope: !3892)
!3895 = !DILocation(line: 2639, column: 11, scope: !3891)
!3896 = !DILocation(line: 2640, column: 9, scope: !3892)
!3897 = !DILocation(line: 2643, column: 19, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3862, file: !269, line: 2643, column: 13)
!3899 = !DILocation(line: 2643, column: 13, scope: !3862)
!3900 = !DILocation(line: 2645, column: 29, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3898, file: !269, line: 2644, column: 5)
!3902 = !DILocation(line: 2645, column: 7, scope: !3901)
!3903 = !DILocation(line: 2647, column: 7, scope: !3901)
!3904 = !DILocation(line: 2649, column: 19, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3898, file: !269, line: 2649, column: 13)
!3906 = !DILocation(line: 2649, column: 13, scope: !3898)
!3907 = !DILocation(line: 2651, column: 15, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !269, line: 2651, column: 10)
!3909 = distinct !DILexicalBlock(scope: !3905, file: !269, line: 2650, column: 5)
!3910 = !DILocation(line: 2651, column: 26, scope: !3908)
!3911 = !DILocation(line: 2651, column: 10, scope: !3909)
!3912 = !DILocation(line: 2652, column: 9, scope: !3908)
!3913 = !DILocation(line: 2654, column: 19, scope: !3909)
!3914 = !DILocalVariable(name: "offs", scope: !520, file: !269, line: 2590, type: !24)
!3915 = !DILocation(line: 2655, column: 18, scope: !3909)
!3916 = !DILocalVariable(name: "len", scope: !520, file: !269, line: 2590, type: !24)
!3917 = !DILocation(line: 2656, column: 5, scope: !3909)
!3918 = !DILocation(line: 2657, column: 21, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3905, file: !269, line: 2657, column: 14)
!3920 = !DILocation(line: 2657, column: 14, scope: !3905)
!3921 = !DILocation(line: 2659, column: 26, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3919, file: !269, line: 2658, column: 5)
!3923 = !DILocalVariable(name: "offsindex", scope: !520, file: !269, line: 2590, type: !24)
!3924 = !DILocation(line: 2660, column: 19, scope: !3922)
!3925 = !DILocation(line: 2660, column: 14, scope: !3922)
!3926 = !DILocation(line: 2662, column: 50, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3922, file: !269, line: 2662, column: 11)
!3928 = !DILocation(line: 2662, column: 24, scope: !3927)
!3929 = !DILocalVariable(name: "lensymbol", scope: !520, file: !269, line: 2590, type: !24)
!3930 = !DILocation(line: 2662, column: 63, scope: !3927)
!3931 = !DILocation(line: 2662, column: 11, scope: !3922)
!3932 = !DILocation(line: 2663, column: 9, scope: !3927)
!3933 = !DILocation(line: 2664, column: 21, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3922, file: !269, line: 2664, column: 11)
!3935 = !DILocation(line: 2664, column: 11, scope: !3922)
!3936 = !DILocation(line: 2665, column: 9, scope: !3934)
!3937 = !DILocation(line: 2666, column: 21, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3922, file: !269, line: 2666, column: 11)
!3939 = !DILocation(line: 2666, column: 11, scope: !3922)
!3940 = !DILocation(line: 2667, column: 9, scope: !3938)
!3941 = !DILocation(line: 2668, column: 13, scope: !3922)
!3942 = !DILocation(line: 2668, column: 36, scope: !3922)
!3943 = !DILocation(line: 2669, column: 11, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3922, file: !269, line: 2669, column: 11)
!3945 = !DILocation(line: 2669, column: 33, scope: !3944)
!3946 = !DILocation(line: 2669, column: 11, scope: !3922)
!3947 = !DILocation(line: 2670, column: 14, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3949, file: !269, line: 2670, column: 13)
!3949 = distinct !DILexicalBlock(scope: !3944, file: !269, line: 2669, column: 38)
!3950 = !DILocation(line: 2670, column: 13, scope: !3949)
!3951 = !DILocation(line: 2671, column: 11, scope: !3948)
!3952 = !DILocation(line: 2672, column: 16, scope: !3949)
!3953 = !DILocation(line: 2672, column: 13, scope: !3949)
!3954 = !DILocation(line: 2673, column: 9, scope: !3949)
!3955 = !DILocation(line: 2674, column: 7, scope: !3949)
!3956 = !DILocation(line: 0, scope: !3922)
!3957 = !DILocalVariable(name: "i", scope: !520, file: !269, line: 2590, type: !24)
!3958 = !DILocation(line: 2676, column: 12, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3922, file: !269, line: 2676, column: 7)
!3960 = !DILocation(line: 0, scope: !3959)
!3961 = !DILocation(line: 2676, column: 29, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3959, file: !269, line: 2676, column: 7)
!3963 = !DILocation(line: 2676, column: 7, scope: !3959)
!3964 = !DILocation(line: 2677, column: 34, scope: !3962)
!3965 = !DILocation(line: 2677, column: 45, scope: !3962)
!3966 = !DILocation(line: 2677, column: 29, scope: !3962)
!3967 = !DILocation(line: 2677, column: 14, scope: !3962)
!3968 = !DILocation(line: 2677, column: 9, scope: !3962)
!3969 = !DILocation(line: 2677, column: 27, scope: !3962)
!3970 = !DILocation(line: 2676, column: 35, scope: !3962)
!3971 = !DILocation(line: 2676, column: 7, scope: !3962)
!3972 = distinct !{!3972, !3963, !3973, !650}
!3973 = !DILocation(line: 2677, column: 47, scope: !3959)
!3974 = !DILocation(line: 2678, column: 12, scope: !3922)
!3975 = !DILocation(line: 2678, column: 7, scope: !3922)
!3976 = !DILocation(line: 2678, column: 25, scope: !3922)
!3977 = !DILocation(line: 2679, column: 5, scope: !3922)
!3978 = !DILocation(line: 2680, column: 19, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3919, file: !269, line: 2680, column: 13)
!3980 = !DILocation(line: 2680, column: 13, scope: !3919)
!3981 = !DILocation(line: 2682, column: 31, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3979, file: !269, line: 2681, column: 5)
!3983 = !DILocation(line: 2682, column: 14, scope: !3982)
!3984 = !DILocation(line: 2682, column: 37, scope: !3982)
!3985 = !DILocation(line: 2683, column: 26, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3982, file: !269, line: 2683, column: 10)
!3987 = !DILocation(line: 2683, column: 10, scope: !3986)
!3988 = !DILocation(line: 2683, column: 32, scope: !3986)
!3989 = !DILocation(line: 2683, column: 10, scope: !3982)
!3990 = !DILocation(line: 2684, column: 14, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !269, line: 2684, column: 13)
!3992 = distinct !DILexicalBlock(scope: !3986, file: !269, line: 2683, column: 37)
!3993 = !DILocation(line: 2684, column: 13, scope: !3992)
!3994 = !DILocation(line: 2685, column: 11, scope: !3991)
!3995 = !DILocation(line: 2686, column: 17, scope: !3992)
!3996 = !DILocation(line: 2686, column: 14, scope: !3992)
!3997 = !DILocation(line: 2687, column: 9, scope: !3992)
!3998 = !DILocation(line: 2688, column: 7, scope: !3992)
!3999 = !DILocation(line: 0, scope: !3982)
!4000 = !DILocation(line: 2692, column: 11, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3982, file: !269, line: 2692, column: 7)
!4002 = !DILocation(line: 0, scope: !4001)
!4003 = !DILocation(line: 2692, column: 20, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4001, file: !269, line: 2692, column: 7)
!4005 = !DILocation(line: 2692, column: 7, scope: !4001)
!4006 = !DILocation(line: 2693, column: 34, scope: !4004)
!4007 = !DILocation(line: 2693, column: 45, scope: !4004)
!4008 = !DILocation(line: 2693, column: 29, scope: !4004)
!4009 = !DILocation(line: 2693, column: 14, scope: !4004)
!4010 = !DILocation(line: 2693, column: 9, scope: !4004)
!4011 = !DILocation(line: 2693, column: 27, scope: !4004)
!4012 = !DILocation(line: 2692, column: 26, scope: !4004)
!4013 = !DILocation(line: 2692, column: 7, scope: !4004)
!4014 = distinct !{!4014, !4005, !4015, !650}
!4015 = !DILocation(line: 2693, column: 47, scope: !4001)
!4016 = !DILocation(line: 2694, column: 12, scope: !3982)
!4017 = !DILocation(line: 2694, column: 7, scope: !3982)
!4018 = !DILocation(line: 2694, column: 25, scope: !3982)
!4019 = !DILocation(line: 2695, column: 5, scope: !3982)
!4020 = !DILocation(line: 2698, column: 17, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4022, file: !269, line: 2698, column: 11)
!4022 = distinct !DILexicalBlock(scope: !3979, file: !269, line: 2697, column: 5)
!4023 = !DILocation(line: 2698, column: 22, scope: !4021)
!4024 = !DILocation(line: 2698, column: 11, scope: !4022)
!4025 = !DILocation(line: 2699, column: 9, scope: !4021)
!4026 = !DILocation(line: 2700, column: 17, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4022, file: !269, line: 2700, column: 11)
!4028 = !DILocation(line: 2700, column: 22, scope: !4027)
!4029 = !DILocation(line: 2700, column: 11, scope: !4022)
!4030 = !DILocation(line: 2701, column: 9, scope: !4027)
!4031 = !DILocation(line: 2702, column: 31, scope: !4022)
!4032 = !DILocation(line: 2702, column: 13, scope: !4022)
!4033 = !DILocation(line: 2702, column: 36, scope: !4022)
!4034 = !DILocation(line: 2703, column: 27, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4022, file: !269, line: 2703, column: 10)
!4036 = !DILocation(line: 2703, column: 10, scope: !4035)
!4037 = !DILocation(line: 2703, column: 33, scope: !4035)
!4038 = !DILocation(line: 2703, column: 10, scope: !4022)
!4039 = !DILocation(line: 2704, column: 14, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !269, line: 2704, column: 13)
!4041 = distinct !DILexicalBlock(scope: !4035, file: !269, line: 2703, column: 38)
!4042 = !DILocation(line: 2704, column: 13, scope: !4041)
!4043 = !DILocation(line: 2705, column: 11, scope: !4040)
!4044 = !DILocation(line: 2706, column: 16, scope: !4041)
!4045 = !DILocation(line: 2706, column: 13, scope: !4041)
!4046 = !DILocation(line: 2707, column: 9, scope: !4041)
!4047 = !DILocation(line: 2708, column: 7, scope: !4041)
!4048 = !DILocation(line: 0, scope: !4022)
!4049 = !DILocation(line: 2710, column: 51, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4022, file: !269, line: 2710, column: 11)
!4051 = !DILocation(line: 2710, column: 25, scope: !4050)
!4052 = !DILocalVariable(name: "offssymbol", scope: !520, file: !269, line: 2590, type: !24)
!4053 = !DILocation(line: 2710, column: 64, scope: !4050)
!4054 = !DILocation(line: 2710, column: 11, scope: !4022)
!4055 = !DILocation(line: 2711, column: 9, scope: !4050)
!4056 = !DILocation(line: 2712, column: 22, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4022, file: !269, line: 2712, column: 11)
!4058 = !DILocation(line: 2712, column: 11, scope: !4022)
!4059 = !DILocation(line: 2713, column: 9, scope: !4057)
!4060 = !DILocation(line: 2714, column: 22, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4022, file: !269, line: 2714, column: 11)
!4062 = !DILocation(line: 2714, column: 11, scope: !4022)
!4063 = !DILocation(line: 2715, column: 9, scope: !4061)
!4064 = !DILocation(line: 2716, column: 14, scope: !4022)
!4065 = !DILocation(line: 2716, column: 37, scope: !4022)
!4066 = !DILocation(line: 2717, column: 10, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4022, file: !269, line: 2717, column: 10)
!4068 = !DILocation(line: 2717, column: 33, scope: !4067)
!4069 = !DILocation(line: 2717, column: 10, scope: !4022)
!4070 = !DILocation(line: 2719, column: 23, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4072, file: !269, line: 2719, column: 12)
!4072 = distinct !DILexicalBlock(scope: !4067, file: !269, line: 2718, column: 7)
!4073 = !DILocation(line: 2719, column: 12, scope: !4072)
!4074 = !DILocation(line: 2721, column: 14, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !269, line: 2721, column: 14)
!4076 = distinct !DILexicalBlock(scope: !4071, file: !269, line: 2720, column: 9)
!4077 = !DILocation(line: 2721, column: 37, scope: !4075)
!4078 = !DILocation(line: 2721, column: 14, scope: !4076)
!4079 = !DILocation(line: 2722, column: 18, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4081, file: !269, line: 2722, column: 17)
!4081 = distinct !DILexicalBlock(scope: !4075, file: !269, line: 2721, column: 42)
!4082 = !DILocation(line: 2722, column: 17, scope: !4081)
!4083 = !DILocation(line: 2723, column: 15, scope: !4080)
!4084 = !DILocation(line: 2724, column: 21, scope: !4081)
!4085 = !DILocation(line: 2724, column: 65, scope: !4081)
!4086 = !DILocation(line: 2724, column: 18, scope: !4081)
!4087 = !DILocation(line: 2725, column: 13, scope: !4081)
!4088 = !DILocation(line: 2726, column: 4, scope: !4081)
!4089 = !DILocation(line: 2728, column: 19, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4076, file: !269, line: 2728, column: 14)
!4091 = !DILocation(line: 2728, column: 39, scope: !4090)
!4092 = !DILocation(line: 2728, column: 14, scope: !4076)
!4093 = !DILocation(line: 2730, column: 18, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4090, file: !269, line: 2729, column: 11)
!4095 = !DILocation(line: 2730, column: 37, scope: !4094)
!4096 = !DILocation(line: 2731, column: 26, scope: !4094)
!4097 = !DILocation(line: 2731, column: 18, scope: !4094)
!4098 = !DILocation(line: 2732, column: 11, scope: !4094)
!4099 = !DILocation(line: 2736, column: 41, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4101, file: !269, line: 2735, column: 17)
!4101 = distinct !DILexicalBlock(scope: !4090, file: !269, line: 2734, column: 11)
!4102 = !DILocation(line: 2736, column: 15, scope: !4100)
!4103 = !DILocalVariable(name: "lowoffsetsymbol", scope: !520, file: !269, line: 2590, type: !24)
!4104 = !DILocation(line: 2736, column: 57, scope: !4100)
!4105 = !DILocation(line: 2735, column: 17, scope: !4101)
!4106 = !DILocation(line: 2737, column: 15, scope: !4100)
!4107 = !DILocation(line: 2738, column: 32, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4101, file: !269, line: 2738, column: 16)
!4109 = !DILocation(line: 2738, column: 16, scope: !4101)
!4110 = !DILocation(line: 2740, column: 20, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4108, file: !269, line: 2739, column: 13)
!4112 = !DILocation(line: 2740, column: 40, scope: !4111)
!4113 = !DILocation(line: 2741, column: 28, scope: !4111)
!4114 = !DILocation(line: 2741, column: 20, scope: !4111)
!4115 = !DILocation(line: 2742, column: 13, scope: !4111)
!4116 = !DILocation(line: 2745, column: 20, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4108, file: !269, line: 2744, column: 13)
!4118 = !DILocation(line: 2746, column: 20, scope: !4117)
!4119 = !DILocation(line: 2746, column: 34, scope: !4117)
!4120 = !DILocation(line: 0, scope: !4108)
!4121 = !DILocation(line: 0, scope: !4090)
!4122 = !DILocation(line: 2749, column: 9, scope: !4076)
!4123 = !DILocation(line: 2751, column: 16, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4125, file: !269, line: 2751, column: 15)
!4125 = distinct !DILexicalBlock(scope: !4071, file: !269, line: 2750, column: 14)
!4126 = !DILocation(line: 2751, column: 15, scope: !4125)
!4127 = !DILocation(line: 2752, column: 13, scope: !4124)
!4128 = !DILocation(line: 2753, column: 19, scope: !4125)
!4129 = !DILocation(line: 2753, column: 16, scope: !4125)
!4130 = !DILocation(line: 2754, column: 11, scope: !4125)
!4131 = !DILocation(line: 0, scope: !4071)
!4132 = !DILocation(line: 2756, column: 7, scope: !4072)
!4133 = !DILocation(line: 2758, column: 16, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4022, file: !269, line: 2758, column: 11)
!4135 = !DILocation(line: 2758, column: 11, scope: !4022)
!4136 = !DILocation(line: 2759, column: 12, scope: !4134)
!4137 = !DILocation(line: 2759, column: 9, scope: !4134)
!4138 = !DILocation(line: 2760, column: 16, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4022, file: !269, line: 2760, column: 11)
!4140 = !DILocation(line: 2760, column: 11, scope: !4022)
!4141 = !DILocation(line: 2761, column: 12, scope: !4139)
!4142 = !DILocation(line: 2761, column: 9, scope: !4139)
!4143 = !DILocation(line: 2763, column: 11, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4022, file: !269, line: 2763, column: 7)
!4145 = !DILocation(line: 0, scope: !4144)
!4146 = !DILocation(line: 2763, column: 20, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4144, file: !269, line: 2763, column: 7)
!4148 = !DILocation(line: 2763, column: 7, scope: !4144)
!4149 = !DILocation(line: 2764, column: 34, scope: !4147)
!4150 = !DILocation(line: 2764, column: 45, scope: !4147)
!4151 = !DILocation(line: 2764, column: 29, scope: !4147)
!4152 = !DILocation(line: 2764, column: 14, scope: !4147)
!4153 = !DILocation(line: 2764, column: 9, scope: !4147)
!4154 = !DILocation(line: 2764, column: 27, scope: !4147)
!4155 = !DILocation(line: 2763, column: 26, scope: !4147)
!4156 = !DILocation(line: 2763, column: 7, scope: !4147)
!4157 = distinct !{!4157, !4148, !4158, !650}
!4158 = !DILocation(line: 2764, column: 47, scope: !4144)
!4159 = !DILocation(line: 2765, column: 12, scope: !4022)
!4160 = !DILocation(line: 2765, column: 7, scope: !4022)
!4161 = !DILocation(line: 2765, column: 25, scope: !4022)
!4162 = !DILocation(line: 0, scope: !3979)
!4163 = !DILocation(line: 0, scope: !3919)
!4164 = !DILocation(line: 0, scope: !3905)
!4165 = !DILocation(line: 2768, column: 10, scope: !3812)
!4166 = !DILocation(line: 2768, column: 21, scope: !3812)
!4167 = !DILocation(line: 2769, column: 10, scope: !3812)
!4168 = !DILocation(line: 2769, column: 21, scope: !3812)
!4169 = !DILocation(line: 2770, column: 10, scope: !3812)
!4170 = !DILocation(line: 2770, column: 28, scope: !3812)
!4171 = !DILabel(scope: !520, name: "truncated_data", file: !269, line: 2772)
!4172 = !DILocation(line: 2772, column: 1, scope: !520)
!4173 = !DILocation(line: 2773, column: 25, scope: !520)
!4174 = !DILocation(line: 2773, column: 3, scope: !520)
!4175 = !DILocation(line: 2775, column: 8, scope: !520)
!4176 = !DILocation(line: 2775, column: 14, scope: !520)
!4177 = !DILocation(line: 2776, column: 3, scope: !520)
!4178 = !DILabel(scope: !520, name: "bad_data", file: !269, line: 2777)
!4179 = !DILocation(line: 2777, column: 1, scope: !520)
!4180 = !DILocation(line: 2778, column: 25, scope: !520)
!4181 = !DILocation(line: 2778, column: 3, scope: !520)
!4182 = !DILocation(line: 2780, column: 3, scope: !520)
!4183 = !DILocation(line: 2781, column: 1, scope: !520)
!4184 = distinct !DISubprogram(name: "lzss_offset_for_position", scope: !269, file: !269, line: 535, type: !4185, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!24, !4187, !53}
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!4188 = !DILocalVariable(name: "lzss", arg: 1, scope: !4184, file: !269, line: 535, type: !4187)
!4189 = !DILocation(line: 0, scope: !4184)
!4190 = !DILocalVariable(name: "pos", arg: 2, scope: !4184, file: !269, line: 535, type: !53)
!4191 = !DILocation(line: 537, column: 28, scope: !4184)
!4192 = !DILocation(line: 537, column: 22, scope: !4184)
!4193 = !DILocation(line: 537, column: 20, scope: !4184)
!4194 = !DILocation(line: 537, column: 10, scope: !4184)
!4195 = !DILocation(line: 537, column: 3, scope: !4184)
!4196 = distinct !DISubprogram(name: "lzss_size", scope: !269, file: !269, line: 529, type: !4197, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!24, !4187}
!4199 = !DILocalVariable(name: "lzss", arg: 1, scope: !4196, file: !269, line: 529, type: !4187)
!4200 = !DILocation(line: 0, scope: !4196)
!4201 = !DILocation(line: 531, column: 16, scope: !4196)
!4202 = !DILocation(line: 531, column: 21, scope: !4196)
!4203 = !DILocation(line: 531, column: 3, scope: !4196)
!4204 = distinct !DISubprogram(name: "rar_br_fillup", scope: !269, file: !269, line: 390, type: !3135, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!4205 = !DILocalVariable(name: "a", arg: 1, scope: !4204, file: !269, line: 390, type: !5)
!4206 = !DILocation(line: 0, scope: !4204)
!4207 = !DILocalVariable(name: "br", arg: 2, scope: !4204, file: !269, line: 390, type: !3137)
!4208 = !DILocation(line: 392, column: 39, scope: !4204)
!4209 = !DILocation(line: 392, column: 47, scope: !4204)
!4210 = !DILocation(line: 392, column: 21, scope: !4204)
!4211 = !DILocalVariable(name: "rar", scope: !4204, file: !269, line: 392, type: !267)
!4212 = !DILocation(line: 393, column: 28, scope: !4204)
!4213 = !DILocation(line: 393, column: 24, scope: !4204)
!4214 = !DILocation(line: 393, column: 22, scope: !4204)
!4215 = !DILocation(line: 393, column: 11, scope: !4204)
!4216 = !DILocalVariable(name: "n", scope: !4204, file: !269, line: 393, type: !24)
!4217 = !DILocation(line: 395, column: 3, scope: !4204)
!4218 = !DILocation(line: 396, column: 15, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !269, line: 395, column: 12)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !269, line: 395, column: 3)
!4221 = distinct !DILexicalBlock(scope: !4204, file: !269, line: 395, column: 3)
!4222 = !DILocation(line: 396, column: 5, scope: !4219)
!4223 = !DILocation(line: 398, column: 15, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4225, file: !269, line: 398, column: 11)
!4225 = distinct !DILexicalBlock(scope: !4219, file: !269, line: 396, column: 21)
!4226 = !DILocation(line: 398, column: 24, scope: !4224)
!4227 = !DILocation(line: 398, column: 11, scope: !4225)
!4228 = !DILocation(line: 400, column: 28, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4224, file: !269, line: 398, column: 30)
!4230 = !DILocation(line: 400, column: 24, scope: !4229)
!4231 = !DILocation(line: 400, column: 14, scope: !4229)
!4232 = !DILocation(line: 400, column: 40, scope: !4229)
!4233 = !DILocation(line: 401, column: 28, scope: !4229)
!4234 = !DILocation(line: 401, column: 24, scope: !4229)
!4235 = !DILocation(line: 401, column: 14, scope: !4229)
!4236 = !DILocation(line: 401, column: 40, scope: !4229)
!4237 = !DILocation(line: 400, column: 46, scope: !4229)
!4238 = !DILocation(line: 402, column: 28, scope: !4229)
!4239 = !DILocation(line: 402, column: 24, scope: !4229)
!4240 = !DILocation(line: 402, column: 14, scope: !4229)
!4241 = !DILocation(line: 402, column: 40, scope: !4229)
!4242 = !DILocation(line: 401, column: 46, scope: !4229)
!4243 = !DILocation(line: 403, column: 28, scope: !4229)
!4244 = !DILocation(line: 403, column: 24, scope: !4229)
!4245 = !DILocation(line: 403, column: 14, scope: !4229)
!4246 = !DILocation(line: 403, column: 40, scope: !4229)
!4247 = !DILocation(line: 402, column: 46, scope: !4229)
!4248 = !DILocation(line: 404, column: 28, scope: !4229)
!4249 = !DILocation(line: 404, column: 24, scope: !4229)
!4250 = !DILocation(line: 404, column: 14, scope: !4229)
!4251 = !DILocation(line: 404, column: 40, scope: !4229)
!4252 = !DILocation(line: 404, column: 13, scope: !4229)
!4253 = !DILocation(line: 403, column: 46, scope: !4229)
!4254 = !DILocation(line: 405, column: 28, scope: !4229)
!4255 = !DILocation(line: 405, column: 24, scope: !4229)
!4256 = !DILocation(line: 405, column: 14, scope: !4229)
!4257 = !DILocation(line: 405, column: 40, scope: !4229)
!4258 = !DILocation(line: 405, column: 13, scope: !4229)
!4259 = !DILocation(line: 404, column: 46, scope: !4229)
!4260 = !DILocation(line: 406, column: 28, scope: !4229)
!4261 = !DILocation(line: 406, column: 24, scope: !4229)
!4262 = !DILocation(line: 406, column: 14, scope: !4229)
!4263 = !DILocation(line: 406, column: 40, scope: !4229)
!4264 = !DILocation(line: 406, column: 13, scope: !4229)
!4265 = !DILocation(line: 405, column: 46, scope: !4229)
!4266 = !DILocation(line: 407, column: 28, scope: !4229)
!4267 = !DILocation(line: 407, column: 24, scope: !4229)
!4268 = !DILocation(line: 407, column: 14, scope: !4229)
!4269 = !DILocation(line: 406, column: 45, scope: !4229)
!4270 = !DILocation(line: 399, column: 13, scope: !4229)
!4271 = !DILocation(line: 399, column: 26, scope: !4229)
!4272 = !DILocation(line: 408, column: 13, scope: !4229)
!4273 = !DILocation(line: 408, column: 21, scope: !4229)
!4274 = !DILocation(line: 409, column: 13, scope: !4229)
!4275 = !DILocation(line: 409, column: 22, scope: !4229)
!4276 = !DILocation(line: 410, column: 13, scope: !4229)
!4277 = !DILocation(line: 410, column: 25, scope: !4229)
!4278 = !DILocation(line: 411, column: 14, scope: !4229)
!4279 = !DILocation(line: 411, column: 31, scope: !4229)
!4280 = !DILocation(line: 412, column: 14, scope: !4229)
!4281 = !DILocation(line: 412, column: 30, scope: !4229)
!4282 = !DILocation(line: 413, column: 9, scope: !4229)
!4283 = !DILocation(line: 415, column: 7, scope: !4225)
!4284 = !DILocation(line: 417, column: 15, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4225, file: !269, line: 417, column: 11)
!4286 = !DILocation(line: 417, column: 24, scope: !4285)
!4287 = !DILocation(line: 417, column: 11, scope: !4225)
!4288 = !DILocation(line: 419, column: 17, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4285, file: !269, line: 417, column: 30)
!4290 = !DILocation(line: 419, column: 30, scope: !4289)
!4291 = !DILocation(line: 420, column: 28, scope: !4289)
!4292 = !DILocation(line: 420, column: 24, scope: !4289)
!4293 = !DILocation(line: 420, column: 14, scope: !4289)
!4294 = !DILocation(line: 420, column: 40, scope: !4289)
!4295 = !DILocation(line: 419, column: 37, scope: !4289)
!4296 = !DILocation(line: 421, column: 28, scope: !4289)
!4297 = !DILocation(line: 421, column: 24, scope: !4289)
!4298 = !DILocation(line: 421, column: 14, scope: !4289)
!4299 = !DILocation(line: 421, column: 40, scope: !4289)
!4300 = !DILocation(line: 420, column: 46, scope: !4289)
!4301 = !DILocation(line: 422, column: 28, scope: !4289)
!4302 = !DILocation(line: 422, column: 24, scope: !4289)
!4303 = !DILocation(line: 422, column: 14, scope: !4289)
!4304 = !DILocation(line: 422, column: 40, scope: !4289)
!4305 = !DILocation(line: 421, column: 46, scope: !4289)
!4306 = !DILocation(line: 423, column: 28, scope: !4289)
!4307 = !DILocation(line: 423, column: 24, scope: !4289)
!4308 = !DILocation(line: 423, column: 14, scope: !4289)
!4309 = !DILocation(line: 423, column: 40, scope: !4289)
!4310 = !DILocation(line: 423, column: 13, scope: !4289)
!4311 = !DILocation(line: 422, column: 46, scope: !4289)
!4312 = !DILocation(line: 424, column: 28, scope: !4289)
!4313 = !DILocation(line: 424, column: 24, scope: !4289)
!4314 = !DILocation(line: 424, column: 14, scope: !4289)
!4315 = !DILocation(line: 424, column: 40, scope: !4289)
!4316 = !DILocation(line: 424, column: 13, scope: !4289)
!4317 = !DILocation(line: 423, column: 46, scope: !4289)
!4318 = !DILocation(line: 425, column: 28, scope: !4289)
!4319 = !DILocation(line: 425, column: 24, scope: !4289)
!4320 = !DILocation(line: 425, column: 14, scope: !4289)
!4321 = !DILocation(line: 425, column: 40, scope: !4289)
!4322 = !DILocation(line: 425, column: 13, scope: !4289)
!4323 = !DILocation(line: 424, column: 46, scope: !4289)
!4324 = !DILocation(line: 426, column: 28, scope: !4289)
!4325 = !DILocation(line: 426, column: 24, scope: !4289)
!4326 = !DILocation(line: 426, column: 14, scope: !4289)
!4327 = !DILocation(line: 425, column: 45, scope: !4289)
!4328 = !DILocation(line: 418, column: 13, scope: !4289)
!4329 = !DILocation(line: 418, column: 26, scope: !4289)
!4330 = !DILocation(line: 427, column: 13, scope: !4289)
!4331 = !DILocation(line: 427, column: 21, scope: !4289)
!4332 = !DILocation(line: 428, column: 13, scope: !4289)
!4333 = !DILocation(line: 428, column: 22, scope: !4289)
!4334 = !DILocation(line: 429, column: 13, scope: !4289)
!4335 = !DILocation(line: 429, column: 25, scope: !4289)
!4336 = !DILocation(line: 430, column: 14, scope: !4289)
!4337 = !DILocation(line: 430, column: 31, scope: !4289)
!4338 = !DILocation(line: 431, column: 14, scope: !4289)
!4339 = !DILocation(line: 431, column: 30, scope: !4289)
!4340 = !DILocation(line: 432, column: 9, scope: !4289)
!4341 = !DILocation(line: 434, column: 7, scope: !4225)
!4342 = !DILocation(line: 436, column: 15, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4225, file: !269, line: 436, column: 11)
!4344 = !DILocation(line: 436, column: 24, scope: !4343)
!4345 = !DILocation(line: 436, column: 11, scope: !4225)
!4346 = !DILocation(line: 438, column: 17, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4343, file: !269, line: 436, column: 30)
!4348 = !DILocation(line: 438, column: 30, scope: !4347)
!4349 = !DILocation(line: 439, column: 28, scope: !4347)
!4350 = !DILocation(line: 439, column: 24, scope: !4347)
!4351 = !DILocation(line: 439, column: 14, scope: !4347)
!4352 = !DILocation(line: 439, column: 40, scope: !4347)
!4353 = !DILocation(line: 438, column: 37, scope: !4347)
!4354 = !DILocation(line: 440, column: 28, scope: !4347)
!4355 = !DILocation(line: 440, column: 24, scope: !4347)
!4356 = !DILocation(line: 440, column: 14, scope: !4347)
!4357 = !DILocation(line: 440, column: 40, scope: !4347)
!4358 = !DILocation(line: 439, column: 46, scope: !4347)
!4359 = !DILocation(line: 441, column: 28, scope: !4347)
!4360 = !DILocation(line: 441, column: 24, scope: !4347)
!4361 = !DILocation(line: 441, column: 14, scope: !4347)
!4362 = !DILocation(line: 441, column: 40, scope: !4347)
!4363 = !DILocation(line: 441, column: 13, scope: !4347)
!4364 = !DILocation(line: 440, column: 46, scope: !4347)
!4365 = !DILocation(line: 442, column: 28, scope: !4347)
!4366 = !DILocation(line: 442, column: 24, scope: !4347)
!4367 = !DILocation(line: 442, column: 14, scope: !4347)
!4368 = !DILocation(line: 442, column: 40, scope: !4347)
!4369 = !DILocation(line: 442, column: 13, scope: !4347)
!4370 = !DILocation(line: 441, column: 46, scope: !4347)
!4371 = !DILocation(line: 443, column: 28, scope: !4347)
!4372 = !DILocation(line: 443, column: 24, scope: !4347)
!4373 = !DILocation(line: 443, column: 14, scope: !4347)
!4374 = !DILocation(line: 443, column: 40, scope: !4347)
!4375 = !DILocation(line: 443, column: 13, scope: !4347)
!4376 = !DILocation(line: 442, column: 46, scope: !4347)
!4377 = !DILocation(line: 444, column: 28, scope: !4347)
!4378 = !DILocation(line: 444, column: 24, scope: !4347)
!4379 = !DILocation(line: 444, column: 14, scope: !4347)
!4380 = !DILocation(line: 443, column: 45, scope: !4347)
!4381 = !DILocation(line: 437, column: 13, scope: !4347)
!4382 = !DILocation(line: 437, column: 26, scope: !4347)
!4383 = !DILocation(line: 445, column: 13, scope: !4347)
!4384 = !DILocation(line: 445, column: 21, scope: !4347)
!4385 = !DILocation(line: 446, column: 13, scope: !4347)
!4386 = !DILocation(line: 446, column: 22, scope: !4347)
!4387 = !DILocation(line: 447, column: 13, scope: !4347)
!4388 = !DILocation(line: 447, column: 25, scope: !4347)
!4389 = !DILocation(line: 448, column: 14, scope: !4347)
!4390 = !DILocation(line: 448, column: 31, scope: !4347)
!4391 = !DILocation(line: 449, column: 14, scope: !4347)
!4392 = !DILocation(line: 449, column: 30, scope: !4347)
!4393 = !DILocation(line: 450, column: 9, scope: !4347)
!4394 = !DILocation(line: 452, column: 7, scope: !4225)
!4395 = !DILocation(line: 456, column: 7, scope: !4225)
!4396 = !DILocation(line: 458, column: 7, scope: !4225)
!4397 = !DILocation(line: 460, column: 13, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4219, file: !269, line: 460, column: 9)
!4399 = !DILocation(line: 460, column: 22, scope: !4398)
!4400 = !DILocation(line: 460, column: 9, scope: !4219)
!4401 = !DILocation(line: 462, column: 16, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !269, line: 462, column: 11)
!4403 = distinct !DILexicalBlock(scope: !4398, file: !269, line: 460, column: 28)
!4404 = !DILocation(line: 462, column: 33, scope: !4402)
!4405 = !DILocation(line: 462, column: 11, scope: !4403)
!4406 = !DILocation(line: 465, column: 40, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4402, file: !269, line: 462, column: 38)
!4408 = !DILocation(line: 465, column: 9, scope: !4407)
!4409 = !DILocation(line: 466, column: 14, scope: !4407)
!4410 = !DILocation(line: 466, column: 31, scope: !4407)
!4411 = !DILocation(line: 467, column: 7, scope: !4407)
!4412 = !DILocation(line: 468, column: 48, scope: !4403)
!4413 = !DILocation(line: 468, column: 21, scope: !4403)
!4414 = !DILocation(line: 468, column: 11, scope: !4403)
!4415 = !DILocation(line: 468, column: 19, scope: !4403)
!4416 = !DILocation(line: 469, column: 15, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4403, file: !269, line: 469, column: 11)
!4418 = !DILocation(line: 469, column: 23, scope: !4417)
!4419 = !DILocation(line: 469, column: 11, scope: !4403)
!4420 = !DILocation(line: 470, column: 9, scope: !4417)
!4421 = !DILocation(line: 471, column: 15, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4403, file: !269, line: 471, column: 11)
!4423 = !DILocation(line: 471, column: 24, scope: !4422)
!4424 = !DILocation(line: 471, column: 11, scope: !4403)
!4425 = !DILocation(line: 472, column: 9, scope: !4422)
!4426 = !DILocation(line: 473, column: 5, scope: !4403)
!4427 = !DILocation(line: 475, column: 13, scope: !4219)
!4428 = !DILocation(line: 475, column: 26, scope: !4219)
!4429 = !DILocation(line: 475, column: 39, scope: !4219)
!4430 = !DILocation(line: 475, column: 46, scope: !4219)
!4431 = !DILocation(line: 475, column: 34, scope: !4219)
!4432 = !DILocation(line: 475, column: 32, scope: !4219)
!4433 = !DILocation(line: 474, column: 9, scope: !4219)
!4434 = !DILocation(line: 474, column: 22, scope: !4219)
!4435 = !DILocation(line: 476, column: 9, scope: !4219)
!4436 = !DILocation(line: 476, column: 17, scope: !4219)
!4437 = !DILocation(line: 477, column: 9, scope: !4219)
!4438 = !DILocation(line: 477, column: 21, scope: !4219)
!4439 = !DILocation(line: 478, column: 7, scope: !4219)
!4440 = !DILocation(line: 479, column: 10, scope: !4219)
!4441 = !DILocation(line: 479, column: 26, scope: !4219)
!4442 = !DILocation(line: 480, column: 10, scope: !4219)
!4443 = !DILocation(line: 480, column: 25, scope: !4219)
!4444 = !DILocation(line: 395, column: 3, scope: !4220)
!4445 = distinct !{!4445, !4446, !4447}
!4446 = !DILocation(line: 395, column: 3, scope: !4221)
!4447 = !DILocation(line: 481, column: 3, scope: !4221)
!4448 = !DILocation(line: 0, scope: !4219)
!4449 = !DILocation(line: 482, column: 1, scope: !4204)
!4450 = distinct !DISubprogram(name: "free_codes", scope: !269, file: !269, line: 2252, type: !4451, scopeLine: 2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{null, !5}
!4453 = !DILocalVariable(name: "a", arg: 1, scope: !4450, file: !269, line: 2252, type: !5)
!4454 = !DILocation(line: 0, scope: !4450)
!4455 = !DILocation(line: 2254, column: 39, scope: !4450)
!4456 = !DILocation(line: 2254, column: 47, scope: !4450)
!4457 = !DILocation(line: 2254, column: 21, scope: !4450)
!4458 = !DILocalVariable(name: "rar", scope: !4450, file: !269, line: 2254, type: !267)
!4459 = !DILocation(line: 2255, column: 13, scope: !4450)
!4460 = !DILocation(line: 2255, column: 22, scope: !4450)
!4461 = !DILocation(line: 2255, column: 8, scope: !4450)
!4462 = !DILocation(line: 2255, column: 3, scope: !4450)
!4463 = !DILocation(line: 2256, column: 13, scope: !4450)
!4464 = !DILocation(line: 2256, column: 24, scope: !4450)
!4465 = !DILocation(line: 2256, column: 8, scope: !4450)
!4466 = !DILocation(line: 2256, column: 3, scope: !4450)
!4467 = !DILocation(line: 2257, column: 13, scope: !4450)
!4468 = !DILocation(line: 2257, column: 27, scope: !4450)
!4469 = !DILocation(line: 2257, column: 8, scope: !4450)
!4470 = !DILocation(line: 2257, column: 3, scope: !4450)
!4471 = !DILocation(line: 2258, column: 13, scope: !4450)
!4472 = !DILocation(line: 2258, column: 24, scope: !4450)
!4473 = !DILocation(line: 2258, column: 8, scope: !4450)
!4474 = !DILocation(line: 2258, column: 3, scope: !4450)
!4475 = !DILocation(line: 2259, column: 13, scope: !4450)
!4476 = !DILocation(line: 2259, column: 22, scope: !4450)
!4477 = !DILocation(line: 2259, column: 8, scope: !4450)
!4478 = !DILocation(line: 2259, column: 3, scope: !4450)
!4479 = !DILocation(line: 2260, column: 13, scope: !4450)
!4480 = !DILocation(line: 2260, column: 24, scope: !4450)
!4481 = !DILocation(line: 2260, column: 8, scope: !4450)
!4482 = !DILocation(line: 2260, column: 3, scope: !4450)
!4483 = !DILocation(line: 2261, column: 13, scope: !4450)
!4484 = !DILocation(line: 2261, column: 27, scope: !4450)
!4485 = !DILocation(line: 2261, column: 8, scope: !4450)
!4486 = !DILocation(line: 2261, column: 3, scope: !4450)
!4487 = !DILocation(line: 2262, column: 13, scope: !4450)
!4488 = !DILocation(line: 2262, column: 24, scope: !4450)
!4489 = !DILocation(line: 2262, column: 8, scope: !4450)
!4490 = !DILocation(line: 2262, column: 3, scope: !4450)
!4491 = !DILocation(line: 2263, column: 16, scope: !4450)
!4492 = !DILocation(line: 2263, column: 3, scope: !4450)
!4493 = !DILocation(line: 2264, column: 16, scope: !4450)
!4494 = !DILocation(line: 2264, column: 3, scope: !4450)
!4495 = !DILocation(line: 2265, column: 16, scope: !4450)
!4496 = !DILocation(line: 2265, column: 3, scope: !4450)
!4497 = !DILocation(line: 2266, column: 16, scope: !4450)
!4498 = !DILocation(line: 2266, column: 3, scope: !4450)
!4499 = !DILocation(line: 2267, column: 1, scope: !4450)
!4500 = distinct !DISubprogram(name: "ppmd_read", scope: !269, file: !269, line: 613, type: !489, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!4501 = !DILocalVariable(name: "p", arg: 1, scope: !4500, file: !269, line: 613, type: !125)
!4502 = !DILocation(line: 0, scope: !4500)
!4503 = !DILocation(line: 615, column: 29, scope: !4500)
!4504 = !DILocation(line: 615, column: 43, scope: !4500)
!4505 = !DILocalVariable(name: "a", scope: !4500, file: !269, line: 615, type: !5)
!4506 = !DILocation(line: 616, column: 39, scope: !4500)
!4507 = !DILocation(line: 616, column: 47, scope: !4500)
!4508 = !DILocation(line: 616, column: 21, scope: !4500)
!4509 = !DILocalVariable(name: "rar", scope: !4500, file: !269, line: 616, type: !267)
!4510 = !DILocation(line: 617, column: 30, scope: !4500)
!4511 = !DILocalVariable(name: "br", scope: !4500, file: !269, line: 617, type: !3137)
!4512 = !DILocation(line: 619, column: 8, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4500, file: !269, line: 619, column: 7)
!4514 = !DILocation(line: 619, column: 7, scope: !4500)
!4515 = !DILocation(line: 621, column: 27, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4513, file: !269, line: 620, column: 3)
!4517 = !DILocation(line: 621, column: 5, scope: !4516)
!4518 = !DILocation(line: 623, column: 10, scope: !4516)
!4519 = !DILocation(line: 623, column: 16, scope: !4516)
!4520 = !DILocation(line: 624, column: 5, scope: !4516)
!4521 = !DILocation(line: 626, column: 7, scope: !4500)
!4522 = !DILocalVariable(name: "b", scope: !4500, file: !269, line: 618, type: !406)
!4523 = !DILocation(line: 627, column: 3, scope: !4500)
!4524 = !DILocation(line: 628, column: 3, scope: !4500)
!4525 = !DILocation(line: 629, column: 1, scope: !4500)
!4526 = distinct !DISubprogram(name: "create_code", scope: !269, file: !269, line: 2343, type: !4527, scopeLine: 2345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!24, !5, !4529, !317, !24, !84}
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!4530 = !DILocalVariable(name: "a", arg: 1, scope: !4526, file: !269, line: 2343, type: !5)
!4531 = !DILocation(line: 0, scope: !4526)
!4532 = !DILocalVariable(name: "code", arg: 2, scope: !4526, file: !269, line: 2343, type: !4529)
!4533 = !DILocalVariable(name: "lengths", arg: 3, scope: !4526, file: !269, line: 2344, type: !317)
!4534 = !DILocalVariable(name: "numsymbols", arg: 4, scope: !4526, file: !269, line: 2344, type: !24)
!4535 = !DILocalVariable(name: "maxlength", arg: 5, scope: !4526, file: !269, line: 2344, type: !84)
!4536 = !DILocalVariable(name: "codebits", scope: !4526, file: !269, line: 2346, type: !24)
!4537 = !DILocalVariable(name: "symbolsleft", scope: !4526, file: !269, line: 2346, type: !24)
!4538 = !DILocation(line: 2348, column: 7, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4526, file: !269, line: 2348, column: 7)
!4540 = !DILocation(line: 2348, column: 22, scope: !4539)
!4541 = !DILocation(line: 2348, column: 7, scope: !4526)
!4542 = !DILocation(line: 2349, column: 27, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4539, file: !269, line: 2348, column: 27)
!4544 = !DILocation(line: 2349, column: 5, scope: !4543)
!4545 = !DILocation(line: 2351, column: 5, scope: !4543)
!4546 = !DILocation(line: 2353, column: 9, scope: !4526)
!4547 = !DILocation(line: 2353, column: 20, scope: !4526)
!4548 = !DILocation(line: 2354, column: 9, scope: !4526)
!4549 = !DILocation(line: 2354, column: 19, scope: !4526)
!4550 = !DILocation(line: 2355, column: 9, scope: !4526)
!4551 = !DILocation(line: 2355, column: 19, scope: !4526)
!4552 = !DILocalVariable(name: "i", scope: !4526, file: !269, line: 2346, type: !24)
!4553 = !DILocation(line: 2357, column: 7, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4526, file: !269, line: 2357, column: 3)
!4555 = !DILocation(line: 0, scope: !4554)
!4556 = !DILocation(line: 2357, column: 19, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4554, file: !269, line: 2357, column: 3)
!4558 = !DILocation(line: 2357, column: 16, scope: !4557)
!4559 = !DILocation(line: 2357, column: 3, scope: !4554)
!4560 = !DILocalVariable(name: "j", scope: !4526, file: !269, line: 2346, type: !24)
!4561 = !DILocation(line: 2359, column: 9, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4563, file: !269, line: 2359, column: 5)
!4563 = distinct !DILexicalBlock(scope: !4557, file: !269, line: 2358, column: 3)
!4564 = !DILocation(line: 0, scope: !4562)
!4565 = !DILocation(line: 2356, column: 12, scope: !4526)
!4566 = !DILocation(line: 2346, column: 27, scope: !4526)
!4567 = !DILocation(line: 2359, column: 18, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4562, file: !269, line: 2359, column: 5)
!4569 = !DILocation(line: 2359, column: 5, scope: !4562)
!4570 = !DILocation(line: 2361, column: 11, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !269, line: 2361, column: 11)
!4572 = distinct !DILexicalBlock(scope: !4568, file: !269, line: 2360, column: 5)
!4573 = !DILocation(line: 2361, column: 22, scope: !4571)
!4574 = !DILocation(line: 2361, column: 11, scope: !4572)
!4575 = !DILocation(line: 2361, column: 28, scope: !4571)
!4576 = !DILocation(line: 2362, column: 11, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4572, file: !269, line: 2362, column: 11)
!4578 = !DILocation(line: 2362, column: 46, scope: !4577)
!4579 = !DILocation(line: 2362, column: 11, scope: !4572)
!4580 = !DILocation(line: 2363, column: 9, scope: !4577)
!4581 = !DILocation(line: 2364, column: 15, scope: !4572)
!4582 = !DILocation(line: 2365, column: 11, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4572, file: !269, line: 2365, column: 11)
!4584 = !DILocation(line: 2365, column: 25, scope: !4583)
!4585 = !DILocation(line: 2365, column: 11, scope: !4572)
!4586 = !DILocation(line: 2365, column: 33, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4583, file: !269, line: 2365, column: 31)
!4588 = !DILocation(line: 2366, column: 5, scope: !4572)
!4589 = !DILocation(line: 2359, column: 33, scope: !4568)
!4590 = !DILocation(line: 2359, column: 5, scope: !4568)
!4591 = distinct !{!4591, !4569, !4592, !650}
!4592 = !DILocation(line: 2366, column: 5, scope: !4562)
!4593 = !DILocation(line: 2367, column: 14, scope: !4563)
!4594 = !DILocation(line: 2368, column: 3, scope: !4563)
!4595 = !DILocation(line: 2357, column: 31, scope: !4557)
!4596 = !DILocation(line: 2357, column: 3, scope: !4557)
!4597 = distinct !{!4597, !4559, !4598, !650}
!4598 = !DILocation(line: 2368, column: 3, scope: !4554)
!4599 = !DILocation(line: 2369, column: 3, scope: !4526)
!4600 = !DILocation(line: 2370, column: 1, scope: !4526)
!4601 = distinct !DISubprogram(name: "read_next_symbol", scope: !269, file: !269, line: 2271, type: !4602, scopeLine: 2272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!24, !5, !4529}
!4604 = !DILocalVariable(name: "a", arg: 1, scope: !4601, file: !269, line: 2271, type: !5)
!4605 = !DILocation(line: 0, scope: !4601)
!4606 = !DILocalVariable(name: "code", arg: 2, scope: !4601, file: !269, line: 2271, type: !4529)
!4607 = !DILocation(line: 2279, column: 14, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4601, file: !269, line: 2279, column: 7)
!4609 = !DILocation(line: 2279, column: 8, scope: !4608)
!4610 = !DILocation(line: 2279, column: 7, scope: !4601)
!4611 = !DILocation(line: 2281, column: 9, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4613, file: !269, line: 2281, column: 9)
!4613 = distinct !DILexicalBlock(scope: !4608, file: !269, line: 2280, column: 3)
!4614 = !DILocation(line: 2281, column: 29, scope: !4612)
!4615 = !DILocation(line: 2281, column: 9, scope: !4613)
!4616 = !DILocation(line: 2282, column: 7, scope: !4612)
!4617 = !DILocation(line: 2283, column: 3, scope: !4613)
!4618 = !DILocation(line: 2285, column: 27, scope: !4601)
!4619 = !DILocation(line: 2285, column: 35, scope: !4601)
!4620 = !DILocation(line: 2285, column: 9, scope: !4601)
!4621 = !DILocalVariable(name: "rar", scope: !4601, file: !269, line: 2276, type: !267)
!4622 = !DILocation(line: 2286, column: 15, scope: !4601)
!4623 = !DILocalVariable(name: "br", scope: !4601, file: !269, line: 2277, type: !3137)
!4624 = !DILocation(line: 2289, column: 8, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4601, file: !269, line: 2289, column: 7)
!4626 = !DILocation(line: 2289, column: 7, scope: !4601)
!4627 = !DILocation(line: 2290, column: 27, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4625, file: !269, line: 2289, column: 51)
!4629 = !DILocation(line: 2290, column: 5, scope: !4628)
!4630 = !DILocation(line: 2292, column: 10, scope: !4628)
!4631 = !DILocation(line: 2292, column: 16, scope: !4628)
!4632 = !DILocation(line: 2293, column: 5, scope: !4628)
!4633 = !DILocation(line: 2295, column: 10, scope: !4601)
!4634 = !DILocalVariable(name: "bits", scope: !4601, file: !269, line: 2274, type: !14)
!4635 = !DILocation(line: 2297, column: 18, scope: !4601)
!4636 = !DILocation(line: 2297, column: 12, scope: !4601)
!4637 = !DILocation(line: 2297, column: 30, scope: !4601)
!4638 = !DILocalVariable(name: "length", scope: !4601, file: !269, line: 2275, type: !24)
!4639 = !DILocation(line: 2298, column: 17, scope: !4601)
!4640 = !DILocation(line: 2298, column: 11, scope: !4601)
!4641 = !DILocation(line: 2298, column: 29, scope: !4601)
!4642 = !DILocalVariable(name: "value", scope: !4601, file: !269, line: 2275, type: !24)
!4643 = !DILocation(line: 2300, column: 14, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4601, file: !269, line: 2300, column: 7)
!4645 = !DILocation(line: 2300, column: 7, scope: !4601)
!4646 = !DILocation(line: 2302, column: 27, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4644, file: !269, line: 2301, column: 3)
!4648 = !DILocation(line: 2302, column: 5, scope: !4647)
!4649 = !DILocation(line: 2304, column: 5, scope: !4647)
!4650 = !DILocation(line: 2307, column: 23, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4601, file: !269, line: 2307, column: 7)
!4652 = !DILocation(line: 2307, column: 14, scope: !4651)
!4653 = !DILocation(line: 2307, column: 7, scope: !4601)
!4654 = !DILocation(line: 2310, column: 5, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4651, file: !269, line: 2308, column: 3)
!4656 = !DILocation(line: 2311, column: 5, scope: !4655)
!4657 = !DILocation(line: 2315, column: 3, scope: !4601)
!4658 = !DILocalVariable(name: "node", scope: !4601, file: !269, line: 2275, type: !24)
!4659 = !DILocation(line: 2318, column: 3, scope: !4601)
!4660 = !DILocation(line: 2318, column: 18, scope: !4601)
!4661 = !DILocation(line: 2318, column: 12, scope: !4601)
!4662 = !DILocation(line: 2318, column: 29, scope: !4601)
!4663 = !DILocation(line: 2319, column: 11, scope: !4601)
!4664 = !DILocation(line: 2319, column: 5, scope: !4601)
!4665 = !DILocation(line: 2319, column: 22, scope: !4601)
!4666 = !DILocation(line: 2318, column: 41, scope: !4601)
!4667 = !DILocation(line: 2318, column: 10, scope: !4601)
!4668 = !DILocation(line: 2321, column: 10, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4670, file: !269, line: 2321, column: 9)
!4670 = distinct !DILexicalBlock(scope: !4601, file: !269, line: 2320, column: 3)
!4671 = !DILocation(line: 2321, column: 9, scope: !4670)
!4672 = !DILocation(line: 2322, column: 29, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4669, file: !269, line: 2321, column: 39)
!4674 = !DILocation(line: 2322, column: 7, scope: !4673)
!4675 = !DILocation(line: 2324, column: 12, scope: !4673)
!4676 = !DILocation(line: 2324, column: 18, scope: !4673)
!4677 = !DILocation(line: 2325, column: 7, scope: !4673)
!4678 = !DILocation(line: 2327, column: 11, scope: !4670)
!4679 = !DILocalVariable(name: "bit", scope: !4601, file: !269, line: 2273, type: !318)
!4680 = !DILocation(line: 2328, column: 5, scope: !4670)
!4681 = !DILocation(line: 2330, column: 15, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4670, file: !269, line: 2330, column: 9)
!4683 = !DILocation(line: 2330, column: 9, scope: !4682)
!4684 = !DILocation(line: 2330, column: 26, scope: !4682)
!4685 = !DILocation(line: 2330, column: 40, scope: !4682)
!4686 = !DILocation(line: 2330, column: 9, scope: !4670)
!4687 = !DILocation(line: 2332, column: 29, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4682, file: !269, line: 2331, column: 5)
!4689 = !DILocation(line: 2332, column: 7, scope: !4688)
!4690 = !DILocation(line: 2334, column: 7, scope: !4688)
!4691 = !DILocation(line: 2336, column: 18, scope: !4670)
!4692 = !DILocation(line: 2336, column: 12, scope: !4670)
!4693 = !DILocation(line: 2336, column: 29, scope: !4670)
!4694 = distinct !{!4694, !4659, !4695, !650}
!4695 = !DILocation(line: 2337, column: 3, scope: !4601)
!4696 = !DILocation(line: 2339, column: 16, scope: !4601)
!4697 = !DILocation(line: 2339, column: 10, scope: !4601)
!4698 = !DILocation(line: 2339, column: 27, scope: !4601)
!4699 = !DILocation(line: 2339, column: 3, scope: !4601)
!4700 = !DILocation(line: 2340, column: 1, scope: !4601)
!4701 = distinct !DISubprogram(name: "rar_fls", scope: !269, file: !269, line: 505, type: !4702, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!24, !14}
!4704 = !DILocalVariable(name: "word", arg: 1, scope: !4701, file: !269, line: 505, type: !14)
!4705 = !DILocation(line: 0, scope: !4701)
!4706 = !DILocation(line: 507, column: 17, scope: !4701)
!4707 = !DILocation(line: 507, column: 8, scope: !4701)
!4708 = !DILocation(line: 508, column: 17, scope: !4701)
!4709 = !DILocation(line: 508, column: 8, scope: !4701)
!4710 = !DILocation(line: 509, column: 17, scope: !4701)
!4711 = !DILocation(line: 509, column: 8, scope: !4701)
!4712 = !DILocation(line: 510, column: 17, scope: !4701)
!4713 = !DILocation(line: 510, column: 8, scope: !4701)
!4714 = !DILocation(line: 511, column: 17, scope: !4701)
!4715 = !DILocation(line: 511, column: 8, scope: !4701)
!4716 = !DILocation(line: 512, column: 23, scope: !4701)
!4717 = !DILocation(line: 512, column: 15, scope: !4701)
!4718 = !DILocation(line: 512, column: 3, scope: !4701)
!4719 = distinct !DISubprogram(name: "new_node", scope: !269, file: !269, line: 2473, type: !4720, scopeLine: 2474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!24, !4529}
!4722 = !DILocalVariable(name: "code", arg: 1, scope: !4719, file: !269, line: 2473, type: !4529)
!4723 = !DILocation(line: 0, scope: !4719)
!4724 = !DILocation(line: 2477, column: 28, scope: !4719)
!4725 = !DILocation(line: 2477, column: 22, scope: !4719)
!4726 = !DILocation(line: 2477, column: 41, scope: !4719)
!4727 = !DILocation(line: 2477, column: 52, scope: !4719)
!4728 = !DILocation(line: 2477, column: 34, scope: !4719)
!4729 = !DILocation(line: 2477, column: 57, scope: !4719)
!4730 = !DILocation(line: 2477, column: 14, scope: !4719)
!4731 = !DILocalVariable(name: "new_tree", scope: !4719, file: !269, line: 2475, type: !125)
!4732 = !DILocation(line: 2478, column: 16, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4719, file: !269, line: 2478, column: 7)
!4734 = !DILocation(line: 2478, column: 7, scope: !4719)
!4735 = !DILocation(line: 2479, column: 5, scope: !4733)
!4736 = !DILocation(line: 2480, column: 16, scope: !4719)
!4737 = !DILocation(line: 2480, column: 9, scope: !4719)
!4738 = !DILocation(line: 2480, column: 14, scope: !4719)
!4739 = !DILocation(line: 2481, column: 9, scope: !4719)
!4740 = !DILocation(line: 2481, column: 20, scope: !4719)
!4741 = !DILocation(line: 2481, column: 3, scope: !4719)
!4742 = !DILocation(line: 2481, column: 32, scope: !4719)
!4743 = !DILocation(line: 2481, column: 44, scope: !4719)
!4744 = !DILocation(line: 2482, column: 9, scope: !4719)
!4745 = !DILocation(line: 2482, column: 20, scope: !4719)
!4746 = !DILocation(line: 2482, column: 3, scope: !4719)
!4747 = !DILocation(line: 2482, column: 32, scope: !4719)
!4748 = !DILocation(line: 2482, column: 44, scope: !4719)
!4749 = !DILocation(line: 2483, column: 3, scope: !4719)
!4750 = !DILocation(line: 2484, column: 1, scope: !4719)
!4751 = distinct !DISubprogram(name: "add_value", scope: !269, file: !269, line: 2373, type: !4752, scopeLine: 2375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!24, !5, !4529, !24, !24, !24}
!4754 = !DILocalVariable(name: "a", arg: 1, scope: !4751, file: !269, line: 2373, type: !5)
!4755 = !DILocation(line: 0, scope: !4751)
!4756 = !DILocalVariable(name: "code", arg: 2, scope: !4751, file: !269, line: 2373, type: !4529)
!4757 = !DILocalVariable(name: "value", arg: 3, scope: !4751, file: !269, line: 2373, type: !24)
!4758 = !DILocalVariable(name: "codebits", arg: 4, scope: !4751, file: !269, line: 2374, type: !24)
!4759 = !DILocalVariable(name: "length", arg: 5, scope: !4751, file: !269, line: 2374, type: !24)
!4760 = !DILocation(line: 2378, column: 14, scope: !4751)
!4761 = !DILocation(line: 2378, column: 8, scope: !4751)
!4762 = !DILocation(line: 2378, column: 3, scope: !4751)
!4763 = !DILocation(line: 2379, column: 9, scope: !4751)
!4764 = !DILocation(line: 2379, column: 15, scope: !4751)
!4765 = !DILocation(line: 2381, column: 21, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4751, file: !269, line: 2381, column: 6)
!4767 = !DILocation(line: 2381, column: 13, scope: !4766)
!4768 = !DILocation(line: 2381, column: 6, scope: !4751)
!4769 = !DILocation(line: 2382, column: 11, scope: !4766)
!4770 = !DILocation(line: 2382, column: 21, scope: !4766)
!4771 = !DILocation(line: 2382, column: 5, scope: !4766)
!4772 = !DILocation(line: 2383, column: 21, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4751, file: !269, line: 2383, column: 6)
!4774 = !DILocation(line: 2383, column: 13, scope: !4773)
!4775 = !DILocation(line: 2383, column: 6, scope: !4751)
!4776 = !DILocation(line: 2384, column: 11, scope: !4773)
!4777 = !DILocation(line: 2384, column: 21, scope: !4773)
!4778 = !DILocation(line: 2384, column: 5, scope: !4773)
!4779 = !DILocalVariable(name: "repeatpos", scope: !4751, file: !269, line: 2376, type: !24)
!4780 = !DILocation(line: 2387, column: 17, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4751, file: !269, line: 2387, column: 7)
!4782 = !DILocation(line: 2387, column: 22, scope: !4781)
!4783 = !DILocation(line: 2387, column: 36, scope: !4781)
!4784 = !DILocation(line: 2388, column: 5, scope: !4781)
!4785 = !DILocation(line: 2388, column: 34, scope: !4781)
!4786 = !DILocation(line: 2388, column: 20, scope: !4781)
!4787 = !DILocation(line: 2388, column: 40, scope: !4781)
!4788 = !DILocation(line: 2388, column: 45, scope: !4781)
!4789 = !DILocation(line: 2389, column: 5, scope: !4781)
!4790 = !DILocation(line: 2389, column: 33, scope: !4781)
!4791 = !DILocation(line: 2389, column: 19, scope: !4781)
!4792 = !DILocation(line: 2389, column: 39, scope: !4781)
!4793 = !DILocation(line: 2389, column: 44, scope: !4781)
!4794 = !DILocation(line: 2387, column: 7, scope: !4751)
!4795 = !DILocation(line: 2391, column: 27, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4781, file: !269, line: 2390, column: 3)
!4797 = !DILocation(line: 2391, column: 5, scope: !4796)
!4798 = !DILocation(line: 2393, column: 5, scope: !4796)
!4799 = !DILocalVariable(name: "lastnode", scope: !4751, file: !269, line: 2376, type: !24)
!4800 = !DILocation(line: 2397, column: 24, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4751, file: !269, line: 2397, column: 3)
!4802 = !DILocalVariable(name: "bitpos", scope: !4751, file: !269, line: 2376, type: !24)
!4803 = !DILocation(line: 2397, column: 8, scope: !4801)
!4804 = !DILocation(line: 0, scope: !4801)
!4805 = !DILocation(line: 2397, column: 36, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4801, file: !269, line: 2397, column: 3)
!4807 = !DILocation(line: 2397, column: 3, scope: !4801)
!4808 = !DILocation(line: 2399, column: 21, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4806, file: !269, line: 2398, column: 3)
!4810 = !DILocation(line: 2399, column: 32, scope: !4809)
!4811 = !DILocalVariable(name: "bit", scope: !4751, file: !269, line: 2376, type: !24)
!4812 = !DILocation(line: 2402, column: 15, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4809, file: !269, line: 2402, column: 9)
!4814 = !DILocation(line: 2402, column: 9, scope: !4813)
!4815 = !DILocation(line: 2402, column: 30, scope: !4813)
!4816 = !DILocation(line: 2403, column: 13, scope: !4813)
!4817 = !DILocation(line: 2403, column: 7, scope: !4813)
!4818 = !DILocation(line: 2403, column: 28, scope: !4813)
!4819 = !DILocation(line: 2402, column: 42, scope: !4813)
!4820 = !DILocation(line: 2402, column: 9, scope: !4809)
!4821 = !DILocation(line: 2405, column: 29, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4813, file: !269, line: 2404, column: 5)
!4823 = !DILocation(line: 2405, column: 7, scope: !4822)
!4824 = !DILocation(line: 2407, column: 7, scope: !4822)
!4825 = !DILocation(line: 2410, column: 16, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4809, file: !269, line: 2410, column: 9)
!4827 = !DILocation(line: 2410, column: 9, scope: !4809)
!4828 = !DILocation(line: 2413, column: 19, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4830, file: !269, line: 2413, column: 11)
!4830 = distinct !DILexicalBlock(scope: !4826, file: !269, line: 2411, column: 5)
!4831 = !DILocation(line: 2413, column: 13, scope: !4829)
!4832 = !DILocation(line: 2413, column: 34, scope: !4829)
!4833 = !DILocation(line: 2413, column: 48, scope: !4829)
!4834 = !DILocation(line: 2413, column: 11, scope: !4830)
!4835 = !DILocation(line: 2415, column: 31, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4829, file: !269, line: 2414, column: 7)
!4837 = !DILocation(line: 2415, column: 9, scope: !4836)
!4838 = !DILocation(line: 2417, column: 9, scope: !4836)
!4839 = !DILocation(line: 2420, column: 25, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4830, file: !269, line: 2420, column: 11)
!4841 = !DILocalVariable(name: "repeatnode", scope: !4751, file: !269, line: 2376, type: !24)
!4842 = !DILocation(line: 2420, column: 41, scope: !4840)
!4843 = !DILocation(line: 2420, column: 11, scope: !4830)
!4844 = !DILocation(line: 2421, column: 31, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4840, file: !269, line: 2420, column: 46)
!4846 = !DILocation(line: 2421, column: 9, scope: !4845)
!4847 = !DILocation(line: 2423, column: 9, scope: !4845)
!4848 = !DILocation(line: 2425, column: 23, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4830, file: !269, line: 2425, column: 11)
!4850 = !DILocalVariable(name: "nextnode", scope: !4751, file: !269, line: 2376, type: !24)
!4851 = !DILocation(line: 2425, column: 39, scope: !4849)
!4852 = !DILocation(line: 2425, column: 11, scope: !4830)
!4853 = !DILocation(line: 2426, column: 31, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4849, file: !269, line: 2425, column: 44)
!4855 = !DILocation(line: 2426, column: 9, scope: !4854)
!4856 = !DILocation(line: 2428, column: 9, scope: !4854)
!4857 = !DILocation(line: 2432, column: 13, scope: !4830)
!4858 = !DILocation(line: 2432, column: 7, scope: !4830)
!4859 = !DILocation(line: 2432, column: 28, scope: !4830)
!4860 = !DILocation(line: 2432, column: 42, scope: !4830)
!4861 = !DILocation(line: 2433, column: 13, scope: !4830)
!4862 = !DILocation(line: 2433, column: 7, scope: !4830)
!4863 = !DILocation(line: 2433, column: 30, scope: !4830)
!4864 = !DILocation(line: 2433, column: 44, scope: !4830)
!4865 = !DILocation(line: 2434, column: 13, scope: !4830)
!4866 = !DILocation(line: 2434, column: 7, scope: !4830)
!4867 = !DILocation(line: 2434, column: 30, scope: !4830)
!4868 = !DILocation(line: 2434, column: 42, scope: !4830)
!4869 = !DILocation(line: 2434, column: 46, scope: !4830)
!4870 = !DILocation(line: 2437, column: 13, scope: !4830)
!4871 = !DILocation(line: 2438, column: 5, scope: !4830)
!4872 = !DILocation(line: 2442, column: 17, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4874, file: !269, line: 2442, column: 11)
!4874 = distinct !DILexicalBlock(scope: !4826, file: !269, line: 2440, column: 5)
!4875 = !DILocation(line: 2442, column: 11, scope: !4873)
!4876 = !DILocation(line: 2442, column: 32, scope: !4873)
!4877 = !DILocation(line: 2442, column: 46, scope: !4873)
!4878 = !DILocation(line: 2442, column: 11, scope: !4874)
!4879 = !DILocation(line: 2444, column: 13, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4881, file: !269, line: 2444, column: 13)
!4881 = distinct !DILexicalBlock(scope: !4873, file: !269, line: 2443, column: 7)
!4882 = !DILocation(line: 2444, column: 28, scope: !4880)
!4883 = !DILocation(line: 2444, column: 13, scope: !4881)
!4884 = !DILocation(line: 2445, column: 33, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4880, file: !269, line: 2444, column: 33)
!4886 = !DILocation(line: 2445, column: 11, scope: !4885)
!4887 = !DILocation(line: 2447, column: 11, scope: !4885)
!4888 = !DILocation(line: 2449, column: 52, scope: !4881)
!4889 = !DILocation(line: 2449, column: 62, scope: !4881)
!4890 = !DILocation(line: 2449, column: 15, scope: !4881)
!4891 = !DILocation(line: 2449, column: 9, scope: !4881)
!4892 = !DILocation(line: 2449, column: 30, scope: !4881)
!4893 = !DILocation(line: 2449, column: 44, scope: !4881)
!4894 = !DILocation(line: 2450, column: 7, scope: !4881)
!4895 = !DILocation(line: 2453, column: 24, scope: !4874)
!4896 = !DILocation(line: 2453, column: 18, scope: !4874)
!4897 = !DILocation(line: 2453, column: 39, scope: !4874)
!4898 = !DILocation(line: 0, scope: !4826)
!4899 = !DILocation(line: 2455, column: 3, scope: !4809)
!4900 = !DILocation(line: 2397, column: 48, scope: !4806)
!4901 = !DILocation(line: 2397, column: 3, scope: !4806)
!4902 = distinct !{!4902, !4807, !4903, !650}
!4903 = !DILocation(line: 2455, column: 3, scope: !4801)
!4904 = !DILocation(line: 2457, column: 15, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4751, file: !269, line: 2457, column: 7)
!4906 = !DILocation(line: 2457, column: 9, scope: !4905)
!4907 = !DILocation(line: 2457, column: 30, scope: !4905)
!4908 = !DILocation(line: 2457, column: 42, scope: !4905)
!4909 = !DILocation(line: 2458, column: 5, scope: !4905)
!4910 = !DILocation(line: 2458, column: 14, scope: !4905)
!4911 = !DILocation(line: 2458, column: 8, scope: !4905)
!4912 = !DILocation(line: 2458, column: 29, scope: !4905)
!4913 = !DILocation(line: 2458, column: 41, scope: !4905)
!4914 = !DILocation(line: 2457, column: 7, scope: !4751)
!4915 = !DILocation(line: 2460, column: 27, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4905, file: !269, line: 2459, column: 3)
!4917 = !DILocation(line: 2460, column: 5, scope: !4916)
!4918 = !DILocation(line: 2462, column: 5, scope: !4916)
!4919 = !DILocation(line: 2466, column: 9, scope: !4751)
!4920 = !DILocation(line: 2466, column: 3, scope: !4751)
!4921 = !DILocation(line: 2466, column: 24, scope: !4751)
!4922 = !DILocation(line: 2466, column: 36, scope: !4751)
!4923 = !DILocation(line: 2467, column: 9, scope: !4751)
!4924 = !DILocation(line: 2467, column: 3, scope: !4751)
!4925 = !DILocation(line: 2467, column: 24, scope: !4751)
!4926 = !DILocation(line: 2467, column: 36, scope: !4751)
!4927 = !DILocation(line: 2469, column: 3, scope: !4751)
!4928 = !DILocation(line: 2470, column: 1, scope: !4751)
!4929 = distinct !DISubprogram(name: "make_table", scope: !269, file: !269, line: 2487, type: !4602, scopeLine: 2488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!4930 = !DILocalVariable(name: "a", arg: 1, scope: !4929, file: !269, line: 2487, type: !5)
!4931 = !DILocation(line: 0, scope: !4929)
!4932 = !DILocalVariable(name: "code", arg: 2, scope: !4929, file: !269, line: 2487, type: !4529)
!4933 = !DILocation(line: 2489, column: 13, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4929, file: !269, line: 2489, column: 7)
!4935 = !DILocation(line: 2489, column: 31, scope: !4934)
!4936 = !DILocation(line: 2489, column: 23, scope: !4934)
!4937 = !DILocation(line: 2489, column: 41, scope: !4934)
!4938 = !DILocation(line: 2489, column: 50, scope: !4934)
!4939 = !DILocation(line: 2489, column: 60, scope: !4934)
!4940 = !DILocation(line: 2489, column: 7, scope: !4929)
!4941 = !DILocation(line: 2490, column: 11, scope: !4934)
!4942 = !DILocation(line: 2490, column: 21, scope: !4934)
!4943 = !DILocation(line: 2490, column: 5, scope: !4934)
!4944 = !DILocation(line: 2492, column: 29, scope: !4934)
!4945 = !DILocation(line: 2492, column: 11, scope: !4934)
!4946 = !DILocation(line: 2492, column: 21, scope: !4934)
!4947 = !DILocation(line: 2496, column: 27, scope: !4929)
!4948 = !DILocation(line: 2496, column: 18, scope: !4929)
!4949 = !DILocation(line: 2496, column: 5, scope: !4929)
!4950 = !DILocation(line: 2495, column: 35, scope: !4929)
!4951 = !DILocation(line: 2495, column: 5, scope: !4929)
!4952 = !DILocation(line: 2494, column: 9, scope: !4929)
!4953 = !DILocation(line: 2494, column: 15, scope: !4929)
!4954 = !DILocation(line: 2498, column: 47, scope: !4929)
!4955 = !DILocation(line: 2498, column: 63, scope: !4929)
!4956 = !DILocation(line: 2498, column: 10, scope: !4929)
!4957 = !DILocation(line: 2498, column: 3, scope: !4929)
!4958 = distinct !DISubprogram(name: "make_table_recurse", scope: !269, file: !269, line: 2502, type: !4959, scopeLine: 2505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!24, !5, !4529, !24, !348, !24, !24}
!4961 = !DILocalVariable(name: "a", arg: 1, scope: !4958, file: !269, line: 2502, type: !5)
!4962 = !DILocation(line: 0, scope: !4958)
!4963 = !DILocalVariable(name: "code", arg: 2, scope: !4958, file: !269, line: 2502, type: !4529)
!4964 = !DILocalVariable(name: "node", arg: 3, scope: !4958, file: !269, line: 2502, type: !24)
!4965 = !DILocalVariable(name: "table", arg: 4, scope: !4958, file: !269, line: 2503, type: !348)
!4966 = !DILocalVariable(name: "depth", arg: 5, scope: !4958, file: !269, line: 2503, type: !24)
!4967 = !DILocalVariable(name: "maxdepth", arg: 6, scope: !4958, file: !269, line: 2504, type: !24)
!4968 = !DILocalVariable(name: "ret", scope: !4958, file: !269, line: 2506, type: !24)
!4969 = !DILocation(line: 2508, column: 14, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4958, file: !269, line: 2508, column: 7)
!4971 = !DILocation(line: 2508, column: 8, scope: !4970)
!4972 = !DILocation(line: 2508, column: 7, scope: !4958)
!4973 = !DILocation(line: 2510, column: 27, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4970, file: !269, line: 2509, column: 3)
!4975 = !DILocation(line: 2510, column: 5, scope: !4974)
!4976 = !DILocation(line: 2512, column: 5, scope: !4974)
!4977 = !DILocation(line: 2514, column: 12, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4958, file: !269, line: 2514, column: 7)
!4979 = !DILocation(line: 2514, column: 16, scope: !4978)
!4980 = !DILocation(line: 2514, column: 33, scope: !4978)
!4981 = !DILocation(line: 2514, column: 24, scope: !4978)
!4982 = !DILocation(line: 2514, column: 7, scope: !4958)
!4983 = !DILocation(line: 2516, column: 27, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4978, file: !269, line: 2515, column: 3)
!4985 = !DILocation(line: 2516, column: 5, scope: !4984)
!4986 = !DILocation(line: 2518, column: 5, scope: !4984)
!4987 = !DILocation(line: 2521, column: 34, scope: !4958)
!4988 = !DILocation(line: 2521, column: 21, scope: !4958)
!4989 = !DILocalVariable(name: "currtablesize", scope: !4958, file: !269, line: 2506, type: !24)
!4990 = !DILocation(line: 2523, column: 13, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4958, file: !269, line: 2523, column: 7)
!4992 = !DILocation(line: 2523, column: 7, scope: !4991)
!4993 = !DILocation(line: 2523, column: 24, scope: !4991)
!4994 = !DILocation(line: 2524, column: 11, scope: !4991)
!4995 = !DILocation(line: 2524, column: 5, scope: !4991)
!4996 = !DILocation(line: 2524, column: 22, scope: !4991)
!4997 = !DILocation(line: 2523, column: 36, scope: !4991)
!4998 = !DILocation(line: 2523, column: 7, scope: !4958)
!4999 = !DILocalVariable(name: "i", scope: !4958, file: !269, line: 2506, type: !24)
!5000 = !DILocation(line: 2526, column: 9, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !5002, file: !269, line: 2526, column: 5)
!5002 = distinct !DILexicalBlock(scope: !4991, file: !269, line: 2525, column: 3)
!5003 = !DILocation(line: 0, scope: !5001)
!5004 = !DILocation(line: 2526, column: 18, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !5001, file: !269, line: 2526, column: 5)
!5006 = !DILocation(line: 2526, column: 5, scope: !5001)
!5007 = !DILocation(line: 2528, column: 7, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !5005, file: !269, line: 2527, column: 5)
!5009 = !DILocation(line: 2528, column: 16, scope: !5008)
!5010 = !DILocation(line: 2528, column: 23, scope: !5008)
!5011 = !DILocation(line: 2529, column: 30, scope: !5008)
!5012 = !DILocation(line: 2529, column: 24, scope: !5008)
!5013 = !DILocation(line: 2529, column: 41, scope: !5008)
!5014 = !DILocation(line: 2529, column: 7, scope: !5008)
!5015 = !DILocation(line: 2529, column: 16, scope: !5008)
!5016 = !DILocation(line: 2529, column: 22, scope: !5008)
!5017 = !DILocation(line: 2530, column: 5, scope: !5008)
!5018 = !DILocation(line: 2526, column: 36, scope: !5005)
!5019 = !DILocation(line: 2526, column: 5, scope: !5005)
!5020 = distinct !{!5020, !5006, !5021, !650}
!5021 = !DILocation(line: 2530, column: 5, scope: !5001)
!5022 = !DILocation(line: 2531, column: 3, scope: !5002)
!5023 = !DILocation(line: 2532, column: 17, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !4991, file: !269, line: 2532, column: 12)
!5025 = !DILocation(line: 2532, column: 12, scope: !4991)
!5026 = !DILocation(line: 2534, column: 9, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5028, file: !269, line: 2534, column: 5)
!5028 = distinct !DILexicalBlock(scope: !5024, file: !269, line: 2533, column: 3)
!5029 = !DILocation(line: 0, scope: !5027)
!5030 = !DILocation(line: 2534, column: 18, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5027, file: !269, line: 2534, column: 5)
!5032 = !DILocation(line: 2534, column: 5, scope: !5027)
!5033 = !DILocation(line: 2535, column: 7, scope: !5031)
!5034 = !DILocation(line: 2535, column: 16, scope: !5031)
!5035 = !DILocation(line: 2535, column: 23, scope: !5031)
!5036 = !DILocation(line: 2534, column: 36, scope: !5031)
!5037 = !DILocation(line: 2534, column: 5, scope: !5031)
!5038 = distinct !{!5038, !5032, !5039, !650}
!5039 = !DILocation(line: 2535, column: 26, scope: !5027)
!5040 = !DILocation(line: 2536, column: 3, scope: !5028)
!5041 = !DILocation(line: 2539, column: 14, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5043, file: !269, line: 2539, column: 8)
!5043 = distinct !DILexicalBlock(scope: !5024, file: !269, line: 2538, column: 3)
!5044 = !DILocation(line: 2539, column: 8, scope: !5043)
!5045 = !DILocation(line: 2541, column: 34, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5042, file: !269, line: 2540, column: 5)
!5047 = !DILocation(line: 2541, column: 7, scope: !5046)
!5048 = !DILocation(line: 2541, column: 16, scope: !5046)
!5049 = !DILocation(line: 2541, column: 23, scope: !5046)
!5050 = !DILocation(line: 2542, column: 7, scope: !5046)
!5051 = !DILocation(line: 2542, column: 16, scope: !5046)
!5052 = !DILocation(line: 2542, column: 22, scope: !5046)
!5053 = !DILocation(line: 2543, column: 5, scope: !5046)
!5054 = !DILocation(line: 2546, column: 48, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5042, file: !269, line: 2545, column: 5)
!5056 = !DILocation(line: 2546, column: 42, scope: !5055)
!5057 = !DILocation(line: 2546, column: 59, scope: !5055)
!5058 = !DILocation(line: 2547, column: 39, scope: !5055)
!5059 = !DILocation(line: 2546, column: 14, scope: !5055)
!5060 = !DILocation(line: 2546, column: 11, scope: !5055)
!5061 = !DILocation(line: 2548, column: 48, scope: !5055)
!5062 = !DILocation(line: 2548, column: 42, scope: !5055)
!5063 = !DILocation(line: 2548, column: 59, scope: !5055)
!5064 = !DILocation(line: 2549, column: 48, scope: !5055)
!5065 = !DILocation(line: 2549, column: 32, scope: !5055)
!5066 = !DILocation(line: 2549, column: 59, scope: !5055)
!5067 = !DILocation(line: 2548, column: 14, scope: !5055)
!5068 = !DILocation(line: 2548, column: 11, scope: !5055)
!5069 = !DILocation(line: 2506, column: 25, scope: !4958)
!5070 = !DILocation(line: 2552, column: 3, scope: !4958)
!5071 = !DILocation(line: 2553, column: 1, scope: !4958)
!5072 = distinct !DISubprogram(name: "lzss_current_pointer", scope: !269, file: !269, line: 553, type: !5073, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!5075, !4187}
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!5076 = !DILocalVariable(name: "lzss", arg: 1, scope: !5072, file: !269, line: 553, type: !4187)
!5077 = !DILocation(line: 0, scope: !5072)
!5078 = !DILocation(line: 555, column: 48, scope: !5072)
!5079 = !DILocation(line: 555, column: 10, scope: !5072)
!5080 = !DILocation(line: 555, column: 3, scope: !5072)
!5081 = distinct !DISubprogram(name: "lzss_pointer_for_position", scope: !269, file: !269, line: 541, type: !5082, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!317, !4187, !53}
!5084 = !DILocalVariable(name: "lzss", arg: 1, scope: !5081, file: !269, line: 541, type: !4187)
!5085 = !DILocation(line: 0, scope: !5081)
!5086 = !DILocalVariable(name: "pos", arg: 2, scope: !5081, file: !269, line: 541, type: !53)
!5087 = !DILocation(line: 543, column: 17, scope: !5081)
!5088 = !DILocation(line: 543, column: 24, scope: !5081)
!5089 = !DILocation(line: 543, column: 11, scope: !5081)
!5090 = !DILocation(line: 543, column: 3, scope: !5081)
!5091 = distinct !DISubprogram(name: "lzss_current_offset", scope: !269, file: !269, line: 547, type: !4197, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!5092 = !DILocalVariable(name: "lzss", arg: 1, scope: !5091, file: !269, line: 547, type: !4187)
!5093 = !DILocation(line: 0, scope: !5091)
!5094 = !DILocation(line: 549, column: 47, scope: !5091)
!5095 = !DILocation(line: 549, column: 10, scope: !5091)
!5096 = !DILocation(line: 549, column: 3, scope: !5091)
!5097 = distinct !DISubprogram(name: "lzss_mask", scope: !269, file: !269, line: 523, type: !4197, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!5098 = !DILocalVariable(name: "lzss", arg: 1, scope: !5097, file: !269, line: 523, type: !4187)
!5099 = !DILocation(line: 0, scope: !5097)
!5100 = !DILocation(line: 525, column: 16, scope: !5097)
!5101 = !DILocation(line: 525, column: 3, scope: !5097)
!5102 = distinct !DISubprogram(name: "lzss_position", scope: !269, file: !269, line: 517, type: !5103, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !523)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!53, !4187}
!5105 = !DILocalVariable(name: "lzss", arg: 1, scope: !5102, file: !269, line: 517, type: !4187)
!5106 = !DILocation(line: 0, scope: !5102)
!5107 = !DILocation(line: 519, column: 16, scope: !5102)
!5108 = !DILocation(line: 519, column: 3, scope: !5102)
