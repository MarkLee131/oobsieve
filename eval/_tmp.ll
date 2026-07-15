; ModuleID = '/home/likaixuan/static_analysis/linux-spec-sast/patchintent/eval/_tmp.ll.o0.ll'
source_filename = "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_read_support_format_zip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.archive_rb_tree_ops = type { i32 (%struct.archive_rb_node*, %struct.archive_rb_node*)*, i32 (%struct.archive_rb_node*, i8*)* }
%struct.archive_rb_node = type { [2 x %struct.archive_rb_node*], i64 }
%struct.archive = type { i32, i32, %struct.archive_vtable*, i32, i8*, i32, i8*, i32, i32, i8*, %struct.archive_string, i8*, i32, i32, %struct.archive_string_conv* }
%struct.archive_vtable = type { {}*, {}*, i32 (%struct.archive*, %struct.archive_entry*)*, {}*, i64 (%struct.archive*, i8*, i64)*, i64 (%struct.archive*, i8*, i64, i64)*, i32 (%struct.archive*, %struct.archive_entry**)*, i32 (%struct.archive*, %struct.archive_entry*)*, i32 (%struct.archive*, i8**, i64*, i64*)*, {}*, i64 (%struct.archive*, i32)*, i32 (%struct.archive*, i32)*, i8* (%struct.archive*, i32)* }
%struct.archive_entry = type opaque
%struct.archive_string = type { i8*, i64, i64 }
%struct.archive_string_conv = type opaque
%struct.archive_read = type { %struct.archive, %struct.archive_entry*, i32, i64, i64, i8*, i64, i64, i64, i8, i64, %struct.archive_read_client, [14 x %struct.archive_read_filter_bidder], %struct.archive_read_filter*, i32, i64, i32, i32, [16 x %struct.archive_format_descriptor], %struct.archive_format_descriptor*, %struct.extract*, i32 (%struct.archive_read*)* }
%struct.archive_read_client = type { i32 (%struct.archive*, i8*)*, i64 (%struct.archive*, i8*, i8**)*, i64 (%struct.archive*, i8*, i64)*, i64 (%struct.archive*, i8*, i64, i32)*, i32 (%struct.archive*, i8*)*, i32 (%struct.archive*, i8*, i8*)*, i32, i32, i64, %struct.archive_read_data_node* }
%struct.archive_read_data_node = type { i64, i64, i8* }
%struct.archive_read_filter_bidder = type { i8*, i8*, i32 (%struct.archive_read_filter_bidder*, %struct.archive_read_filter*)*, i32 (%struct.archive_read_filter*)*, i32 (%struct.archive_read_filter_bidder*, i8*, i8*)*, i32 (%struct.archive_read_filter_bidder*)* }
%struct.archive_read_filter = type { i64, %struct.archive_read_filter_bidder*, %struct.archive_read_filter*, %struct.archive_read*, i32 (%struct.archive_read_filter*)*, i64 (%struct.archive_read_filter*, i8**)*, i64 (%struct.archive_read_filter*, i64)*, i64 (%struct.archive_read_filter*, i64, i32)*, i32 (%struct.archive_read_filter*)*, i32 (%struct.archive_read_filter*, i32)*, i8*, i8*, i32, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8, i8, i8 }
%struct.archive_format_descriptor = type { i8*, i8*, i32 (%struct.archive_read*, i32)*, i32 (%struct.archive_read*, i8*, i8*)*, i32 (%struct.archive_read*, %struct.archive_entry*)*, i32 (%struct.archive_read*, i8**, i64*, i64*)*, i32 (%struct.archive_read*)*, i64 (%struct.archive_read*, i64, i32)*, i32 (%struct.archive_read*)* }
%struct.extract = type opaque
%struct.zip = type { i64, i64, i64, i64, i8, i64, i64, %struct.zip_entry*, %struct.zip_entry*, %struct.archive_rb_tree, %struct.archive_rb_tree, i64, i64, i64, i64, i64, i8, i8, i64, i64, i8*, i64, %struct.z_stream_s, i8, %struct.archive_string, %struct.archive_string_conv*, %struct.archive_string_conv*, %struct.archive_string_conv*, i32, [64 x i8] }
%struct.zip_entry = type { %struct.archive_rb_node, i64, i64, i64, i64, i64, %struct.archive_entry*, %struct.archive_string, i64, i64, i64, i32, i16, i16, i8, i8 }
%struct.archive_rb_tree = type { %struct.archive_rb_node*, %struct.archive_rb_tree_ops* }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [32 x i8] c"archive_read_support_format_zip\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't allocate zip data\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"archive_read_support_format_zip_seekable\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"PK\05\06\00\00\00\00\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ZIP\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Truncated Zip file\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Can't allocate memory for Symlink\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"Symlink cannot be converted from %s to current locale.\00", align 1
@slurp_central_directory.rb_ops = internal constant %struct.archive_rb_tree_ops { i32 (%struct.archive_rb_node*, %struct.archive_rb_node*)* @cmp_node, i32 (%struct.archive_rb_node*, i8*)* @cmp_key }, align 8, !dbg !0
@slurp_central_directory.rb_rsrc_ops = internal constant %struct.archive_rb_tree_ops { i32 (%struct.archive_rb_node*, %struct.archive_rb_node*)* @rsrc_cmp_node, i32 (%struct.archive_rb_node*, i8*)* @rsrc_cmp_key }, align 8, !dbg !416
@.str.9 = private unnamed_addr constant [5 x i8] c"PK\01\02\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Invalid central directory signature\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"__MACOSX/\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"._\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Truncated ZIP file header\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"PK\03\04\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Damaged Zip archive\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Inconsistent CRC32 values\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Inconsistent compressed size\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Inconsistent uncompressed size\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Pathname\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"Pathname cannot be converted from %s to current locale.\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"ZIP %d.%d (%s)\00", align 1
@compression_name.compression_names = internal global [9 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0)], align 16, !dbg !418
@.str.23 = private unnamed_addr constant [13 x i8] c"uncompressed\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"shrinking\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"reduced-1\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"reduced-2\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"reduced-3\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"reduced-4\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"imploded\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"deflation\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"Unsupported ZIP compression method (%s)\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"Mac metadata is too large: %jd > 128K bytes\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"Can't allocate memory for Mac metadata\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"Out of memory for ZIP decompression\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"ZIP decompression failed (%d)\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"1.2.11\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"Can't initialize ZIP decompression.\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"compat-2x\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"hdrcharset\00", align 1
@.str.42 = private unnamed_addr constant [50 x i8] c"zip: hdrcharset option needs a character-set name\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Out  of memory\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"Encrypted file is unsupported\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"ZIP compressed data is wrong size (read %jd, expected %jd)\00", align 1
@.str.46 = private unnamed_addr constant [61 x i8] c"ZIP uncompressed data is wrong size (read %jd, expected %jd)\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"ZIP bad CRC: 0x%lx should be 0x%lx\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"Truncated ZIP file data\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"No memory for ZIP decompression\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"Truncated ZIP file body\00", align 1
@.str.51 = private unnamed_addr constant [33 x i8] c"Truncated ZIP end-of-file record\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @archive_read_support_format_zip_streamable(%struct.archive* noundef %0) #0 !dbg !435 {
  call void @llvm.dbg.value(metadata %struct.archive* %0, metadata !436, metadata !DIExpression()), !dbg !437
  %2 = bitcast %struct.archive* %0 to %struct.archive_read*, !dbg !438
  call void @llvm.dbg.value(metadata %struct.archive_read* %2, metadata !439, metadata !DIExpression()), !dbg !437
  br label %3, !dbg !440

3:                                                ; preds = %1
  %4 = call i32 @__archive_check_magic(%struct.archive* noundef %0, i32 noundef 14594245, i32 noundef 1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !441
  call void @llvm.dbg.value(metadata i32 %4, metadata !443, metadata !DIExpression()), !dbg !444
  %5 = icmp eq i32 %4, -30, !dbg !445
  br i1 %5, label %6, label %7, !dbg !441

6:                                                ; preds = %3
  br label %22, !dbg !445

7:                                                ; preds = %3
  br label %8, !dbg !441

8:                                                ; preds = %7
  %9 = call noalias i8* @malloc(i64 noundef 424) #8, !dbg !447
  %10 = bitcast i8* %9 to %struct.zip*, !dbg !448
  call void @llvm.dbg.value(metadata %struct.zip* %10, metadata !449, metadata !DIExpression()), !dbg !437
  %11 = icmp eq %struct.zip* %10, null, !dbg !450
  br i1 %11, label %12, label %14, !dbg !452

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %2, i32 0, i32 0, !dbg !453
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %13, i32 noundef 12, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)), !dbg !455
  br label %22, !dbg !456

14:                                               ; preds = %8
  %15 = bitcast %struct.zip* %10 to i8*, !dbg !457
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 424, i1 false), !dbg !457
  %16 = bitcast %struct.zip* %10 to i8*, !dbg !458
  %17 = call i32 @__archive_read_register_format(%struct.archive_read* noundef %2, i8* noundef %16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 (%struct.archive_read*, i32)* noundef @archive_read_format_zip_streamable_bid, i32 (%struct.archive_read*, i8*, i8*)* noundef @archive_read_format_zip_options, i32 (%struct.archive_read*, %struct.archive_entry*)* noundef @archive_read_format_zip_streamable_read_header, i32 (%struct.archive_read*, i8**, i64*, i64*)* noundef @archive_read_format_zip_read_data, i32 (%struct.archive_read*)* noundef @archive_read_format_zip_read_data_skip, i64 (%struct.archive_read*, i64, i32)* noundef null, i32 (%struct.archive_read*)* noundef @archive_read_format_zip_cleanup), !dbg !459
  call void @llvm.dbg.value(metadata i32 %17, metadata !460, metadata !DIExpression()), !dbg !437
  %18 = icmp ne i32 %17, 0, !dbg !461
  br i1 %18, label %19, label %21, !dbg !463

19:                                               ; preds = %14
  %20 = bitcast %struct.zip* %10 to i8*, !dbg !464
  call void @free(i8* noundef %20) #8, !dbg !465
  br label %21, !dbg !465

21:                                               ; preds = %19, %14
  br label %22, !dbg !466

22:                                               ; preds = %21, %12, %6
  %.0 = phi i32 [ -30, %6 ], [ -30, %12 ], [ 0, %21 ], !dbg !437
  ret i32 %.0, !dbg !467
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
define internal i32 @archive_read_format_zip_streamable_bid(%struct.archive_read* noundef %0, i32 noundef %1) #0 !dbg !468 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata i32 %1, metadata !471, metadata !DIExpression()), !dbg !470
  %3 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef 4, i64* noundef null), !dbg !472
  call void @llvm.dbg.value(metadata i8* %3, metadata !474, metadata !DIExpression()), !dbg !470
  %4 = icmp eq i8* %3, null, !dbg !475
  br i1 %4, label %5, label %6, !dbg !476

5:                                                ; preds = %2
  br label %69, !dbg !477

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, i8* %3, i64 0, !dbg !478
  %8 = load i8, i8* %7, align 1, !dbg !478
  %9 = sext i8 %8 to i32, !dbg !478
  %10 = icmp eq i32 %9, 80, !dbg !480
  br i1 %10, label %11, label %68, !dbg !481

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !482
  %13 = load i8, i8* %12, align 1, !dbg !482
  %14 = sext i8 %13 to i32, !dbg !482
  %15 = icmp eq i32 %14, 75, !dbg !483
  br i1 %15, label %16, label %68, !dbg !484

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !485
  %18 = load i8, i8* %17, align 1, !dbg !485
  %19 = sext i8 %18 to i32, !dbg !485
  %20 = icmp eq i32 %19, 1, !dbg !488
  br i1 %20, label %21, label %26, !dbg !489

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, i8* %3, i64 3, !dbg !490
  %23 = load i8, i8* %22, align 1, !dbg !490
  %24 = sext i8 %23 to i32, !dbg !490
  %25 = icmp eq i32 %24, 2, !dbg !491
  br i1 %25, label %66, label %26, !dbg !492

26:                                               ; preds = %21, %16
  %27 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !493
  %28 = load i8, i8* %27, align 1, !dbg !493
  %29 = sext i8 %28 to i32, !dbg !493
  %30 = icmp eq i32 %29, 3, !dbg !494
  br i1 %30, label %31, label %36, !dbg !495

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, i8* %3, i64 3, !dbg !496
  %33 = load i8, i8* %32, align 1, !dbg !496
  %34 = sext i8 %33 to i32, !dbg !496
  %35 = icmp eq i32 %34, 4, !dbg !497
  br i1 %35, label %66, label %36, !dbg !498

36:                                               ; preds = %31, %26
  %37 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !499
  %38 = load i8, i8* %37, align 1, !dbg !499
  %39 = sext i8 %38 to i32, !dbg !499
  %40 = icmp eq i32 %39, 5, !dbg !500
  br i1 %40, label %41, label %46, !dbg !501

41:                                               ; preds = %36
  %42 = getelementptr inbounds i8, i8* %3, i64 3, !dbg !502
  %43 = load i8, i8* %42, align 1, !dbg !502
  %44 = sext i8 %43 to i32, !dbg !502
  %45 = icmp eq i32 %44, 6, !dbg !503
  br i1 %45, label %66, label %46, !dbg !504

46:                                               ; preds = %41, %36
  %47 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !505
  %48 = load i8, i8* %47, align 1, !dbg !505
  %49 = sext i8 %48 to i32, !dbg !505
  %50 = icmp eq i32 %49, 7, !dbg !506
  br i1 %50, label %51, label %56, !dbg !507

51:                                               ; preds = %46
  %52 = getelementptr inbounds i8, i8* %3, i64 3, !dbg !508
  %53 = load i8, i8* %52, align 1, !dbg !508
  %54 = sext i8 %53 to i32, !dbg !508
  %55 = icmp eq i32 %54, 8, !dbg !509
  br i1 %55, label %66, label %56, !dbg !510

56:                                               ; preds = %51, %46
  %57 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !511
  %58 = load i8, i8* %57, align 1, !dbg !511
  %59 = sext i8 %58 to i32, !dbg !511
  %60 = icmp eq i32 %59, 48, !dbg !512
  br i1 %60, label %61, label %67, !dbg !513

61:                                               ; preds = %56
  %62 = getelementptr inbounds i8, i8* %3, i64 3, !dbg !514
  %63 = load i8, i8* %62, align 1, !dbg !514
  %64 = sext i8 %63 to i32, !dbg !514
  %65 = icmp eq i32 %64, 48, !dbg !515
  br i1 %65, label %66, label %67, !dbg !516

66:                                               ; preds = %61, %51, %41, %31, %21
  br label %69, !dbg !517

67:                                               ; preds = %61, %56
  br label %68, !dbg !518

68:                                               ; preds = %67, %11, %6
  br label %69, !dbg !519

69:                                               ; preds = %68, %66, %5
  %.0 = phi i32 [ -1, %5 ], [ 30, %66 ], [ 0, %68 ], !dbg !470
  ret i32 %.0, !dbg !520
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_zip_options(%struct.archive_read* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !521 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !522, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i8* %1, metadata !524, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i8* %2, metadata !525, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 -25, metadata !526, metadata !DIExpression()), !dbg !523
  %4 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !527
  %5 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %4, align 8, !dbg !527
  %6 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %5, i32 0, i32 0, !dbg !528
  %7 = load i8*, i8** %6, align 8, !dbg !528
  %8 = bitcast i8* %7 to %struct.zip*, !dbg !529
  call void @llvm.dbg.value(metadata %struct.zip* %8, metadata !530, metadata !DIExpression()), !dbg !523
  %9 = call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0)) #9, !dbg !531
  %10 = icmp eq i32 %9, 0, !dbg !533
  br i1 %10, label %11, label %16, !dbg !534

11:                                               ; preds = %3
  %12 = icmp ne i8* %2, null, !dbg !535
  %13 = zext i1 %12 to i64, !dbg !537
  %14 = select i1 %12, i32 1, i32 0, !dbg !537
  %15 = getelementptr inbounds %struct.zip, %struct.zip* %8, i32 0, i32 28, !dbg !538
  store i32 %14, i32* %15, align 8, !dbg !539
  br label %48, !dbg !540

16:                                               ; preds = %3
  %17 = call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0)) #9, !dbg !541
  %18 = icmp eq i32 %17, 0, !dbg !543
  br i1 %18, label %19, label %46, !dbg !544

19:                                               ; preds = %16
  %20 = icmp eq i8* %2, null, !dbg !545
  br i1 %20, label %26, label %21, !dbg !548

21:                                               ; preds = %19
  %22 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !549
  %23 = load i8, i8* %22, align 1, !dbg !549
  %24 = sext i8 %23 to i32, !dbg !549
  %25 = icmp eq i32 %24, 0, !dbg !550
  br i1 %25, label %26, label %28, !dbg !551

26:                                               ; preds = %21, %19
  %27 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !552
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %27, i32 noundef -1, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.42, i64 0, i64 0)), !dbg !553
  br label %45, !dbg !553

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !554
  %30 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive* noundef %29, i8* noundef %2, i32 noundef 0), !dbg !556
  %31 = getelementptr inbounds %struct.zip, %struct.zip* %8, i32 0, i32 25, !dbg !557
  store %struct.archive_string_conv* %30, %struct.archive_string_conv** %31, align 8, !dbg !558
  %32 = getelementptr inbounds %struct.zip, %struct.zip* %8, i32 0, i32 25, !dbg !559
  %33 = load %struct.archive_string_conv*, %struct.archive_string_conv** %32, align 8, !dbg !559
  %34 = icmp ne %struct.archive_string_conv* %33, null, !dbg !561
  br i1 %34, label %35, label %43, !dbg !562

35:                                               ; preds = %28
  %36 = call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !563
  %37 = icmp eq i32 %36, 0, !dbg !566
  br i1 %37, label %38, label %42, !dbg !567

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.zip, %struct.zip* %8, i32 0, i32 25, !dbg !568
  %40 = load %struct.archive_string_conv*, %struct.archive_string_conv** %39, align 8, !dbg !568
  %41 = getelementptr inbounds %struct.zip, %struct.zip* %8, i32 0, i32 27, !dbg !569
  store %struct.archive_string_conv* %40, %struct.archive_string_conv** %41, align 8, !dbg !570
  br label %42, !dbg !571

42:                                               ; preds = %38, %35
  call void @llvm.dbg.value(metadata i32 0, metadata !526, metadata !DIExpression()), !dbg !523
  br label %44, !dbg !572

43:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 -30, metadata !526, metadata !DIExpression()), !dbg !523
  br label %44

44:                                               ; preds = %43, %42
  %.01 = phi i32 [ 0, %42 ], [ -30, %43 ], !dbg !573
  call void @llvm.dbg.value(metadata i32 %.01, metadata !526, metadata !DIExpression()), !dbg !523
  br label %45

45:                                               ; preds = %44, %26
  %.1 = phi i32 [ -25, %26 ], [ %.01, %44 ], !dbg !523
  call void @llvm.dbg.value(metadata i32 %.1, metadata !526, metadata !DIExpression()), !dbg !523
  br label %48, !dbg !574

46:                                               ; preds = %16
  br label %47

47:                                               ; preds = %46
  br label %48, !dbg !575

48:                                               ; preds = %47, %45, %11
  %.0 = phi i32 [ 0, %11 ], [ %.1, %45 ], [ -20, %47 ], !dbg !523
  ret i32 %.0, !dbg !576
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_zip_streamable_read_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1) #0 !dbg !577 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !578, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata %struct.archive_entry* %1, metadata !580, metadata !DIExpression()), !dbg !579
  %4 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !581
  %5 = getelementptr inbounds %struct.archive, %struct.archive* %4, i32 0, i32 3, !dbg !582
  store i32 327680, i32* %5, align 8, !dbg !583
  %6 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !584
  %7 = getelementptr inbounds %struct.archive, %struct.archive* %6, i32 0, i32 4, !dbg !586
  %8 = load i8*, i8** %7, align 8, !dbg !586
  %9 = icmp eq i8* %8, null, !dbg !587
  br i1 %9, label %10, label %13, !dbg !588

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !589
  %12 = getelementptr inbounds %struct.archive, %struct.archive* %11, i32 0, i32 4, !dbg !590
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8, !dbg !591
  br label %13, !dbg !592

13:                                               ; preds = %10, %2
  %14 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !593
  %15 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %14, align 8, !dbg !593
  %16 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %15, i32 0, i32 0, !dbg !594
  %17 = load i8*, i8** %16, align 8, !dbg !594
  %18 = bitcast i8* %17 to %struct.zip*, !dbg !595
  call void @llvm.dbg.value(metadata %struct.zip* %18, metadata !596, metadata !DIExpression()), !dbg !579
  %19 = getelementptr inbounds %struct.zip, %struct.zip* %18, i32 0, i32 7, !dbg !597
  %20 = load %struct.zip_entry*, %struct.zip_entry** %19, align 8, !dbg !597
  %21 = icmp eq %struct.zip_entry* %20, null, !dbg !599
  br i1 %21, label %22, label %32, !dbg !600

22:                                               ; preds = %13
  %23 = call noalias i8* @malloc(i64 noundef 136) #8, !dbg !601
  %24 = bitcast i8* %23 to %struct.zip_entry*, !dbg !601
  %25 = getelementptr inbounds %struct.zip, %struct.zip* %18, i32 0, i32 7, !dbg !603
  store %struct.zip_entry* %24, %struct.zip_entry** %25, align 8, !dbg !604
  %26 = getelementptr inbounds %struct.zip, %struct.zip* %18, i32 0, i32 7, !dbg !605
  %27 = load %struct.zip_entry*, %struct.zip_entry** %26, align 8, !dbg !605
  %28 = icmp eq %struct.zip_entry* %27, null, !dbg !607
  br i1 %28, label %29, label %31, !dbg !608

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !609
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %30, i32 noundef 12, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0)), !dbg !611
  br label %104, !dbg !612

31:                                               ; preds = %22
  br label %32, !dbg !613

32:                                               ; preds = %31, %13
  %33 = getelementptr inbounds %struct.zip, %struct.zip* %18, i32 0, i32 7, !dbg !614
  %34 = load %struct.zip_entry*, %struct.zip_entry** %33, align 8, !dbg !614
  %35 = getelementptr inbounds %struct.zip, %struct.zip* %18, i32 0, i32 8, !dbg !615
  store %struct.zip_entry* %34, %struct.zip_entry** %35, align 8, !dbg !616
  %36 = getelementptr inbounds %struct.zip, %struct.zip* %18, i32 0, i32 8, !dbg !617
  %37 = load %struct.zip_entry*, %struct.zip_entry** %36, align 8, !dbg !617
  %38 = bitcast %struct.zip_entry* %37 to i8*, !dbg !618
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 136, i1 false), !dbg !618
  %39 = getelementptr inbounds %struct.zip, %struct.zip* %18, i32 0, i32 11, !dbg !619
  %40 = load i64, i64* %39, align 8, !dbg !619
  %41 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %40), !dbg !620
  %42 = getelementptr inbounds %struct.zip, %struct.zip* %18, i32 0, i32 11, !dbg !621
  store i64 0, i64* %42, align 8, !dbg !622
  br label %43, !dbg !623

43:                                               ; preds = %102, %32
  call void @llvm.dbg.value(metadata i64 0, metadata !624, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.declare(metadata i64* %3, metadata !629, metadata !DIExpression()), !dbg !630
  %44 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef 4, i64* noundef %3), !dbg !631
  call void @llvm.dbg.value(metadata i8* %44, metadata !632, metadata !DIExpression()), !dbg !628
  %45 = icmp eq i8* %44, null, !dbg !633
  br i1 %45, label %46, label %47, !dbg !635

46:                                               ; preds = %43
  br label %104, !dbg !636

47:                                               ; preds = %43
  %48 = load i64, i64* %3, align 8, !dbg !637
  %49 = getelementptr inbounds i8, i8* %44, i64 %48, !dbg !638
  call void @llvm.dbg.value(metadata i8* %49, metadata !639, metadata !DIExpression()), !dbg !628
  br label %50, !dbg !640

50:                                               ; preds = %99, %47
  %.02 = phi i64 [ 0, %47 ], [ %101, %99 ], !dbg !628
  %.01 = phi i8* [ %44, %47 ], [ %100, %99 ], !dbg !628
  call void @llvm.dbg.value(metadata i8* %.01, metadata !632, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i64 %.02, metadata !624, metadata !DIExpression()), !dbg !628
  %51 = getelementptr inbounds i8, i8* %.01, i64 4, !dbg !641
  %52 = icmp ule i8* %51, %49, !dbg !642
  br i1 %52, label %53, label %102, !dbg !640

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, i8* %.01, i64 0, !dbg !643
  %55 = load i8, i8* %54, align 1, !dbg !643
  %56 = sext i8 %55 to i32, !dbg !643
  %57 = icmp eq i32 %56, 80, !dbg !646
  br i1 %57, label %58, label %99, !dbg !647

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, i8* %.01, i64 1, !dbg !648
  %60 = load i8, i8* %59, align 1, !dbg !648
  %61 = sext i8 %60 to i32, !dbg !648
  %62 = icmp eq i32 %61, 75, !dbg !649
  br i1 %62, label %63, label %99, !dbg !650

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %.01, i64 2, !dbg !651
  %65 = load i8, i8* %64, align 1, !dbg !651
  %66 = sext i8 %65 to i32, !dbg !651
  %67 = icmp eq i32 %66, 1, !dbg !654
  br i1 %67, label %68, label %74, !dbg !655

68:                                               ; preds = %63
  %69 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !656
  %70 = load i8, i8* %69, align 1, !dbg !656
  %71 = sext i8 %70 to i32, !dbg !656
  %72 = icmp eq i32 %71, 2, !dbg !657
  br i1 %72, label %73, label %74, !dbg !658

73:                                               ; preds = %68
  br label %104, !dbg !659

74:                                               ; preds = %68, %63
  %75 = getelementptr inbounds i8, i8* %.01, i64 2, !dbg !660
  %76 = load i8, i8* %75, align 1, !dbg !660
  %77 = sext i8 %76 to i32, !dbg !660
  %78 = icmp eq i32 %77, 3, !dbg !662
  br i1 %78, label %79, label %87, !dbg !663

79:                                               ; preds = %74
  %80 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !664
  %81 = load i8, i8* %80, align 1, !dbg !664
  %82 = sext i8 %81 to i32, !dbg !664
  %83 = icmp eq i32 %82, 4, !dbg !665
  br i1 %83, label %84, label %87, !dbg !666

84:                                               ; preds = %79
  %85 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %.02), !dbg !667
  %86 = call i32 @zip_read_local_file_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1, %struct.zip* noundef %18), !dbg !669
  br label %104, !dbg !670

87:                                               ; preds = %79, %74
  %88 = getelementptr inbounds i8, i8* %.01, i64 2, !dbg !671
  %89 = load i8, i8* %88, align 1, !dbg !671
  %90 = sext i8 %89 to i32, !dbg !671
  %91 = icmp eq i32 %90, 5, !dbg !673
  br i1 %91, label %92, label %98, !dbg !674

92:                                               ; preds = %87
  %93 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !675
  %94 = load i8, i8* %93, align 1, !dbg !675
  %95 = sext i8 %94 to i32, !dbg !675
  %96 = icmp eq i32 %95, 6, !dbg !676
  br i1 %96, label %97, label %98, !dbg !677

97:                                               ; preds = %92
  br label %104, !dbg !678

98:                                               ; preds = %92, %87
  br label %99, !dbg !679

99:                                               ; preds = %98, %58, %53
  %100 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !680
  call void @llvm.dbg.value(metadata i8* %100, metadata !632, metadata !DIExpression()), !dbg !628
  %101 = add nsw i64 %.02, 1, !dbg !681
  call void @llvm.dbg.value(metadata i64 %101, metadata !624, metadata !DIExpression()), !dbg !628
  br label %50, !dbg !640, !llvm.loop !682

102:                                              ; preds = %50
  %103 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %.02), !dbg !685
  br label %43, !dbg !686, !llvm.loop !687

104:                                              ; preds = %97, %84, %73, %46, %29
  %.0 = phi i32 [ -30, %29 ], [ -30, %46 ], [ 1, %73 ], [ %86, %84 ], [ 1, %97 ], !dbg !579
  ret i32 %.0, !dbg !690
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_zip_read_data(%struct.archive_read* noundef %0, i8** noundef %1, i64* noundef %2, i64* noundef %3) #0 !dbg !691 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !692, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8** %1, metadata !694, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i64* %2, metadata !695, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i64* %3, metadata !696, metadata !DIExpression()), !dbg !693
  %5 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !697
  %6 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %5, align 8, !dbg !697
  %7 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %6, i32 0, i32 0, !dbg !698
  %8 = load i8*, i8** %7, align 8, !dbg !698
  %9 = bitcast i8* %8 to %struct.zip*, !dbg !699
  call void @llvm.dbg.value(metadata %struct.zip* %9, metadata !700, metadata !DIExpression()), !dbg !693
  %10 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 14, !dbg !701
  %11 = load i64, i64* %10, align 8, !dbg !701
  store i64 %11, i64* %3, align 8, !dbg !702
  store i64 0, i64* %2, align 8, !dbg !703
  store i8* null, i8** %1, align 8, !dbg !704
  %12 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 17, !dbg !705
  %13 = load i8, i8* %12, align 1, !dbg !705
  %14 = icmp ne i8 %13, 0, !dbg !707
  br i1 %14, label %15, label %16, !dbg !708

15:                                               ; preds = %4
  br label %129, !dbg !709

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 8, !dbg !710
  %18 = load %struct.zip_entry*, %struct.zip_entry** %17, align 8, !dbg !710
  %19 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %18, i32 0, i32 12, !dbg !712
  %20 = load i16, i16* %19, align 4, !dbg !712
  %21 = zext i16 %20 to i32, !dbg !713
  %22 = and i32 %21, 61440, !dbg !714
  %23 = icmp ne i32 32768, %22, !dbg !715
  br i1 %23, label %24, label %25, !dbg !716

24:                                               ; preds = %16
  br label %129, !dbg !717

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 8, !dbg !718
  %27 = load %struct.zip_entry*, %struct.zip_entry** %26, align 8, !dbg !718
  %28 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %27, i32 0, i32 13, !dbg !720
  %29 = load i16, i16* %28, align 2, !dbg !720
  %30 = zext i16 %29 to i32, !dbg !721
  %31 = and i32 %30, 65, !dbg !722
  %32 = icmp ne i32 %31, 0, !dbg !722
  br i1 %32, label %33, label %35, !dbg !723

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !724
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %34, i32 noundef 84, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i64 0, i64 0)), !dbg !726
  br label %129, !dbg !727

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 11, !dbg !728
  %37 = load i64, i64* %36, align 8, !dbg !728
  %38 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %37), !dbg !729
  %39 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 11, !dbg !730
  store i64 0, i64* %39, align 8, !dbg !731
  %40 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 8, !dbg !732
  %41 = load %struct.zip_entry*, %struct.zip_entry** %40, align 8, !dbg !732
  %42 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %41, i32 0, i32 14, !dbg !733
  %43 = load i8, i8* %42, align 8, !dbg !733
  %44 = sext i8 %43 to i32, !dbg !734
  switch i32 %44, label %49 [
    i32 0, label %45
    i32 8, label %47
  ], !dbg !735

45:                                               ; preds = %35
  %46 = call i32 @zip_read_data_none(%struct.archive_read* noundef %0, i8** noundef %1, i64* noundef %2, i64* noundef %3), !dbg !736
  call void @llvm.dbg.value(metadata i32 %46, metadata !738, metadata !DIExpression()), !dbg !693
  br label %57, !dbg !739

47:                                               ; preds = %35
  %48 = call i32 @zip_read_data_deflate(%struct.archive_read* noundef %0, i8** noundef %1, i64* noundef %2, i64* noundef %3), !dbg !740
  call void @llvm.dbg.value(metadata i32 %48, metadata !738, metadata !DIExpression()), !dbg !693
  br label %57, !dbg !741

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !742
  %51 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 8, !dbg !743
  %52 = load %struct.zip_entry*, %struct.zip_entry** %51, align 8, !dbg !743
  %53 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %52, i32 0, i32 14, !dbg !744
  %54 = load i8, i8* %53, align 8, !dbg !744
  %55 = sext i8 %54 to i32, !dbg !745
  %56 = call i8* @compression_name(i32 noundef %55), !dbg !746
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %50, i32 noundef 84, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef %56), !dbg !747
  br label %129, !dbg !748

57:                                               ; preds = %47, %45
  %.01 = phi i32 [ %48, %47 ], [ %46, %45 ], !dbg !749
  call void @llvm.dbg.value(metadata i32 %.01, metadata !738, metadata !DIExpression()), !dbg !693
  %58 = icmp ne i32 %.01, 0, !dbg !750
  br i1 %58, label %59, label %60, !dbg !752

59:                                               ; preds = %57
  br label %129, !dbg !753

60:                                               ; preds = %57
  %61 = load i64, i64* %2, align 8, !dbg !754
  %62 = icmp ne i64 %61, 0, !dbg !754
  br i1 %62, label %63, label %71, !dbg !756

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 15, !dbg !757
  %65 = load i64, i64* %64, align 8, !dbg !757
  %66 = load i8*, i8** %1, align 8, !dbg !758
  %67 = load i64, i64* %2, align 8, !dbg !759
  %68 = trunc i64 %67 to i32, !dbg !760
  %69 = call i64 @crc32(i64 noundef %65, i8* noundef %66, i32 noundef %68), !dbg !761
  %70 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 15, !dbg !762
  store i64 %69, i64* %70, align 8, !dbg !763
  br label %71, !dbg !764

71:                                               ; preds = %63, %60
  %72 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 17, !dbg !765
  %73 = load i8, i8* %72, align 1, !dbg !765
  %74 = icmp ne i8 %73, 0, !dbg !767
  br i1 %74, label %75, label %128, !dbg !768

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 8, !dbg !769
  %77 = load %struct.zip_entry*, %struct.zip_entry** %76, align 8, !dbg !769
  %78 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %77, i32 0, i32 2, !dbg !772
  %79 = load i64, i64* %78, align 8, !dbg !772
  %80 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 13, !dbg !773
  %81 = load i64, i64* %80, align 8, !dbg !773
  %82 = icmp ne i64 %79, %81, !dbg !774
  br i1 %82, label %83, label %91, !dbg !775

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !776
  %85 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 13, !dbg !778
  %86 = load i64, i64* %85, align 8, !dbg !778
  %87 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 8, !dbg !779
  %88 = load %struct.zip_entry*, %struct.zip_entry** %87, align 8, !dbg !779
  %89 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %88, i32 0, i32 2, !dbg !780
  %90 = load i64, i64* %89, align 8, !dbg !780
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %84, i32 noundef -1, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.45, i64 0, i64 0), i64 noundef %86, i64 noundef %90), !dbg !781
  br label %129, !dbg !782

91:                                               ; preds = %75
  %92 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 8, !dbg !783
  %93 = load %struct.zip_entry*, %struct.zip_entry** %92, align 8, !dbg !783
  %94 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %93, i32 0, i32 3, !dbg !785
  %95 = load i64, i64* %94, align 8, !dbg !785
  %96 = and i64 %95, 4294967295, !dbg !786
  %97 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 14, !dbg !787
  %98 = load i64, i64* %97, align 8, !dbg !787
  %99 = and i64 %98, 4294967295, !dbg !788
  %100 = icmp ne i64 %96, %99, !dbg !789
  br i1 %100, label %101, label %109, !dbg !790

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !791
  %103 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 14, !dbg !793
  %104 = load i64, i64* %103, align 8, !dbg !793
  %105 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 8, !dbg !794
  %106 = load %struct.zip_entry*, %struct.zip_entry** %105, align 8, !dbg !794
  %107 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %106, i32 0, i32 3, !dbg !795
  %108 = load i64, i64* %107, align 8, !dbg !795
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %102, i32 noundef -1, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.46, i64 0, i64 0), i64 noundef %104, i64 noundef %108), !dbg !796
  br label %129, !dbg !797

109:                                              ; preds = %91
  %110 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 8, !dbg !798
  %111 = load %struct.zip_entry*, %struct.zip_entry** %110, align 8, !dbg !798
  %112 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %111, i32 0, i32 11, !dbg !800
  %113 = load i32, i32* %112, align 8, !dbg !800
  %114 = zext i32 %113 to i64, !dbg !801
  %115 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 15, !dbg !802
  %116 = load i64, i64* %115, align 8, !dbg !802
  %117 = icmp ne i64 %114, %116, !dbg !803
  br i1 %117, label %118, label %127, !dbg !804

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !805
  %120 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 15, !dbg !807
  %121 = load i64, i64* %120, align 8, !dbg !807
  %122 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 8, !dbg !808
  %123 = load %struct.zip_entry*, %struct.zip_entry** %122, align 8, !dbg !808
  %124 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %123, i32 0, i32 11, !dbg !809
  %125 = load i32, i32* %124, align 8, !dbg !809
  %126 = zext i32 %125 to i64, !dbg !810
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %119, i32 noundef -1, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i64 0, i64 0), i64 noundef %121, i64 noundef %126), !dbg !811
  br label %129, !dbg !812

127:                                              ; preds = %109
  br label %128, !dbg !813

128:                                              ; preds = %127, %71
  br label %129, !dbg !814

129:                                              ; preds = %128, %118, %101, %83, %59, %49, %33, %24, %15
  %.0 = phi i32 [ 1, %15 ], [ 1, %24 ], [ -25, %33 ], [ -25, %49 ], [ %.01, %59 ], [ -20, %83 ], [ -20, %101 ], [ -20, %118 ], [ 0, %128 ], !dbg !693
  ret i32 %.0, !dbg !815
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_zip_read_data_skip(%struct.archive_read* noundef %0) #0 !dbg !816 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !817, metadata !DIExpression()), !dbg !818
  %6 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !819
  %7 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %6, align 8, !dbg !819
  %8 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %7, i32 0, i32 0, !dbg !820
  %9 = load i8*, i8** %8, align 8, !dbg !820
  %10 = bitcast i8* %9 to %struct.zip*, !dbg !821
  call void @llvm.dbg.value(metadata %struct.zip* %10, metadata !822, metadata !DIExpression()), !dbg !818
  %11 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 17, !dbg !823
  %12 = load i8, i8* %11, align 1, !dbg !823
  %13 = icmp ne i8 %12, 0, !dbg !825
  br i1 %13, label %14, label %15, !dbg !826

14:                                               ; preds = %1
  br label %127, !dbg !827

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 8, !dbg !828
  %17 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !828
  %18 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %17, i32 0, i32 13, !dbg !830
  %19 = load i16, i16* %18, align 2, !dbg !830
  %20 = zext i16 %19 to i32, !dbg !831
  %21 = and i32 %20, 8, !dbg !832
  %22 = icmp eq i32 0, %21, !dbg !833
  br i1 %22, label %23, label %34, !dbg !834

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 12, !dbg !835
  %25 = load i64, i64* %24, align 8, !dbg !835
  %26 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 11, !dbg !837
  %27 = load i64, i64* %26, align 8, !dbg !837
  %28 = add i64 %25, %27, !dbg !838
  %29 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %28), !dbg !839
  call void @llvm.dbg.value(metadata i64 %29, metadata !840, metadata !DIExpression()), !dbg !841
  %30 = icmp slt i64 %29, 0, !dbg !842
  br i1 %30, label %31, label %32, !dbg !844

31:                                               ; preds = %23
  br label %127, !dbg !845

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 11, !dbg !846
  store i64 0, i64* %33, align 8, !dbg !847
  br label %127, !dbg !848

34:                                               ; preds = %15
  %35 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 8, !dbg !849
  %36 = load %struct.zip_entry*, %struct.zip_entry** %35, align 8, !dbg !849
  %37 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 14, !dbg !850
  %38 = load i8, i8* %37, align 8, !dbg !850
  %39 = sext i8 %38 to i32, !dbg !851
  switch i32 %39, label %52 [
    i32 8, label %40
  ], !dbg !852

40:                                               ; preds = %34
  br label %41, !dbg !853

41:                                               ; preds = %50, %40
  %42 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 17, !dbg !855
  %43 = load i8, i8* %42, align 1, !dbg !855
  %44 = icmp ne i8 %43, 0, !dbg !856
  %45 = xor i1 %44, true, !dbg !856
  br i1 %45, label %46, label %51, !dbg !853

46:                                               ; preds = %41
  call void @llvm.dbg.declare(metadata i64* %2, metadata !857, metadata !DIExpression()), !dbg !859
  store i64 0, i64* %2, align 8, !dbg !859
  call void @llvm.dbg.declare(metadata i8** %3, metadata !860, metadata !DIExpression()), !dbg !861
  store i8* null, i8** %3, align 8, !dbg !861
  call void @llvm.dbg.declare(metadata i64* %4, metadata !862, metadata !DIExpression()), !dbg !863
  store i64 0, i64* %4, align 8, !dbg !863
  %47 = call i32 @zip_read_data_deflate(%struct.archive_read* noundef %0, i8** noundef %3, i64* noundef %4, i64* noundef %2), !dbg !864
  call void @llvm.dbg.value(metadata i32 %47, metadata !865, metadata !DIExpression()), !dbg !866
  %48 = icmp ne i32 %47, 0, !dbg !867
  br i1 %48, label %49, label %50, !dbg !869

49:                                               ; preds = %46
  br label %127, !dbg !870

50:                                               ; preds = %46
  br label %41, !dbg !853, !llvm.loop !871

51:                                               ; preds = %41
  br label %127, !dbg !873

52:                                               ; preds = %34
  %53 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 11, !dbg !874
  %54 = load i64, i64* %53, align 8, !dbg !874
  %55 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %54), !dbg !875
  %56 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 11, !dbg !876
  store i64 0, i64* %56, align 8, !dbg !877
  br label %57, !dbg !878

57:                                               ; preds = %122, %52
  call void @llvm.dbg.declare(metadata i64* %5, metadata !879, metadata !DIExpression()), !dbg !883
  %58 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef 16, i64* noundef %5), !dbg !884
  call void @llvm.dbg.value(metadata i8* %58, metadata !885, metadata !DIExpression()), !dbg !886
  %59 = load i64, i64* %5, align 8, !dbg !887
  %60 = icmp slt i64 %59, 16, !dbg !889
  br i1 %60, label %61, label %63, !dbg !890

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !891
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %62, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i64 0, i64 0)), !dbg !893
  br label %127, !dbg !894

63:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %58, metadata !895, metadata !DIExpression()), !dbg !886
  br label %64, !dbg !896

64:                                               ; preds = %121, %63
  %.01 = phi i8* [ %58, %63 ], [ %.3, %121 ], !dbg !886
  call void @llvm.dbg.value(metadata i8* %.01, metadata !895, metadata !DIExpression()), !dbg !886
  %65 = load i64, i64* %5, align 8, !dbg !897
  %66 = getelementptr inbounds i8, i8* %58, i64 %65, !dbg !898
  %67 = getelementptr inbounds i8, i8* %66, i64 -16, !dbg !899
  %68 = icmp ule i8* %.01, %67, !dbg !900
  br i1 %68, label %69, label %122, !dbg !896

69:                                               ; preds = %64
  %70 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !901
  %71 = load i8, i8* %70, align 1, !dbg !901
  %72 = sext i8 %71 to i32, !dbg !901
  %73 = icmp eq i32 %72, 80, !dbg !904
  br i1 %73, label %74, label %76, !dbg !905

74:                                               ; preds = %69
  %75 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !906
  call void @llvm.dbg.value(metadata i8* %75, metadata !895, metadata !DIExpression()), !dbg !886
  br label %121, !dbg !908

76:                                               ; preds = %69
  %77 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !909
  %78 = load i8, i8* %77, align 1, !dbg !909
  %79 = sext i8 %78 to i32, !dbg !909
  %80 = icmp eq i32 %79, 75, !dbg !911
  br i1 %80, label %81, label %83, !dbg !912

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, i8* %.01, i64 2, !dbg !913
  call void @llvm.dbg.value(metadata i8* %82, metadata !895, metadata !DIExpression()), !dbg !886
  br label %120, !dbg !915

83:                                               ; preds = %76
  %84 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !916
  %85 = load i8, i8* %84, align 1, !dbg !916
  %86 = sext i8 %85 to i32, !dbg !916
  %87 = icmp eq i32 %86, 7, !dbg !918
  br i1 %87, label %88, label %90, !dbg !919

88:                                               ; preds = %83
  %89 = getelementptr inbounds i8, i8* %.01, i64 1, !dbg !920
  call void @llvm.dbg.value(metadata i8* %89, metadata !895, metadata !DIExpression()), !dbg !886
  br label %119, !dbg !922

90:                                               ; preds = %83
  %91 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !923
  %92 = load i8, i8* %91, align 1, !dbg !923
  %93 = sext i8 %92 to i32, !dbg !923
  %94 = icmp eq i32 %93, 8, !dbg !925
  br i1 %94, label %95, label %116, !dbg !926

95:                                               ; preds = %90
  %96 = getelementptr inbounds i8, i8* %.01, i64 2, !dbg !927
  %97 = load i8, i8* %96, align 1, !dbg !927
  %98 = sext i8 %97 to i32, !dbg !927
  %99 = icmp eq i32 %98, 7, !dbg !928
  br i1 %99, label %100, label %116, !dbg !929

100:                                              ; preds = %95
  %101 = getelementptr inbounds i8, i8* %.01, i64 1, !dbg !930
  %102 = load i8, i8* %101, align 1, !dbg !930
  %103 = sext i8 %102 to i32, !dbg !930
  %104 = icmp eq i32 %103, 75, !dbg !931
  br i1 %104, label %105, label %116, !dbg !932

105:                                              ; preds = %100
  %106 = getelementptr inbounds i8, i8* %.01, i64 0, !dbg !933
  %107 = load i8, i8* %106, align 1, !dbg !933
  %108 = sext i8 %107 to i32, !dbg !933
  %109 = icmp eq i32 %108, 80, !dbg !934
  br i1 %109, label %110, label %116, !dbg !935

110:                                              ; preds = %105
  %111 = ptrtoint i8* %.01 to i64, !dbg !936
  %112 = ptrtoint i8* %58 to i64, !dbg !936
  %113 = sub i64 %111, %112, !dbg !936
  %114 = add nsw i64 %113, 16, !dbg !938
  %115 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %114), !dbg !939
  br label %127, !dbg !940

116:                                              ; preds = %105, %100, %95, %90
  %117 = getelementptr inbounds i8, i8* %.01, i64 4, !dbg !941
  call void @llvm.dbg.value(metadata i8* %117, metadata !895, metadata !DIExpression()), !dbg !886
  br label %118

118:                                              ; preds = %116
  br label %119

119:                                              ; preds = %118, %88
  %.1 = phi i8* [ %89, %88 ], [ %117, %118 ], !dbg !943
  call void @llvm.dbg.value(metadata i8* %.1, metadata !895, metadata !DIExpression()), !dbg !886
  br label %120

120:                                              ; preds = %119, %81
  %.2 = phi i8* [ %82, %81 ], [ %.1, %119 ], !dbg !944
  call void @llvm.dbg.value(metadata i8* %.2, metadata !895, metadata !DIExpression()), !dbg !886
  br label %121

121:                                              ; preds = %120, %74
  %.3 = phi i8* [ %75, %74 ], [ %.2, %120 ], !dbg !945
  call void @llvm.dbg.value(metadata i8* %.3, metadata !895, metadata !DIExpression()), !dbg !886
  br label %64, !dbg !896, !llvm.loop !946

122:                                              ; preds = %64
  %123 = ptrtoint i8* %.01 to i64, !dbg !948
  %124 = ptrtoint i8* %58 to i64, !dbg !948
  %125 = sub i64 %123, %124, !dbg !948
  %126 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %125), !dbg !949
  br label %57, !dbg !950, !llvm.loop !951

127:                                              ; preds = %110, %61, %51, %49, %32, %31, %14
  %.0 = phi i32 [ 0, %14 ], [ -30, %31 ], [ 0, %32 ], [ -30, %61 ], [ 0, %110 ], [ %47, %49 ], [ 0, %51 ], !dbg !818
  ret i32 %.0, !dbg !954
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_zip_cleanup(%struct.archive_read* noundef %0) #0 !dbg !955 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !956, metadata !DIExpression()), !dbg !957
  %2 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !958
  %3 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %2, align 8, !dbg !958
  %4 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %3, i32 0, i32 0, !dbg !959
  %5 = load i8*, i8** %4, align 8, !dbg !959
  %6 = bitcast i8* %5 to %struct.zip*, !dbg !960
  call void @llvm.dbg.value(metadata %struct.zip* %6, metadata !961, metadata !DIExpression()), !dbg !957
  %7 = getelementptr inbounds %struct.zip, %struct.zip* %6, i32 0, i32 23, !dbg !962
  %8 = load i8, i8* %7, align 8, !dbg !962
  %9 = icmp ne i8 %8, 0, !dbg !964
  br i1 %9, label %10, label %13, !dbg !965

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.zip, %struct.zip* %6, i32 0, i32 22, !dbg !966
  %12 = call i32 @inflateEnd(%struct.z_stream_s* noundef %11), !dbg !967
  br label %13, !dbg !967

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.zip, %struct.zip* %6, i32 0, i32 7, !dbg !968
  %15 = load %struct.zip_entry*, %struct.zip_entry** %14, align 8, !dbg !968
  %16 = icmp ne %struct.zip_entry* %15, null, !dbg !970
  br i1 %16, label %17, label %36, !dbg !971

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.zip, %struct.zip* %6, i32 0, i32 3, !dbg !972
  %19 = load i64, i64* %18, align 8, !dbg !972
  %20 = icmp ne i64 %19, 0, !dbg !973
  br i1 %20, label %21, label %36, !dbg !974

21:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32 0, metadata !975, metadata !DIExpression()), !dbg !977
  br label %22, !dbg !978

22:                                               ; preds = %33, %21
  %.0 = phi i32 [ 0, %21 ], [ %34, %33 ], !dbg !980
  call void @llvm.dbg.value(metadata i32 %.0, metadata !975, metadata !DIExpression()), !dbg !977
  %23 = zext i32 %.0 to i64, !dbg !981
  %24 = getelementptr inbounds %struct.zip, %struct.zip* %6, i32 0, i32 3, !dbg !983
  %25 = load i64, i64* %24, align 8, !dbg !983
  %26 = icmp ult i64 %23, %25, !dbg !984
  br i1 %26, label %27, label %35, !dbg !985

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.zip, %struct.zip* %6, i32 0, i32 7, !dbg !986
  %29 = load %struct.zip_entry*, %struct.zip_entry** %28, align 8, !dbg !986
  %30 = zext i32 %.0 to i64, !dbg !987
  %31 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %29, i64 %30, !dbg !987
  %32 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %31, i32 0, i32 7, !dbg !988
  call void @archive_string_free(%struct.archive_string* noundef %32), !dbg !989
  br label %33, !dbg !989

33:                                               ; preds = %27
  %34 = add i32 %.0, 1, !dbg !990
  call void @llvm.dbg.value(metadata i32 %34, metadata !975, metadata !DIExpression()), !dbg !977
  br label %22, !dbg !991, !llvm.loop !992

35:                                               ; preds = %22
  br label %36, !dbg !994

36:                                               ; preds = %35, %17, %13
  %37 = getelementptr inbounds %struct.zip, %struct.zip* %6, i32 0, i32 7, !dbg !995
  %38 = load %struct.zip_entry*, %struct.zip_entry** %37, align 8, !dbg !995
  %39 = bitcast %struct.zip_entry* %38 to i8*, !dbg !996
  call void @free(i8* noundef %39) #8, !dbg !997
  %40 = getelementptr inbounds %struct.zip, %struct.zip* %6, i32 0, i32 20, !dbg !998
  %41 = load i8*, i8** %40, align 8, !dbg !998
  call void @free(i8* noundef %41) #8, !dbg !999
  %42 = getelementptr inbounds %struct.zip, %struct.zip* %6, i32 0, i32 24, !dbg !1000
  call void @archive_string_free(%struct.archive_string* noundef %42), !dbg !1001
  %43 = bitcast %struct.zip* %6 to i8*, !dbg !1002
  call void @free(i8* noundef %43) #8, !dbg !1003
  %44 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !1004
  %45 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %44, align 8, !dbg !1004
  %46 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %45, i32 0, i32 0, !dbg !1005
  store i8* null, i8** %46, align 8, !dbg !1006
  ret i32 0, !dbg !1007
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @archive_read_support_format_zip_seekable(%struct.archive* noundef %0) #0 !dbg !1008 {
  call void @llvm.dbg.value(metadata %struct.archive* %0, metadata !1009, metadata !DIExpression()), !dbg !1010
  %2 = bitcast %struct.archive* %0 to %struct.archive_read*, !dbg !1011
  call void @llvm.dbg.value(metadata %struct.archive_read* %2, metadata !1012, metadata !DIExpression()), !dbg !1010
  br label %3, !dbg !1013

3:                                                ; preds = %1
  %4 = call i32 @__archive_check_magic(%struct.archive* noundef %0, i32 noundef 14594245, i32 noundef 1, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)), !dbg !1014
  call void @llvm.dbg.value(metadata i32 %4, metadata !1016, metadata !DIExpression()), !dbg !1017
  %5 = icmp eq i32 %4, -30, !dbg !1018
  br i1 %5, label %6, label %7, !dbg !1014

6:                                                ; preds = %3
  br label %22, !dbg !1018

7:                                                ; preds = %3
  br label %8, !dbg !1014

8:                                                ; preds = %7
  %9 = call noalias i8* @malloc(i64 noundef 424) #8, !dbg !1020
  %10 = bitcast i8* %9 to %struct.zip*, !dbg !1021
  call void @llvm.dbg.value(metadata %struct.zip* %10, metadata !1022, metadata !DIExpression()), !dbg !1010
  %11 = icmp eq %struct.zip* %10, null, !dbg !1023
  br i1 %11, label %12, label %14, !dbg !1025

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %2, i32 0, i32 0, !dbg !1026
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %13, i32 noundef 12, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)), !dbg !1028
  br label %22, !dbg !1029

14:                                               ; preds = %8
  %15 = bitcast %struct.zip* %10 to i8*, !dbg !1030
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 424, i1 false), !dbg !1030
  %16 = bitcast %struct.zip* %10 to i8*, !dbg !1031
  %17 = call i32 @__archive_read_register_format(%struct.archive_read* noundef %2, i8* noundef %16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 (%struct.archive_read*, i32)* noundef @archive_read_format_zip_seekable_bid, i32 (%struct.archive_read*, i8*, i8*)* noundef @archive_read_format_zip_options, i32 (%struct.archive_read*, %struct.archive_entry*)* noundef @archive_read_format_zip_seekable_read_header, i32 (%struct.archive_read*, i8**, i64*, i64*)* noundef @archive_read_format_zip_read_data, i32 (%struct.archive_read*)* noundef @archive_read_format_zip_read_data_skip, i64 (%struct.archive_read*, i64, i32)* noundef null, i32 (%struct.archive_read*)* noundef @archive_read_format_zip_cleanup), !dbg !1032
  call void @llvm.dbg.value(metadata i32 %17, metadata !1033, metadata !DIExpression()), !dbg !1010
  %18 = icmp ne i32 %17, 0, !dbg !1034
  br i1 %18, label %19, label %21, !dbg !1036

19:                                               ; preds = %14
  %20 = bitcast %struct.zip* %10 to i8*, !dbg !1037
  call void @free(i8* noundef %20) #8, !dbg !1038
  br label %21, !dbg !1038

21:                                               ; preds = %19, %14
  br label %22, !dbg !1039

22:                                               ; preds = %21, %12, %6
  %.0 = phi i32 [ -30, %6 ], [ -30, %12 ], [ 0, %21 ], !dbg !1010
  ret i32 %.0, !dbg !1040
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_zip_seekable_bid(%struct.archive_read* noundef %0, i32 noundef %1) #0 !dbg !1041 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !1042, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i32 %1, metadata !1044, metadata !DIExpression()), !dbg !1043
  %3 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !1045
  %4 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %3, align 8, !dbg !1045
  %5 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %4, i32 0, i32 0, !dbg !1046
  %6 = load i8*, i8** %5, align 8, !dbg !1046
  %7 = bitcast i8* %6 to %struct.zip*, !dbg !1047
  call void @llvm.dbg.value(metadata %struct.zip* %7, metadata !1048, metadata !DIExpression()), !dbg !1043
  %8 = icmp sgt i32 %1, 32, !dbg !1049
  br i1 %8, label %9, label %10, !dbg !1051

9:                                                ; preds = %2
  br label %108, !dbg !1052

10:                                               ; preds = %2
  %11 = call i64 @__archive_read_seek(%struct.archive_read* noundef %0, i64 noundef -22, i32 noundef 2), !dbg !1053
  call void @llvm.dbg.value(metadata i64 %11, metadata !1054, metadata !DIExpression()), !dbg !1043
  %12 = icmp sle i64 %11, 0, !dbg !1055
  br i1 %12, label %13, label %14, !dbg !1057

13:                                               ; preds = %10
  br label %108, !dbg !1058

14:                                               ; preds = %10
  %15 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef 22, i64* noundef null), !dbg !1059
  call void @llvm.dbg.value(metadata i8* %15, metadata !1061, metadata !DIExpression()), !dbg !1043
  %16 = icmp eq i8* %15, null, !dbg !1062
  br i1 %16, label %17, label %18, !dbg !1063

17:                                               ; preds = %14
  br label %108, !dbg !1064

18:                                               ; preds = %14
  %19 = call i32 @memcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 noundef 8) #9, !dbg !1065
  %20 = icmp ne i32 %19, 0, !dbg !1067
  br i1 %20, label %21, label %78, !dbg !1068

21:                                               ; preds = %18
  %22 = add nsw i64 %11, 22, !dbg !1069
  %23 = icmp sgt i64 %22, 16384, !dbg !1072
  br i1 %23, label %24, label %27, !dbg !1073

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 16384, metadata !1074, metadata !DIExpression()), !dbg !1075
  %25 = mul nsw i64 16384, -1, !dbg !1076
  %26 = call i64 @__archive_read_seek(%struct.archive_read* noundef %0, i64 noundef %25, i32 noundef 2), !dbg !1078
  call void @llvm.dbg.value(metadata i64 %26, metadata !1054, metadata !DIExpression()), !dbg !1043
  br label %30, !dbg !1079

27:                                               ; preds = %21
  %28 = add nsw i64 %11, 22, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %28, metadata !1074, metadata !DIExpression()), !dbg !1075
  %29 = call i64 @__archive_read_seek(%struct.archive_read* noundef %0, i64 noundef 0, i32 noundef 0), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %29, metadata !1054, metadata !DIExpression()), !dbg !1043
  br label %30

30:                                               ; preds = %27, %24
  %.06 = phi i64 [ %26, %24 ], [ %29, %27 ], !dbg !1083
  %.02 = phi i64 [ 16384, %24 ], [ %28, %27 ], !dbg !1083
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1074, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %.06, metadata !1054, metadata !DIExpression()), !dbg !1043
  %31 = icmp slt i64 %.06, 0, !dbg !1084
  br i1 %31, label %32, label %33, !dbg !1086

32:                                               ; preds = %30
  br label %108, !dbg !1087

33:                                               ; preds = %30
  %34 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef %.02, i64* noundef null), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %34, metadata !1061, metadata !DIExpression()), !dbg !1043
  %35 = icmp eq i8* %34, null, !dbg !1090
  br i1 %35, label %36, label %37, !dbg !1091

36:                                               ; preds = %33
  br label %108, !dbg !1092

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 0, metadata !1093, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i64 0, metadata !1094, metadata !DIExpression()), !dbg !1075
  br label %38, !dbg !1095

38:                                               ; preds = %73, %37
  %.09 = phi i8* [ %34, %37 ], [ %.211, %73 ], !dbg !1097
  %.17 = phi i64 [ %.06, %37 ], [ %.3, %73 ], !dbg !1098
  %.03 = phi i64 [ 0, %37 ], [ %.25, %73 ], !dbg !1099
  %.01 = phi i32 [ 0, %37 ], [ %.2, %73 ], !dbg !1100
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1093, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1094, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %.17, metadata !1054, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %.09, metadata !1061, metadata !DIExpression()), !dbg !1043
  %39 = icmp ne i32 %.01, 0, !dbg !1101
  br i1 %39, label %43, label %40, !dbg !1103

40:                                               ; preds = %38
  %41 = sub nsw i64 %.02, 22, !dbg !1104
  %42 = icmp slt i64 %.03, %41, !dbg !1105
  br label %43

43:                                               ; preds = %40, %38
  %44 = phi i1 [ false, %38 ], [ %42, %40 ], !dbg !1106
  br i1 %44, label %45, label %74, !dbg !1107

45:                                               ; preds = %43
  %46 = getelementptr inbounds i8, i8* %.09, i64 %.03, !dbg !1108
  %47 = load i8, i8* %46, align 1, !dbg !1108
  %48 = sext i8 %47 to i32, !dbg !1108
  switch i32 %48, label %71 [
    i32 80, label %49
    i32 75, label %65
    i32 5, label %67
    i32 6, label %69
  ], !dbg !1110

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, i8* %.09, i64 %.03, !dbg !1111
  %51 = call i32 @memcmp(i8* noundef %50, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 noundef 8) #9, !dbg !1114
  %52 = icmp eq i32 %51, 0, !dbg !1115
  br i1 %52, label %53, label %62, !dbg !1116

53:                                               ; preds = %49
  %54 = getelementptr inbounds i8, i8* %.09, i64 %.03, !dbg !1117
  call void @llvm.dbg.value(metadata i8* %54, metadata !1061, metadata !DIExpression()), !dbg !1043
  %55 = getelementptr inbounds i8, i8* %54, i64 20, !dbg !1119
  %56 = call zeroext i16 @archive_le16dec(i8* noundef %55), !dbg !1120
  %57 = zext i16 %56 to i32, !dbg !1120
  %58 = add nsw i32 22, %57, !dbg !1121
  %59 = sext i32 %58 to i64, !dbg !1122
  %60 = sub nsw i64 %.02, %59, !dbg !1123
  %61 = add nsw i64 %.17, %60, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %61, metadata !1054, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i32 1, metadata !1093, metadata !DIExpression()), !dbg !1075
  br label %64, !dbg !1125

62:                                               ; preds = %49
  %63 = add nsw i64 %.03, 8, !dbg !1126
  call void @llvm.dbg.value(metadata i64 %63, metadata !1094, metadata !DIExpression()), !dbg !1075
  br label %64

64:                                               ; preds = %62, %53
  %.110 = phi i8* [ %54, %53 ], [ %.09, %62 ], !dbg !1075
  %.28 = phi i64 [ %61, %53 ], [ %.17, %62 ], !dbg !1075
  %.14 = phi i64 [ %.03, %53 ], [ %63, %62 ], !dbg !1099
  %.1 = phi i32 [ 1, %53 ], [ %.01, %62 ], !dbg !1099
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1093, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %.14, metadata !1094, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %.28, metadata !1054, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %.110, metadata !1061, metadata !DIExpression()), !dbg !1043
  br label %73, !dbg !1127

65:                                               ; preds = %45
  %66 = add nsw i64 %.03, 7, !dbg !1128
  call void @llvm.dbg.value(metadata i64 %66, metadata !1094, metadata !DIExpression()), !dbg !1075
  br label %73, !dbg !1129

67:                                               ; preds = %45
  %68 = add nsw i64 %.03, 6, !dbg !1130
  call void @llvm.dbg.value(metadata i64 %68, metadata !1094, metadata !DIExpression()), !dbg !1075
  br label %73, !dbg !1131

69:                                               ; preds = %45
  %70 = add nsw i64 %.03, 5, !dbg !1132
  call void @llvm.dbg.value(metadata i64 %70, metadata !1094, metadata !DIExpression()), !dbg !1075
  br label %73, !dbg !1133

71:                                               ; preds = %45
  %72 = add nsw i64 %.03, 1, !dbg !1134
  call void @llvm.dbg.value(metadata i64 %72, metadata !1094, metadata !DIExpression()), !dbg !1075
  br label %73, !dbg !1135

73:                                               ; preds = %71, %69, %67, %65, %64
  %.211 = phi i8* [ %.09, %71 ], [ %.09, %69 ], [ %.09, %67 ], [ %.09, %65 ], [ %.110, %64 ], !dbg !1075
  %.3 = phi i64 [ %.17, %71 ], [ %.17, %69 ], [ %.17, %67 ], [ %.17, %65 ], [ %.28, %64 ], !dbg !1075
  %.25 = phi i64 [ %72, %71 ], [ %70, %69 ], [ %68, %67 ], [ %66, %65 ], [ %.14, %64 ], !dbg !1099
  %.2 = phi i32 [ %.01, %71 ], [ %.01, %69 ], [ %.01, %67 ], [ %.01, %65 ], [ %.1, %64 ], !dbg !1099
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1093, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %.25, metadata !1094, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %.3, metadata !1054, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %.211, metadata !1061, metadata !DIExpression()), !dbg !1043
  br label %38, !dbg !1136, !llvm.loop !1137

74:                                               ; preds = %43
  %75 = icmp ne i32 %.01, 0, !dbg !1139
  br i1 %75, label %77, label %76, !dbg !1141

76:                                               ; preds = %74
  br label %108, !dbg !1142

77:                                               ; preds = %74
  br label %78, !dbg !1143

78:                                               ; preds = %77, %18
  %.312 = phi i8* [ %.09, %77 ], [ %15, %18 ], !dbg !1043
  %.4 = phi i64 [ %.17, %77 ], [ %11, %18 ], !dbg !1043
  call void @llvm.dbg.value(metadata i64 %.4, metadata !1054, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %.312, metadata !1061, metadata !DIExpression()), !dbg !1043
  %79 = getelementptr inbounds i8, i8* %.312, i64 10, !dbg !1144
  %80 = call zeroext i16 @archive_le16dec(i8* noundef %79), !dbg !1145
  %81 = zext i16 %80 to i64, !dbg !1145
  %82 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 3, !dbg !1146
  store i64 %81, i64* %82, align 8, !dbg !1147
  %83 = getelementptr inbounds i8, i8* %.312, i64 12, !dbg !1148
  %84 = call i32 @archive_le32dec(i8* noundef %83), !dbg !1149
  %85 = zext i32 %84 to i64, !dbg !1149
  %86 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 2, !dbg !1150
  store i64 %85, i64* %86, align 8, !dbg !1151
  %87 = getelementptr inbounds i8, i8* %.312, i64 16, !dbg !1152
  %88 = call i32 @archive_le32dec(i8* noundef %87), !dbg !1153
  %89 = zext i32 %88 to i64, !dbg !1153
  %90 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 1, !dbg !1154
  store i64 %89, i64* %90, align 8, !dbg !1155
  %91 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 0, !dbg !1156
  store i64 %.4, i64* %91, align 8, !dbg !1157
  %92 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 3, !dbg !1158
  %93 = load i64, i64* %92, align 8, !dbg !1158
  %94 = getelementptr inbounds i8, i8* %.312, i64 8, !dbg !1160
  %95 = call zeroext i16 @archive_le16dec(i8* noundef %94), !dbg !1161
  %96 = zext i16 %95 to i64, !dbg !1161
  %97 = icmp ne i64 %93, %96, !dbg !1162
  br i1 %97, label %98, label %99, !dbg !1163

98:                                               ; preds = %78
  br label %108, !dbg !1164

99:                                               ; preds = %78
  %100 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 1, !dbg !1165
  %101 = load i64, i64* %100, align 8, !dbg !1165
  %102 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 2, !dbg !1167
  %103 = load i64, i64* %102, align 8, !dbg !1167
  %104 = add nsw i64 %101, %103, !dbg !1168
  %105 = icmp sgt i64 %104, %.4, !dbg !1169
  br i1 %105, label %106, label %107, !dbg !1170

106:                                              ; preds = %99
  br label %108, !dbg !1171

107:                                              ; preds = %99
  br label %108, !dbg !1172

108:                                              ; preds = %107, %106, %98, %76, %36, %32, %17, %13, %9
  %.0 = phi i32 [ -1, %9 ], [ 0, %13 ], [ 0, %17 ], [ 0, %32 ], [ 0, %36 ], [ 0, %98 ], [ 0, %106 ], [ 32, %107 ], [ 0, %76 ], !dbg !1043
  ret i32 %.0, !dbg !1173
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_zip_seekable_read_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1) #0 !dbg !1174 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !1175, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata %struct.archive_entry* %1, metadata !1177, metadata !DIExpression()), !dbg !1176
  %3 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !1178
  %4 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %3, align 8, !dbg !1178
  %5 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %4, i32 0, i32 0, !dbg !1179
  %6 = load i8*, i8** %5, align 8, !dbg !1179
  %7 = bitcast i8* %6 to %struct.zip*, !dbg !1180
  call void @llvm.dbg.value(metadata %struct.zip* %7, metadata !1181, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i32 0, metadata !1182, metadata !DIExpression()), !dbg !1176
  %8 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1183
  %9 = getelementptr inbounds %struct.archive, %struct.archive* %8, i32 0, i32 3, !dbg !1184
  store i32 327680, i32* %9, align 8, !dbg !1185
  %10 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1186
  %11 = getelementptr inbounds %struct.archive, %struct.archive* %10, i32 0, i32 4, !dbg !1188
  %12 = load i8*, i8** %11, align 8, !dbg !1188
  %13 = icmp eq i8* %12, null, !dbg !1189
  br i1 %13, label %14, label %17, !dbg !1190

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1191
  %16 = getelementptr inbounds %struct.archive, %struct.archive* %15, i32 0, i32 4, !dbg !1192
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8, !dbg !1193
  br label %17, !dbg !1194

17:                                               ; preds = %14, %2
  %18 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 7, !dbg !1195
  %19 = load %struct.zip_entry*, %struct.zip_entry** %18, align 8, !dbg !1195
  %20 = icmp eq %struct.zip_entry* %19, null, !dbg !1197
  br i1 %20, label %21, label %33, !dbg !1198

21:                                               ; preds = %17
  %22 = call i32 @slurp_central_directory(%struct.archive_read* noundef %0, %struct.zip* noundef %7), !dbg !1199
  call void @llvm.dbg.value(metadata i32 %22, metadata !1201, metadata !DIExpression()), !dbg !1176
  %23 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 3, !dbg !1202
  %24 = load i64, i64* %23, align 8, !dbg !1202
  %25 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 6, !dbg !1203
  store i64 %24, i64* %25, align 8, !dbg !1204
  %26 = icmp ne i32 %22, 0, !dbg !1205
  br i1 %26, label %27, label %28, !dbg !1207

27:                                               ; preds = %21
  br label %203, !dbg !1208

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 9, !dbg !1209
  %30 = call %struct.archive_rb_node* @__archive_rb_tree_iterate(%struct.archive_rb_tree* noundef %29, %struct.archive_rb_node* noundef null, i32 noundef 0), !dbg !1209
  %31 = bitcast %struct.archive_rb_node* %30 to %struct.zip_entry*, !dbg !1210
  %32 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1211
  store %struct.zip_entry* %31, %struct.zip_entry** %32, align 8, !dbg !1212
  br label %46, !dbg !1213

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1214
  %35 = load %struct.zip_entry*, %struct.zip_entry** %34, align 8, !dbg !1214
  %36 = icmp ne %struct.zip_entry* %35, null, !dbg !1216
  br i1 %36, label %37, label %45, !dbg !1217

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 9, !dbg !1218
  %39 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1220
  %40 = load %struct.zip_entry*, %struct.zip_entry** %39, align 8, !dbg !1220
  %41 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %40, i32 0, i32 0, !dbg !1221
  %42 = call %struct.archive_rb_node* @__archive_rb_tree_iterate(%struct.archive_rb_tree* noundef %38, %struct.archive_rb_node* noundef %41, i32 noundef 1), !dbg !1222
  %43 = bitcast %struct.archive_rb_node* %42 to %struct.zip_entry*, !dbg !1223
  %44 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1224
  store %struct.zip_entry* %43, %struct.zip_entry** %44, align 8, !dbg !1225
  br label %45, !dbg !1226

45:                                               ; preds = %37, %33
  br label %46

46:                                               ; preds = %45, %28
  %47 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 6, !dbg !1227
  %48 = load i64, i64* %47, align 8, !dbg !1227
  %49 = icmp ule i64 %48, 0, !dbg !1229
  br i1 %49, label %54, label %50, !dbg !1230

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1231
  %52 = load %struct.zip_entry*, %struct.zip_entry** %51, align 8, !dbg !1231
  %53 = icmp eq %struct.zip_entry* %52, null, !dbg !1232
  br i1 %53, label %54, label %55, !dbg !1233

54:                                               ; preds = %50, %46
  br label %203, !dbg !1234

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 6, !dbg !1235
  %57 = load i64, i64* %56, align 8, !dbg !1236
  %58 = add i64 %57, -1, !dbg !1236
  store i64 %58, i64* %56, align 8, !dbg !1236
  %59 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1237
  %60 = load %struct.zip_entry*, %struct.zip_entry** %59, align 8, !dbg !1237
  %61 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %60, i32 0, i32 7, !dbg !1239
  %62 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %61, i32 0, i32 0, !dbg !1240
  %63 = load i8*, i8** %62, align 8, !dbg !1240
  %64 = icmp ne i8* %63, null, !dbg !1241
  br i1 %64, label %65, label %74, !dbg !1242

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 10, !dbg !1243
  %67 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1244
  %68 = load %struct.zip_entry*, %struct.zip_entry** %67, align 8, !dbg !1244
  %69 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %68, i32 0, i32 7, !dbg !1245
  %70 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %69, i32 0, i32 0, !dbg !1246
  %71 = load i8*, i8** %70, align 8, !dbg !1246
  %72 = call %struct.archive_rb_node* @__archive_rb_tree_find_node(%struct.archive_rb_tree* noundef %66, i8* noundef %71), !dbg !1247
  %73 = bitcast %struct.archive_rb_node* %72 to %struct.zip_entry*, !dbg !1248
  call void @llvm.dbg.value(metadata %struct.zip_entry* %73, metadata !1249, metadata !DIExpression()), !dbg !1176
  br label %75, !dbg !1250

74:                                               ; preds = %55
  call void @llvm.dbg.value(metadata %struct.zip_entry* null, metadata !1249, metadata !DIExpression()), !dbg !1176
  br label %75

75:                                               ; preds = %74, %65
  %.04 = phi %struct.zip_entry* [ %73, %65 ], [ null, %74 ], !dbg !1251
  call void @llvm.dbg.value(metadata %struct.zip_entry* %.04, metadata !1249, metadata !DIExpression()), !dbg !1176
  %76 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 5, !dbg !1252
  %77 = load i64, i64* %76, align 8, !dbg !1252
  %78 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1254
  %79 = load %struct.zip_entry*, %struct.zip_entry** %78, align 8, !dbg !1254
  %80 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %79, i32 0, i32 1, !dbg !1255
  %81 = load i64, i64* %80, align 8, !dbg !1255
  %82 = icmp slt i64 %77, %81, !dbg !1256
  br i1 %82, label %83, label %92, !dbg !1257

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1258
  %85 = load %struct.zip_entry*, %struct.zip_entry** %84, align 8, !dbg !1258
  %86 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %85, i32 0, i32 1, !dbg !1259
  %87 = load i64, i64* %86, align 8, !dbg !1259
  %88 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 5, !dbg !1260
  %89 = load i64, i64* %88, align 8, !dbg !1260
  %90 = sub nsw i64 %87, %89, !dbg !1261
  %91 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %90), !dbg !1262
  br label %112, !dbg !1262

92:                                               ; preds = %75
  %93 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 5, !dbg !1263
  %94 = load i64, i64* %93, align 8, !dbg !1263
  %95 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1265
  %96 = load %struct.zip_entry*, %struct.zip_entry** %95, align 8, !dbg !1265
  %97 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %96, i32 0, i32 1, !dbg !1266
  %98 = load i64, i64* %97, align 8, !dbg !1266
  %99 = icmp ne i64 %94, %98, !dbg !1267
  br i1 %99, label %100, label %111, !dbg !1268

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1269
  %102 = load %struct.zip_entry*, %struct.zip_entry** %101, align 8, !dbg !1269
  %103 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %102, i32 0, i32 1, !dbg !1271
  %104 = load i64, i64* %103, align 8, !dbg !1271
  %105 = call i64 @__archive_read_seek(%struct.archive_read* noundef %0, i64 noundef %104, i32 noundef 0), !dbg !1272
  %106 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1273
  %107 = load %struct.zip_entry*, %struct.zip_entry** %106, align 8, !dbg !1273
  %108 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %107, i32 0, i32 1, !dbg !1274
  %109 = load i64, i64* %108, align 8, !dbg !1274
  %110 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 5, !dbg !1275
  store i64 %109, i64* %110, align 8, !dbg !1276
  br label %111, !dbg !1277

111:                                              ; preds = %100, %92
  br label %112

112:                                              ; preds = %111, %83
  %113 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 11, !dbg !1278
  store i64 0, i64* %113, align 8, !dbg !1279
  %114 = call i32 @zip_read_local_file_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1, %struct.zip* noundef %7), !dbg !1280
  call void @llvm.dbg.value(metadata i32 %114, metadata !1201, metadata !DIExpression()), !dbg !1176
  %115 = icmp ne i32 %114, 0, !dbg !1281
  br i1 %115, label %116, label %117, !dbg !1283

116:                                              ; preds = %112
  br label %203, !dbg !1284

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1285
  %119 = load %struct.zip_entry*, %struct.zip_entry** %118, align 8, !dbg !1285
  %120 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %119, i32 0, i32 12, !dbg !1287
  %121 = load i16, i16* %120, align 4, !dbg !1287
  %122 = zext i16 %121 to i32, !dbg !1288
  %123 = and i32 %122, 61440, !dbg !1289
  %124 = icmp eq i32 %123, 40960, !dbg !1290
  br i1 %124, label %125, label %195, !dbg !1291

125:                                              ; preds = %117
  %126 = call i64 @archive_entry_size(%struct.archive_entry* noundef %1), !dbg !1292
  call void @llvm.dbg.value(metadata i64 %126, metadata !1294, metadata !DIExpression()), !dbg !1295
  call void @archive_entry_set_size(%struct.archive_entry* noundef %1, i64 noundef 0), !dbg !1296
  %127 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef %126, i64* noundef null), !dbg !1297
  call void @llvm.dbg.value(metadata i8* %127, metadata !1298, metadata !DIExpression()), !dbg !1295
  %128 = icmp eq i8* %127, null, !dbg !1299
  br i1 %128, label %129, label %131, !dbg !1301

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1302
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %130, i32 noundef -1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0)), !dbg !1304
  br label %203, !dbg !1305

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 25, !dbg !1306
  %133 = load %struct.archive_string_conv*, %struct.archive_string_conv** %132, align 8, !dbg !1306
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %133, metadata !1307, metadata !DIExpression()), !dbg !1295
  %134 = icmp eq %struct.archive_string_conv* %133, null, !dbg !1308
  br i1 %134, label %135, label %146, !dbg !1310

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1311
  %137 = load %struct.zip_entry*, %struct.zip_entry** %136, align 8, !dbg !1311
  %138 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %137, i32 0, i32 13, !dbg !1312
  %139 = load i16, i16* %138, align 2, !dbg !1312
  %140 = zext i16 %139 to i32, !dbg !1313
  %141 = and i32 %140, 2048, !dbg !1314
  %142 = icmp ne i32 %141, 0, !dbg !1314
  br i1 %142, label %143, label %146, !dbg !1315

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 27, !dbg !1316
  %145 = load %struct.archive_string_conv*, %struct.archive_string_conv** %144, align 8, !dbg !1316
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %145, metadata !1307, metadata !DIExpression()), !dbg !1295
  br label %146, !dbg !1317

146:                                              ; preds = %143, %135, %131
  %.01 = phi %struct.archive_string_conv* [ %145, %143 ], [ %133, %135 ], [ %133, %131 ], !dbg !1295
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %.01, metadata !1307, metadata !DIExpression()), !dbg !1295
  %147 = icmp eq %struct.archive_string_conv* %.01, null, !dbg !1318
  br i1 %147, label %148, label %151, !dbg !1320

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 26, !dbg !1321
  %150 = load %struct.archive_string_conv*, %struct.archive_string_conv** %149, align 8, !dbg !1321
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %150, metadata !1307, metadata !DIExpression()), !dbg !1295
  br label %151, !dbg !1322

151:                                              ; preds = %148, %146
  %.1 = phi %struct.archive_string_conv* [ %150, %148 ], [ %.01, %146 ], !dbg !1295
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %.1, metadata !1307, metadata !DIExpression()), !dbg !1295
  %152 = call i32 @_archive_entry_copy_symlink_l(%struct.archive_entry* noundef %1, i8* noundef %127, i64 noundef %126, %struct.archive_string_conv* noundef %.1), !dbg !1323
  %153 = icmp ne i32 %152, 0, !dbg !1325
  br i1 %153, label %154, label %194, !dbg !1326

154:                                              ; preds = %151
  %155 = call i32* @__errno_location() #10, !dbg !1327
  %156 = load i32, i32* %155, align 4, !dbg !1327
  %157 = icmp ne i32 %156, 12, !dbg !1330
  br i1 %157, label %158, label %172, !dbg !1331

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 27, !dbg !1332
  %160 = load %struct.archive_string_conv*, %struct.archive_string_conv** %159, align 8, !dbg !1332
  %161 = icmp eq %struct.archive_string_conv* %.1, %160, !dbg !1333
  br i1 %161, label %162, label %172, !dbg !1334

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1335
  %164 = load %struct.zip_entry*, %struct.zip_entry** %163, align 8, !dbg !1335
  %165 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %164, i32 0, i32 13, !dbg !1336
  %166 = load i16, i16* %165, align 2, !dbg !1336
  %167 = zext i16 %166 to i32, !dbg !1337
  %168 = and i32 %167, 2048, !dbg !1338
  %169 = icmp ne i32 %168, 0, !dbg !1338
  br i1 %169, label %170, label %172, !dbg !1339

170:                                              ; preds = %162
  %171 = call i32 @_archive_entry_copy_symlink_l(%struct.archive_entry* noundef %1, i8* noundef %127, i64 noundef %126, %struct.archive_string_conv* noundef null), !dbg !1340
  br label %172, !dbg !1340

172:                                              ; preds = %170, %162, %158, %154
  %173 = call i32* @__errno_location() #10, !dbg !1341
  %174 = load i32, i32* %173, align 4, !dbg !1341
  %175 = icmp eq i32 %174, 12, !dbg !1343
  br i1 %175, label %176, label %178, !dbg !1344

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1345
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %177, i32 noundef 12, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0)), !dbg !1347
  br label %203, !dbg !1348

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 27, !dbg !1349
  %180 = load %struct.archive_string_conv*, %struct.archive_string_conv** %179, align 8, !dbg !1349
  %181 = icmp ne %struct.archive_string_conv* %.1, %180, !dbg !1351
  br i1 %181, label %190, label %182, !dbg !1352

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 8, !dbg !1353
  %184 = load %struct.zip_entry*, %struct.zip_entry** %183, align 8, !dbg !1353
  %185 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %184, i32 0, i32 13, !dbg !1354
  %186 = load i16, i16* %185, align 2, !dbg !1354
  %187 = zext i16 %186 to i32, !dbg !1355
  %188 = and i32 %187, 2048, !dbg !1356
  %189 = icmp eq i32 %188, 0, !dbg !1357
  br i1 %189, label %190, label %193, !dbg !1358

190:                                              ; preds = %182, %178
  %191 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1359
  %192 = call i8* @archive_string_conversion_charset_name(%struct.archive_string_conv* noundef %.1), !dbg !1361
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %191, i32 noundef 84, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i8* noundef %192), !dbg !1362
  call void @llvm.dbg.value(metadata i32 -20, metadata !1182, metadata !DIExpression()), !dbg !1176
  br label %193, !dbg !1363

193:                                              ; preds = %190, %182
  %.02 = phi i32 [ -20, %190 ], [ 0, %182 ], !dbg !1176
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1182, metadata !DIExpression()), !dbg !1176
  br label %194, !dbg !1364

194:                                              ; preds = %193, %151
  %.13 = phi i32 [ %.02, %193 ], [ 0, %151 ], !dbg !1176
  call void @llvm.dbg.value(metadata i32 %.13, metadata !1182, metadata !DIExpression()), !dbg !1176
  br label %195, !dbg !1365

195:                                              ; preds = %194, %117
  %.2 = phi i32 [ %.13, %194 ], [ 0, %117 ], !dbg !1176
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1182, metadata !DIExpression()), !dbg !1176
  %196 = icmp ne %struct.zip_entry* %.04, null, !dbg !1366
  br i1 %196, label %197, label %202, !dbg !1368

197:                                              ; preds = %195
  %198 = call i32 @zip_read_mac_metadata(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1, %struct.zip_entry* noundef %.04), !dbg !1369
  call void @llvm.dbg.value(metadata i32 %198, metadata !1371, metadata !DIExpression()), !dbg !1372
  %199 = icmp slt i32 %198, %.2, !dbg !1373
  br i1 %199, label %200, label %201, !dbg !1375

200:                                              ; preds = %197
  call void @llvm.dbg.value(metadata i32 %198, metadata !1182, metadata !DIExpression()), !dbg !1176
  br label %201, !dbg !1376

201:                                              ; preds = %200, %197
  %.3 = phi i32 [ %198, %200 ], [ %.2, %197 ], !dbg !1176
  call void @llvm.dbg.value(metadata i32 %.3, metadata !1182, metadata !DIExpression()), !dbg !1176
  br label %202, !dbg !1377

202:                                              ; preds = %201, %195
  %.4 = phi i32 [ %.3, %201 ], [ %.2, %195 ], !dbg !1176
  call void @llvm.dbg.value(metadata i32 %.4, metadata !1182, metadata !DIExpression()), !dbg !1176
  br label %203, !dbg !1378

203:                                              ; preds = %202, %176, %129, %116, %54, %27
  %.0 = phi i32 [ %22, %27 ], [ 1, %54 ], [ %114, %116 ], [ -30, %129 ], [ -30, %176 ], [ %.4, %202 ], !dbg !1176
  ret i32 %.0, !dbg !1379
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @archive_read_support_format_zip(%struct.archive* noundef %0) #0 !dbg !1380 {
  call void @llvm.dbg.value(metadata %struct.archive* %0, metadata !1381, metadata !DIExpression()), !dbg !1382
  %2 = call i32 @archive_read_support_format_zip_streamable(%struct.archive* noundef %0), !dbg !1383
  call void @llvm.dbg.value(metadata i32 %2, metadata !1384, metadata !DIExpression()), !dbg !1382
  %3 = icmp ne i32 %2, 0, !dbg !1385
  br i1 %3, label %4, label %5, !dbg !1387

4:                                                ; preds = %1
  br label %7, !dbg !1388

5:                                                ; preds = %1
  %6 = call i32 @archive_read_support_format_zip_seekable(%struct.archive* noundef %0), !dbg !1389
  br label %7, !dbg !1390

7:                                                ; preds = %5, %4
  %.0 = phi i32 [ %2, %4 ], [ %6, %5 ], !dbg !1382
  ret i32 %.0, !dbg !1391
}

declare i64 @__archive_read_seek(%struct.archive_read* noundef, i64 noundef, i32 noundef) #2

declare i8* @__archive_read_ahead(%struct.archive_read* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @archive_le16dec(i8* noundef %0) #0 !dbg !1392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1396, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %0, metadata !1398, metadata !DIExpression()), !dbg !1397
  %2 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1399
  %3 = load i8, i8* %2, align 1, !dbg !1399
  %4 = zext i8 %3 to i32, !dbg !1399
  %5 = shl i32 %4, 8, !dbg !1400
  %6 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1401
  %7 = load i8, i8* %6, align 1, !dbg !1401
  %8 = zext i8 %7 to i32, !dbg !1401
  %9 = or i32 %5, %8, !dbg !1402
  %10 = trunc i32 %9 to i16, !dbg !1403
  ret i16 %10, !dbg !1404
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_le32dec(i8* noundef %0) #0 !dbg !1405 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1408, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i8* %0, metadata !1410, metadata !DIExpression()), !dbg !1409
  %2 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1411
  %3 = load i8, i8* %2, align 1, !dbg !1411
  %4 = zext i8 %3 to i32, !dbg !1411
  %5 = shl i32 %4, 24, !dbg !1412
  %6 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1413
  %7 = load i8, i8* %6, align 1, !dbg !1413
  %8 = zext i8 %7 to i32, !dbg !1413
  %9 = shl i32 %8, 16, !dbg !1414
  %10 = or i32 %5, %9, !dbg !1415
  %11 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1416
  %12 = load i8, i8* %11, align 1, !dbg !1416
  %13 = zext i8 %12 to i32, !dbg !1416
  %14 = shl i32 %13, 8, !dbg !1417
  %15 = or i32 %10, %14, !dbg !1418
  %16 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1419
  %17 = load i8, i8* %16, align 1, !dbg !1419
  %18 = zext i8 %17 to i32, !dbg !1419
  %19 = or i32 %15, %18, !dbg !1420
  ret i32 %19, !dbg !1421
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @slurp_central_directory(%struct.archive_read* noundef %0, %struct.zip* noundef %1) #0 !dbg !2 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !1422, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata %struct.zip* %1, metadata !1424, metadata !DIExpression()), !dbg !1423
  %3 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 0, !dbg !1425
  %4 = load i64, i64* %3, align 8, !dbg !1425
  %5 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 1, !dbg !1426
  %6 = load i64, i64* %5, align 8, !dbg !1426
  %7 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 2, !dbg !1427
  %8 = load i64, i64* %7, align 8, !dbg !1427
  %9 = add i64 %6, %8, !dbg !1428
  %10 = sub i64 %4, %9, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %10, metadata !1430, metadata !DIExpression()), !dbg !1423
  %11 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 1, !dbg !1431
  %12 = load i64, i64* %11, align 8, !dbg !1432
  %13 = add nsw i64 %12, %10, !dbg !1432
  store i64 %13, i64* %11, align 8, !dbg !1432
  %14 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 1, !dbg !1433
  %15 = load i64, i64* %14, align 8, !dbg !1433
  %16 = call i64 @__archive_read_seek(%struct.archive_read* noundef %0, i64 noundef %15, i32 noundef 0), !dbg !1434
  %17 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 1, !dbg !1435
  %18 = load i64, i64* %17, align 8, !dbg !1435
  %19 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 5, !dbg !1436
  store i64 %18, i64* %19, align 8, !dbg !1437
  %20 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 9, !dbg !1438
  call void @__archive_rb_tree_init(%struct.archive_rb_tree* noundef %20, %struct.archive_rb_tree_ops* noundef @slurp_central_directory.rb_ops), !dbg !1439
  %21 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 10, !dbg !1440
  call void @__archive_rb_tree_init(%struct.archive_rb_tree* noundef %21, %struct.archive_rb_tree_ops* noundef @slurp_central_directory.rb_rsrc_ops), !dbg !1441
  %22 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 3, !dbg !1442
  %23 = load i64, i64* %22, align 8, !dbg !1442
  %24 = call noalias i8* @calloc(i64 noundef %23, i64 noundef 136) #8, !dbg !1443
  %25 = bitcast i8* %24 to %struct.zip_entry*, !dbg !1443
  %26 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 7, !dbg !1444
  store %struct.zip_entry* %25, %struct.zip_entry** %26, align 8, !dbg !1445
  call void @llvm.dbg.value(metadata i32 0, metadata !1446, metadata !DIExpression()), !dbg !1423
  br label %27, !dbg !1447

27:                                               ; preds = %172, %2
  %.01 = phi i32 [ 0, %2 ], [ %173, %172 ], !dbg !1449
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1446, metadata !DIExpression()), !dbg !1423
  %28 = zext i32 %.01 to i64, !dbg !1450
  %29 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 3, !dbg !1452
  %30 = load i64, i64* %29, align 8, !dbg !1452
  %31 = icmp ult i64 %28, %30, !dbg !1453
  br i1 %31, label %32, label %174, !dbg !1454

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 7, !dbg !1455
  %34 = load %struct.zip_entry*, %struct.zip_entry** %33, align 8, !dbg !1455
  %35 = zext i32 %.01 to i64, !dbg !1457
  %36 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %34, i64 %35, !dbg !1457
  call void @llvm.dbg.value(metadata %struct.zip_entry* %36, metadata !1458, metadata !DIExpression()), !dbg !1459
  %37 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef 46, i64* noundef null), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %37, metadata !1462, metadata !DIExpression()), !dbg !1459
  %38 = icmp eq i8* %37, null, !dbg !1463
  br i1 %38, label %39, label %40, !dbg !1464

39:                                               ; preds = %32
  br label %175, !dbg !1465

40:                                               ; preds = %32
  %41 = call i32 @memcmp(i8* noundef %37, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 noundef 4) #9, !dbg !1466
  %42 = icmp ne i32 %41, 0, !dbg !1468
  br i1 %42, label %43, label %45, !dbg !1469

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1470
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %44, i32 noundef -1, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0)), !dbg !1472
  br label %175, !dbg !1473

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 4, !dbg !1474
  store i8 1, i8* %46, align 8, !dbg !1475
  %47 = getelementptr inbounds i8, i8* %37, i64 5, !dbg !1476
  %48 = load i8, i8* %47, align 1, !dbg !1476
  %49 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 15, !dbg !1477
  store i8 %48, i8* %49, align 1, !dbg !1478
  %50 = getelementptr inbounds i8, i8* %37, i64 8, !dbg !1479
  %51 = call zeroext i16 @archive_le16dec(i8* noundef %50), !dbg !1480
  %52 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 13, !dbg !1481
  store i16 %51, i16* %52, align 2, !dbg !1482
  %53 = getelementptr inbounds i8, i8* %37, i64 10, !dbg !1483
  %54 = call zeroext i16 @archive_le16dec(i8* noundef %53), !dbg !1484
  %55 = trunc i16 %54 to i8, !dbg !1485
  %56 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 14, !dbg !1486
  store i8 %55, i8* %56, align 8, !dbg !1487
  %57 = getelementptr inbounds i8, i8* %37, i64 12, !dbg !1488
  %58 = call i64 @zip_time(i8* noundef %57), !dbg !1489
  %59 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 8, !dbg !1490
  store i64 %58, i64* %59, align 8, !dbg !1491
  %60 = getelementptr inbounds i8, i8* %37, i64 16, !dbg !1492
  %61 = call i32 @archive_le32dec(i8* noundef %60), !dbg !1493
  %62 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 11, !dbg !1494
  store i32 %61, i32* %62, align 8, !dbg !1495
  %63 = getelementptr inbounds i8, i8* %37, i64 20, !dbg !1496
  %64 = call i32 @archive_le32dec(i8* noundef %63), !dbg !1497
  %65 = zext i32 %64 to i64, !dbg !1497
  %66 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 2, !dbg !1498
  store i64 %65, i64* %66, align 8, !dbg !1499
  %67 = getelementptr inbounds i8, i8* %37, i64 24, !dbg !1500
  %68 = call i32 @archive_le32dec(i8* noundef %67), !dbg !1501
  %69 = zext i32 %68 to i64, !dbg !1501
  %70 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 3, !dbg !1502
  store i64 %69, i64* %70, align 8, !dbg !1503
  %71 = getelementptr inbounds i8, i8* %37, i64 28, !dbg !1504
  %72 = call zeroext i16 @archive_le16dec(i8* noundef %71), !dbg !1505
  %73 = zext i16 %72 to i64, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %73, metadata !1506, metadata !DIExpression()), !dbg !1459
  %74 = getelementptr inbounds i8, i8* %37, i64 30, !dbg !1507
  %75 = call zeroext i16 @archive_le16dec(i8* noundef %74), !dbg !1508
  %76 = zext i16 %75 to i64, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %76, metadata !1509, metadata !DIExpression()), !dbg !1459
  %77 = getelementptr inbounds i8, i8* %37, i64 32, !dbg !1510
  %78 = call zeroext i16 @archive_le16dec(i8* noundef %77), !dbg !1511
  %79 = zext i16 %78 to i64, !dbg !1511
  call void @llvm.dbg.value(metadata i64 %79, metadata !1512, metadata !DIExpression()), !dbg !1459
  %80 = getelementptr inbounds i8, i8* %37, i64 38, !dbg !1513
  %81 = call i32 @archive_le32dec(i8* noundef %80), !dbg !1514
  call void @llvm.dbg.value(metadata i32 %81, metadata !1515, metadata !DIExpression()), !dbg !1459
  %82 = getelementptr inbounds i8, i8* %37, i64 42, !dbg !1516
  %83 = call i32 @archive_le32dec(i8* noundef %82), !dbg !1517
  %84 = zext i32 %83 to i64, !dbg !1517
  %85 = add nsw i64 %84, %10, !dbg !1518
  %86 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 1, !dbg !1519
  store i64 %85, i64* %86, align 8, !dbg !1520
  %87 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 12, !dbg !1521
  store i16 0, i16* %87, align 4, !dbg !1522
  %88 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 15, !dbg !1523
  %89 = load i8, i8* %88, align 1, !dbg !1523
  %90 = sext i8 %89 to i32, !dbg !1525
  %91 = icmp eq i32 %90, 3, !dbg !1526
  br i1 %91, label %92, label %96, !dbg !1527

92:                                               ; preds = %45
  %93 = lshr i32 %81, 16, !dbg !1528
  %94 = trunc i32 %93 to i16, !dbg !1530
  %95 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 12, !dbg !1531
  store i16 %94, i16* %95, align 4, !dbg !1532
  br label %96, !dbg !1533

96:                                               ; preds = %92, %45
  %97 = add i64 46, %73, !dbg !1534
  %98 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef %97, i64* noundef null), !dbg !1536
  call void @llvm.dbg.value(metadata i8* %98, metadata !1462, metadata !DIExpression()), !dbg !1459
  %99 = icmp eq i8* %98, null, !dbg !1537
  br i1 %99, label %100, label %101, !dbg !1538

100:                                              ; preds = %96
  br label %175, !dbg !1539

101:                                              ; preds = %96
  %102 = getelementptr inbounds i8, i8* %98, i64 46, !dbg !1540
  call void @llvm.dbg.value(metadata i8* %102, metadata !1541, metadata !DIExpression()), !dbg !1459
  %103 = call i8* @rsrc_basename(i8* noundef %102, i64 noundef %73), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %103, metadata !1543, metadata !DIExpression()), !dbg !1459
  %104 = icmp uge i64 %73, 9, !dbg !1544
  br i1 %104, label %105, label %142, !dbg !1546

105:                                              ; preds = %101
  %106 = call i32 @strncmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef %102, i64 noundef 9) #9, !dbg !1547
  %107 = icmp eq i32 %106, 0, !dbg !1548
  br i1 %107, label %108, label %142, !dbg !1549

108:                                              ; preds = %105
  %109 = sub i64 %73, 1, !dbg !1550
  %110 = getelementptr inbounds i8, i8* %102, i64 %109, !dbg !1553
  %111 = load i8, i8* %110, align 1, !dbg !1553
  %112 = sext i8 %111 to i32, !dbg !1553
  %113 = icmp ne i32 %112, 47, !dbg !1554
  br i1 %113, label %114, label %133, !dbg !1555

114:                                              ; preds = %108
  %115 = ptrtoint i8* %103 to i64, !dbg !1556
  %116 = ptrtoint i8* %102 to i64, !dbg !1556
  %117 = sub i64 %115, %116, !dbg !1556
  %118 = icmp slt i64 %117, 3, !dbg !1557
  br i1 %118, label %129, label %119, !dbg !1558

119:                                              ; preds = %114
  %120 = getelementptr inbounds i8, i8* %103, i64 0, !dbg !1559
  %121 = load i8, i8* %120, align 1, !dbg !1559
  %122 = sext i8 %121 to i32, !dbg !1559
  %123 = icmp ne i32 %122, 46, !dbg !1560
  br i1 %123, label %129, label %124, !dbg !1561

124:                                              ; preds = %119
  %125 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !1562
  %126 = load i8, i8* %125, align 1, !dbg !1562
  %127 = sext i8 %126 to i32, !dbg !1562
  %128 = icmp ne i32 %127, 95, !dbg !1563
  br i1 %128, label %129, label %133, !dbg !1564

129:                                              ; preds = %124, %119, %114
  %130 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 9, !dbg !1565
  %131 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 0, !dbg !1567
  %132 = call i32 @__archive_rb_tree_insert_node(%struct.archive_rb_tree* noundef %130, %struct.archive_rb_node* noundef %131), !dbg !1568
  call void @expose_parent_dirs(%struct.zip* noundef %1, i8* noundef %102, i64 noundef %73), !dbg !1569
  br label %141, !dbg !1570

133:                                              ; preds = %124, %108
  %134 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 7, !dbg !1571
  %135 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %134, i32 0, i32 1, !dbg !1571
  store i64 0, i64* %135, align 8, !dbg !1571
  %136 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 7, !dbg !1571
  %137 = call %struct.archive_string* @archive_strncat(%struct.archive_string* noundef %136, i8* noundef %102, i64 noundef %73), !dbg !1571
  %138 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 10, !dbg !1573
  %139 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 0, !dbg !1574
  %140 = call i32 @__archive_rb_tree_insert_node(%struct.archive_rb_tree* noundef %138, %struct.archive_rb_node* noundef %139), !dbg !1575
  br label %141

141:                                              ; preds = %133, %129
  br label %167, !dbg !1576

142:                                              ; preds = %105, %101
  %143 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 7, !dbg !1577
  %144 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %143, i32 0, i32 1, !dbg !1577
  store i64 0, i64* %144, align 8, !dbg !1577
  %145 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 7, !dbg !1577
  %146 = call %struct.archive_string* @archive_strncat(%struct.archive_string* noundef %145, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i64 noundef 9), !dbg !1577
  %147 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 7, !dbg !1579
  %148 = ptrtoint i8* %103 to i64, !dbg !1580
  %149 = ptrtoint i8* %102 to i64, !dbg !1580
  %150 = sub i64 %148, %149, !dbg !1580
  %151 = call %struct.archive_string* @archive_strncat(%struct.archive_string* noundef %147, i8* noundef %102, i64 noundef %150), !dbg !1581
  %152 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 7, !dbg !1582
  %153 = call %struct.archive_string* @archive_strcat(%struct.archive_string* noundef %152, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)), !dbg !1583
  %154 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 7, !dbg !1584
  %155 = ptrtoint i8* %103 to i64, !dbg !1585
  %156 = ptrtoint i8* %102 to i64, !dbg !1585
  %157 = sub i64 %155, %156, !dbg !1585
  %158 = getelementptr inbounds i8, i8* %102, i64 %157, !dbg !1586
  %159 = ptrtoint i8* %103 to i64, !dbg !1587
  %160 = ptrtoint i8* %102 to i64, !dbg !1587
  %161 = sub i64 %159, %160, !dbg !1587
  %162 = sub i64 %73, %161, !dbg !1588
  %163 = call %struct.archive_string* @archive_strncat(%struct.archive_string* noundef %154, i8* noundef %158, i64 noundef %162), !dbg !1589
  %164 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 9, !dbg !1590
  %165 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i32 0, i32 0, !dbg !1591
  %166 = call i32 @__archive_rb_tree_insert_node(%struct.archive_rb_tree* noundef %164, %struct.archive_rb_node* noundef %165), !dbg !1592
  br label %167

167:                                              ; preds = %142, %141
  %168 = add i64 46, %73, !dbg !1593
  %169 = add i64 %168, %76, !dbg !1594
  %170 = add i64 %169, %79, !dbg !1595
  %171 = call i64 @__archive_read_consume(%struct.archive_read* noundef %0, i64 noundef %170), !dbg !1596
  br label %172, !dbg !1597

172:                                              ; preds = %167
  %173 = add i32 %.01, 1, !dbg !1598
  call void @llvm.dbg.value(metadata i32 %173, metadata !1446, metadata !DIExpression()), !dbg !1423
  br label %27, !dbg !1599, !llvm.loop !1600

174:                                              ; preds = %27
  br label %175, !dbg !1602

175:                                              ; preds = %174, %100, %43, %39
  %.0 = phi i32 [ -30, %39 ], [ -30, %43 ], [ -30, %100 ], [ 0, %174 ], !dbg !1423
  ret i32 %.0, !dbg !1603
}

declare %struct.archive_rb_node* @__archive_rb_tree_iterate(%struct.archive_rb_tree* noundef, %struct.archive_rb_node* noundef, i32 noundef) #2

declare %struct.archive_rb_node* @__archive_rb_tree_find_node(%struct.archive_rb_tree* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %1) #0 !dbg !1604 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !1607, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %1, metadata !1609, metadata !DIExpression()), !dbg !1608
  %3 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !1610
  %4 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %3, align 8, !dbg !1610
  %5 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %4, i32 0, i32 0, !dbg !1611
  %6 = load i8*, i8** %5, align 8, !dbg !1611
  %7 = bitcast i8* %6 to %struct.zip*, !dbg !1612
  call void @llvm.dbg.value(metadata %struct.zip* %7, metadata !1613, metadata !DIExpression()), !dbg !1608
  %8 = call i64 @__archive_read_consume(%struct.archive_read* noundef %0, i64 noundef %1), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %8, metadata !1615, metadata !DIExpression()), !dbg !1608
  %9 = icmp sgt i64 %8, 0, !dbg !1616
  br i1 %9, label %10, label %14, !dbg !1618

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 5, !dbg !1619
  %12 = load i64, i64* %11, align 8, !dbg !1620
  %13 = add nsw i64 %12, %8, !dbg !1620
  store i64 %13, i64* %11, align 8, !dbg !1620
  br label %14, !dbg !1621

14:                                               ; preds = %10, %2
  ret i64 %8, !dbg !1622
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @zip_read_local_file_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1, %struct.zip* noundef %2) #0 !dbg !1623 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !1626, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata %struct.archive_entry* %1, metadata !1628, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata %struct.zip* %2, metadata !1629, metadata !DIExpression()), !dbg !1627
  %4 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 8, !dbg !1630
  %5 = load %struct.zip_entry*, %struct.zip_entry** %4, align 8, !dbg !1630
  call void @llvm.dbg.value(metadata %struct.zip_entry* %5, metadata !1631, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32 0, metadata !1632, metadata !DIExpression()), !dbg !1627
  %6 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 16, !dbg !1633
  store i8 0, i8* %6, align 8, !dbg !1634
  %7 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 17, !dbg !1635
  store i8 0, i8* %7, align 1, !dbg !1636
  %8 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 14, !dbg !1637
  store i64 0, i64* %8, align 8, !dbg !1638
  %9 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 13, !dbg !1639
  store i64 0, i64* %9, align 8, !dbg !1640
  %10 = call i64 @crc32(i64 noundef 0, i8* noundef null, i32 noundef 0), !dbg !1641
  %11 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 15, !dbg !1642
  store i64 %10, i64* %11, align 8, !dbg !1643
  %12 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 25, !dbg !1644
  %13 = load %struct.archive_string_conv*, %struct.archive_string_conv** %12, align 8, !dbg !1644
  %14 = icmp eq %struct.archive_string_conv* %13, null, !dbg !1646
  br i1 %14, label %15, label %24, !dbg !1647

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 28, !dbg !1648
  %17 = load i32, i32* %16, align 8, !dbg !1648
  %18 = icmp ne i32 %17, 0, !dbg !1649
  br i1 %18, label %24, label %19, !dbg !1650

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1651
  %21 = call %struct.archive_string_conv* @archive_string_default_conversion_for_read(%struct.archive* noundef %20), !dbg !1653
  %22 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 26, !dbg !1654
  store %struct.archive_string_conv* %21, %struct.archive_string_conv** %22, align 8, !dbg !1655
  %23 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 28, !dbg !1656
  store i32 1, i32* %23, align 8, !dbg !1657
  br label %24, !dbg !1658

24:                                               ; preds = %19, %15, %3
  %25 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef 30, i64* noundef null), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %25, metadata !1661, metadata !DIExpression()), !dbg !1627
  %26 = icmp eq i8* %25, null, !dbg !1662
  br i1 %26, label %27, label %29, !dbg !1663

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1664
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %28, i32 noundef 84, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0)), !dbg !1666
  br label %256, !dbg !1667

29:                                               ; preds = %24
  %30 = call i32 @memcmp(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 noundef 4) #9, !dbg !1668
  %31 = icmp ne i32 %30, 0, !dbg !1670
  br i1 %31, label %32, label %34, !dbg !1671

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1672
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %33, i32 noundef -1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)), !dbg !1674
  br label %256, !dbg !1675

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !1676
  %36 = load i8, i8* %35, align 1, !dbg !1676
  call void @llvm.dbg.value(metadata i8 %36, metadata !1677, metadata !DIExpression()), !dbg !1627
  %37 = getelementptr inbounds i8, i8* %25, i64 5, !dbg !1678
  %38 = load i8, i8* %37, align 1, !dbg !1678
  %39 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 15, !dbg !1679
  store i8 %38, i8* %39, align 1, !dbg !1680
  %40 = getelementptr inbounds i8, i8* %25, i64 6, !dbg !1681
  %41 = call zeroext i16 @archive_le16dec(i8* noundef %40), !dbg !1682
  %42 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 13, !dbg !1683
  store i16 %41, i16* %42, align 2, !dbg !1684
  %43 = getelementptr inbounds i8, i8* %25, i64 8, !dbg !1685
  %44 = call zeroext i16 @archive_le16dec(i8* noundef %43), !dbg !1686
  %45 = trunc i16 %44 to i8, !dbg !1687
  %46 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 14, !dbg !1688
  store i8 %45, i8* %46, align 8, !dbg !1689
  %47 = getelementptr inbounds i8, i8* %25, i64 10, !dbg !1690
  %48 = call i64 @zip_time(i8* noundef %47), !dbg !1691
  %49 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 8, !dbg !1692
  store i64 %48, i64* %49, align 8, !dbg !1693
  %50 = getelementptr inbounds i8, i8* %25, i64 14, !dbg !1694
  %51 = call i32 @archive_le32dec(i8* noundef %50), !dbg !1695
  call void @llvm.dbg.value(metadata i32 %51, metadata !1696, metadata !DIExpression()), !dbg !1627
  %52 = getelementptr inbounds i8, i8* %25, i64 18, !dbg !1697
  %53 = call i32 @archive_le32dec(i8* noundef %52), !dbg !1698
  %54 = zext i32 %53 to i64, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %54, metadata !1699, metadata !DIExpression()), !dbg !1627
  %55 = getelementptr inbounds i8, i8* %25, i64 22, !dbg !1700
  %56 = call i32 @archive_le32dec(i8* noundef %55), !dbg !1701
  %57 = zext i32 %56 to i64, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %57, metadata !1702, metadata !DIExpression()), !dbg !1627
  %58 = getelementptr inbounds i8, i8* %25, i64 26, !dbg !1703
  %59 = call zeroext i16 @archive_le16dec(i8* noundef %58), !dbg !1704
  %60 = zext i16 %59 to i64, !dbg !1704
  call void @llvm.dbg.value(metadata i64 %60, metadata !1705, metadata !DIExpression()), !dbg !1627
  %61 = getelementptr inbounds i8, i8* %25, i64 28, !dbg !1706
  %62 = call zeroext i16 @archive_le16dec(i8* noundef %61), !dbg !1707
  %63 = zext i16 %62 to i64, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %63, metadata !1708, metadata !DIExpression()), !dbg !1627
  %64 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef 30), !dbg !1709
  %65 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 4, !dbg !1710
  %66 = load i8, i8* %65, align 8, !dbg !1710
  %67 = icmp ne i8 %66, 0, !dbg !1712
  br i1 %67, label %68, label %98, !dbg !1713

68:                                               ; preds = %34
  %69 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 13, !dbg !1714
  %70 = load i16, i16* %69, align 2, !dbg !1716
  %71 = zext i16 %70 to i32, !dbg !1716
  %72 = and i32 %71, -9, !dbg !1716
  %73 = trunc i32 %72 to i16, !dbg !1716
  store i16 %73, i16* %69, align 2, !dbg !1716
  %74 = icmp ne i32 %51, 0, !dbg !1717
  br i1 %74, label %75, label %81, !dbg !1719

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 11, !dbg !1720
  %77 = load i32, i32* %76, align 8, !dbg !1720
  %78 = icmp ne i32 %51, %77, !dbg !1721
  br i1 %78, label %79, label %81, !dbg !1722

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1723
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %80, i32 noundef 84, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0)), !dbg !1725
  call void @llvm.dbg.value(metadata i32 -20, metadata !1632, metadata !DIExpression()), !dbg !1627
  br label %81, !dbg !1726

81:                                               ; preds = %79, %75, %68
  %.01 = phi i32 [ -20, %79 ], [ 0, %75 ], [ 0, %68 ], !dbg !1627
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1632, metadata !DIExpression()), !dbg !1627
  %82 = icmp ne i64 %54, 0, !dbg !1727
  br i1 %82, label %83, label %89, !dbg !1729

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 2, !dbg !1730
  %85 = load i64, i64* %84, align 8, !dbg !1730
  %86 = icmp ne i64 %54, %85, !dbg !1731
  br i1 %86, label %87, label %89, !dbg !1732

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1733
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %88, i32 noundef 84, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)), !dbg !1735
  call void @llvm.dbg.value(metadata i32 -20, metadata !1632, metadata !DIExpression()), !dbg !1627
  br label %89, !dbg !1736

89:                                               ; preds = %87, %83, %81
  %.1 = phi i32 [ -20, %87 ], [ %.01, %83 ], [ %.01, %81 ], !dbg !1737
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1632, metadata !DIExpression()), !dbg !1627
  %90 = icmp ne i64 %57, 0, !dbg !1738
  br i1 %90, label %91, label %97, !dbg !1740

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 3, !dbg !1741
  %93 = load i64, i64* %92, align 8, !dbg !1741
  %94 = icmp ne i64 %57, %93, !dbg !1742
  br i1 %94, label %95, label %97, !dbg !1743

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1744
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %96, i32 noundef 84, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0)), !dbg !1746
  call void @llvm.dbg.value(metadata i32 -20, metadata !1632, metadata !DIExpression()), !dbg !1627
  br label %97, !dbg !1747

97:                                               ; preds = %95, %91, %89
  %.2 = phi i32 [ -20, %95 ], [ %.1, %91 ], [ %.1, %89 ], !dbg !1737
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1632, metadata !DIExpression()), !dbg !1627
  br label %102, !dbg !1748

98:                                               ; preds = %34
  %99 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 11, !dbg !1749
  store i32 %51, i32* %99, align 8, !dbg !1751
  %100 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 2, !dbg !1752
  store i64 %54, i64* %100, align 8, !dbg !1753
  %101 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 3, !dbg !1754
  store i64 %57, i64* %101, align 8, !dbg !1755
  br label %102

102:                                              ; preds = %98, %97
  %.3 = phi i32 [ %.2, %97 ], [ 0, %98 ], !dbg !1627
  call void @llvm.dbg.value(metadata i32 %.3, metadata !1632, metadata !DIExpression()), !dbg !1627
  %103 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef %60, i64* noundef null), !dbg !1756
  call void @llvm.dbg.value(metadata i8* %103, metadata !1758, metadata !DIExpression()), !dbg !1627
  %104 = icmp eq i8* %103, null, !dbg !1759
  br i1 %104, label %105, label %107, !dbg !1760

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1761
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %106, i32 noundef 84, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0)), !dbg !1763
  br label %256, !dbg !1764

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 13, !dbg !1765
  %109 = load i16, i16* %108, align 2, !dbg !1765
  %110 = zext i16 %109 to i32, !dbg !1767
  %111 = and i32 %110, 2048, !dbg !1768
  %112 = icmp ne i32 %111, 0, !dbg !1768
  br i1 %112, label %113, label %129, !dbg !1769

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 27, !dbg !1770
  %115 = load %struct.archive_string_conv*, %struct.archive_string_conv** %114, align 8, !dbg !1770
  %116 = icmp eq %struct.archive_string_conv* %115, null, !dbg !1773
  br i1 %116, label %117, label %126, !dbg !1774

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1775
  %119 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive* noundef %118, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 noundef 1), !dbg !1777
  %120 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 27, !dbg !1778
  store %struct.archive_string_conv* %119, %struct.archive_string_conv** %120, align 8, !dbg !1779
  %121 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 27, !dbg !1780
  %122 = load %struct.archive_string_conv*, %struct.archive_string_conv** %121, align 8, !dbg !1780
  %123 = icmp eq %struct.archive_string_conv* %122, null, !dbg !1782
  br i1 %123, label %124, label %125, !dbg !1783

124:                                              ; preds = %117
  br label %256, !dbg !1784

125:                                              ; preds = %117
  br label %126, !dbg !1785

126:                                              ; preds = %125, %113
  %127 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 27, !dbg !1786
  %128 = load %struct.archive_string_conv*, %struct.archive_string_conv** %127, align 8, !dbg !1786
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %128, metadata !1787, metadata !DIExpression()), !dbg !1627
  br label %140, !dbg !1788

129:                                              ; preds = %107
  %130 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 25, !dbg !1789
  %131 = load %struct.archive_string_conv*, %struct.archive_string_conv** %130, align 8, !dbg !1789
  %132 = icmp ne %struct.archive_string_conv* %131, null, !dbg !1791
  br i1 %132, label %133, label %136, !dbg !1792

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 25, !dbg !1793
  %135 = load %struct.archive_string_conv*, %struct.archive_string_conv** %134, align 8, !dbg !1793
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %135, metadata !1787, metadata !DIExpression()), !dbg !1627
  br label %139, !dbg !1794

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 26, !dbg !1795
  %138 = load %struct.archive_string_conv*, %struct.archive_string_conv** %137, align 8, !dbg !1795
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %138, metadata !1787, metadata !DIExpression()), !dbg !1627
  br label %139

139:                                              ; preds = %136, %133
  %.02 = phi %struct.archive_string_conv* [ %135, %133 ], [ %138, %136 ], !dbg !1796
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %.02, metadata !1787, metadata !DIExpression()), !dbg !1627
  br label %140

140:                                              ; preds = %139, %126
  %.13 = phi %struct.archive_string_conv* [ %128, %126 ], [ %.02, %139 ], !dbg !1797
  call void @llvm.dbg.value(metadata %struct.archive_string_conv* %.13, metadata !1787, metadata !DIExpression()), !dbg !1627
  %141 = call i32 @_archive_entry_copy_pathname_l(%struct.archive_entry* noundef %1, i8* noundef %103, i64 noundef %60, %struct.archive_string_conv* noundef %.13), !dbg !1798
  %142 = icmp ne i32 %141, 0, !dbg !1800
  br i1 %142, label %143, label %152, !dbg !1801

143:                                              ; preds = %140
  %144 = call i32* @__errno_location() #10, !dbg !1802
  %145 = load i32, i32* %144, align 4, !dbg !1802
  %146 = icmp eq i32 %145, 12, !dbg !1805
  br i1 %146, label %147, label %149, !dbg !1806

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1807
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %148, i32 noundef 12, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0)), !dbg !1809
  br label %256, !dbg !1810

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1811
  %151 = call i8* @archive_string_conversion_charset_name(%struct.archive_string_conv* noundef %.13), !dbg !1812
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %150, i32 noundef 84, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0), i8* noundef %151), !dbg !1813
  call void @llvm.dbg.value(metadata i32 -20, metadata !1632, metadata !DIExpression()), !dbg !1627
  br label %152, !dbg !1814

152:                                              ; preds = %149, %140
  %.4 = phi i32 [ -20, %149 ], [ %.3, %140 ], !dbg !1627
  call void @llvm.dbg.value(metadata i32 %.4, metadata !1632, metadata !DIExpression()), !dbg !1627
  %153 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %60), !dbg !1815
  %154 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 12, !dbg !1816
  %155 = load i16, i16* %154, align 4, !dbg !1816
  %156 = zext i16 %155 to i32, !dbg !1818
  %157 = icmp eq i32 %156, 0, !dbg !1819
  br i1 %157, label %158, label %195, !dbg !1820

158:                                              ; preds = %152
  %159 = call i32* @archive_entry_pathname_w(%struct.archive_entry* noundef %1), !dbg !1821
  call void @llvm.dbg.value(metadata i32* %159, metadata !1823, metadata !DIExpression()), !dbg !1627
  %160 = icmp ne i32* %159, null, !dbg !1827
  br i1 %160, label %161, label %174, !dbg !1829

161:                                              ; preds = %158
  %162 = call i64 @wcslen(i32* noundef %159) #9, !dbg !1830
  call void @llvm.dbg.value(metadata i64 %162, metadata !1832, metadata !DIExpression()), !dbg !1627
  %163 = icmp ugt i64 %162, 0, !dbg !1833
  br i1 %163, label %164, label %171, !dbg !1835

164:                                              ; preds = %161
  %165 = sub i64 %162, 1, !dbg !1836
  %166 = getelementptr inbounds i32, i32* %159, i64 %165, !dbg !1837
  %167 = load i32, i32* %166, align 4, !dbg !1837
  %168 = icmp eq i32 %167, 47, !dbg !1838
  br i1 %168, label %169, label %171, !dbg !1839

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 12, !dbg !1840
  store i16 16895, i16* %170, align 4, !dbg !1841
  br label %173, !dbg !1842

171:                                              ; preds = %164, %161
  %172 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 12, !dbg !1843
  store i16 -32330, i16* %172, align 4, !dbg !1844
  br label %173

173:                                              ; preds = %171, %169
  br label %194, !dbg !1845

174:                                              ; preds = %158
  %175 = call i8* @archive_entry_pathname(%struct.archive_entry* noundef %1), !dbg !1846
  call void @llvm.dbg.value(metadata i8* %175, metadata !1848, metadata !DIExpression()), !dbg !1627
  %176 = icmp ne i8* %175, null, !dbg !1849
  br i1 %176, label %177, label %179, !dbg !1850

177:                                              ; preds = %174
  %178 = call i64 @strlen(i8* noundef %175) #9, !dbg !1851
  br label %180, !dbg !1850

179:                                              ; preds = %174
  br label %180, !dbg !1850

180:                                              ; preds = %179, %177
  %181 = phi i64 [ %178, %177 ], [ 0, %179 ], !dbg !1850
  call void @llvm.dbg.value(metadata i64 %181, metadata !1832, metadata !DIExpression()), !dbg !1627
  %182 = icmp ugt i64 %181, 0, !dbg !1852
  br i1 %182, label %183, label %191, !dbg !1854

183:                                              ; preds = %180
  %184 = sub i64 %181, 1, !dbg !1855
  %185 = getelementptr inbounds i8, i8* %175, i64 %184, !dbg !1856
  %186 = load i8, i8* %185, align 1, !dbg !1856
  %187 = sext i8 %186 to i32, !dbg !1856
  %188 = icmp eq i32 %187, 47, !dbg !1857
  br i1 %188, label %189, label %191, !dbg !1858

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 12, !dbg !1859
  store i16 16895, i16* %190, align 4, !dbg !1860
  br label %193, !dbg !1861

191:                                              ; preds = %183, %180
  %192 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 12, !dbg !1862
  store i16 -32330, i16* %192, align 4, !dbg !1863
  br label %193

193:                                              ; preds = %191, %189
  br label %194

194:                                              ; preds = %193, %173
  br label %195, !dbg !1864

195:                                              ; preds = %194, %152
  %196 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef %63, i64* noundef null), !dbg !1865
  call void @llvm.dbg.value(metadata i8* %196, metadata !1758, metadata !DIExpression()), !dbg !1627
  %197 = icmp eq i8* %196, null, !dbg !1867
  br i1 %197, label %198, label %200, !dbg !1868

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1869
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %199, i32 noundef 84, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0)), !dbg !1871
  br label %256, !dbg !1872

200:                                              ; preds = %195
  call void @process_extra(i8* noundef %196, i64 noundef %63, %struct.zip_entry* noundef %5), !dbg !1873
  %201 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %63), !dbg !1874
  %202 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 12, !dbg !1875
  %203 = load i16, i16* %202, align 4, !dbg !1875
  %204 = zext i16 %203 to i32, !dbg !1876
  call void @archive_entry_set_mode(%struct.archive_entry* noundef %1, i32 noundef %204), !dbg !1877
  %205 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 5, !dbg !1878
  %206 = load i64, i64* %205, align 8, !dbg !1878
  call void @archive_entry_set_uid(%struct.archive_entry* noundef %1, i64 noundef %206), !dbg !1879
  %207 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 4, !dbg !1880
  %208 = load i64, i64* %207, align 8, !dbg !1880
  call void @archive_entry_set_gid(%struct.archive_entry* noundef %1, i64 noundef %208), !dbg !1881
  %209 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 8, !dbg !1882
  %210 = load i64, i64* %209, align 8, !dbg !1882
  call void @archive_entry_set_mtime(%struct.archive_entry* noundef %1, i64 noundef %210, i64 noundef 0), !dbg !1883
  %211 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 10, !dbg !1884
  %212 = load i64, i64* %211, align 8, !dbg !1884
  call void @archive_entry_set_ctime(%struct.archive_entry* noundef %1, i64 noundef %212, i64 noundef 0), !dbg !1885
  %213 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 9, !dbg !1886
  %214 = load i64, i64* %213, align 8, !dbg !1886
  call void @archive_entry_set_atime(%struct.archive_entry* noundef %1, i64 noundef %214, i64 noundef 0), !dbg !1887
  %215 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 13, !dbg !1888
  %216 = load i16, i16* %215, align 2, !dbg !1888
  %217 = zext i16 %216 to i32, !dbg !1890
  %218 = and i32 %217, 8, !dbg !1891
  %219 = icmp eq i32 0, %218, !dbg !1892
  br i1 %219, label %220, label %223, !dbg !1893

220:                                              ; preds = %200
  %221 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 3, !dbg !1894
  %222 = load i64, i64* %221, align 8, !dbg !1894
  call void @archive_entry_set_size(%struct.archive_entry* noundef %1, i64 noundef %222), !dbg !1895
  br label %223, !dbg !1895

223:                                              ; preds = %220, %200
  %224 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 2, !dbg !1896
  %225 = load i64, i64* %224, align 8, !dbg !1896
  %226 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 12, !dbg !1897
  store i64 %225, i64* %226, align 8, !dbg !1898
  %227 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %5, i32 0, i32 13, !dbg !1899
  %228 = load i16, i16* %227, align 2, !dbg !1899
  %229 = zext i16 %228 to i32, !dbg !1901
  %230 = and i32 %229, 8, !dbg !1902
  %231 = icmp eq i32 0, %230, !dbg !1903
  br i1 %231, label %232, label %238, !dbg !1904

232:                                              ; preds = %223
  %233 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 12, !dbg !1905
  %234 = load i64, i64* %233, align 8, !dbg !1905
  %235 = icmp slt i64 %234, 1, !dbg !1906
  br i1 %235, label %236, label %238, !dbg !1907

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 17, !dbg !1908
  store i8 1, i8* %237, align 1, !dbg !1909
  br label %238, !dbg !1910

238:                                              ; preds = %236, %232, %223
  %239 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 29, !dbg !1911
  %240 = getelementptr inbounds [64 x i8], [64 x i8]* %239, i64 0, i64 0, !dbg !1912
  %241 = sext i8 %36 to i32, !dbg !1913
  %242 = sdiv i32 %241, 10, !dbg !1914
  %243 = sext i8 %36 to i32, !dbg !1915
  %244 = srem i32 %243, 10, !dbg !1916
  %245 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 8, !dbg !1917
  %246 = load %struct.zip_entry*, %struct.zip_entry** %245, align 8, !dbg !1917
  %247 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %246, i32 0, i32 14, !dbg !1918
  %248 = load i8, i8* %247, align 8, !dbg !1918
  %249 = sext i8 %248 to i32, !dbg !1919
  %250 = call i8* @compression_name(i32 noundef %249), !dbg !1920
  %251 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %240, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 noundef %242, i32 noundef %244, i8* noundef %250) #8, !dbg !1921
  %252 = getelementptr inbounds %struct.zip, %struct.zip* %2, i32 0, i32 29, !dbg !1922
  %253 = getelementptr inbounds [64 x i8], [64 x i8]* %252, i64 0, i64 0, !dbg !1923
  %254 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1924
  %255 = getelementptr inbounds %struct.archive, %struct.archive* %254, i32 0, i32 4, !dbg !1925
  store i8* %253, i8** %255, align 8, !dbg !1926
  br label %256, !dbg !1927

256:                                              ; preds = %238, %198, %147, %124, %105, %32, %27
  %.0 = phi i32 [ -30, %27 ], [ -30, %32 ], [ -30, %105 ], [ -30, %124 ], [ -30, %147 ], [ -30, %198 ], [ %.4, %238 ], !dbg !1627
  ret i32 %.0, !dbg !1928
}

declare i64 @archive_entry_size(%struct.archive_entry* noundef) #2

declare void @archive_entry_set_size(%struct.archive_entry* noundef, i64 noundef) #2

declare i32 @_archive_entry_copy_symlink_l(%struct.archive_entry* noundef, i8* noundef, i64 noundef, %struct.archive_string_conv* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #6

declare i8* @archive_string_conversion_charset_name(%struct.archive_string_conv* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @zip_read_mac_metadata(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1, %struct.zip_entry* noundef %2) #0 !dbg !1929 {
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !1932, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata %struct.archive_entry* %1, metadata !1934, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata %struct.zip_entry* %2, metadata !1935, metadata !DIExpression()), !dbg !1933
  %5 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !1936
  %6 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %5, align 8, !dbg !1936
  %7 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %6, i32 0, i32 0, !dbg !1937
  %8 = load i8*, i8** %7, align 8, !dbg !1937
  %9 = bitcast i8* %8 to %struct.zip*, !dbg !1938
  call void @llvm.dbg.value(metadata %struct.zip* %9, metadata !1939, metadata !DIExpression()), !dbg !1933
  %10 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 5, !dbg !1940
  %11 = load i64, i64* %10, align 8, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %11, metadata !1941, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i32 0, metadata !1942, metadata !DIExpression()), !dbg !1933
  %12 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 14, !dbg !1943
  %13 = load i8, i8* %12, align 8, !dbg !1943
  %14 = sext i8 %13 to i32, !dbg !1944
  switch i32 %14, label %16 [
    i32 0, label %15
    i32 8, label %15
  ], !dbg !1945

15:                                               ; preds = %3, %3
  br label %22, !dbg !1946

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1948
  %18 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 14, !dbg !1949
  %19 = load i8, i8* %18, align 8, !dbg !1949
  %20 = sext i8 %19 to i32, !dbg !1950
  %21 = call i8* @compression_name(i32 noundef %20), !dbg !1951
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %17, i32 noundef 84, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef %21), !dbg !1952
  br label %154, !dbg !1953

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 3, !dbg !1954
  %24 = load i64, i64* %23, align 8, !dbg !1954
  %25 = icmp sgt i64 %24, 131072, !dbg !1956
  br i1 %25, label %26, label %30, !dbg !1957

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1958
  %28 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 3, !dbg !1960
  %29 = load i64, i64* %28, align 8, !dbg !1960
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %27, i32 noundef 84, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.34, i64 0, i64 0), i64 noundef %29), !dbg !1961
  br label %154, !dbg !1962

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 3, !dbg !1963
  %32 = load i64, i64* %31, align 8, !dbg !1963
  %33 = call noalias i8* @malloc(i64 noundef %32) #8, !dbg !1964
  call void @llvm.dbg.value(metadata i8* %33, metadata !1965, metadata !DIExpression()), !dbg !1933
  %34 = icmp eq i8* %33, null, !dbg !1966
  br i1 %34, label %35, label %37, !dbg !1968

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !1969
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %36, i32 noundef 12, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0)), !dbg !1971
  br label %154, !dbg !1972

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 5, !dbg !1973
  %39 = load i64, i64* %38, align 8, !dbg !1973
  %40 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 1, !dbg !1975
  %41 = load i64, i64* %40, align 8, !dbg !1975
  %42 = icmp slt i64 %39, %41, !dbg !1976
  br i1 %42, label %43, label %50, !dbg !1977

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 1, !dbg !1978
  %45 = load i64, i64* %44, align 8, !dbg !1978
  %46 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 5, !dbg !1979
  %47 = load i64, i64* %46, align 8, !dbg !1979
  %48 = sub nsw i64 %45, %47, !dbg !1980
  %49 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %48), !dbg !1981
  br label %66, !dbg !1981

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 5, !dbg !1982
  %52 = load i64, i64* %51, align 8, !dbg !1982
  %53 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 1, !dbg !1984
  %54 = load i64, i64* %53, align 8, !dbg !1984
  %55 = icmp ne i64 %52, %54, !dbg !1985
  br i1 %55, label %56, label %65, !dbg !1986

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 1, !dbg !1987
  %58 = load i64, i64* %57, align 8, !dbg !1987
  %59 = call i64 @__archive_read_seek(%struct.archive_read* noundef %0, i64 noundef %58, i32 noundef 0), !dbg !1989
  %60 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 8, !dbg !1990
  %61 = load %struct.zip_entry*, %struct.zip_entry** %60, align 8, !dbg !1990
  %62 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %61, i32 0, i32 1, !dbg !1991
  %63 = load i64, i64* %62, align 8, !dbg !1991
  %64 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 5, !dbg !1992
  store i64 %63, i64* %64, align 8, !dbg !1993
  br label %65, !dbg !1994

65:                                               ; preds = %56, %50
  br label %66

66:                                               ; preds = %65, %43
  %67 = call i64 @zip_get_local_file_header_size(%struct.archive_read* noundef %0, i64 noundef 0), !dbg !1995
  call void @llvm.dbg.value(metadata i64 %67, metadata !1996, metadata !DIExpression()), !dbg !1933
  %68 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %67), !dbg !1997
  %69 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 2, !dbg !1998
  %70 = load i64, i64* %69, align 8, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %70, metadata !1999, metadata !DIExpression()), !dbg !1933
  %71 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 3, !dbg !2000
  %72 = load i64, i64* %71, align 8, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %72, metadata !2001, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8* %33, metadata !2002, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i32 0, metadata !2003, metadata !DIExpression()), !dbg !1933
  br label %73, !dbg !2004

73:                                               ; preds = %143, %66
  %.09 = phi i8* [ %33, %66 ], [ %.110, %143 ], !dbg !2005
  %.08 = phi i64 [ %70, %66 ], [ %145, %143 ], !dbg !1933
  %.06 = phi i64 [ %72, %66 ], [ %.17, %143 ], !dbg !2006
  %.03 = phi i32 [ 0, %66 ], [ %.14, %143 ], !dbg !2007
  %.02 = phi i32 [ 0, %66 ], [ %.3, %143 ], !dbg !2008
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2003, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1942, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %.06, metadata !2001, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %.08, metadata !1999, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8* %.09, metadata !2002, metadata !DIExpression()), !dbg !1933
  %74 = icmp ne i32 %.02, 0, !dbg !2009
  br i1 %74, label %77, label %75, !dbg !2010

75:                                               ; preds = %73
  %76 = icmp ne i64 %.08, 0, !dbg !2010
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i1 [ false, %73 ], [ %76, %75 ], !dbg !1933
  br i1 %78, label %79, label %146, !dbg !2004

79:                                               ; preds = %77
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2011, metadata !DIExpression()), !dbg !2013
  %80 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef 1, i64* noundef %4), !dbg !2014
  call void @llvm.dbg.value(metadata i8* %80, metadata !2015, metadata !DIExpression()), !dbg !2016
  %81 = icmp eq i8* %80, null, !dbg !2017
  br i1 %81, label %82, label %84, !dbg !2019

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2020
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %83, i32 noundef 84, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0)), !dbg !2022
  call void @llvm.dbg.value(metadata i32 -20, metadata !1942, metadata !DIExpression()), !dbg !1933
  br label %152, !dbg !2023

84:                                               ; preds = %79
  %85 = load i64, i64* %4, align 8, !dbg !2024
  %86 = icmp ugt i64 %85, %.08, !dbg !2026
  br i1 %86, label %87, label %88, !dbg !2027

87:                                               ; preds = %84
  store i64 %.08, i64* %4, align 8, !dbg !2028
  br label %88, !dbg !2029

88:                                               ; preds = %87, %84
  %89 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 14, !dbg !2030
  %90 = load i8, i8* %89, align 8, !dbg !2030
  %91 = sext i8 %90 to i32, !dbg !2031
  switch i32 %91, label %142 [
    i32 0, label %92
    i32 8, label %100
  ], !dbg !2032

92:                                               ; preds = %88
  %93 = load i64, i64* %4, align 8, !dbg !2033
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.09, i8* align 1 %80, i64 %93, i1 false), !dbg !2035
  %94 = load i64, i64* %4, align 8, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %94, metadata !2037, metadata !DIExpression()), !dbg !2016
  %95 = sub i64 %.06, %94, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %95, metadata !2001, metadata !DIExpression()), !dbg !1933
  %96 = getelementptr inbounds i8, i8* %.09, i64 %94, !dbg !2039
  call void @llvm.dbg.value(metadata i8* %96, metadata !2002, metadata !DIExpression()), !dbg !1933
  %97 = icmp eq i64 %95, 0, !dbg !2040
  br i1 %97, label %98, label %99, !dbg !2042

98:                                               ; preds = %92
  call void @llvm.dbg.value(metadata i32 1, metadata !2003, metadata !DIExpression()), !dbg !1933
  br label %99, !dbg !2043

99:                                               ; preds = %98, %92
  %.1 = phi i32 [ 1, %98 ], [ %.02, %92 ], !dbg !1933
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2003, metadata !DIExpression()), !dbg !1933
  br label %143, !dbg !2044

100:                                              ; preds = %88
  %101 = call i32 @zip_deflate_init(%struct.archive_read* noundef %0, %struct.zip* noundef %9), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %101, metadata !1942, metadata !DIExpression()), !dbg !1933
  %102 = icmp ne i32 %101, 0, !dbg !2047
  br i1 %102, label %103, label %104, !dbg !2049

103:                                              ; preds = %100
  br label %152, !dbg !2050

104:                                              ; preds = %100
  %105 = ptrtoint i8* %80 to i64, !dbg !2051
  %106 = inttoptr i64 %105 to i8*, !dbg !2052
  %107 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 22, !dbg !2053
  %108 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %107, i32 0, i32 0, !dbg !2054
  store i8* %106, i8** %108, align 8, !dbg !2055
  %109 = load i64, i64* %4, align 8, !dbg !2056
  %110 = trunc i64 %109 to i32, !dbg !2057
  %111 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 22, !dbg !2058
  %112 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %111, i32 0, i32 1, !dbg !2059
  store i32 %110, i32* %112, align 8, !dbg !2060
  %113 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 22, !dbg !2061
  %114 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %113, i32 0, i32 2, !dbg !2062
  store i64 0, i64* %114, align 8, !dbg !2063
  %115 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 22, !dbg !2064
  %116 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %115, i32 0, i32 3, !dbg !2065
  store i8* %.09, i8** %116, align 8, !dbg !2066
  %117 = trunc i64 %.06 to i32, !dbg !2067
  %118 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 22, !dbg !2068
  %119 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %118, i32 0, i32 4, !dbg !2069
  store i32 %117, i32* %119, align 8, !dbg !2070
  %120 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 22, !dbg !2071
  %121 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %120, i32 0, i32 5, !dbg !2072
  store i64 0, i64* %121, align 8, !dbg !2073
  %122 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 22, !dbg !2074
  %123 = call i32 @inflate(%struct.z_stream_s* noundef %122, i32 noundef 0), !dbg !2075
  call void @llvm.dbg.value(metadata i32 %123, metadata !2076, metadata !DIExpression()), !dbg !2077
  switch i32 %123, label %128 [
    i32 0, label %124
    i32 1, label %125
    i32 -4, label %126
  ], !dbg !2078

124:                                              ; preds = %104
  br label %130, !dbg !2079

125:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i32 1, metadata !2003, metadata !DIExpression()), !dbg !1933
  br label %130, !dbg !2081

126:                                              ; preds = %104
  %127 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2082
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %127, i32 noundef 12, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0)), !dbg !2083
  call void @llvm.dbg.value(metadata i32 -30, metadata !1942, metadata !DIExpression()), !dbg !1933
  br label %152, !dbg !2084

128:                                              ; preds = %104
  %129 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2085
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %129, i32 noundef -1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i32 noundef %123), !dbg !2086
  call void @llvm.dbg.value(metadata i32 -30, metadata !1942, metadata !DIExpression()), !dbg !1933
  br label %152, !dbg !2087

130:                                              ; preds = %125, %124
  %.2 = phi i32 [ 1, %125 ], [ %.02, %124 ], !dbg !1933
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2003, metadata !DIExpression()), !dbg !1933
  %131 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 22, !dbg !2088
  %132 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %131, i32 0, i32 2, !dbg !2089
  %133 = load i64, i64* %132, align 8, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %133, metadata !2037, metadata !DIExpression()), !dbg !2016
  %134 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 22, !dbg !2090
  %135 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %134, i32 0, i32 5, !dbg !2091
  %136 = load i64, i64* %135, align 8, !dbg !2091
  %137 = sub i64 %.06, %136, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %137, metadata !2001, metadata !DIExpression()), !dbg !1933
  %138 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 22, !dbg !2093
  %139 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %138, i32 0, i32 5, !dbg !2094
  %140 = load i64, i64* %139, align 8, !dbg !2094
  %141 = getelementptr inbounds i8, i8* %.09, i64 %140, !dbg !2095
  call void @llvm.dbg.value(metadata i8* %141, metadata !2002, metadata !DIExpression()), !dbg !1933
  br label %143, !dbg !2096

142:                                              ; preds = %88
  call void @llvm.dbg.value(metadata i64 0, metadata !2037, metadata !DIExpression()), !dbg !2016
  br label %143, !dbg !2097

143:                                              ; preds = %142, %130, %99
  %.110 = phi i8* [ %.09, %142 ], [ %141, %130 ], [ %96, %99 ], !dbg !1933
  %.17 = phi i64 [ %.06, %142 ], [ %137, %130 ], [ %95, %99 ], !dbg !1933
  %.14 = phi i32 [ %.03, %142 ], [ %101, %130 ], [ %.03, %99 ], !dbg !1933
  %.3 = phi i32 [ %.02, %142 ], [ %.2, %130 ], [ %.1, %99 ], !dbg !1933
  %.01 = phi i64 [ 0, %142 ], [ %133, %130 ], [ %94, %99 ], !dbg !2098
  call void @llvm.dbg.value(metadata i64 %.01, metadata !2037, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2003, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i32 %.14, metadata !1942, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %.17, metadata !2001, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8* %.110, metadata !2002, metadata !DIExpression()), !dbg !1933
  %144 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %.01), !dbg !2099
  %145 = sub i64 %.08, %.01, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %145, metadata !1999, metadata !DIExpression()), !dbg !1933
  br label %73, !dbg !2004, !llvm.loop !2101

146:                                              ; preds = %77
  %147 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 3, !dbg !2103
  %148 = load i64, i64* %147, align 8, !dbg !2103
  %149 = sub i64 %148, %.06, !dbg !2104
  call void @archive_entry_copy_mac_metadata(%struct.archive_entry* noundef %1, i8* noundef %33, i64 noundef %149), !dbg !2105
  %150 = call i64 @__archive_read_seek(%struct.archive_read* noundef %0, i64 noundef %11, i32 noundef 0), !dbg !2106
  %151 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 5, !dbg !2107
  store i64 %11, i64* %151, align 8, !dbg !2108
  br label %152, !dbg !2109

152:                                              ; preds = %146, %128, %126, %103, %82
  %.25 = phi i32 [ -20, %82 ], [ %101, %103 ], [ -30, %128 ], [ -30, %126 ], [ %.03, %146 ], !dbg !1933
  call void @llvm.dbg.value(metadata i32 %.25, metadata !1942, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.label(metadata !2110), !dbg !2111
  %153 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 16, !dbg !2112
  store i8 0, i8* %153, align 8, !dbg !2113
  call void @free(i8* noundef %33) #8, !dbg !2114
  br label %154, !dbg !2115

154:                                              ; preds = %152, %35, %26, %16
  %.0 = phi i32 [ -20, %16 ], [ -20, %26 ], [ -30, %35 ], [ %.25, %152 ], !dbg !1933
  ret i32 %.0, !dbg !2116
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmp_node(%struct.archive_rb_node* noundef %0, %struct.archive_rb_node* noundef %1) #0 !dbg !2117 {
  call void @llvm.dbg.value(metadata %struct.archive_rb_node* %0, metadata !2118, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata %struct.archive_rb_node* %1, metadata !2120, metadata !DIExpression()), !dbg !2119
  %3 = bitcast %struct.archive_rb_node* %0 to %struct.zip_entry*, !dbg !2121
  call void @llvm.dbg.value(metadata %struct.zip_entry* %3, metadata !2122, metadata !DIExpression()), !dbg !2119
  %4 = bitcast %struct.archive_rb_node* %1 to %struct.zip_entry*, !dbg !2123
  call void @llvm.dbg.value(metadata %struct.zip_entry* %4, metadata !2124, metadata !DIExpression()), !dbg !2119
  %5 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %4, i32 0, i32 1, !dbg !2125
  %6 = load i64, i64* %5, align 8, !dbg !2125
  %7 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %3, i32 0, i32 1, !dbg !2126
  %8 = load i64, i64* %7, align 8, !dbg !2126
  %9 = sub nsw i64 %6, %8, !dbg !2127
  %10 = trunc i64 %9 to i32, !dbg !2128
  ret i32 %10, !dbg !2129
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmp_key(%struct.archive_rb_node* noundef %0, i8* noundef %1) #0 !dbg !2130 {
  call void @llvm.dbg.value(metadata %struct.archive_rb_node* %0, metadata !2131, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8* %1, metadata !2133, metadata !DIExpression()), !dbg !2132
  ret i32 1, !dbg !2134
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsrc_cmp_node(%struct.archive_rb_node* noundef %0, %struct.archive_rb_node* noundef %1) #0 !dbg !2135 {
  call void @llvm.dbg.value(metadata %struct.archive_rb_node* %0, metadata !2136, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata %struct.archive_rb_node* %1, metadata !2138, metadata !DIExpression()), !dbg !2137
  %3 = bitcast %struct.archive_rb_node* %0 to %struct.zip_entry*, !dbg !2139
  call void @llvm.dbg.value(metadata %struct.zip_entry* %3, metadata !2140, metadata !DIExpression()), !dbg !2137
  %4 = bitcast %struct.archive_rb_node* %1 to %struct.zip_entry*, !dbg !2141
  call void @llvm.dbg.value(metadata %struct.zip_entry* %4, metadata !2142, metadata !DIExpression()), !dbg !2137
  %5 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %4, i32 0, i32 7, !dbg !2143
  %6 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0, !dbg !2144
  %7 = load i8*, i8** %6, align 8, !dbg !2144
  %8 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %3, i32 0, i32 7, !dbg !2145
  %9 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %8, i32 0, i32 0, !dbg !2146
  %10 = load i8*, i8** %9, align 8, !dbg !2146
  %11 = call i32 @strcmp(i8* noundef %7, i8* noundef %10) #9, !dbg !2147
  ret i32 %11, !dbg !2148
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsrc_cmp_key(%struct.archive_rb_node* noundef %0, i8* noundef %1) #0 !dbg !2149 {
  call void @llvm.dbg.value(metadata %struct.archive_rb_node* %0, metadata !2150, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8* %1, metadata !2152, metadata !DIExpression()), !dbg !2151
  %3 = bitcast %struct.archive_rb_node* %0 to %struct.zip_entry*, !dbg !2153
  call void @llvm.dbg.value(metadata %struct.zip_entry* %3, metadata !2154, metadata !DIExpression()), !dbg !2151
  %4 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %3, i32 0, i32 7, !dbg !2155
  %5 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 0, !dbg !2156
  %6 = load i8*, i8** %5, align 8, !dbg !2156
  %7 = call i32 @strcmp(i8* noundef %1, i8* noundef %6) #9, !dbg !2157
  ret i32 %7, !dbg !2158
}

declare void @__archive_rb_tree_init(%struct.archive_rb_tree* noundef, %struct.archive_rb_tree_ops* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @zip_time(i8* noundef %0) #0 !dbg !2159 {
  %2 = alloca %struct.tm, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2162, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.declare(metadata %struct.tm* %2, metadata !2164, metadata !DIExpression()), !dbg !2179
  %3 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !2180
  %4 = load i8, i8* %3, align 1, !dbg !2180
  %5 = sext i8 %4 to i32, !dbg !2181
  %6 = and i32 255, %5, !dbg !2182
  %7 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2183
  %8 = load i8, i8* %7, align 1, !dbg !2183
  %9 = sext i8 %8 to i32, !dbg !2184
  %10 = and i32 255, %9, !dbg !2185
  %11 = mul i32 256, %10, !dbg !2186
  %12 = add i32 %6, %11, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %12, metadata !2188, metadata !DIExpression()), !dbg !2163
  %13 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2189
  %14 = load i8, i8* %13, align 1, !dbg !2189
  %15 = sext i8 %14 to i32, !dbg !2190
  %16 = and i32 255, %15, !dbg !2191
  %17 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2192
  %18 = load i8, i8* %17, align 1, !dbg !2192
  %19 = sext i8 %18 to i32, !dbg !2193
  %20 = and i32 255, %19, !dbg !2194
  %21 = mul i32 256, %20, !dbg !2195
  %22 = add i32 %16, %21, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %22, metadata !2197, metadata !DIExpression()), !dbg !2163
  %23 = bitcast %struct.tm* %2 to i8*, !dbg !2198
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 56, i1 false), !dbg !2198
  %24 = ashr i32 %22, 9, !dbg !2199
  %25 = and i32 %24, 127, !dbg !2200
  %26 = add nsw i32 %25, 80, !dbg !2201
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 5, !dbg !2202
  store i32 %26, i32* %27, align 4, !dbg !2203
  %28 = ashr i32 %22, 5, !dbg !2204
  %29 = and i32 %28, 15, !dbg !2205
  %30 = sub nsw i32 %29, 1, !dbg !2206
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 4, !dbg !2207
  store i32 %30, i32* %31, align 8, !dbg !2208
  %32 = and i32 %22, 31, !dbg !2209
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 3, !dbg !2210
  store i32 %32, i32* %33, align 4, !dbg !2211
  %34 = ashr i32 %12, 11, !dbg !2212
  %35 = and i32 %34, 31, !dbg !2213
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 2, !dbg !2214
  store i32 %35, i32* %36, align 8, !dbg !2215
  %37 = ashr i32 %12, 5, !dbg !2216
  %38 = and i32 %37, 63, !dbg !2217
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 1, !dbg !2218
  store i32 %38, i32* %39, align 4, !dbg !2219
  %40 = shl i32 %12, 1, !dbg !2220
  %41 = and i32 %40, 62, !dbg !2221
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 0, !dbg !2222
  store i32 %41, i32* %42, align 8, !dbg !2223
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 8, !dbg !2224
  store i32 -1, i32* %43, align 8, !dbg !2225
  %44 = call i64 @mktime(%struct.tm* noundef %2) #8, !dbg !2226
  ret i64 %44, !dbg !2227
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @rsrc_basename(i8* noundef %0, i64 noundef %1) #0 !dbg !2228 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2231, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i64 %1, metadata !2233, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8* %0, metadata !2234, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8* %0, metadata !2235, metadata !DIExpression()), !dbg !2232
  br label %3, !dbg !2236

3:                                                ; preds = %11, %2
  %.01 = phi i8* [ %0, %2 ], [ %12, %11 ], !dbg !2232
  %.0 = phi i8* [ %0, %2 ], [ %12, %11 ], !dbg !2232
  call void @llvm.dbg.value(metadata i8* %.0, metadata !2235, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2234, metadata !DIExpression()), !dbg !2232
  %4 = ptrtoint i8* %.01 to i64, !dbg !2237
  %5 = ptrtoint i8* %0 to i64, !dbg !2237
  %6 = sub i64 %4, %5, !dbg !2237
  %7 = sub i64 %1, %6, !dbg !2241
  %8 = call i8* @memchr(i8* noundef %.01, i32 noundef 47, i64 noundef %7) #9, !dbg !2242
  call void @llvm.dbg.value(metadata i8* %8, metadata !2234, metadata !DIExpression()), !dbg !2232
  %9 = icmp eq i8* %8, null, !dbg !2243
  br i1 %9, label %10, label %11, !dbg !2245

10:                                               ; preds = %3
  br label %13, !dbg !2246

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !2247
  call void @llvm.dbg.value(metadata i8* %12, metadata !2234, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8* %12, metadata !2235, metadata !DIExpression()), !dbg !2232
  br label %3, !dbg !2248, !llvm.loop !2249

13:                                               ; preds = %10
  ret i8* %.0, !dbg !2252
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #5

declare i32 @__archive_rb_tree_insert_node(%struct.archive_rb_tree* noundef, %struct.archive_rb_node* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @expose_parent_dirs(%struct.zip* noundef %0, i8* noundef %1, i64 noundef %2) #0 !dbg !2253 {
  %4 = alloca %struct.archive_string, align 8
  call void @llvm.dbg.value(metadata %struct.zip* %0, metadata !2256, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i8* %1, metadata !2258, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i64 %2, metadata !2259, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.declare(metadata %struct.archive_string* %4, metadata !2260, metadata !DIExpression()), !dbg !2261
  br label %5, !dbg !2262

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 0, !dbg !2263
  store i8* null, i8** %6, align 8, !dbg !2263
  %7 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 1, !dbg !2263
  store i64 0, i64* %7, align 8, !dbg !2263
  %8 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 2, !dbg !2263
  store i64 0, i64* %8, align 8, !dbg !2263
  br label %9, !dbg !2263

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 1, !dbg !2265
  store i64 0, i64* %10, align 8, !dbg !2265
  %11 = call %struct.archive_string* @archive_strncat(%struct.archive_string* noundef %4, i8* noundef %1, i64 noundef %2), !dbg !2265
  br label %12, !dbg !2266

12:                                               ; preds = %26, %9
  %13 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 0, !dbg !2267
  %14 = load i8*, i8** %13, align 8, !dbg !2267
  %15 = call i8* @strrchr(i8* noundef %14, i32 noundef 47) #9, !dbg !2271
  call void @llvm.dbg.value(metadata i8* %15, metadata !2272, metadata !DIExpression()), !dbg !2257
  %16 = icmp eq i8* %15, null, !dbg !2273
  br i1 %16, label %17, label %18, !dbg !2275

17:                                               ; preds = %12
  br label %33, !dbg !2276

18:                                               ; preds = %12
  store i8 0, i8* %15, align 1, !dbg !2277
  %19 = getelementptr inbounds %struct.zip, %struct.zip* %0, i32 0, i32 10, !dbg !2278
  %20 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 0, !dbg !2279
  %21 = load i8*, i8** %20, align 8, !dbg !2279
  %22 = call %struct.archive_rb_node* @__archive_rb_tree_find_node(%struct.archive_rb_tree* noundef %19, i8* noundef %21), !dbg !2280
  %23 = bitcast %struct.archive_rb_node* %22 to %struct.zip_entry*, !dbg !2281
  call void @llvm.dbg.value(metadata %struct.zip_entry* %23, metadata !2282, metadata !DIExpression()), !dbg !2257
  %24 = icmp eq %struct.zip_entry* %23, null, !dbg !2283
  br i1 %24, label %25, label %26, !dbg !2285

25:                                               ; preds = %18
  br label %33, !dbg !2286

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.zip, %struct.zip* %0, i32 0, i32 10, !dbg !2287
  %28 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %23, i32 0, i32 0, !dbg !2288
  call void @__archive_rb_tree_remove_node(%struct.archive_rb_tree* noundef %27, %struct.archive_rb_node* noundef %28), !dbg !2289
  %29 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %23, i32 0, i32 7, !dbg !2290
  call void @archive_string_free(%struct.archive_string* noundef %29), !dbg !2291
  %30 = getelementptr inbounds %struct.zip, %struct.zip* %0, i32 0, i32 9, !dbg !2292
  %31 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %23, i32 0, i32 0, !dbg !2293
  %32 = call i32 @__archive_rb_tree_insert_node(%struct.archive_rb_tree* noundef %30, %struct.archive_rb_node* noundef %31), !dbg !2294
  br label %12, !dbg !2295, !llvm.loop !2296

33:                                               ; preds = %25, %17
  call void @archive_string_free(%struct.archive_string* noundef %4), !dbg !2299
  ret void, !dbg !2300
}

declare %struct.archive_string* @archive_strncat(%struct.archive_string* noundef, i8* noundef, i64 noundef) #2

declare %struct.archive_string* @archive_strcat(%struct.archive_string* noundef, i8* noundef) #2

declare i64 @__archive_read_consume(%struct.archive_read* noundef, i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #5

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) #5

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #5

declare void @__archive_rb_tree_remove_node(%struct.archive_rb_tree* noundef, %struct.archive_rb_node* noundef) #2

declare void @archive_string_free(%struct.archive_string* noundef) #2

declare i64 @crc32(i64 noundef, i8* noundef, i32 noundef) #2

declare %struct.archive_string_conv* @archive_string_default_conversion_for_read(%struct.archive* noundef) #2

declare %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive* noundef, i8* noundef, i32 noundef) #2

declare i32 @_archive_entry_copy_pathname_l(%struct.archive_entry* noundef, i8* noundef, i64 noundef, %struct.archive_string_conv* noundef) #2

declare i32* @archive_entry_pathname_w(%struct.archive_entry* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @wcslen(i32* noundef) #5

declare i8* @archive_entry_pathname(%struct.archive_entry* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define internal void @process_extra(i8* noundef %0, i64 noundef %1, %struct.zip_entry* noundef %2) #0 !dbg !2301 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2304, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i64 %1, metadata !2306, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata %struct.zip_entry* %2, metadata !2307, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 0, metadata !2308, metadata !DIExpression()), !dbg !2305
  br label %4, !dbg !2309

4:                                                ; preds = %237, %3
  %.02 = phi i32 [ 0, %3 ], [ %239, %237 ], !dbg !2305
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2308, metadata !DIExpression()), !dbg !2305
  %5 = zext i32 %.02 to i64, !dbg !2310
  %6 = sub i64 %1, 4, !dbg !2311
  %7 = icmp ult i64 %5, %6, !dbg !2312
  br i1 %7, label %8, label %240, !dbg !2309

8:                                                ; preds = %4
  %9 = zext i32 %.02 to i64, !dbg !2313
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !2313
  %11 = call zeroext i16 @archive_le16dec(i8* noundef %10), !dbg !2315
  call void @llvm.dbg.value(metadata i16 %11, metadata !2316, metadata !DIExpression()), !dbg !2317
  %12 = zext i32 %.02 to i64, !dbg !2318
  %13 = getelementptr inbounds i8, i8* %0, i64 %12, !dbg !2318
  %14 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !2319
  %15 = call zeroext i16 @archive_le16dec(i8* noundef %14), !dbg !2320
  call void @llvm.dbg.value(metadata i16 %15, metadata !2321, metadata !DIExpression()), !dbg !2317
  %16 = add i32 %.02, 4, !dbg !2322
  call void @llvm.dbg.value(metadata i32 %16, metadata !2308, metadata !DIExpression()), !dbg !2305
  %17 = zext i16 %15 to i32, !dbg !2323
  %18 = add i32 %16, %17, !dbg !2325
  %19 = zext i32 %18 to i64, !dbg !2326
  %20 = icmp ugt i64 %19, %1, !dbg !2327
  br i1 %20, label %21, label %22, !dbg !2328

21:                                               ; preds = %8
  br label %240, !dbg !2329

22:                                               ; preds = %8
  %23 = zext i16 %11 to i32, !dbg !2330
  switch i32 %23, label %236 [
    i32 1, label %24
    i32 21589, label %42
    i32 22613, label %100
    i32 30805, label %132
    i32 30837, label %152
  ], !dbg !2331

24:                                               ; preds = %22
  %25 = zext i16 %15 to i32, !dbg !2332
  %26 = icmp sge i32 %25, 8, !dbg !2335
  br i1 %26, label %27, label %32, !dbg !2336

27:                                               ; preds = %24
  %28 = zext i32 %16 to i64, !dbg !2337
  %29 = getelementptr inbounds i8, i8* %0, i64 %28, !dbg !2337
  %30 = call i64 @archive_le64dec(i8* noundef %29), !dbg !2338
  %31 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 3, !dbg !2339
  store i64 %30, i64* %31, align 8, !dbg !2340
  br label %32, !dbg !2341

32:                                               ; preds = %27, %24
  %33 = zext i16 %15 to i32, !dbg !2342
  %34 = icmp sge i32 %33, 16, !dbg !2344
  br i1 %34, label %35, label %41, !dbg !2345

35:                                               ; preds = %32
  %36 = zext i32 %16 to i64, !dbg !2346
  %37 = getelementptr inbounds i8, i8* %0, i64 %36, !dbg !2346
  %38 = getelementptr inbounds i8, i8* %37, i64 8, !dbg !2347
  %39 = call i64 @archive_le64dec(i8* noundef %38), !dbg !2348
  %40 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 2, !dbg !2349
  store i64 %39, i64* %40, align 8, !dbg !2350
  br label %41, !dbg !2351

41:                                               ; preds = %35, %32
  br label %237, !dbg !2352

42:                                               ; preds = %22
  %43 = zext i32 %16 to i64, !dbg !2353
  %44 = getelementptr inbounds i8, i8* %0, i64 %43, !dbg !2353
  %45 = load i8, i8* %44, align 1, !dbg !2353
  %46 = sext i8 %45 to i32, !dbg !2353
  call void @llvm.dbg.value(metadata i32 %46, metadata !2355, metadata !DIExpression()), !dbg !2356
  %47 = add i32 %16, 1, !dbg !2357
  call void @llvm.dbg.value(metadata i32 %47, metadata !2308, metadata !DIExpression()), !dbg !2305
  %48 = add i16 %15, -1, !dbg !2358
  call void @llvm.dbg.value(metadata i16 %48, metadata !2321, metadata !DIExpression()), !dbg !2317
  %49 = and i32 %46, 1, !dbg !2359
  %50 = icmp ne i32 %49, 0, !dbg !2359
  br i1 %50, label %51, label %65, !dbg !2361

51:                                               ; preds = %42
  %52 = zext i16 %48 to i32, !dbg !2362
  %53 = icmp slt i32 %52, 4, !dbg !2365
  br i1 %53, label %54, label %55, !dbg !2366

54:                                               ; preds = %51
  br label %237, !dbg !2367

55:                                               ; preds = %51
  %56 = zext i32 %47 to i64, !dbg !2368
  %57 = getelementptr inbounds i8, i8* %0, i64 %56, !dbg !2368
  %58 = call i32 @archive_le32dec(i8* noundef %57), !dbg !2369
  %59 = zext i32 %58 to i64, !dbg !2369
  %60 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 8, !dbg !2370
  store i64 %59, i64* %60, align 8, !dbg !2371
  %61 = add i32 %47, 4, !dbg !2372
  call void @llvm.dbg.value(metadata i32 %61, metadata !2308, metadata !DIExpression()), !dbg !2305
  %62 = zext i16 %48 to i32, !dbg !2373
  %63 = sub nsw i32 %62, 4, !dbg !2373
  %64 = trunc i32 %63 to i16, !dbg !2373
  call void @llvm.dbg.value(metadata i16 %64, metadata !2321, metadata !DIExpression()), !dbg !2317
  br label %65, !dbg !2374

65:                                               ; preds = %55, %42
  %.13 = phi i32 [ %61, %55 ], [ %47, %42 ], !dbg !2356
  %.01 = phi i16 [ %64, %55 ], [ %48, %42 ], !dbg !2356
  call void @llvm.dbg.value(metadata i16 %.01, metadata !2321, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2308, metadata !DIExpression()), !dbg !2305
  %66 = and i32 %46, 2, !dbg !2375
  %67 = icmp ne i32 %66, 0, !dbg !2375
  br i1 %67, label %68, label %82, !dbg !2377

68:                                               ; preds = %65
  %69 = zext i16 %.01 to i32, !dbg !2378
  %70 = icmp slt i32 %69, 4, !dbg !2381
  br i1 %70, label %71, label %72, !dbg !2382

71:                                               ; preds = %68
  br label %237, !dbg !2383

72:                                               ; preds = %68
  %73 = zext i32 %.13 to i64, !dbg !2384
  %74 = getelementptr inbounds i8, i8* %0, i64 %73, !dbg !2384
  %75 = call i32 @archive_le32dec(i8* noundef %74), !dbg !2385
  %76 = zext i32 %75 to i64, !dbg !2385
  %77 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 9, !dbg !2386
  store i64 %76, i64* %77, align 8, !dbg !2387
  %78 = add i32 %.13, 4, !dbg !2388
  call void @llvm.dbg.value(metadata i32 %78, metadata !2308, metadata !DIExpression()), !dbg !2305
  %79 = zext i16 %.01 to i32, !dbg !2389
  %80 = sub nsw i32 %79, 4, !dbg !2389
  %81 = trunc i32 %80 to i16, !dbg !2389
  call void @llvm.dbg.value(metadata i16 %81, metadata !2321, metadata !DIExpression()), !dbg !2317
  br label %82, !dbg !2390

82:                                               ; preds = %72, %65
  %.24 = phi i32 [ %78, %72 ], [ %.13, %65 ], !dbg !2356
  %.1 = phi i16 [ %81, %72 ], [ %.01, %65 ], !dbg !2356
  call void @llvm.dbg.value(metadata i16 %.1, metadata !2321, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i32 %.24, metadata !2308, metadata !DIExpression()), !dbg !2305
  %83 = and i32 %46, 4, !dbg !2391
  %84 = icmp ne i32 %83, 0, !dbg !2391
  br i1 %84, label %85, label %99, !dbg !2393

85:                                               ; preds = %82
  %86 = zext i16 %.1 to i32, !dbg !2394
  %87 = icmp slt i32 %86, 4, !dbg !2397
  br i1 %87, label %88, label %89, !dbg !2398

88:                                               ; preds = %85
  br label %237, !dbg !2399

89:                                               ; preds = %85
  %90 = zext i32 %.24 to i64, !dbg !2400
  %91 = getelementptr inbounds i8, i8* %0, i64 %90, !dbg !2400
  %92 = call i32 @archive_le32dec(i8* noundef %91), !dbg !2401
  %93 = zext i32 %92 to i64, !dbg !2401
  %94 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 10, !dbg !2402
  store i64 %93, i64* %94, align 8, !dbg !2403
  %95 = add i32 %.24, 4, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %95, metadata !2308, metadata !DIExpression()), !dbg !2305
  %96 = zext i16 %.1 to i32, !dbg !2405
  %97 = sub nsw i32 %96, 4, !dbg !2405
  %98 = trunc i32 %97 to i16, !dbg !2405
  call void @llvm.dbg.value(metadata i16 %98, metadata !2321, metadata !DIExpression()), !dbg !2317
  br label %99, !dbg !2406

99:                                               ; preds = %89, %82
  %.35 = phi i32 [ %95, %89 ], [ %.24, %82 ], !dbg !2356
  %.2 = phi i16 [ %98, %89 ], [ %.1, %82 ], !dbg !2356
  call void @llvm.dbg.value(metadata i16 %.2, metadata !2321, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i32 %.35, metadata !2308, metadata !DIExpression()), !dbg !2305
  br label %237, !dbg !2407

100:                                              ; preds = %22
  %101 = zext i16 %15 to i32, !dbg !2408
  %102 = icmp sge i32 %101, 8, !dbg !2411
  br i1 %102, label %103, label %115, !dbg !2412

103:                                              ; preds = %100
  %104 = zext i32 %16 to i64, !dbg !2413
  %105 = getelementptr inbounds i8, i8* %0, i64 %104, !dbg !2413
  %106 = call i32 @archive_le32dec(i8* noundef %105), !dbg !2415
  %107 = zext i32 %106 to i64, !dbg !2415
  %108 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 9, !dbg !2416
  store i64 %107, i64* %108, align 8, !dbg !2417
  %109 = zext i32 %16 to i64, !dbg !2418
  %110 = getelementptr inbounds i8, i8* %0, i64 %109, !dbg !2418
  %111 = getelementptr inbounds i8, i8* %110, i64 4, !dbg !2419
  %112 = call i32 @archive_le32dec(i8* noundef %111), !dbg !2420
  %113 = zext i32 %112 to i64, !dbg !2420
  %114 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 8, !dbg !2421
  store i64 %113, i64* %114, align 8, !dbg !2422
  br label %115, !dbg !2423

115:                                              ; preds = %103, %100
  %116 = zext i16 %15 to i32, !dbg !2424
  %117 = icmp sge i32 %116, 12, !dbg !2426
  br i1 %117, label %118, label %131, !dbg !2427

118:                                              ; preds = %115
  %119 = zext i32 %16 to i64, !dbg !2428
  %120 = getelementptr inbounds i8, i8* %0, i64 %119, !dbg !2428
  %121 = getelementptr inbounds i8, i8* %120, i64 8, !dbg !2430
  %122 = call zeroext i16 @archive_le16dec(i8* noundef %121), !dbg !2431
  %123 = zext i16 %122 to i64, !dbg !2431
  %124 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 5, !dbg !2432
  store i64 %123, i64* %124, align 8, !dbg !2433
  %125 = zext i32 %16 to i64, !dbg !2434
  %126 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2434
  %127 = getelementptr inbounds i8, i8* %126, i64 10, !dbg !2435
  %128 = call zeroext i16 @archive_le16dec(i8* noundef %127), !dbg !2436
  %129 = zext i16 %128 to i64, !dbg !2436
  %130 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 4, !dbg !2437
  store i64 %129, i64* %130, align 8, !dbg !2438
  br label %131, !dbg !2439

131:                                              ; preds = %118, %115
  br label %237, !dbg !2440

132:                                              ; preds = %22
  %133 = zext i16 %15 to i32, !dbg !2441
  %134 = icmp sge i32 %133, 2, !dbg !2443
  br i1 %134, label %135, label %141, !dbg !2444

135:                                              ; preds = %132
  %136 = zext i32 %16 to i64, !dbg !2445
  %137 = getelementptr inbounds i8, i8* %0, i64 %136, !dbg !2445
  %138 = call zeroext i16 @archive_le16dec(i8* noundef %137), !dbg !2446
  %139 = zext i16 %138 to i64, !dbg !2446
  %140 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 5, !dbg !2447
  store i64 %139, i64* %140, align 8, !dbg !2448
  br label %141, !dbg !2449

141:                                              ; preds = %135, %132
  %142 = zext i16 %15 to i32, !dbg !2450
  %143 = icmp sge i32 %142, 4, !dbg !2452
  br i1 %143, label %144, label %151, !dbg !2453

144:                                              ; preds = %141
  %145 = zext i32 %16 to i64, !dbg !2454
  %146 = getelementptr inbounds i8, i8* %0, i64 %145, !dbg !2454
  %147 = getelementptr inbounds i8, i8* %146, i64 2, !dbg !2455
  %148 = call zeroext i16 @archive_le16dec(i8* noundef %147), !dbg !2456
  %149 = zext i16 %148 to i64, !dbg !2456
  %150 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 4, !dbg !2457
  store i64 %149, i64* %150, align 8, !dbg !2458
  br label %151, !dbg !2459

151:                                              ; preds = %144, %141
  br label %237, !dbg !2460

152:                                              ; preds = %22
  call void @llvm.dbg.value(metadata i32 0, metadata !2461, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i32 0, metadata !2464, metadata !DIExpression()), !dbg !2463
  %153 = zext i16 %15 to i32, !dbg !2465
  %154 = icmp sge i32 %153, 1, !dbg !2467
  br i1 %154, label %155, label %235, !dbg !2468

155:                                              ; preds = %152
  %156 = zext i32 %16 to i64, !dbg !2469
  %157 = getelementptr inbounds i8, i8* %0, i64 %156, !dbg !2469
  %158 = load i8, i8* %157, align 1, !dbg !2469
  %159 = sext i8 %158 to i32, !dbg !2469
  %160 = icmp eq i32 %159, 1, !dbg !2470
  br i1 %160, label %161, label %235, !dbg !2471

161:                                              ; preds = %155
  %162 = zext i16 %15 to i32, !dbg !2472
  %163 = icmp sge i32 %162, 4, !dbg !2475
  br i1 %163, label %164, label %192, !dbg !2476

164:                                              ; preds = %161
  %165 = add i32 %16, 1, !dbg !2477
  %166 = zext i32 %165 to i64, !dbg !2479
  %167 = getelementptr inbounds i8, i8* %0, i64 %166, !dbg !2479
  %168 = load i8, i8* %167, align 1, !dbg !2479
  %169 = sext i8 %168 to i32, !dbg !2479
  call void @llvm.dbg.value(metadata i32 %169, metadata !2461, metadata !DIExpression()), !dbg !2463
  %170 = icmp eq i32 %169, 2, !dbg !2480
  br i1 %170, label %171, label %178, !dbg !2482

171:                                              ; preds = %164
  %172 = zext i32 %16 to i64, !dbg !2483
  %173 = getelementptr inbounds i8, i8* %0, i64 %172, !dbg !2483
  %174 = getelementptr inbounds i8, i8* %173, i64 2, !dbg !2484
  %175 = call zeroext i16 @archive_le16dec(i8* noundef %174), !dbg !2485
  %176 = zext i16 %175 to i64, !dbg !2485
  %177 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 5, !dbg !2486
  store i64 %176, i64* %177, align 8, !dbg !2487
  br label %191, !dbg !2488

178:                                              ; preds = %164
  %179 = icmp eq i32 %169, 4, !dbg !2489
  br i1 %179, label %180, label %190, !dbg !2491

180:                                              ; preds = %178
  %181 = zext i16 %15 to i32, !dbg !2492
  %182 = icmp sge i32 %181, 6, !dbg !2493
  br i1 %182, label %183, label %190, !dbg !2494

183:                                              ; preds = %180
  %184 = zext i32 %16 to i64, !dbg !2495
  %185 = getelementptr inbounds i8, i8* %0, i64 %184, !dbg !2495
  %186 = getelementptr inbounds i8, i8* %185, i64 2, !dbg !2496
  %187 = call i32 @archive_le32dec(i8* noundef %186), !dbg !2497
  %188 = zext i32 %187 to i64, !dbg !2497
  %189 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 5, !dbg !2498
  store i64 %188, i64* %189, align 8, !dbg !2499
  br label %190, !dbg !2500

190:                                              ; preds = %183, %180, %178
  br label %191

191:                                              ; preds = %190, %171
  br label %192, !dbg !2501

192:                                              ; preds = %191, %161
  %.0 = phi i32 [ %169, %191 ], [ 0, %161 ], !dbg !2463
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2461, metadata !DIExpression()), !dbg !2463
  %193 = zext i16 %15 to i32, !dbg !2502
  %194 = add nsw i32 2, %.0, !dbg !2504
  %195 = add nsw i32 %194, 3, !dbg !2505
  %196 = icmp sge i32 %193, %195, !dbg !2506
  br i1 %196, label %197, label %234, !dbg !2507

197:                                              ; preds = %192
  %198 = add i32 %16, 2, !dbg !2508
  %199 = add i32 %198, %.0, !dbg !2510
  %200 = zext i32 %199 to i64, !dbg !2511
  %201 = getelementptr inbounds i8, i8* %0, i64 %200, !dbg !2511
  %202 = load i8, i8* %201, align 1, !dbg !2511
  %203 = sext i8 %202 to i32, !dbg !2511
  call void @llvm.dbg.value(metadata i32 %203, metadata !2464, metadata !DIExpression()), !dbg !2463
  %204 = icmp eq i32 %203, 2, !dbg !2512
  br i1 %204, label %205, label %215, !dbg !2514

205:                                              ; preds = %197
  %206 = zext i32 %16 to i64, !dbg !2515
  %207 = getelementptr inbounds i8, i8* %0, i64 %206, !dbg !2515
  %208 = getelementptr inbounds i8, i8* %207, i64 2, !dbg !2516
  %209 = sext i32 %.0 to i64, !dbg !2517
  %210 = getelementptr inbounds i8, i8* %208, i64 %209, !dbg !2517
  %211 = getelementptr inbounds i8, i8* %210, i64 1, !dbg !2518
  %212 = call zeroext i16 @archive_le16dec(i8* noundef %211), !dbg !2519
  %213 = zext i16 %212 to i64, !dbg !2519
  %214 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 4, !dbg !2520
  store i64 %213, i64* %214, align 8, !dbg !2521
  br label %233, !dbg !2522

215:                                              ; preds = %197
  %216 = icmp eq i32 %203, 4, !dbg !2523
  br i1 %216, label %217, label %232, !dbg !2525

217:                                              ; preds = %215
  %218 = zext i16 %15 to i32, !dbg !2526
  %219 = add nsw i32 2, %.0, !dbg !2527
  %220 = add nsw i32 %219, 5, !dbg !2528
  %221 = icmp sge i32 %218, %220, !dbg !2529
  br i1 %221, label %222, label %232, !dbg !2530

222:                                              ; preds = %217
  %223 = zext i32 %16 to i64, !dbg !2531
  %224 = getelementptr inbounds i8, i8* %0, i64 %223, !dbg !2531
  %225 = getelementptr inbounds i8, i8* %224, i64 2, !dbg !2532
  %226 = sext i32 %.0 to i64, !dbg !2533
  %227 = getelementptr inbounds i8, i8* %225, i64 %226, !dbg !2533
  %228 = getelementptr inbounds i8, i8* %227, i64 1, !dbg !2534
  %229 = call i32 @archive_le32dec(i8* noundef %228), !dbg !2535
  %230 = zext i32 %229 to i64, !dbg !2535
  %231 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %2, i32 0, i32 4, !dbg !2536
  store i64 %230, i64* %231, align 8, !dbg !2537
  br label %232, !dbg !2538

232:                                              ; preds = %222, %217, %215
  br label %233

233:                                              ; preds = %232, %205
  br label %234, !dbg !2539

234:                                              ; preds = %233, %192
  br label %235, !dbg !2540

235:                                              ; preds = %234, %155, %152
  br label %237, !dbg !2541

236:                                              ; preds = %22
  br label %237, !dbg !2542

237:                                              ; preds = %236, %235, %151, %131, %99, %88, %71, %54, %41
  %.4 = phi i32 [ %16, %236 ], [ %16, %235 ], [ %16, %151 ], [ %16, %131 ], [ %47, %54 ], [ %.13, %71 ], [ %.24, %88 ], [ %.35, %99 ], [ %16, %41 ], !dbg !2317
  %.3 = phi i16 [ %15, %236 ], [ %15, %235 ], [ %15, %151 ], [ %15, %131 ], [ %48, %54 ], [ %.01, %71 ], [ %.1, %88 ], [ %.2, %99 ], [ %15, %41 ], !dbg !2317
  call void @llvm.dbg.value(metadata i16 %.3, metadata !2321, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i32 %.4, metadata !2308, metadata !DIExpression()), !dbg !2305
  %238 = zext i16 %.3 to i32, !dbg !2543
  %239 = add i32 %.4, %238, !dbg !2544
  call void @llvm.dbg.value(metadata i32 %239, metadata !2308, metadata !DIExpression()), !dbg !2305
  br label %4, !dbg !2309, !llvm.loop !2545

240:                                              ; preds = %21, %4
  ret void, !dbg !2547
}

declare void @archive_entry_set_mode(%struct.archive_entry* noundef, i32 noundef) #2

declare void @archive_entry_set_uid(%struct.archive_entry* noundef, i64 noundef) #2

declare void @archive_entry_set_gid(%struct.archive_entry* noundef, i64 noundef) #2

declare void @archive_entry_set_mtime(%struct.archive_entry* noundef, i64 noundef, i64 noundef) #2

declare void @archive_entry_set_ctime(%struct.archive_entry* noundef, i64 noundef, i64 noundef) #2

declare void @archive_entry_set_atime(%struct.archive_entry* noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define internal i8* @compression_name(i32 noundef %0) #0 !dbg !420 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2548, metadata !DIExpression()), !dbg !2549
  %2 = icmp sle i32 0, %0, !dbg !2550
  br i1 %2, label %3, label %9, !dbg !2552

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 9, !dbg !2553
  br i1 %4, label %5, label %9, !dbg !2554

5:                                                ; preds = %3
  %6 = sext i32 %0 to i64, !dbg !2555
  %7 = getelementptr inbounds [9 x i8*], [9 x i8*]* @compression_name.compression_names, i64 0, i64 %6, !dbg !2555
  %8 = load i8*, i8** %7, align 8, !dbg !2555
  br label %10, !dbg !2556

9:                                                ; preds = %3, %1
  br label %10, !dbg !2557

10:                                               ; preds = %9, %5
  %.0 = phi i8* [ %8, %5 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), %9 ], !dbg !2558
  ret i8* %.0, !dbg !2559
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @archive_le64dec(i8* noundef %0) #0 !dbg !2560 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2563, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8* %0, metadata !2565, metadata !DIExpression()), !dbg !2564
  %2 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !2566
  %3 = call i32 @archive_le32dec(i8* noundef %2), !dbg !2567
  %4 = zext i32 %3 to i64, !dbg !2568
  %5 = shl i64 %4, 32, !dbg !2569
  %6 = call i32 @archive_le32dec(i8* noundef %0), !dbg !2570
  %7 = zext i32 %6 to i64, !dbg !2570
  %8 = or i64 %5, %7, !dbg !2571
  ret i64 %8, !dbg !2572
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @zip_get_local_file_header_size(%struct.archive_read* noundef %0, i64 noundef %1) #0 !dbg !2573 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !2576, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %1, metadata !2578, metadata !DIExpression()), !dbg !2577
  %3 = add i64 %1, 30, !dbg !2579
  %4 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef %3, i64* noundef null), !dbg !2581
  call void @llvm.dbg.value(metadata i8* %4, metadata !2582, metadata !DIExpression()), !dbg !2577
  %5 = icmp eq i8* %4, null, !dbg !2583
  br i1 %5, label %6, label %8, !dbg !2584

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2585
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %7, i32 noundef 84, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0)), !dbg !2587
  br label %23, !dbg !2588

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !2589
  call void @llvm.dbg.value(metadata i8* %9, metadata !2582, metadata !DIExpression()), !dbg !2577
  %10 = call i32 @memcmp(i8* noundef %9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 noundef 4) #9, !dbg !2590
  %11 = icmp ne i32 %10, 0, !dbg !2592
  br i1 %11, label %12, label %14, !dbg !2593

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2594
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %13, i32 noundef -1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)), !dbg !2596
  br label %23, !dbg !2597

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, i8* %9, i64 26, !dbg !2598
  %16 = call zeroext i16 @archive_le16dec(i8* noundef %15), !dbg !2599
  %17 = zext i16 %16 to i64, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %17, metadata !2600, metadata !DIExpression()), !dbg !2577
  %18 = getelementptr inbounds i8, i8* %9, i64 28, !dbg !2601
  %19 = call zeroext i16 @archive_le16dec(i8* noundef %18), !dbg !2602
  %20 = zext i16 %19 to i64, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %20, metadata !2603, metadata !DIExpression()), !dbg !2577
  %21 = add nsw i64 30, %17, !dbg !2604
  %22 = add nsw i64 %21, %20, !dbg !2605
  br label %23, !dbg !2606

23:                                               ; preds = %14, %12, %6
  %.0 = phi i64 [ -20, %6 ], [ -20, %12 ], [ %22, %14 ], !dbg !2577
  ret i64 %.0, !dbg !2607
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define internal i32 @zip_deflate_init(%struct.archive_read* noundef %0, %struct.zip* noundef %1) #0 !dbg !2608 {
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !2609, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata %struct.zip* %1, metadata !2611, metadata !DIExpression()), !dbg !2610
  %3 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 16, !dbg !2612
  %4 = load i8, i8* %3, align 8, !dbg !2612
  %5 = icmp ne i8 %4, 0, !dbg !2614
  br i1 %5, label %23, label %6, !dbg !2615

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 23, !dbg !2616
  %8 = load i8, i8* %7, align 8, !dbg !2616
  %9 = icmp ne i8 %8, 0, !dbg !2619
  br i1 %9, label %10, label %13, !dbg !2620

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 22, !dbg !2621
  %12 = call i32 @inflateReset(%struct.z_stream_s* noundef %11), !dbg !2622
  call void @llvm.dbg.value(metadata i32 %12, metadata !2623, metadata !DIExpression()), !dbg !2610
  br label %16, !dbg !2624

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 22, !dbg !2625
  %15 = call i32 @inflateInit2_(%struct.z_stream_s* noundef %14, i32 noundef -15, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i32 noundef 112), !dbg !2625
  call void @llvm.dbg.value(metadata i32 %15, metadata !2623, metadata !DIExpression()), !dbg !2610
  br label %16

16:                                               ; preds = %13, %10
  %.01 = phi i32 [ %12, %10 ], [ %15, %13 ], !dbg !2626
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2623, metadata !DIExpression()), !dbg !2610
  %17 = icmp ne i32 %.01, 0, !dbg !2627
  br i1 %17, label %18, label %20, !dbg !2629

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2630
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %19, i32 noundef -1, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i64 0, i64 0)), !dbg !2632
  br label %24, !dbg !2633

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 23, !dbg !2634
  store i8 1, i8* %21, align 8, !dbg !2635
  %22 = getelementptr inbounds %struct.zip, %struct.zip* %1, i32 0, i32 16, !dbg !2636
  store i8 1, i8* %22, align 8, !dbg !2637
  br label %23, !dbg !2638

23:                                               ; preds = %20, %2
  br label %24, !dbg !2639

24:                                               ; preds = %23, %18
  %.0 = phi i32 [ 0, %23 ], [ -30, %18 ], !dbg !2610
  ret i32 %.0, !dbg !2640
}

declare i32 @inflate(%struct.z_stream_s* noundef, i32 noundef) #2

declare void @archive_entry_copy_mac_metadata(%struct.archive_entry* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare i32 @inflateReset(%struct.z_stream_s* noundef) #2

declare i32 @inflateInit2_(%struct.z_stream_s* noundef, i32 noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @zip_read_data_none(%struct.archive_read* noundef %0, i8** noundef %1, i64* noundef %2, i64* noundef %3) #0 !dbg !2641 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !2642, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8** %1, metadata !2644, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i64* %2, metadata !2645, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i64* %3, metadata !2646, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2647, metadata !DIExpression()), !dbg !2648
  %6 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !2649
  %7 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %6, align 8, !dbg !2649
  %8 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %7, i32 0, i32 0, !dbg !2650
  %9 = load i8*, i8** %8, align 8, !dbg !2650
  %10 = bitcast i8* %9 to %struct.zip*, !dbg !2651
  call void @llvm.dbg.value(metadata %struct.zip* %10, metadata !2652, metadata !DIExpression()), !dbg !2643
  %11 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 8, !dbg !2653
  %12 = load %struct.zip_entry*, %struct.zip_entry** %11, align 8, !dbg !2653
  %13 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %12, i32 0, i32 13, !dbg !2655
  %14 = load i16, i16* %13, align 2, !dbg !2655
  %15 = zext i16 %14 to i32, !dbg !2656
  %16 = and i32 %15, 8, !dbg !2657
  %17 = icmp ne i32 %16, 0, !dbg !2657
  br i1 %17, label %18, label %144, !dbg !2658

18:                                               ; preds = %4
  %19 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef 16, i64* noundef %5), !dbg !2659
  call void @llvm.dbg.value(metadata i8* %19, metadata !2661, metadata !DIExpression()), !dbg !2643
  %20 = load i64, i64* %5, align 8, !dbg !2662
  %21 = icmp slt i64 %20, 16, !dbg !2664
  br i1 %21, label %22, label %24, !dbg !2665

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2666
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %23, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i64 0, i64 0)), !dbg !2668
  br label %183, !dbg !2669

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i8* %19, metadata !2670, metadata !DIExpression()), !dbg !2671
  %25 = getelementptr inbounds i8, i8* %19, i64 0, !dbg !2672
  %26 = load i8, i8* %25, align 1, !dbg !2672
  %27 = sext i8 %26 to i32, !dbg !2672
  %28 = icmp eq i32 %27, 80, !dbg !2674
  br i1 %28, label %29, label %85, !dbg !2675

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !2676
  %31 = load i8, i8* %30, align 1, !dbg !2676
  %32 = sext i8 %31 to i32, !dbg !2676
  %33 = icmp eq i32 %32, 75, !dbg !2677
  br i1 %33, label %34, label %85, !dbg !2678

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, i8* %19, i64 2, !dbg !2679
  %36 = load i8, i8* %35, align 1, !dbg !2679
  %37 = sext i8 %36 to i32, !dbg !2679
  %38 = icmp eq i32 %37, 7, !dbg !2680
  br i1 %38, label %39, label %85, !dbg !2681

39:                                               ; preds = %34
  %40 = getelementptr inbounds i8, i8* %19, i64 3, !dbg !2682
  %41 = load i8, i8* %40, align 1, !dbg !2682
  %42 = sext i8 %41 to i32, !dbg !2682
  %43 = icmp eq i32 %42, 8, !dbg !2683
  br i1 %43, label %44, label %85, !dbg !2684

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, i8* %19, i64 4, !dbg !2685
  %46 = call i32 @archive_le32dec(i8* noundef %45), !dbg !2686
  %47 = zext i32 %46 to i64, !dbg !2686
  %48 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 15, !dbg !2687
  %49 = load i64, i64* %48, align 8, !dbg !2687
  %50 = icmp eq i64 %47, %49, !dbg !2688
  br i1 %50, label %51, label %85, !dbg !2689

51:                                               ; preds = %44
  %52 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !2690
  %53 = call i32 @archive_le32dec(i8* noundef %52), !dbg !2691
  %54 = zext i32 %53 to i64, !dbg !2691
  %55 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 13, !dbg !2692
  %56 = load i64, i64* %55, align 8, !dbg !2692
  %57 = icmp eq i64 %54, %56, !dbg !2693
  br i1 %57, label %58, label %85, !dbg !2694

58:                                               ; preds = %51
  %59 = getelementptr inbounds i8, i8* %19, i64 12, !dbg !2695
  %60 = call i32 @archive_le32dec(i8* noundef %59), !dbg !2696
  %61 = zext i32 %60 to i64, !dbg !2696
  %62 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 14, !dbg !2697
  %63 = load i64, i64* %62, align 8, !dbg !2697
  %64 = icmp eq i64 %61, %63, !dbg !2698
  br i1 %64, label %65, label %85, !dbg !2699

65:                                               ; preds = %58
  %66 = getelementptr inbounds i8, i8* %19, i64 4, !dbg !2700
  %67 = call i32 @archive_le32dec(i8* noundef %66), !dbg !2702
  %68 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 8, !dbg !2703
  %69 = load %struct.zip_entry*, %struct.zip_entry** %68, align 8, !dbg !2703
  %70 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %69, i32 0, i32 11, !dbg !2704
  store i32 %67, i32* %70, align 8, !dbg !2705
  %71 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !2706
  %72 = call i32 @archive_le32dec(i8* noundef %71), !dbg !2707
  %73 = zext i32 %72 to i64, !dbg !2707
  %74 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 8, !dbg !2708
  %75 = load %struct.zip_entry*, %struct.zip_entry** %74, align 8, !dbg !2708
  %76 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %75, i32 0, i32 2, !dbg !2709
  store i64 %73, i64* %76, align 8, !dbg !2710
  %77 = getelementptr inbounds i8, i8* %19, i64 12, !dbg !2711
  %78 = call i32 @archive_le32dec(i8* noundef %77), !dbg !2712
  %79 = zext i32 %78 to i64, !dbg !2712
  %80 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 8, !dbg !2713
  %81 = load %struct.zip_entry*, %struct.zip_entry** %80, align 8, !dbg !2713
  %82 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %81, i32 0, i32 3, !dbg !2714
  store i64 %79, i64* %82, align 8, !dbg !2715
  %83 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 17, !dbg !2716
  store i8 1, i8* %83, align 1, !dbg !2717
  %84 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 11, !dbg !2718
  store i64 16, i64* %84, align 8, !dbg !2719
  br label %183, !dbg !2720

85:                                               ; preds = %58, %51, %44, %39, %34, %29, %24
  %86 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !2721
  call void @llvm.dbg.value(metadata i8* %86, metadata !2670, metadata !DIExpression()), !dbg !2671
  br label %87, !dbg !2722

87:                                               ; preds = %139, %85
  %.01 = phi i8* [ %86, %85 ], [ %.3, %139 ], !dbg !2671
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2670, metadata !DIExpression()), !dbg !2671
  %88 = load i64, i64* %5, align 8, !dbg !2723
  %89 = getelementptr inbounds i8, i8* %19, i64 %88, !dbg !2724
  %90 = getelementptr inbounds i8, i8* %89, i64 -4, !dbg !2725
  %91 = icmp ult i8* %.01, %90, !dbg !2726
  br i1 %91, label %92, label %140, !dbg !2722

92:                                               ; preds = %87
  %93 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !2727
  %94 = load i8, i8* %93, align 1, !dbg !2727
  %95 = sext i8 %94 to i32, !dbg !2727
  %96 = icmp eq i32 %95, 80, !dbg !2730
  br i1 %96, label %97, label %99, !dbg !2731

97:                                               ; preds = %92
  %98 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !2732
  call void @llvm.dbg.value(metadata i8* %98, metadata !2670, metadata !DIExpression()), !dbg !2671
  br label %139, !dbg !2734

99:                                               ; preds = %92
  %100 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !2735
  %101 = load i8, i8* %100, align 1, !dbg !2735
  %102 = sext i8 %101 to i32, !dbg !2735
  %103 = icmp eq i32 %102, 75, !dbg !2737
  br i1 %103, label %104, label %106, !dbg !2738

104:                                              ; preds = %99
  %105 = getelementptr inbounds i8, i8* %.01, i64 2, !dbg !2739
  call void @llvm.dbg.value(metadata i8* %105, metadata !2670, metadata !DIExpression()), !dbg !2671
  br label %138, !dbg !2741

106:                                              ; preds = %99
  %107 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !2742
  %108 = load i8, i8* %107, align 1, !dbg !2742
  %109 = sext i8 %108 to i32, !dbg !2742
  %110 = icmp eq i32 %109, 7, !dbg !2744
  br i1 %110, label %111, label %113, !dbg !2745

111:                                              ; preds = %106
  %112 = getelementptr inbounds i8, i8* %.01, i64 1, !dbg !2746
  call void @llvm.dbg.value(metadata i8* %112, metadata !2670, metadata !DIExpression()), !dbg !2671
  br label %137, !dbg !2748

113:                                              ; preds = %106
  %114 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !2749
  %115 = load i8, i8* %114, align 1, !dbg !2749
  %116 = sext i8 %115 to i32, !dbg !2749
  %117 = icmp eq i32 %116, 8, !dbg !2751
  br i1 %117, label %118, label %134, !dbg !2752

118:                                              ; preds = %113
  %119 = getelementptr inbounds i8, i8* %.01, i64 2, !dbg !2753
  %120 = load i8, i8* %119, align 1, !dbg !2753
  %121 = sext i8 %120 to i32, !dbg !2753
  %122 = icmp eq i32 %121, 7, !dbg !2754
  br i1 %122, label %123, label %134, !dbg !2755

123:                                              ; preds = %118
  %124 = getelementptr inbounds i8, i8* %.01, i64 1, !dbg !2756
  %125 = load i8, i8* %124, align 1, !dbg !2756
  %126 = sext i8 %125 to i32, !dbg !2756
  %127 = icmp eq i32 %126, 75, !dbg !2757
  br i1 %127, label %128, label %134, !dbg !2758

128:                                              ; preds = %123
  %129 = getelementptr inbounds i8, i8* %.01, i64 0, !dbg !2759
  %130 = load i8, i8* %129, align 1, !dbg !2759
  %131 = sext i8 %130 to i32, !dbg !2759
  %132 = icmp eq i32 %131, 80, !dbg !2760
  br i1 %132, label %133, label %134, !dbg !2761

133:                                              ; preds = %128
  br label %140, !dbg !2762

134:                                              ; preds = %128, %123, %118, %113
  %135 = getelementptr inbounds i8, i8* %.01, i64 4, !dbg !2764
  call void @llvm.dbg.value(metadata i8* %135, metadata !2670, metadata !DIExpression()), !dbg !2671
  br label %136

136:                                              ; preds = %134
  br label %137

137:                                              ; preds = %136, %111
  %.1 = phi i8* [ %112, %111 ], [ %135, %136 ], !dbg !2766
  call void @llvm.dbg.value(metadata i8* %.1, metadata !2670, metadata !DIExpression()), !dbg !2671
  br label %138

138:                                              ; preds = %137, %104
  %.2 = phi i8* [ %105, %104 ], [ %.1, %137 ], !dbg !2767
  call void @llvm.dbg.value(metadata i8* %.2, metadata !2670, metadata !DIExpression()), !dbg !2671
  br label %139

139:                                              ; preds = %138, %97
  %.3 = phi i8* [ %98, %97 ], [ %.2, %138 ], !dbg !2768
  call void @llvm.dbg.value(metadata i8* %.3, metadata !2670, metadata !DIExpression()), !dbg !2671
  br label %87, !dbg !2722, !llvm.loop !2769

140:                                              ; preds = %133, %87
  %141 = ptrtoint i8* %.01 to i64, !dbg !2771
  %142 = ptrtoint i8* %19 to i64, !dbg !2771
  %143 = sub i64 %141, %142, !dbg !2771
  store i64 %143, i64* %5, align 8, !dbg !2772
  br label %165, !dbg !2773

144:                                              ; preds = %4
  %145 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 12, !dbg !2774
  %146 = load i64, i64* %145, align 8, !dbg !2774
  %147 = icmp eq i64 %146, 0, !dbg !2777
  br i1 %147, label %148, label %150, !dbg !2778

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 17, !dbg !2779
  store i8 1, i8* %149, align 1, !dbg !2781
  br label %183, !dbg !2782

150:                                              ; preds = %144
  %151 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef 1, i64* noundef %5), !dbg !2783
  call void @llvm.dbg.value(metadata i8* %151, metadata !2661, metadata !DIExpression()), !dbg !2643
  %152 = load i64, i64* %5, align 8, !dbg !2784
  %153 = icmp sle i64 %152, 0, !dbg !2786
  br i1 %153, label %154, label %156, !dbg !2787

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2788
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %155, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i64 0, i64 0)), !dbg !2790
  br label %183, !dbg !2791

156:                                              ; preds = %150
  %157 = load i64, i64* %5, align 8, !dbg !2792
  %158 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 12, !dbg !2794
  %159 = load i64, i64* %158, align 8, !dbg !2794
  %160 = icmp sgt i64 %157, %159, !dbg !2795
  br i1 %160, label %161, label %164, !dbg !2796

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 12, !dbg !2797
  %163 = load i64, i64* %162, align 8, !dbg !2797
  store i64 %163, i64* %5, align 8, !dbg !2798
  br label %164, !dbg !2799

164:                                              ; preds = %161, %156
  br label %165

165:                                              ; preds = %164, %140
  %.02 = phi i8* [ %19, %140 ], [ %151, %164 ], !dbg !2800
  call void @llvm.dbg.value(metadata i8* %.02, metadata !2661, metadata !DIExpression()), !dbg !2643
  %166 = load i64, i64* %5, align 8, !dbg !2801
  store i64 %166, i64* %2, align 8, !dbg !2802
  %167 = load i64, i64* %5, align 8, !dbg !2803
  %168 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 12, !dbg !2804
  %169 = load i64, i64* %168, align 8, !dbg !2805
  %170 = sub nsw i64 %169, %167, !dbg !2805
  store i64 %170, i64* %168, align 8, !dbg !2805
  %171 = load i64, i64* %5, align 8, !dbg !2806
  %172 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 14, !dbg !2807
  %173 = load i64, i64* %172, align 8, !dbg !2808
  %174 = add nsw i64 %173, %171, !dbg !2808
  store i64 %174, i64* %172, align 8, !dbg !2808
  %175 = load i64, i64* %5, align 8, !dbg !2809
  %176 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 13, !dbg !2810
  %177 = load i64, i64* %176, align 8, !dbg !2811
  %178 = add nsw i64 %177, %175, !dbg !2811
  store i64 %178, i64* %176, align 8, !dbg !2811
  %179 = load i64, i64* %5, align 8, !dbg !2812
  %180 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 11, !dbg !2813
  %181 = load i64, i64* %180, align 8, !dbg !2814
  %182 = add i64 %181, %179, !dbg !2814
  store i64 %182, i64* %180, align 8, !dbg !2814
  store i8* %.02, i8** %1, align 8, !dbg !2815
  br label %183, !dbg !2816

183:                                              ; preds = %165, %154, %148, %65, %22
  %.0 = phi i32 [ -30, %22 ], [ 0, %65 ], [ 0, %165 ], [ 0, %148 ], [ -30, %154 ], !dbg !2643
  ret i32 %.0, !dbg !2817
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @zip_read_data_deflate(%struct.archive_read* noundef %0, i8** noundef %1, i64* noundef %2, i64* noundef %3) #0 !dbg !2818 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.archive_read* %0, metadata !2819, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8** %1, metadata !2821, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i64* %2, metadata !2822, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i64* %3, metadata !2823, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2824, metadata !DIExpression()), !dbg !2825
  %6 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 19, !dbg !2826
  %7 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %6, align 8, !dbg !2826
  %8 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %7, i32 0, i32 0, !dbg !2827
  %9 = load i8*, i8** %8, align 8, !dbg !2827
  %10 = bitcast i8* %9 to %struct.zip*, !dbg !2828
  call void @llvm.dbg.value(metadata %struct.zip* %10, metadata !2829, metadata !DIExpression()), !dbg !2820
  %11 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 20, !dbg !2830
  %12 = load i8*, i8** %11, align 8, !dbg !2830
  %13 = icmp eq i8* %12, null, !dbg !2832
  br i1 %13, label %14, label %26, !dbg !2833

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 21, !dbg !2834
  store i64 262144, i64* %15, align 8, !dbg !2836
  %16 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 21, !dbg !2837
  %17 = load i64, i64* %16, align 8, !dbg !2837
  %18 = call noalias i8* @malloc(i64 noundef %17) #8, !dbg !2838
  %19 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 20, !dbg !2839
  store i8* %18, i8** %19, align 8, !dbg !2840
  %20 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 20, !dbg !2841
  %21 = load i8*, i8** %20, align 8, !dbg !2841
  %22 = icmp eq i8* %21, null, !dbg !2843
  br i1 %22, label %23, label %25, !dbg !2844

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2845
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %24, i32 noundef 12, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0)), !dbg !2847
  br label %166, !dbg !2848

25:                                               ; preds = %14
  br label %26, !dbg !2849

26:                                               ; preds = %25, %4
  %27 = call i32 @zip_deflate_init(%struct.archive_read* noundef %0, %struct.zip* noundef %10), !dbg !2850
  call void @llvm.dbg.value(metadata i32 %27, metadata !2851, metadata !DIExpression()), !dbg !2820
  %28 = icmp ne i32 %27, 0, !dbg !2852
  br i1 %28, label %29, label %30, !dbg !2854

29:                                               ; preds = %26
  br label %166, !dbg !2855

30:                                               ; preds = %26
  %31 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef 1, i64* noundef %5), !dbg !2856
  call void @llvm.dbg.value(metadata i8* %31, metadata !2857, metadata !DIExpression()), !dbg !2820
  %32 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 8, !dbg !2858
  %33 = load %struct.zip_entry*, %struct.zip_entry** %32, align 8, !dbg !2858
  %34 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %33, i32 0, i32 13, !dbg !2860
  %35 = load i16, i16* %34, align 2, !dbg !2860
  %36 = zext i16 %35 to i32, !dbg !2861
  %37 = and i32 %36, 8, !dbg !2862
  %38 = icmp eq i32 0, %37, !dbg !2863
  br i1 %38, label %39, label %47, !dbg !2864

39:                                               ; preds = %30
  %40 = load i64, i64* %5, align 8, !dbg !2865
  %41 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 12, !dbg !2866
  %42 = load i64, i64* %41, align 8, !dbg !2866
  %43 = icmp sgt i64 %40, %42, !dbg !2867
  br i1 %43, label %44, label %47, !dbg !2868

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 12, !dbg !2869
  %46 = load i64, i64* %45, align 8, !dbg !2869
  store i64 %46, i64* %5, align 8, !dbg !2871
  br label %47, !dbg !2872

47:                                               ; preds = %44, %39, %30
  %48 = load i64, i64* %5, align 8, !dbg !2873
  %49 = icmp sle i64 %48, 0, !dbg !2875
  br i1 %49, label %50, label %52, !dbg !2876

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2877
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %51, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0)), !dbg !2879
  br label %166, !dbg !2880

52:                                               ; preds = %47
  %53 = ptrtoint i8* %31 to i64, !dbg !2881
  %54 = inttoptr i64 %53 to i8*, !dbg !2882
  %55 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 22, !dbg !2883
  %56 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %55, i32 0, i32 0, !dbg !2884
  store i8* %54, i8** %56, align 8, !dbg !2885
  %57 = load i64, i64* %5, align 8, !dbg !2886
  %58 = trunc i64 %57 to i32, !dbg !2887
  %59 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 22, !dbg !2888
  %60 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %59, i32 0, i32 1, !dbg !2889
  store i32 %58, i32* %60, align 8, !dbg !2890
  %61 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 22, !dbg !2891
  %62 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %61, i32 0, i32 2, !dbg !2892
  store i64 0, i64* %62, align 8, !dbg !2893
  %63 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 20, !dbg !2894
  %64 = load i8*, i8** %63, align 8, !dbg !2894
  %65 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 22, !dbg !2895
  %66 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %65, i32 0, i32 3, !dbg !2896
  store i8* %64, i8** %66, align 8, !dbg !2897
  %67 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 21, !dbg !2898
  %68 = load i64, i64* %67, align 8, !dbg !2898
  %69 = trunc i64 %68 to i32, !dbg !2899
  %70 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 22, !dbg !2900
  %71 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %70, i32 0, i32 4, !dbg !2901
  store i32 %69, i32* %71, align 8, !dbg !2902
  %72 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 22, !dbg !2903
  %73 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %72, i32 0, i32 5, !dbg !2904
  store i64 0, i64* %73, align 8, !dbg !2905
  %74 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 22, !dbg !2906
  %75 = call i32 @inflate(%struct.z_stream_s* noundef %74, i32 noundef 0), !dbg !2907
  call void @llvm.dbg.value(metadata i32 %75, metadata !2851, metadata !DIExpression()), !dbg !2820
  switch i32 %75, label %81 [
    i32 0, label %76
    i32 1, label %77
    i32 -4, label %79
  ], !dbg !2908

76:                                               ; preds = %52
  br label %83, !dbg !2909

77:                                               ; preds = %52
  %78 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 17, !dbg !2911
  store i8 1, i8* %78, align 1, !dbg !2912
  br label %83, !dbg !2913

79:                                               ; preds = %52
  %80 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2914
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %80, i32 noundef 12, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0)), !dbg !2915
  br label %166, !dbg !2916

81:                                               ; preds = %52
  %82 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2917
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %82, i32 noundef -1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i32 noundef %75), !dbg !2918
  br label %166, !dbg !2919

83:                                               ; preds = %77, %76
  %84 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 22, !dbg !2920
  %85 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %84, i32 0, i32 2, !dbg !2921
  %86 = load i64, i64* %85, align 8, !dbg !2921
  store i64 %86, i64* %5, align 8, !dbg !2922
  %87 = load i64, i64* %5, align 8, !dbg !2923
  %88 = call i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %87), !dbg !2924
  %89 = load i64, i64* %5, align 8, !dbg !2925
  %90 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 12, !dbg !2926
  %91 = load i64, i64* %90, align 8, !dbg !2927
  %92 = sub nsw i64 %91, %89, !dbg !2927
  store i64 %92, i64* %90, align 8, !dbg !2927
  %93 = load i64, i64* %5, align 8, !dbg !2928
  %94 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 13, !dbg !2929
  %95 = load i64, i64* %94, align 8, !dbg !2930
  %96 = add nsw i64 %95, %93, !dbg !2930
  store i64 %96, i64* %94, align 8, !dbg !2930
  %97 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 22, !dbg !2931
  %98 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %97, i32 0, i32 5, !dbg !2932
  %99 = load i64, i64* %98, align 8, !dbg !2932
  store i64 %99, i64* %2, align 8, !dbg !2933
  %100 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 22, !dbg !2934
  %101 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %100, i32 0, i32 5, !dbg !2935
  %102 = load i64, i64* %101, align 8, !dbg !2935
  %103 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 14, !dbg !2936
  %104 = load i64, i64* %103, align 8, !dbg !2937
  %105 = add i64 %104, %102, !dbg !2937
  store i64 %105, i64* %103, align 8, !dbg !2937
  %106 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 20, !dbg !2938
  %107 = load i8*, i8** %106, align 8, !dbg !2938
  store i8* %107, i8** %1, align 8, !dbg !2939
  %108 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 17, !dbg !2940
  %109 = load i8, i8* %108, align 1, !dbg !2940
  %110 = sext i8 %109 to i32, !dbg !2942
  %111 = icmp ne i32 %110, 0, !dbg !2942
  br i1 %111, label %112, label %165, !dbg !2943

112:                                              ; preds = %83
  %113 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 8, !dbg !2944
  %114 = load %struct.zip_entry*, %struct.zip_entry** %113, align 8, !dbg !2944
  %115 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %114, i32 0, i32 13, !dbg !2945
  %116 = load i16, i16* %115, align 2, !dbg !2945
  %117 = zext i16 %116 to i32, !dbg !2946
  %118 = and i32 %117, 8, !dbg !2947
  %119 = icmp ne i32 %118, 0, !dbg !2947
  br i1 %119, label %120, label %165, !dbg !2948

120:                                              ; preds = %112
  %121 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %0, i64 noundef 16, i64* noundef null), !dbg !2949
  call void @llvm.dbg.value(metadata i8* %121, metadata !2952, metadata !DIExpression()), !dbg !2953
  %122 = icmp eq i8* null, %121, !dbg !2954
  br i1 %122, label %123, label %125, !dbg !2955

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %0, i32 0, i32 0, !dbg !2956
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %124, i32 noundef 84, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.51, i64 0, i64 0)), !dbg !2958
  br label %166, !dbg !2959

125:                                              ; preds = %120
  %126 = getelementptr inbounds i8, i8* %121, i64 0, !dbg !2960
  %127 = load i8, i8* %126, align 1, !dbg !2960
  %128 = sext i8 %127 to i32, !dbg !2960
  %129 = icmp eq i32 %128, 80, !dbg !2962
  br i1 %129, label %130, label %164, !dbg !2963

130:                                              ; preds = %125
  %131 = getelementptr inbounds i8, i8* %121, i64 1, !dbg !2964
  %132 = load i8, i8* %131, align 1, !dbg !2964
  %133 = sext i8 %132 to i32, !dbg !2964
  %134 = icmp eq i32 %133, 75, !dbg !2965
  br i1 %134, label %135, label %164, !dbg !2966

135:                                              ; preds = %130
  %136 = getelementptr inbounds i8, i8* %121, i64 2, !dbg !2967
  %137 = load i8, i8* %136, align 1, !dbg !2967
  %138 = sext i8 %137 to i32, !dbg !2967
  %139 = icmp eq i32 %138, 7, !dbg !2968
  br i1 %139, label %140, label %164, !dbg !2969

140:                                              ; preds = %135
  %141 = getelementptr inbounds i8, i8* %121, i64 3, !dbg !2970
  %142 = load i8, i8* %141, align 1, !dbg !2970
  %143 = sext i8 %142 to i32, !dbg !2970
  %144 = icmp eq i32 %143, 8, !dbg !2971
  br i1 %144, label %145, label %164, !dbg !2972

145:                                              ; preds = %140
  %146 = getelementptr inbounds i8, i8* %121, i64 4, !dbg !2973
  %147 = call i32 @archive_le32dec(i8* noundef %146), !dbg !2975
  %148 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 8, !dbg !2976
  %149 = load %struct.zip_entry*, %struct.zip_entry** %148, align 8, !dbg !2976
  %150 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %149, i32 0, i32 11, !dbg !2977
  store i32 %147, i32* %150, align 8, !dbg !2978
  %151 = getelementptr inbounds i8, i8* %121, i64 8, !dbg !2979
  %152 = call i32 @archive_le32dec(i8* noundef %151), !dbg !2980
  %153 = zext i32 %152 to i64, !dbg !2980
  %154 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 8, !dbg !2981
  %155 = load %struct.zip_entry*, %struct.zip_entry** %154, align 8, !dbg !2981
  %156 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %155, i32 0, i32 2, !dbg !2982
  store i64 %153, i64* %156, align 8, !dbg !2983
  %157 = getelementptr inbounds i8, i8* %121, i64 12, !dbg !2984
  %158 = call i32 @archive_le32dec(i8* noundef %157), !dbg !2985
  %159 = zext i32 %158 to i64, !dbg !2985
  %160 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 8, !dbg !2986
  %161 = load %struct.zip_entry*, %struct.zip_entry** %160, align 8, !dbg !2986
  %162 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %161, i32 0, i32 3, !dbg !2987
  store i64 %159, i64* %162, align 8, !dbg !2988
  %163 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 11, !dbg !2989
  store i64 16, i64* %163, align 8, !dbg !2990
  br label %164, !dbg !2991

164:                                              ; preds = %145, %140, %135, %130, %125
  br label %165, !dbg !2992

165:                                              ; preds = %164, %112, %83
  br label %166, !dbg !2993

166:                                              ; preds = %165, %123, %81, %79, %50, %29, %23
  %.0 = phi i32 [ -30, %23 ], [ %27, %29 ], [ -30, %50 ], [ -30, %81 ], [ -30, %79 ], [ -30, %123 ], [ 0, %165 ], !dbg !2820
  ret i32 %.0, !dbg !2994
}

declare i32 @inflateEnd(%struct.z_stream_s* noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!402}
!llvm.module.flags = !{!427, !428, !429, !430, !431, !432, !433}
!llvm.ident = !{!434}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rb_ops", scope: !2, file: !3, line: 414, type: !325, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "slurp_central_directory", scope: !3, file: !3, line: 410, type: !4, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!3 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_read_support_format_zip.c", directory: "", checksumkind: CSK_MD5, checksum: "74a66b3dff04eca98d26e036976918c6")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !268}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_read", file: !9, line: 145, size: 17152, elements: !10)
!9 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_read_private.h", directory: "", checksumkind: CSK_MD5, checksum: "a35fd60873c695863a5a16442c5f057a")
!10 = !{!11, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !160, !224, !225, !226, !227, !228, !229, !262, !264, !267}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "archive", scope: !8, file: !9, line: 146, baseType: !12, size: 896)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive", file: !13, line: 89, size: 896, elements: !14)
!13 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_private.h", directory: "", checksumkind: CSK_MD5, checksum: "966f1c2354e5924868917473d94e61b9")
!14 = !{!15, !17, !18, !86, !87, !88, !89, !90, !91, !92, !93, !101, !102, !103, !104}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !12, file: !13, line: 96, baseType: !16, size: 32)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !12, file: !13, line: 97, baseType: !16, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !12, file: !13, line: 103, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_vtable", file: !13, line: 63, size: 832, elements: !21)
!21 = !{!22, !27, !28, !35, !36, !50, !57, !62, !63, !70, !71, !75, !79}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "archive_close", scope: !20, file: !13, line: 64, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{!6, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "archive_free", scope: !20, file: !13, line: 65, baseType: !23, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "archive_write_header", scope: !20, file: !13, line: 66, baseType: !29, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{!6, !26, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "archive_entry", file: !34, line: 138, flags: DIFlagFwdDecl)
!34 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive.h", directory: "", checksumkind: CSK_MD5, checksum: "703a5ace3500dcd65d2545f8e55e69bb")
!35 = !DIDerivedType(tag: DW_TAG_member, name: "archive_write_finish_entry", scope: !20, file: !13, line: 68, baseType: !23, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "archive_write_data", scope: !20, file: !13, line: 69, baseType: !37, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !26, !45, !47}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !41, line: 108, baseType: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !43, line: 194, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!44 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "archive_write_data_block", scope: !20, file: !13, line: 71, baseType: !51, size: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!40, !26, !45, !47, !54}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !55, line: 27, baseType: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !43, line: 44, baseType: !44)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "archive_read_next_header", scope: !20, file: !13, line: 74, baseType: !58, size: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!6, !26, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "archive_read_next_header2", scope: !20, file: !13, line: 76, baseType: !29, size: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "archive_read_data_block", scope: !20, file: !13, line: 78, baseType: !64, size: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!6, !26, !67, !68, !69}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "archive_filter_count", scope: !20, file: !13, line: 81, baseType: !23, size: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "archive_filter_bytes", scope: !20, file: !13, line: 82, baseType: !72, size: 64, offset: 640)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!54, !26, !6}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "archive_filter_code", scope: !20, file: !13, line: 83, baseType: !76, size: 64, offset: 704)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!6, !26, !6}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "archive_filter_name", scope: !20, file: !13, line: 84, baseType: !80, size: 64, offset: 768)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !26, !6}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "archive_format", scope: !12, file: !13, line: 105, baseType: !6, size: 32, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "archive_format_name", scope: !12, file: !13, line: 106, baseType: !83, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "compression_code", scope: !12, file: !13, line: 108, baseType: !6, size: 32, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "compression_name", scope: !12, file: !13, line: 109, baseType: !83, size: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "file_count", scope: !12, file: !13, line: 112, baseType: !6, size: 32, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "archive_error_number", scope: !12, file: !13, line: 114, baseType: !6, size: 32, offset: 416)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !12, file: !13, line: 115, baseType: !83, size: 64, offset: 448)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "error_string", scope: !12, file: !13, line: 116, baseType: !94, size: 192, offset: 512)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_string", file: !95, line: 58, size: 192, elements: !96)
!95 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_string.h", directory: "", checksumkind: CSK_MD5, checksum: "12bf639eff6923fc1af151e931c4d9b5")
!96 = !{!97, !99, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !94, file: !95, line: 59, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !94, file: !95, line: 60, baseType: !47, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_length", scope: !94, file: !95, line: 61, baseType: !47, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "current_code", scope: !12, file: !13, line: 118, baseType: !98, size: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "current_codepage", scope: !12, file: !13, line: 119, baseType: !16, size: 32, offset: 768)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "current_oemcp", scope: !12, file: !13, line: 120, baseType: !16, size: 32, offset: 800)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sconv", scope: !12, file: !13, line: 121, baseType: !105, size: 64, offset: 832)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "archive_string_conv", file: !107, line: 36, flags: DIFlagFwdDecl)
!107 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_entry_locale.h", directory: "", checksumkind: CSK_MD5, checksum: "11d0c7adcc0ec9574af99a8497f7cf29")
!108 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !8, file: !9, line: 148, baseType: !32, size: 64, offset: 896)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "skip_file_set", scope: !8, file: !9, line: 151, baseType: !6, size: 32, offset: 960)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "skip_file_dev", scope: !8, file: !9, line: 152, baseType: !54, size: 64, offset: 1024)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "skip_file_ino", scope: !8, file: !9, line: 153, baseType: !54, size: 64, offset: 1088)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "read_data_block", scope: !8, file: !9, line: 159, baseType: !83, size: 64, offset: 1152)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "read_data_offset", scope: !8, file: !9, line: 160, baseType: !54, size: 64, offset: 1216)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "read_data_output_offset", scope: !8, file: !9, line: 161, baseType: !54, size: 64, offset: 1280)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "read_data_remaining", scope: !8, file: !9, line: 162, baseType: !47, size: 64, offset: 1344)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "read_data_is_posix_read", scope: !8, file: !9, line: 169, baseType: !85, size: 8, offset: 1408)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "read_data_requested", scope: !8, file: !9, line: 170, baseType: !47, size: 64, offset: 1472)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !8, file: !9, line: 173, baseType: !119, size: 576, offset: 1536)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_read_client", file: !9, line: 132, size: 576, elements: !120)
!120 = !{!121, !127, !132, !137, !142, !145, !150, !151, !152, !153}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "opener", scope: !119, file: !9, line: 133, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "archive_open_callback", file: !34, line: 199, baseType: !124)
!124 = !DISubroutineType(types: !125)
!125 = !{!6, !26, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !119, file: !9, line: 134, baseType: !128, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "archive_read_callback", file: !34, line: 176, baseType: !130)
!130 = !DISubroutineType(types: !131)
!131 = !{!40, !26, !126, !67}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "skipper", scope: !119, file: !9, line: 135, baseType: !133, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "archive_skip_callback", file: !34, line: 184, baseType: !135)
!135 = !DISubroutineType(types: !136)
!136 = !{!54, !26, !126, !54}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "seeker", scope: !119, file: !9, line: 136, baseType: !138, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "archive_seek_callback", file: !34, line: 191, baseType: !140)
!140 = !DISubroutineType(types: !141)
!141 = !{!54, !26, !126, !54, !6}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "closer", scope: !119, file: !9, line: 137, baseType: !143, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "archive_close_callback", file: !34, line: 201, baseType: !124)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "switcher", scope: !119, file: !9, line: 138, baseType: !146, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "archive_switch_callback", file: !34, line: 207, baseType: !148)
!148 = !DISubroutineType(types: !149)
!149 = !{!6, !26, !126, !126}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !119, file: !9, line: 139, baseType: !16, size: 32, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !119, file: !9, line: 140, baseType: !16, size: 32, offset: 416)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !119, file: !9, line: 141, baseType: !54, size: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "dataset", scope: !119, file: !9, line: 142, baseType: !154, size: 64, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_read_data_node", file: !9, line: 127, size: 192, elements: !156)
!156 = !{!157, !158, !159}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "begin_position", scope: !155, file: !9, line: 128, baseType: !54, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !155, file: !9, line: 129, baseType: !54, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !155, file: !9, line: 130, baseType: !126, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "bidders", scope: !8, file: !9, line: 176, baseType: !161, size: 5376, offset: 2112)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 5376, elements: !222)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_read_filter_bidder", file: !9, line: 58, size: 384, elements: !163)
!163 = !{!164, !165, !166, !213, !214, !218}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !162, file: !9, line: 60, baseType: !126, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !9, line: 62, baseType: !83, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "bid", scope: !162, file: !9, line: 64, baseType: !167, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!6, !170, !171}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_read_filter", file: !9, line: 80, size: 1408, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !182, !186, !190, !194, !195, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !172, file: !9, line: 81, baseType: !54, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "bidder", scope: !172, file: !9, line: 84, baseType: !170, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !172, file: !9, line: 85, baseType: !171, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "archive", scope: !172, file: !9, line: 86, baseType: !7, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !172, file: !9, line: 88, baseType: !179, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!6, !171}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !172, file: !9, line: 90, baseType: !183, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!40, !171, !67}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !172, file: !9, line: 92, baseType: !187, size: 64, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!54, !171, !54}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !172, file: !9, line: 94, baseType: !191, size: 64, offset: 448)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!54, !171, !54, !6}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !172, file: !9, line: 96, baseType: !179, size: 64, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sswitch", scope: !172, file: !9, line: 98, baseType: !196, size: 64, offset: 576)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!6, !171, !16}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !172, file: !9, line: 100, baseType: !126, size: 64, offset: 640)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !9, line: 102, baseType: !83, size: 64, offset: 704)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !172, file: !9, line: 103, baseType: !6, size: 32, offset: 768)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !172, file: !9, line: 106, baseType: !98, size: 64, offset: 832)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !172, file: !9, line: 107, baseType: !47, size: 64, offset: 896)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !9, line: 108, baseType: !98, size: 64, offset: 960)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "avail", scope: !172, file: !9, line: 109, baseType: !47, size: 64, offset: 1024)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "client_buff", scope: !172, file: !9, line: 110, baseType: !45, size: 64, offset: 1088)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "client_total", scope: !172, file: !9, line: 111, baseType: !47, size: 64, offset: 1152)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "client_next", scope: !172, file: !9, line: 112, baseType: !83, size: 64, offset: 1216)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "client_avail", scope: !172, file: !9, line: 113, baseType: !47, size: 64, offset: 1280)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "end_of_file", scope: !172, file: !9, line: 114, baseType: !85, size: 8, offset: 1344)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !172, file: !9, line: 115, baseType: !85, size: 8, offset: 1352)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "fatal", scope: !172, file: !9, line: 116, baseType: !85, size: 8, offset: 1360)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !162, file: !9, line: 67, baseType: !179, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !162, file: !9, line: 69, baseType: !215, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!6, !170, !83, !83}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !162, file: !9, line: 72, baseType: !219, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!6, !170}
!222 = !{!223}
!223 = !DISubrange(count: 14)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !8, file: !9, line: 179, baseType: !171, size: 64, offset: 7488)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "bypass_filter_bidding", scope: !8, file: !9, line: 182, baseType: !6, size: 32, offset: 7552)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "header_position", scope: !8, file: !9, line: 185, baseType: !54, size: 64, offset: 7616)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "data_start_node", scope: !8, file: !9, line: 188, baseType: !16, size: 32, offset: 7680)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "data_end_node", scope: !8, file: !9, line: 189, baseType: !16, size: 32, offset: 7712)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "formats", scope: !8, file: !9, line: 210, baseType: !230, size: 9216, offset: 7744)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 9216, elements: !260)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_format_descriptor", file: !9, line: 199, size: 576, elements: !232)
!232 = !{!233, !234, !235, !239, !243, !247, !251, !255, !259}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !231, file: !9, line: 200, baseType: !126, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !9, line: 201, baseType: !83, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bid", scope: !231, file: !9, line: 202, baseType: !236, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!6, !7, !6}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !231, file: !9, line: 203, baseType: !240, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!6, !7, !83, !83}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "read_header", scope: !231, file: !9, line: 205, baseType: !244, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!6, !7, !32}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "read_data", scope: !231, file: !9, line: 206, baseType: !248, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!6, !7, !67, !68, !69}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "read_data_skip", scope: !231, file: !9, line: 207, baseType: !252, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!6, !7}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "seek_data", scope: !231, file: !9, line: 208, baseType: !256, size: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!54, !7, !54, !6}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !231, file: !9, line: 209, baseType: !252, size: 64, offset: 512)
!260 = !{!261}
!261 = !DISubrange(count: 16)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !8, file: !9, line: 211, baseType: !263, size: 64, offset: 16960)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !8, file: !9, line: 216, baseType: !265, size: 64, offset: 17024)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DICompositeType(tag: DW_TAG_structure_type, name: "extract", file: !9, line: 216, flags: DIFlagFwdDecl)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_archive_extract", scope: !8, file: !9, line: 217, baseType: !252, size: 64, offset: 17088)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip", file: !3, line: 71, size: 3392, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278, !318, !319, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !355, !356, !392, !393, !394, !395, !396, !397, !398}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "end_of_central_directory_offset", scope: !269, file: !3, line: 73, baseType: !54, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "central_directory_offset", scope: !269, file: !3, line: 74, baseType: !54, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "central_directory_size", scope: !269, file: !3, line: 75, baseType: !47, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "central_directory_entries", scope: !269, file: !3, line: 76, baseType: !47, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "have_central_directory", scope: !269, file: !3, line: 77, baseType: !85, size: 8, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !269, file: !3, line: 78, baseType: !54, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "entries_remaining", scope: !269, file: !3, line: 81, baseType: !47, size: 64, offset: 384)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "zip_entries", scope: !269, file: !3, line: 82, baseType: !279, size: 64, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_entry", file: !3, line: 52, size: 1088, elements: !281)
!281 = !{!282, !294, !295, !296, !297, !298, !299, !300, !301, !305, !306, !307, !311, !315, !316, !317}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !280, file: !3, line: 53, baseType: !283, size: 192)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_rb_node", file: !284, line: 34, size: 192, elements: !285)
!284 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_rb.h", directory: "", checksumkind: CSK_MD5, checksum: "39c90d2a848c2f92fd78871ddb96ed84")
!285 = !{!286, !291}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "rb_nodes", scope: !283, file: !284, line: 35, baseType: !287, size: 128)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 128, elements: !289)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!289 = !{!290}
!290 = !DISubrange(count: 2)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "rb_info", scope: !283, file: !284, line: 41, baseType: !292, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !293, line: 90, baseType: !49)
!293 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!294 = !DIDerivedType(tag: DW_TAG_member, name: "local_header_offset", scope: !280, file: !3, line: 54, baseType: !54, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !280, file: !3, line: 55, baseType: !54, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !280, file: !3, line: 56, baseType: !54, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !280, file: !3, line: 57, baseType: !54, size: 64, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !280, file: !3, line: 58, baseType: !54, size: 64, offset: 448)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !280, file: !3, line: 59, baseType: !32, size: 64, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "rsrcname", scope: !280, file: !3, line: 60, baseType: !94, size: 192, offset: 576)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !280, file: !3, line: 61, baseType: !302, size: 64, offset: 768)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !303, line: 10, baseType: !304)
!303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !43, line: 160, baseType: !44)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !280, file: !3, line: 62, baseType: !302, size: 64, offset: 832)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !280, file: !3, line: 63, baseType: !302, size: 64, offset: 896)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !280, file: !3, line: 64, baseType: !308, size: 32, offset: 960)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !309, line: 26, baseType: !310)
!309 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !43, line: 42, baseType: !16)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !280, file: !3, line: 65, baseType: !312, size: 16, offset: 992)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !309, line: 25, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !43, line: 40, baseType: !314)
!314 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !3, line: 66, baseType: !312, size: 16, offset: 1008)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !280, file: !3, line: 67, baseType: !85, size: 8, offset: 1024)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !280, file: !3, line: 68, baseType: !85, size: 8, offset: 1032)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !269, file: !3, line: 83, baseType: !279, size: 64, offset: 512)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !269, file: !3, line: 84, baseType: !320, size: 128, offset: 576)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_rb_tree", file: !284, line: 80, size: 128, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "rbt_root", scope: !320, file: !284, line: 81, baseType: !288, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rbt_ops", scope: !320, file: !284, line: 82, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive_rb_tree_ops", file: !284, line: 75, size: 128, elements: !327)
!327 = !{!328, !336}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "rbto_compare_nodes", scope: !326, file: !284, line: 76, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "archive_rbto_compare_nodes_fn", file: !284, line: 70, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!6, !334, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rbto_compare_key", scope: !326, file: !284, line: 77, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "archive_rbto_compare_key_fn", file: !284, line: 72, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!6, !334, !45}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tree_rsrc", scope: !269, file: !3, line: 85, baseType: !320, size: 128, offset: 704)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "unconsumed", scope: !269, file: !3, line: 87, baseType: !47, size: 64, offset: 832)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "entry_bytes_remaining", scope: !269, file: !3, line: 90, baseType: !54, size: 64, offset: 896)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "entry_compressed_bytes_read", scope: !269, file: !3, line: 93, baseType: !54, size: 64, offset: 960)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "entry_uncompressed_bytes_read", scope: !269, file: !3, line: 94, baseType: !54, size: 64, offset: 1024)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "entry_crc32", scope: !269, file: !3, line: 97, baseType: !49, size: 64, offset: 1088)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_init", scope: !269, file: !3, line: 100, baseType: !85, size: 8, offset: 1152)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "end_of_entry", scope: !269, file: !3, line: 101, baseType: !85, size: 8, offset: 1160)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "filename_length", scope: !269, file: !3, line: 103, baseType: !40, size: 64, offset: 1216)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "extra_length", scope: !269, file: !3, line: 104, baseType: !40, size: 64, offset: 1280)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_buffer", scope: !269, file: !3, line: 106, baseType: !353, size: 64, offset: 1344)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_buffer_size", scope: !269, file: !3, line: 107, baseType: !47, size: 64, offset: 1408)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !269, file: !3, line: 109, baseType: !357, size: 896, offset: 1472)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !358, line: 106, baseType: !359)
!358 = !DIFile(filename: "/usr/include/zlib.h", directory: "", checksumkind: CSK_MD5, checksum: "69c0882c2071430ea4822b4f6c1edd30")
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !358, line: 86, size: 896, elements: !360)
!360 = !{!361, !366, !368, !370, !371, !372, !373, !374, !377, !383, !388, !389, !390, !391}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !359, file: !358, line: 87, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !364, line: 400, baseType: !365)
!364 = !DIFile(filename: "/usr/include/zconf.h", directory: "", checksumkind: CSK_MD5, checksum: "95e83c46958f6395f746c80cc6799e76")
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !364, line: 391, baseType: !354)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !359, file: !358, line: 88, baseType: !367, size: 32, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !364, line: 393, baseType: !16)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !359, file: !358, line: 89, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !364, line: 394, baseType: !49)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !359, file: !358, line: 91, baseType: !362, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !359, file: !358, line: 92, baseType: !367, size: 32, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !359, file: !358, line: 93, baseType: !369, size: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !359, file: !358, line: 95, baseType: !98, size: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !359, file: !358, line: 96, baseType: !375, size: 64, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !358, line: 84, flags: DIFlagFwdDecl)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !359, file: !358, line: 98, baseType: !378, size: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !358, line: 81, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!382, !382, !367, !367}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !364, line: 409, baseType: !126)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !359, file: !358, line: 99, baseType: !384, size: 64, offset: 576)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !358, line: 82, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !382, !382}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !359, file: !358, line: 100, baseType: !382, size: 64, offset: 640)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !359, file: !358, line: 102, baseType: !6, size: 32, offset: 704)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !359, file: !358, line: 104, baseType: !369, size: 64, offset: 768)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !359, file: !358, line: 105, baseType: !369, size: 64, offset: 832)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "stream_valid", scope: !269, file: !3, line: 110, baseType: !85, size: 8, offset: 2368)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !269, file: !3, line: 113, baseType: !94, size: 192, offset: 2432)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sconv", scope: !269, file: !3, line: 114, baseType: !105, size: 64, offset: 2624)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sconv_default", scope: !269, file: !3, line: 115, baseType: !105, size: 64, offset: 2688)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sconv_utf8", scope: !269, file: !3, line: 116, baseType: !105, size: 64, offset: 2752)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "init_default_conversion", scope: !269, file: !3, line: 117, baseType: !6, size: 32, offset: 2816)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "format_name", scope: !269, file: !3, line: 118, baseType: !399, size: 512, offset: 2848)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 512, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 64)
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !403, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !404, globals: !415, splitDebugInlining: false, nameTableKind: None)
!403 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_read_support_format_zip.c", directory: "/home/likaixuan/static_analysis/linux-spec-sast/patchintent", checksumkind: CSK_MD5, checksum: "74a66b3dff04eca98d26e036976918c6")
!404 = !{!7, !268, !126, !47, !54, !405, !279, !407, !85, !409, !6, !83, !16, !411, !413, !362, !292, !45, !367, !49, !40, !353}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !41, line: 69, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !43, line: 150, baseType: !16)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !309, line: 27, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !43, line: 45, baseType: !49)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !293, line: 101, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !43, line: 72, baseType: !44)
!415 = !{!0, !416, !418}
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(name: "rb_rsrc_ops", scope: !2, file: !3, line: 417, type: !325, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "compression_names", scope: !420, file: !3, line: 1134, type: !424, isLocal: true, isDefinition: true)
!420 = distinct !DISubprogram(name: "compression_name", scope: !3, file: !3, line: 1132, type: !421, scopeLine: 1133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!83, !6}
!423 = !{}
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 576, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 9)
!427 = !{i32 7, !"Dwarf Version", i32 5}
!428 = !{i32 2, !"Debug Info Version", i32 3}
!429 = !{i32 1, !"wchar_size", i32 4}
!430 = !{i32 7, !"PIC Level", i32 2}
!431 = !{i32 7, !"PIE Level", i32 2}
!432 = !{i32 7, !"uwtable", i32 1}
!433 = !{i32 7, !"frame-pointer", i32 2}
!434 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!435 = distinct !DISubprogram(name: "archive_read_support_format_zip_streamable", scope: !3, file: !3, line: 158, type: !24, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !402, retainedNodes: !423)
!436 = !DILocalVariable(name: "_a", arg: 1, scope: !435, file: !3, line: 158, type: !26)
!437 = !DILocation(line: 0, scope: !435)
!438 = !DILocation(line: 160, column: 27, scope: !435)
!439 = !DILocalVariable(name: "a", scope: !435, file: !3, line: 160, type: !7)
!440 = !DILocation(line: 164, column: 2, scope: !435)
!441 = !DILocation(line: 164, column: 2, scope: !442)
!442 = distinct !DILexicalBlock(scope: !435, file: !3, line: 164, column: 2)
!443 = !DILocalVariable(name: "magic_test", scope: !442, file: !3, line: 164, type: !6)
!444 = !DILocation(line: 0, scope: !442)
!445 = !DILocation(line: 164, column: 2, scope: !446)
!446 = distinct !DILexicalBlock(scope: !442, file: !3, line: 164, column: 2)
!447 = !DILocation(line: 167, column: 22, scope: !435)
!448 = !DILocation(line: 167, column: 8, scope: !435)
!449 = !DILocalVariable(name: "zip", scope: !435, file: !3, line: 161, type: !268)
!450 = !DILocation(line: 168, column: 10, scope: !451)
!451 = distinct !DILexicalBlock(scope: !435, file: !3, line: 168, column: 6)
!452 = !DILocation(line: 168, column: 6, scope: !435)
!453 = !DILocation(line: 169, column: 25, scope: !454)
!454 = distinct !DILexicalBlock(scope: !451, file: !3, line: 168, column: 19)
!455 = !DILocation(line: 169, column: 3, scope: !454)
!456 = !DILocation(line: 171, column: 3, scope: !454)
!457 = !DILocation(line: 173, column: 2, scope: !435)
!458 = !DILocation(line: 176, column: 6, scope: !435)
!459 = !DILocation(line: 175, column: 6, scope: !435)
!460 = !DILocalVariable(name: "r", scope: !435, file: !3, line: 162, type: !6)
!461 = !DILocation(line: 186, column: 8, scope: !462)
!462 = distinct !DILexicalBlock(scope: !435, file: !3, line: 186, column: 6)
!463 = !DILocation(line: 186, column: 6, scope: !435)
!464 = !DILocation(line: 187, column: 8, scope: !462)
!465 = !DILocation(line: 187, column: 3, scope: !462)
!466 = !DILocation(line: 188, column: 2, scope: !435)
!467 = !DILocation(line: 189, column: 1, scope: !435)
!468 = distinct !DISubprogram(name: "archive_read_format_zip_streamable_bid", scope: !3, file: !3, line: 795, type: !237, scopeLine: 796, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!469 = !DILocalVariable(name: "a", arg: 1, scope: !468, file: !3, line: 795, type: !7)
!470 = !DILocation(line: 0, scope: !468)
!471 = !DILocalVariable(name: "best_bid", arg: 2, scope: !468, file: !3, line: 795, type: !6)
!472 = !DILocation(line: 801, column: 11, scope: !473)
!473 = distinct !DILexicalBlock(scope: !468, file: !3, line: 801, column: 6)
!474 = !DILocalVariable(name: "p", scope: !468, file: !3, line: 797, type: !83)
!475 = !DILocation(line: 801, column: 45, scope: !473)
!476 = !DILocation(line: 801, column: 6, scope: !468)
!477 = !DILocation(line: 802, column: 3, scope: !473)
!478 = !DILocation(line: 809, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !468, file: !3, line: 809, column: 6)
!480 = !DILocation(line: 809, column: 11, scope: !479)
!481 = !DILocation(line: 809, column: 18, scope: !479)
!482 = !DILocation(line: 809, column: 21, scope: !479)
!483 = !DILocation(line: 809, column: 26, scope: !479)
!484 = !DILocation(line: 809, column: 6, scope: !468)
!485 = !DILocation(line: 810, column: 8, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 810, column: 7)
!487 = distinct !DILexicalBlock(scope: !479, file: !3, line: 809, column: 34)
!488 = !DILocation(line: 810, column: 13, scope: !486)
!489 = !DILocation(line: 810, column: 23, scope: !486)
!490 = !DILocation(line: 810, column: 26, scope: !486)
!491 = !DILocation(line: 810, column: 31, scope: !486)
!492 = !DILocation(line: 811, column: 7, scope: !486)
!493 = !DILocation(line: 811, column: 11, scope: !486)
!494 = !DILocation(line: 811, column: 16, scope: !486)
!495 = !DILocation(line: 811, column: 26, scope: !486)
!496 = !DILocation(line: 811, column: 29, scope: !486)
!497 = !DILocation(line: 811, column: 34, scope: !486)
!498 = !DILocation(line: 812, column: 7, scope: !486)
!499 = !DILocation(line: 812, column: 11, scope: !486)
!500 = !DILocation(line: 812, column: 16, scope: !486)
!501 = !DILocation(line: 812, column: 26, scope: !486)
!502 = !DILocation(line: 812, column: 29, scope: !486)
!503 = !DILocation(line: 812, column: 34, scope: !486)
!504 = !DILocation(line: 813, column: 7, scope: !486)
!505 = !DILocation(line: 813, column: 11, scope: !486)
!506 = !DILocation(line: 813, column: 16, scope: !486)
!507 = !DILocation(line: 813, column: 26, scope: !486)
!508 = !DILocation(line: 813, column: 29, scope: !486)
!509 = !DILocation(line: 813, column: 34, scope: !486)
!510 = !DILocation(line: 814, column: 7, scope: !486)
!511 = !DILocation(line: 814, column: 11, scope: !486)
!512 = !DILocation(line: 814, column: 16, scope: !486)
!513 = !DILocation(line: 814, column: 23, scope: !486)
!514 = !DILocation(line: 814, column: 26, scope: !486)
!515 = !DILocation(line: 814, column: 31, scope: !486)
!516 = !DILocation(line: 810, column: 7, scope: !487)
!517 = !DILocation(line: 815, column: 4, scope: !486)
!518 = !DILocation(line: 816, column: 2, scope: !487)
!519 = !DILocation(line: 823, column: 2, scope: !468)
!520 = !DILocation(line: 824, column: 1, scope: !468)
!521 = distinct !DISubprogram(name: "archive_read_format_zip_options", scope: !3, file: !3, line: 827, type: !241, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!522 = !DILocalVariable(name: "a", arg: 1, scope: !521, file: !3, line: 827, type: !7)
!523 = !DILocation(line: 0, scope: !521)
!524 = !DILocalVariable(name: "key", arg: 2, scope: !521, file: !3, line: 828, type: !83)
!525 = !DILocalVariable(name: "val", arg: 3, scope: !521, file: !3, line: 828, type: !83)
!526 = !DILocalVariable(name: "ret", scope: !521, file: !3, line: 831, type: !6)
!527 = !DILocation(line: 833, column: 26, scope: !521)
!528 = !DILocation(line: 833, column: 34, scope: !521)
!529 = !DILocation(line: 833, column: 8, scope: !521)
!530 = !DILocalVariable(name: "zip", scope: !521, file: !3, line: 830, type: !268)
!531 = !DILocation(line: 834, column: 6, scope: !532)
!532 = distinct !DILexicalBlock(scope: !521, file: !3, line: 834, column: 6)
!533 = !DILocation(line: 834, column: 32, scope: !532)
!534 = !DILocation(line: 834, column: 6, scope: !521)
!535 = !DILocation(line: 836, column: 39, scope: !536)
!536 = distinct !DILexicalBlock(scope: !532, file: !3, line: 834, column: 38)
!537 = !DILocation(line: 836, column: 34, scope: !536)
!538 = !DILocation(line: 836, column: 8, scope: !536)
!539 = !DILocation(line: 836, column: 32, scope: !536)
!540 = !DILocation(line: 837, column: 3, scope: !536)
!541 = !DILocation(line: 838, column: 13, scope: !542)
!542 = distinct !DILexicalBlock(scope: !532, file: !3, line: 838, column: 13)
!543 = !DILocation(line: 838, column: 40, scope: !542)
!544 = !DILocation(line: 838, column: 13, scope: !532)
!545 = !DILocation(line: 839, column: 11, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !3, line: 839, column: 7)
!547 = distinct !DILexicalBlock(scope: !542, file: !3, line: 838, column: 46)
!548 = !DILocation(line: 839, column: 19, scope: !546)
!549 = !DILocation(line: 839, column: 22, scope: !546)
!550 = !DILocation(line: 839, column: 29, scope: !546)
!551 = !DILocation(line: 839, column: 7, scope: !547)
!552 = !DILocation(line: 840, column: 26, scope: !546)
!553 = !DILocation(line: 840, column: 4, scope: !546)
!554 = !DILocation(line: 845, column: 12, scope: !555)
!555 = distinct !DILexicalBlock(scope: !546, file: !3, line: 843, column: 8)
!556 = !DILocation(line: 844, column: 17, scope: !555)
!557 = !DILocation(line: 844, column: 9, scope: !555)
!558 = !DILocation(line: 844, column: 15, scope: !555)
!559 = !DILocation(line: 846, column: 13, scope: !560)
!560 = distinct !DILexicalBlock(scope: !555, file: !3, line: 846, column: 8)
!561 = !DILocation(line: 846, column: 19, scope: !560)
!562 = !DILocation(line: 846, column: 8, scope: !555)
!563 = !DILocation(line: 847, column: 9, scope: !564)
!564 = distinct !DILexicalBlock(scope: !565, file: !3, line: 847, column: 9)
!565 = distinct !DILexicalBlock(scope: !560, file: !3, line: 846, column: 28)
!566 = !DILocation(line: 847, column: 30, scope: !564)
!567 = !DILocation(line: 847, column: 9, scope: !565)
!568 = !DILocation(line: 848, column: 29, scope: !564)
!569 = !DILocation(line: 848, column: 11, scope: !564)
!570 = !DILocation(line: 848, column: 22, scope: !564)
!571 = !DILocation(line: 848, column: 6, scope: !564)
!572 = !DILocation(line: 850, column: 4, scope: !565)
!573 = !DILocation(line: 0, scope: !560)
!574 = !DILocation(line: 853, column: 3, scope: !547)
!575 = !DILocation(line: 859, column: 2, scope: !521)
!576 = !DILocation(line: 860, column: 1, scope: !521)
!577 = distinct !DISubprogram(name: "archive_read_format_zip_streamable_read_header", scope: !3, file: !3, line: 863, type: !245, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!578 = !DILocalVariable(name: "a", arg: 1, scope: !577, file: !3, line: 863, type: !7)
!579 = !DILocation(line: 0, scope: !577)
!580 = !DILocalVariable(name: "entry", arg: 2, scope: !577, file: !3, line: 864, type: !32)
!581 = !DILocation(line: 868, column: 5, scope: !577)
!582 = !DILocation(line: 868, column: 13, scope: !577)
!583 = !DILocation(line: 868, column: 28, scope: !577)
!584 = !DILocation(line: 869, column: 9, scope: !585)
!585 = distinct !DILexicalBlock(scope: !577, file: !3, line: 869, column: 6)
!586 = !DILocation(line: 869, column: 17, scope: !585)
!587 = !DILocation(line: 869, column: 37, scope: !585)
!588 = !DILocation(line: 869, column: 6, scope: !577)
!589 = !DILocation(line: 870, column: 6, scope: !585)
!590 = !DILocation(line: 870, column: 14, scope: !585)
!591 = !DILocation(line: 870, column: 34, scope: !585)
!592 = !DILocation(line: 870, column: 3, scope: !585)
!593 = !DILocation(line: 872, column: 26, scope: !577)
!594 = !DILocation(line: 872, column: 34, scope: !577)
!595 = !DILocation(line: 872, column: 8, scope: !577)
!596 = !DILocalVariable(name: "zip", scope: !577, file: !3, line: 866, type: !268)
!597 = !DILocation(line: 875, column: 11, scope: !598)
!598 = distinct !DILexicalBlock(scope: !577, file: !3, line: 875, column: 6)
!599 = !DILocation(line: 875, column: 23, scope: !598)
!600 = !DILocation(line: 875, column: 6, scope: !577)
!601 = !DILocation(line: 876, column: 22, scope: !602)
!602 = distinct !DILexicalBlock(scope: !598, file: !3, line: 875, column: 32)
!603 = !DILocation(line: 876, column: 8, scope: !602)
!604 = !DILocation(line: 876, column: 20, scope: !602)
!605 = !DILocation(line: 877, column: 12, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !3, line: 877, column: 7)
!607 = !DILocation(line: 877, column: 24, scope: !606)
!608 = !DILocation(line: 877, column: 7, scope: !602)
!609 = !DILocation(line: 878, column: 26, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !3, line: 877, column: 33)
!611 = !DILocation(line: 878, column: 4, scope: !610)
!612 = !DILocation(line: 880, column: 4, scope: !610)
!613 = !DILocation(line: 882, column: 2, scope: !602)
!614 = !DILocation(line: 883, column: 20, scope: !577)
!615 = !DILocation(line: 883, column: 7, scope: !577)
!616 = !DILocation(line: 883, column: 13, scope: !577)
!617 = !DILocation(line: 884, column: 14, scope: !577)
!618 = !DILocation(line: 884, column: 2, scope: !577)
!619 = !DILocation(line: 887, column: 27, scope: !577)
!620 = !DILocation(line: 887, column: 2, scope: !577)
!621 = !DILocation(line: 888, column: 7, scope: !577)
!622 = !DILocation(line: 888, column: 18, scope: !577)
!623 = !DILocation(line: 889, column: 2, scope: !577)
!624 = !DILocalVariable(name: "skipped", scope: !625, file: !3, line: 890, type: !54)
!625 = distinct !DILexicalBlock(scope: !626, file: !3, line: 889, column: 11)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 889, column: 2)
!627 = distinct !DILexicalBlock(scope: !577, file: !3, line: 889, column: 2)
!628 = !DILocation(line: 0, scope: !625)
!629 = !DILocalVariable(name: "bytes", scope: !625, file: !3, line: 892, type: !40)
!630 = !DILocation(line: 892, column: 11, scope: !625)
!631 = !DILocation(line: 894, column: 7, scope: !625)
!632 = !DILocalVariable(name: "p", scope: !625, file: !3, line: 891, type: !83)
!633 = !DILocation(line: 895, column: 9, scope: !634)
!634 = distinct !DILexicalBlock(scope: !625, file: !3, line: 895, column: 7)
!635 = !DILocation(line: 895, column: 7, scope: !625)
!636 = !DILocation(line: 896, column: 4, scope: !634)
!637 = !DILocation(line: 897, column: 13, scope: !625)
!638 = !DILocation(line: 897, column: 11, scope: !625)
!639 = !DILocalVariable(name: "end", scope: !625, file: !3, line: 891, type: !83)
!640 = !DILocation(line: 899, column: 3, scope: !625)
!641 = !DILocation(line: 899, column: 12, scope: !625)
!642 = !DILocation(line: 899, column: 16, scope: !625)
!643 = !DILocation(line: 900, column: 8, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 900, column: 8)
!645 = distinct !DILexicalBlock(scope: !625, file: !3, line: 899, column: 24)
!646 = !DILocation(line: 900, column: 13, scope: !644)
!647 = !DILocation(line: 900, column: 20, scope: !644)
!648 = !DILocation(line: 900, column: 23, scope: !644)
!649 = !DILocation(line: 900, column: 28, scope: !644)
!650 = !DILocation(line: 900, column: 8, scope: !645)
!651 = !DILocation(line: 901, column: 9, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 901, column: 9)
!653 = distinct !DILexicalBlock(scope: !644, file: !3, line: 900, column: 36)
!654 = !DILocation(line: 901, column: 14, scope: !652)
!655 = !DILocation(line: 901, column: 24, scope: !652)
!656 = !DILocation(line: 901, column: 27, scope: !652)
!657 = !DILocation(line: 901, column: 32, scope: !652)
!658 = !DILocation(line: 901, column: 9, scope: !653)
!659 = !DILocation(line: 903, column: 6, scope: !652)
!660 = !DILocation(line: 905, column: 9, scope: !661)
!661 = distinct !DILexicalBlock(scope: !653, file: !3, line: 905, column: 9)
!662 = !DILocation(line: 905, column: 14, scope: !661)
!663 = !DILocation(line: 905, column: 24, scope: !661)
!664 = !DILocation(line: 905, column: 27, scope: !661)
!665 = !DILocation(line: 905, column: 32, scope: !661)
!666 = !DILocation(line: 905, column: 9, scope: !653)
!667 = !DILocation(line: 907, column: 6, scope: !668)
!668 = distinct !DILexicalBlock(scope: !661, file: !3, line: 905, column: 43)
!669 = !DILocation(line: 908, column: 13, scope: !668)
!670 = !DILocation(line: 908, column: 6, scope: !668)
!671 = !DILocation(line: 912, column: 9, scope: !672)
!672 = distinct !DILexicalBlock(scope: !653, file: !3, line: 912, column: 9)
!673 = !DILocation(line: 912, column: 14, scope: !672)
!674 = !DILocation(line: 912, column: 24, scope: !672)
!675 = !DILocation(line: 912, column: 27, scope: !672)
!676 = !DILocation(line: 912, column: 32, scope: !672)
!677 = !DILocation(line: 912, column: 9, scope: !653)
!678 = !DILocation(line: 914, column: 6, scope: !672)
!679 = !DILocation(line: 915, column: 4, scope: !653)
!680 = !DILocation(line: 916, column: 4, scope: !645)
!681 = !DILocation(line: 917, column: 4, scope: !645)
!682 = distinct !{!682, !640, !683, !684}
!683 = !DILocation(line: 918, column: 3, scope: !625)
!684 = !{!"llvm.loop.mustprogress"}
!685 = !DILocation(line: 919, column: 3, scope: !625)
!686 = !DILocation(line: 889, column: 2, scope: !626)
!687 = distinct !{!687, !688, !689}
!688 = !DILocation(line: 889, column: 2, scope: !627)
!689 = !DILocation(line: 920, column: 2, scope: !627)
!690 = !DILocation(line: 921, column: 1, scope: !577)
!691 = distinct !DISubprogram(name: "archive_read_format_zip_read_data", scope: !3, file: !3, line: 1175, type: !249, scopeLine: 1177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!692 = !DILocalVariable(name: "a", arg: 1, scope: !691, file: !3, line: 1175, type: !7)
!693 = !DILocation(line: 0, scope: !691)
!694 = !DILocalVariable(name: "buff", arg: 2, scope: !691, file: !3, line: 1176, type: !67)
!695 = !DILocalVariable(name: "size", arg: 3, scope: !691, file: !3, line: 1176, type: !68)
!696 = !DILocalVariable(name: "offset", arg: 4, scope: !691, file: !3, line: 1176, type: !69)
!697 = !DILocation(line: 1179, column: 38, scope: !691)
!698 = !DILocation(line: 1179, column: 46, scope: !691)
!699 = !DILocation(line: 1179, column: 20, scope: !691)
!700 = !DILocalVariable(name: "zip", scope: !691, file: !3, line: 1179, type: !268)
!701 = !DILocation(line: 1181, column: 17, scope: !691)
!702 = !DILocation(line: 1181, column: 10, scope: !691)
!703 = !DILocation(line: 1182, column: 8, scope: !691)
!704 = !DILocation(line: 1183, column: 8, scope: !691)
!705 = !DILocation(line: 1186, column: 11, scope: !706)
!706 = distinct !DILexicalBlock(scope: !691, file: !3, line: 1186, column: 6)
!707 = !DILocation(line: 1186, column: 6, scope: !706)
!708 = !DILocation(line: 1186, column: 6, scope: !691)
!709 = !DILocation(line: 1187, column: 3, scope: !706)
!710 = !DILocation(line: 1190, column: 24, scope: !711)
!711 = distinct !DILexicalBlock(scope: !691, file: !3, line: 1190, column: 6)
!712 = !DILocation(line: 1190, column: 31, scope: !711)
!713 = !DILocation(line: 1190, column: 19, scope: !711)
!714 = !DILocation(line: 1190, column: 36, scope: !711)
!715 = !DILocation(line: 1190, column: 15, scope: !711)
!716 = !DILocation(line: 1190, column: 6, scope: !691)
!717 = !DILocation(line: 1191, column: 3, scope: !711)
!718 = !DILocation(line: 1193, column: 11, scope: !719)
!719 = distinct !DILexicalBlock(scope: !691, file: !3, line: 1193, column: 6)
!720 = !DILocation(line: 1193, column: 18, scope: !719)
!721 = !DILocation(line: 1193, column: 6, scope: !719)
!722 = !DILocation(line: 1193, column: 24, scope: !719)
!723 = !DILocation(line: 1193, column: 6, scope: !691)
!724 = !DILocation(line: 1194, column: 25, scope: !725)
!725 = distinct !DILexicalBlock(scope: !719, file: !3, line: 1193, column: 66)
!726 = !DILocation(line: 1194, column: 3, scope: !725)
!727 = !DILocation(line: 1196, column: 3, scope: !725)
!728 = !DILocation(line: 1199, column: 27, scope: !691)
!729 = !DILocation(line: 1199, column: 2, scope: !691)
!730 = !DILocation(line: 1200, column: 7, scope: !691)
!731 = !DILocation(line: 1200, column: 18, scope: !691)
!732 = !DILocation(line: 1202, column: 14, scope: !691)
!733 = !DILocation(line: 1202, column: 21, scope: !691)
!734 = !DILocation(line: 1202, column: 9, scope: !691)
!735 = !DILocation(line: 1202, column: 2, scope: !691)
!736 = !DILocation(line: 1204, column: 8, scope: !737)
!737 = distinct !DILexicalBlock(scope: !691, file: !3, line: 1202, column: 34)
!738 = !DILocalVariable(name: "r", scope: !691, file: !3, line: 1178, type: !6)
!739 = !DILocation(line: 1205, column: 3, scope: !737)
!740 = !DILocation(line: 1208, column: 8, scope: !737)
!741 = !DILocation(line: 1209, column: 3, scope: !737)
!742 = !DILocation(line: 1213, column: 25, scope: !737)
!743 = !DILocation(line: 1215, column: 29, scope: !737)
!744 = !DILocation(line: 1215, column: 36, scope: !737)
!745 = !DILocation(line: 1215, column: 24, scope: !737)
!746 = !DILocation(line: 1215, column: 7, scope: !737)
!747 = !DILocation(line: 1213, column: 3, scope: !737)
!748 = !DILocation(line: 1218, column: 3, scope: !737)
!749 = !DILocation(line: 0, scope: !737)
!750 = !DILocation(line: 1221, column: 8, scope: !751)
!751 = distinct !DILexicalBlock(scope: !691, file: !3, line: 1221, column: 6)
!752 = !DILocation(line: 1221, column: 6, scope: !691)
!753 = !DILocation(line: 1222, column: 3, scope: !751)
!754 = !DILocation(line: 1224, column: 6, scope: !755)
!755 = distinct !DILexicalBlock(scope: !691, file: !3, line: 1224, column: 6)
!756 = !DILocation(line: 1224, column: 6, scope: !691)
!757 = !DILocation(line: 1225, column: 33, scope: !755)
!758 = !DILocation(line: 1225, column: 46, scope: !755)
!759 = !DILocation(line: 1226, column: 17, scope: !755)
!760 = !DILocation(line: 1226, column: 7, scope: !755)
!761 = !DILocation(line: 1225, column: 22, scope: !755)
!762 = !DILocation(line: 1225, column: 8, scope: !755)
!763 = !DILocation(line: 1225, column: 20, scope: !755)
!764 = !DILocation(line: 1225, column: 3, scope: !755)
!765 = !DILocation(line: 1228, column: 11, scope: !766)
!766 = distinct !DILexicalBlock(scope: !691, file: !3, line: 1228, column: 6)
!767 = !DILocation(line: 1228, column: 6, scope: !766)
!768 = !DILocation(line: 1228, column: 6, scope: !691)
!769 = !DILocation(line: 1230, column: 12, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 1230, column: 7)
!771 = distinct !DILexicalBlock(scope: !766, file: !3, line: 1228, column: 25)
!772 = !DILocation(line: 1230, column: 19, scope: !770)
!773 = !DILocation(line: 1231, column: 12, scope: !770)
!774 = !DILocation(line: 1230, column: 35, scope: !770)
!775 = !DILocation(line: 1230, column: 7, scope: !771)
!776 = !DILocation(line: 1232, column: 26, scope: !777)
!777 = distinct !DILexicalBlock(scope: !770, file: !3, line: 1231, column: 41)
!778 = !DILocation(line: 1235, column: 23, scope: !777)
!779 = !DILocation(line: 1236, column: 23, scope: !777)
!780 = !DILocation(line: 1236, column: 30, scope: !777)
!781 = !DILocation(line: 1232, column: 4, scope: !777)
!782 = !DILocation(line: 1237, column: 4, scope: !777)
!783 = !DILocation(line: 1241, column: 13, scope: !784)
!784 = distinct !DILexicalBlock(scope: !771, file: !3, line: 1241, column: 7)
!785 = !DILocation(line: 1241, column: 20, scope: !784)
!786 = !DILocation(line: 1241, column: 38, scope: !784)
!787 = !DILocation(line: 1242, column: 16, scope: !784)
!788 = !DILocation(line: 1242, column: 46, scope: !784)
!789 = !DILocation(line: 1242, column: 7, scope: !784)
!790 = !DILocation(line: 1241, column: 7, scope: !771)
!791 = !DILocation(line: 1243, column: 26, scope: !792)
!792 = distinct !DILexicalBlock(scope: !784, file: !3, line: 1242, column: 61)
!793 = !DILocation(line: 1246, column: 23, scope: !792)
!794 = !DILocation(line: 1247, column: 23, scope: !792)
!795 = !DILocation(line: 1247, column: 30, scope: !792)
!796 = !DILocation(line: 1243, column: 4, scope: !792)
!797 = !DILocation(line: 1248, column: 4, scope: !792)
!798 = !DILocation(line: 1251, column: 12, scope: !799)
!799 = distinct !DILexicalBlock(scope: !771, file: !3, line: 1251, column: 7)
!800 = !DILocation(line: 1251, column: 19, scope: !799)
!801 = !DILocation(line: 1251, column: 7, scope: !799)
!802 = !DILocation(line: 1251, column: 33, scope: !799)
!803 = !DILocation(line: 1251, column: 25, scope: !799)
!804 = !DILocation(line: 1251, column: 7, scope: !771)
!805 = !DILocation(line: 1252, column: 26, scope: !806)
!806 = distinct !DILexicalBlock(scope: !799, file: !3, line: 1251, column: 46)
!807 = !DILocation(line: 1254, column: 28, scope: !806)
!808 = !DILocation(line: 1255, column: 28, scope: !806)
!809 = !DILocation(line: 1255, column: 35, scope: !806)
!810 = !DILocation(line: 1255, column: 8, scope: !806)
!811 = !DILocation(line: 1252, column: 4, scope: !806)
!812 = !DILocation(line: 1256, column: 4, scope: !806)
!813 = !DILocation(line: 1258, column: 2, scope: !771)
!814 = !DILocation(line: 1260, column: 2, scope: !691)
!815 = !DILocation(line: 1261, column: 1, scope: !691)
!816 = distinct !DISubprogram(name: "archive_read_format_zip_read_data_skip", scope: !3, file: !3, line: 1507, type: !253, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!817 = !DILocalVariable(name: "a", arg: 1, scope: !816, file: !3, line: 1507, type: !7)
!818 = !DILocation(line: 0, scope: !816)
!819 = !DILocation(line: 1511, column: 26, scope: !816)
!820 = !DILocation(line: 1511, column: 34, scope: !816)
!821 = !DILocation(line: 1511, column: 8, scope: !816)
!822 = !DILocalVariable(name: "zip", scope: !816, file: !3, line: 1509, type: !268)
!823 = !DILocation(line: 1514, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !816, file: !3, line: 1514, column: 6)
!825 = !DILocation(line: 1514, column: 6, scope: !824)
!826 = !DILocation(line: 1514, column: 6, scope: !816)
!827 = !DILocation(line: 1515, column: 3, scope: !824)
!828 = !DILocation(line: 1518, column: 17, scope: !829)
!829 = distinct !DILexicalBlock(scope: !816, file: !3, line: 1518, column: 6)
!830 = !DILocation(line: 1518, column: 24, scope: !829)
!831 = !DILocation(line: 1518, column: 12, scope: !829)
!832 = !DILocation(line: 1518, column: 30, scope: !829)
!833 = !DILocation(line: 1518, column: 8, scope: !829)
!834 = !DILocation(line: 1518, column: 6, scope: !816)
!835 = !DILocation(line: 1521, column: 12, scope: !836)
!836 = distinct !DILexicalBlock(scope: !829, file: !3, line: 1518, column: 52)
!837 = !DILocation(line: 1521, column: 41, scope: !836)
!838 = !DILocation(line: 1521, column: 34, scope: !836)
!839 = !DILocation(line: 1520, column: 27, scope: !836)
!840 = !DILocalVariable(name: "bytes_skipped", scope: !836, file: !3, line: 1520, type: !54)
!841 = !DILocation(line: 0, scope: !836)
!842 = !DILocation(line: 1522, column: 21, scope: !843)
!843 = distinct !DILexicalBlock(scope: !836, file: !3, line: 1522, column: 7)
!844 = !DILocation(line: 1522, column: 7, scope: !836)
!845 = !DILocation(line: 1523, column: 4, scope: !843)
!846 = !DILocation(line: 1524, column: 8, scope: !836)
!847 = !DILocation(line: 1524, column: 19, scope: !836)
!848 = !DILocation(line: 1525, column: 3, scope: !836)
!849 = !DILocation(line: 1531, column: 15, scope: !816)
!850 = !DILocation(line: 1531, column: 22, scope: !816)
!851 = !DILocation(line: 1531, column: 10, scope: !816)
!852 = !DILocation(line: 1531, column: 2, scope: !816)
!853 = !DILocation(line: 1534, column: 3, scope: !854)
!854 = distinct !DILexicalBlock(scope: !816, file: !3, line: 1531, column: 35)
!855 = !DILocation(line: 1534, column: 16, scope: !854)
!856 = !DILocation(line: 1534, column: 10, scope: !854)
!857 = !DILocalVariable(name: "offset", scope: !858, file: !3, line: 1535, type: !54)
!858 = distinct !DILexicalBlock(scope: !854, file: !3, line: 1534, column: 30)
!859 = !DILocation(line: 1535, column: 12, scope: !858)
!860 = !DILocalVariable(name: "buff", scope: !858, file: !3, line: 1536, type: !45)
!861 = !DILocation(line: 1536, column: 16, scope: !858)
!862 = !DILocalVariable(name: "size", scope: !858, file: !3, line: 1537, type: !47)
!863 = !DILocation(line: 1537, column: 11, scope: !858)
!864 = !DILocation(line: 1539, column: 9, scope: !858)
!865 = !DILocalVariable(name: "r", scope: !858, file: !3, line: 1538, type: !6)
!866 = !DILocation(line: 0, scope: !858)
!867 = !DILocation(line: 1540, column: 10, scope: !868)
!868 = distinct !DILexicalBlock(scope: !858, file: !3, line: 1540, column: 8)
!869 = !DILocation(line: 1540, column: 8, scope: !858)
!870 = !DILocation(line: 1541, column: 5, scope: !868)
!871 = distinct !{!871, !853, !872, !684}
!872 = !DILocation(line: 1542, column: 3, scope: !854)
!873 = !DILocation(line: 1543, column: 3, scope: !854)
!874 = !DILocation(line: 1547, column: 28, scope: !854)
!875 = !DILocation(line: 1547, column: 3, scope: !854)
!876 = !DILocation(line: 1548, column: 8, scope: !854)
!877 = !DILocation(line: 1548, column: 19, scope: !854)
!878 = !DILocation(line: 1549, column: 3, scope: !854)
!879 = !DILocalVariable(name: "bytes_avail", scope: !880, file: !3, line: 1551, type: !40)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 1549, column: 12)
!881 = distinct !DILexicalBlock(scope: !882, file: !3, line: 1549, column: 3)
!882 = distinct !DILexicalBlock(scope: !854, file: !3, line: 1549, column: 3)
!883 = !DILocation(line: 1551, column: 12, scope: !880)
!884 = !DILocation(line: 1552, column: 11, scope: !880)
!885 = !DILocalVariable(name: "buff", scope: !880, file: !3, line: 1550, type: !83)
!886 = !DILocation(line: 0, scope: !880)
!887 = !DILocation(line: 1553, column: 8, scope: !888)
!888 = distinct !DILexicalBlock(scope: !880, file: !3, line: 1553, column: 8)
!889 = !DILocation(line: 1553, column: 20, scope: !888)
!890 = !DILocation(line: 1553, column: 8, scope: !880)
!891 = !DILocation(line: 1554, column: 27, scope: !892)
!892 = distinct !DILexicalBlock(scope: !888, file: !3, line: 1553, column: 26)
!893 = !DILocation(line: 1554, column: 5, scope: !892)
!894 = !DILocation(line: 1557, column: 5, scope: !892)
!895 = !DILocalVariable(name: "p", scope: !880, file: !3, line: 1550, type: !83)
!896 = !DILocation(line: 1560, column: 4, scope: !880)
!897 = !DILocation(line: 1560, column: 23, scope: !880)
!898 = !DILocation(line: 1560, column: 21, scope: !880)
!899 = !DILocation(line: 1560, column: 35, scope: !880)
!900 = !DILocation(line: 1560, column: 13, scope: !880)
!901 = !DILocation(line: 1561, column: 9, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 1561, column: 9)
!903 = distinct !DILexicalBlock(scope: !880, file: !3, line: 1560, column: 41)
!904 = !DILocation(line: 1561, column: 14, scope: !902)
!905 = !DILocation(line: 1561, column: 9, scope: !903)
!906 = !DILocation(line: 1561, column: 26, scope: !907)
!907 = distinct !DILexicalBlock(scope: !902, file: !3, line: 1561, column: 22)
!908 = !DILocation(line: 1561, column: 32, scope: !907)
!909 = !DILocation(line: 1562, column: 14, scope: !910)
!910 = distinct !DILexicalBlock(scope: !902, file: !3, line: 1562, column: 14)
!911 = !DILocation(line: 1562, column: 19, scope: !910)
!912 = !DILocation(line: 1562, column: 14, scope: !902)
!913 = !DILocation(line: 1562, column: 31, scope: !914)
!914 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1562, column: 27)
!915 = !DILocation(line: 1562, column: 37, scope: !914)
!916 = !DILocation(line: 1563, column: 14, scope: !917)
!917 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1563, column: 14)
!918 = !DILocation(line: 1563, column: 19, scope: !917)
!919 = !DILocation(line: 1563, column: 14, scope: !910)
!920 = !DILocation(line: 1563, column: 34, scope: !921)
!921 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1563, column: 30)
!922 = !DILocation(line: 1563, column: 40, scope: !921)
!923 = !DILocation(line: 1564, column: 14, scope: !924)
!924 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1564, column: 14)
!925 = !DILocation(line: 1564, column: 19, scope: !924)
!926 = !DILocation(line: 1564, column: 29, scope: !924)
!927 = !DILocation(line: 1564, column: 32, scope: !924)
!928 = !DILocation(line: 1564, column: 37, scope: !924)
!929 = !DILocation(line: 1565, column: 9, scope: !924)
!930 = !DILocation(line: 1565, column: 12, scope: !924)
!931 = !DILocation(line: 1565, column: 17, scope: !924)
!932 = !DILocation(line: 1565, column: 24, scope: !924)
!933 = !DILocation(line: 1565, column: 27, scope: !924)
!934 = !DILocation(line: 1565, column: 32, scope: !924)
!935 = !DILocation(line: 1564, column: 14, scope: !917)
!936 = !DILocation(line: 1566, column: 28, scope: !937)
!937 = distinct !DILexicalBlock(scope: !924, file: !3, line: 1565, column: 40)
!938 = !DILocation(line: 1566, column: 35, scope: !937)
!939 = !DILocation(line: 1566, column: 6, scope: !937)
!940 = !DILocation(line: 1567, column: 6, scope: !937)
!941 = !DILocation(line: 1568, column: 16, scope: !942)
!942 = distinct !DILexicalBlock(scope: !924, file: !3, line: 1568, column: 12)
!943 = !DILocation(line: 0, scope: !917)
!944 = !DILocation(line: 0, scope: !910)
!945 = !DILocation(line: 0, scope: !902)
!946 = distinct !{!946, !896, !947, !684}
!947 = !DILocation(line: 1569, column: 4, scope: !880)
!948 = !DILocation(line: 1570, column: 26, scope: !880)
!949 = !DILocation(line: 1570, column: 4, scope: !880)
!950 = !DILocation(line: 1549, column: 3, scope: !881)
!951 = distinct !{!951, !952, !953}
!952 = !DILocation(line: 1549, column: 3, scope: !882)
!953 = !DILocation(line: 1571, column: 3, scope: !882)
!954 = !DILocation(line: 1573, column: 1, scope: !816)
!955 = distinct !DISubprogram(name: "archive_read_format_zip_cleanup", scope: !3, file: !3, line: 1576, type: !253, scopeLine: 1577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!956 = !DILocalVariable(name: "a", arg: 1, scope: !955, file: !3, line: 1576, type: !7)
!957 = !DILocation(line: 0, scope: !955)
!958 = !DILocation(line: 1580, column: 26, scope: !955)
!959 = !DILocation(line: 1580, column: 34, scope: !955)
!960 = !DILocation(line: 1580, column: 8, scope: !955)
!961 = !DILocalVariable(name: "zip", scope: !955, file: !3, line: 1578, type: !268)
!962 = !DILocation(line: 1582, column: 11, scope: !963)
!963 = distinct !DILexicalBlock(scope: !955, file: !3, line: 1582, column: 6)
!964 = !DILocation(line: 1582, column: 6, scope: !963)
!965 = !DILocation(line: 1582, column: 6, scope: !955)
!966 = !DILocation(line: 1583, column: 20, scope: !963)
!967 = !DILocation(line: 1583, column: 3, scope: !963)
!968 = !DILocation(line: 1585, column: 11, scope: !969)
!969 = distinct !DILexicalBlock(scope: !955, file: !3, line: 1585, column: 6)
!970 = !DILocation(line: 1585, column: 6, scope: !969)
!971 = !DILocation(line: 1585, column: 23, scope: !969)
!972 = !DILocation(line: 1585, column: 31, scope: !969)
!973 = !DILocation(line: 1585, column: 26, scope: !969)
!974 = !DILocation(line: 1585, column: 6, scope: !955)
!975 = !DILocalVariable(name: "i", scope: !976, file: !3, line: 1586, type: !16)
!976 = distinct !DILexicalBlock(scope: !969, file: !3, line: 1585, column: 58)
!977 = !DILocation(line: 0, scope: !976)
!978 = !DILocation(line: 1587, column: 8, scope: !979)
!979 = distinct !DILexicalBlock(scope: !976, file: !3, line: 1587, column: 3)
!980 = !DILocation(line: 0, scope: !979)
!981 = !DILocation(line: 1587, column: 15, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !3, line: 1587, column: 3)
!983 = !DILocation(line: 1587, column: 24, scope: !982)
!984 = !DILocation(line: 1587, column: 17, scope: !982)
!985 = !DILocation(line: 1587, column: 3, scope: !979)
!986 = !DILocation(line: 1588, column: 31, scope: !982)
!987 = !DILocation(line: 1588, column: 26, scope: !982)
!988 = !DILocation(line: 1588, column: 46, scope: !982)
!989 = !DILocation(line: 1588, column: 4, scope: !982)
!990 = !DILocation(line: 1587, column: 52, scope: !982)
!991 = !DILocation(line: 1587, column: 3, scope: !982)
!992 = distinct !{!992, !985, !993, !684}
!993 = !DILocation(line: 1588, column: 55, scope: !979)
!994 = !DILocation(line: 1589, column: 2, scope: !976)
!995 = !DILocation(line: 1590, column: 12, scope: !955)
!996 = !DILocation(line: 1590, column: 7, scope: !955)
!997 = !DILocation(line: 1590, column: 2, scope: !955)
!998 = !DILocation(line: 1591, column: 12, scope: !955)
!999 = !DILocation(line: 1591, column: 2, scope: !955)
!1000 = !DILocation(line: 1592, column: 29, scope: !955)
!1001 = !DILocation(line: 1592, column: 2, scope: !955)
!1002 = !DILocation(line: 1593, column: 7, scope: !955)
!1003 = !DILocation(line: 1593, column: 2, scope: !955)
!1004 = !DILocation(line: 1594, column: 6, scope: !955)
!1005 = !DILocation(line: 1594, column: 14, scope: !955)
!1006 = !DILocation(line: 1594, column: 20, scope: !955)
!1007 = !DILocation(line: 1595, column: 2, scope: !955)
!1008 = distinct !DISubprogram(name: "archive_read_support_format_zip_seekable", scope: !3, file: !3, line: 192, type: !24, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1009 = !DILocalVariable(name: "_a", arg: 1, scope: !1008, file: !3, line: 192, type: !26)
!1010 = !DILocation(line: 0, scope: !1008)
!1011 = !DILocation(line: 194, column: 27, scope: !1008)
!1012 = !DILocalVariable(name: "a", scope: !1008, file: !3, line: 194, type: !7)
!1013 = !DILocation(line: 198, column: 2, scope: !1008)
!1014 = !DILocation(line: 198, column: 2, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 198, column: 2)
!1016 = !DILocalVariable(name: "magic_test", scope: !1015, file: !3, line: 198, type: !6)
!1017 = !DILocation(line: 0, scope: !1015)
!1018 = !DILocation(line: 198, column: 2, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 198, column: 2)
!1020 = !DILocation(line: 201, column: 22, scope: !1008)
!1021 = !DILocation(line: 201, column: 8, scope: !1008)
!1022 = !DILocalVariable(name: "zip", scope: !1008, file: !3, line: 195, type: !268)
!1023 = !DILocation(line: 202, column: 10, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 202, column: 6)
!1025 = !DILocation(line: 202, column: 6, scope: !1008)
!1026 = !DILocation(line: 203, column: 25, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 202, column: 19)
!1028 = !DILocation(line: 203, column: 3, scope: !1027)
!1029 = !DILocation(line: 205, column: 3, scope: !1027)
!1030 = !DILocation(line: 207, column: 2, scope: !1008)
!1031 = !DILocation(line: 210, column: 6, scope: !1008)
!1032 = !DILocation(line: 209, column: 6, scope: !1008)
!1033 = !DILocalVariable(name: "r", scope: !1008, file: !3, line: 196, type: !6)
!1034 = !DILocation(line: 220, column: 8, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 220, column: 6)
!1036 = !DILocation(line: 220, column: 6, scope: !1008)
!1037 = !DILocation(line: 221, column: 8, scope: !1035)
!1038 = !DILocation(line: 221, column: 3, scope: !1035)
!1039 = !DILocation(line: 222, column: 2, scope: !1008)
!1040 = !DILocation(line: 223, column: 1, scope: !1008)
!1041 = distinct !DISubprogram(name: "archive_read_format_zip_seekable_bid", scope: !3, file: !3, line: 245, type: !237, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1042 = !DILocalVariable(name: "a", arg: 1, scope: !1041, file: !3, line: 245, type: !7)
!1043 = !DILocation(line: 0, scope: !1041)
!1044 = !DILocalVariable(name: "best_bid", arg: 2, scope: !1041, file: !3, line: 245, type: !6)
!1045 = !DILocation(line: 247, column: 37, scope: !1041)
!1046 = !DILocation(line: 247, column: 45, scope: !1041)
!1047 = !DILocation(line: 247, column: 20, scope: !1041)
!1048 = !DILocalVariable(name: "zip", scope: !1041, file: !3, line: 247, type: !268)
!1049 = !DILocation(line: 253, column: 15, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 253, column: 6)
!1051 = !DILocation(line: 253, column: 6, scope: !1041)
!1052 = !DILocation(line: 254, column: 3, scope: !1050)
!1053 = !DILocation(line: 256, column: 13, scope: !1041)
!1054 = !DILocalVariable(name: "filesize", scope: !1041, file: !3, line: 248, type: !54)
!1055 = !DILocation(line: 258, column: 15, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 258, column: 6)
!1057 = !DILocation(line: 258, column: 6, scope: !1041)
!1058 = !DILocation(line: 259, column: 3, scope: !1056)
!1059 = !DILocation(line: 262, column: 11, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 262, column: 6)
!1061 = !DILocalVariable(name: "p", scope: !1041, file: !3, line: 249, type: !83)
!1062 = !DILocation(line: 262, column: 46, scope: !1060)
!1063 = !DILocation(line: 262, column: 6, scope: !1041)
!1064 = !DILocation(line: 263, column: 3, scope: !1060)
!1065 = !DILocation(line: 267, column: 6, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 267, column: 6)
!1067 = !DILocation(line: 267, column: 49, scope: !1066)
!1068 = !DILocation(line: 267, column: 6, scope: !1041)
!1069 = !DILocation(line: 277, column: 16, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 277, column: 7)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 267, column: 55)
!1072 = !DILocation(line: 277, column: 21, scope: !1070)
!1073 = !DILocation(line: 277, column: 7, scope: !1071)
!1074 = !DILocalVariable(name: "tail", scope: !1071, file: !3, line: 268, type: !54)
!1075 = !DILocation(line: 0, scope: !1071)
!1076 = !DILocation(line: 279, column: 43, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 277, column: 34)
!1078 = !DILocation(line: 279, column: 15, scope: !1077)
!1079 = !DILocation(line: 280, column: 3, scope: !1077)
!1080 = !DILocation(line: 281, column: 20, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 280, column: 10)
!1082 = !DILocation(line: 282, column: 15, scope: !1081)
!1083 = !DILocation(line: 0, scope: !1070)
!1084 = !DILocation(line: 284, column: 16, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 284, column: 7)
!1086 = !DILocation(line: 284, column: 7, scope: !1071)
!1087 = !DILocation(line: 285, column: 4, scope: !1085)
!1088 = !DILocation(line: 286, column: 12, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 286, column: 7)
!1090 = !DILocation(line: 286, column: 57, scope: !1089)
!1091 = !DILocation(line: 286, column: 7, scope: !1071)
!1092 = !DILocation(line: 287, column: 4, scope: !1089)
!1093 = !DILocalVariable(name: "found", scope: !1071, file: !3, line: 269, type: !6)
!1094 = !DILocalVariable(name: "i", scope: !1071, file: !3, line: 268, type: !54)
!1095 = !DILocation(line: 288, column: 8, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 288, column: 3)
!1097 = !DILocation(line: 286, column: 10, scope: !1089)
!1098 = !DILocation(line: 279, column: 13, scope: !1077)
!1099 = !DILocation(line: 0, scope: !1096)
!1100 = !DILocation(line: 288, column: 14, scope: !1096)
!1101 = !DILocation(line: 288, column: 26, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 288, column: 3)
!1103 = !DILocation(line: 288, column: 32, scope: !1102)
!1104 = !DILocation(line: 288, column: 44, scope: !1102)
!1105 = !DILocation(line: 288, column: 37, scope: !1102)
!1106 = !DILocation(line: 0, scope: !1102)
!1107 = !DILocation(line: 288, column: 3, scope: !1096)
!1108 = !DILocation(line: 289, column: 12, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 288, column: 51)
!1110 = !DILocation(line: 289, column: 4, scope: !1109)
!1111 = !DILocation(line: 291, column: 17, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 291, column: 9)
!1113 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 289, column: 18)
!1114 = !DILocation(line: 291, column: 9, scope: !1112)
!1115 = !DILocation(line: 292, column: 42, scope: !1112)
!1116 = !DILocation(line: 291, column: 9, scope: !1113)
!1117 = !DILocation(line: 293, column: 8, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 292, column: 48)
!1119 = !DILocation(line: 295, column: 33, scope: !1118)
!1120 = !DILocation(line: 295, column: 16, scope: !1118)
!1121 = !DILocation(line: 295, column: 14, scope: !1118)
!1122 = !DILocation(line: 295, column: 10, scope: !1118)
!1123 = !DILocation(line: 294, column: 23, scope: !1118)
!1124 = !DILocation(line: 294, column: 15, scope: !1118)
!1125 = !DILocation(line: 297, column: 5, scope: !1118)
!1126 = !DILocation(line: 298, column: 8, scope: !1112)
!1127 = !DILocation(line: 299, column: 5, scope: !1113)
!1128 = !DILocation(line: 300, column: 16, scope: !1113)
!1129 = !DILocation(line: 300, column: 22, scope: !1113)
!1130 = !DILocation(line: 301, column: 16, scope: !1113)
!1131 = !DILocation(line: 301, column: 22, scope: !1113)
!1132 = !DILocation(line: 302, column: 16, scope: !1113)
!1133 = !DILocation(line: 302, column: 22, scope: !1113)
!1134 = !DILocation(line: 303, column: 15, scope: !1113)
!1135 = !DILocation(line: 303, column: 21, scope: !1113)
!1136 = !DILocation(line: 288, column: 3, scope: !1102)
!1137 = distinct !{!1137, !1107, !1138, !684}
!1138 = !DILocation(line: 305, column: 3, scope: !1096)
!1139 = !DILocation(line: 306, column: 8, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 306, column: 7)
!1141 = !DILocation(line: 306, column: 7, scope: !1071)
!1142 = !DILocation(line: 307, column: 4, scope: !1140)
!1143 = !DILocation(line: 308, column: 2, scope: !1071)
!1144 = !DILocation(line: 313, column: 53, scope: !1041)
!1145 = !DILocation(line: 313, column: 35, scope: !1041)
!1146 = !DILocation(line: 313, column: 7, scope: !1041)
!1147 = !DILocation(line: 313, column: 33, scope: !1041)
!1148 = !DILocation(line: 314, column: 50, scope: !1041)
!1149 = !DILocation(line: 314, column: 32, scope: !1041)
!1150 = !DILocation(line: 314, column: 7, scope: !1041)
!1151 = !DILocation(line: 314, column: 30, scope: !1041)
!1152 = !DILocation(line: 315, column: 52, scope: !1041)
!1153 = !DILocation(line: 315, column: 34, scope: !1041)
!1154 = !DILocation(line: 315, column: 7, scope: !1041)
!1155 = !DILocation(line: 315, column: 32, scope: !1041)
!1156 = !DILocation(line: 316, column: 7, scope: !1041)
!1157 = !DILocation(line: 316, column: 39, scope: !1041)
!1158 = !DILocation(line: 319, column: 11, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 319, column: 6)
!1160 = !DILocation(line: 319, column: 58, scope: !1159)
!1161 = !DILocation(line: 319, column: 40, scope: !1159)
!1162 = !DILocation(line: 319, column: 37, scope: !1159)
!1163 = !DILocation(line: 319, column: 6, scope: !1041)
!1164 = !DILocation(line: 320, column: 3, scope: !1159)
!1165 = !DILocation(line: 322, column: 11, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 322, column: 6)
!1167 = !DILocation(line: 323, column: 20, scope: !1166)
!1168 = !DILocation(line: 322, column: 36, scope: !1166)
!1169 = !DILocation(line: 323, column: 43, scope: !1166)
!1170 = !DILocation(line: 322, column: 6, scope: !1041)
!1171 = !DILocation(line: 324, column: 3, scope: !1166)
!1172 = !DILocation(line: 329, column: 2, scope: !1041)
!1173 = !DILocation(line: 330, column: 1, scope: !1041)
!1174 = distinct !DISubprogram(name: "archive_read_format_zip_seekable_read_header", scope: !3, file: !3, line: 689, type: !245, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1175 = !DILocalVariable(name: "a", arg: 1, scope: !1174, file: !3, line: 689, type: !7)
!1176 = !DILocation(line: 0, scope: !1174)
!1177 = !DILocalVariable(name: "entry", arg: 2, scope: !1174, file: !3, line: 690, type: !32)
!1178 = !DILocation(line: 692, column: 37, scope: !1174)
!1179 = !DILocation(line: 692, column: 45, scope: !1174)
!1180 = !DILocation(line: 692, column: 20, scope: !1174)
!1181 = !DILocalVariable(name: "zip", scope: !1174, file: !3, line: 692, type: !268)
!1182 = !DILocalVariable(name: "ret", scope: !1174, file: !3, line: 694, type: !6)
!1183 = !DILocation(line: 696, column: 5, scope: !1174)
!1184 = !DILocation(line: 696, column: 13, scope: !1174)
!1185 = !DILocation(line: 696, column: 28, scope: !1174)
!1186 = !DILocation(line: 697, column: 9, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 697, column: 6)
!1188 = !DILocation(line: 697, column: 17, scope: !1187)
!1189 = !DILocation(line: 697, column: 37, scope: !1187)
!1190 = !DILocation(line: 697, column: 6, scope: !1174)
!1191 = !DILocation(line: 698, column: 6, scope: !1187)
!1192 = !DILocation(line: 698, column: 14, scope: !1187)
!1193 = !DILocation(line: 698, column: 34, scope: !1187)
!1194 = !DILocation(line: 698, column: 3, scope: !1187)
!1195 = !DILocation(line: 700, column: 11, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 700, column: 6)
!1197 = !DILocation(line: 700, column: 23, scope: !1196)
!1198 = !DILocation(line: 700, column: 6, scope: !1174)
!1199 = !DILocation(line: 701, column: 7, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 700, column: 32)
!1201 = !DILocalVariable(name: "r", scope: !1174, file: !3, line: 694, type: !6)
!1202 = !DILocation(line: 702, column: 33, scope: !1200)
!1203 = !DILocation(line: 702, column: 8, scope: !1200)
!1204 = !DILocation(line: 702, column: 26, scope: !1200)
!1205 = !DILocation(line: 703, column: 9, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 703, column: 7)
!1207 = !DILocation(line: 703, column: 7, scope: !1200)
!1208 = !DILocation(line: 704, column: 4, scope: !1206)
!1209 = !DILocation(line: 708, column: 27, scope: !1200)
!1210 = !DILocation(line: 708, column: 7, scope: !1200)
!1211 = !DILocation(line: 707, column: 8, scope: !1200)
!1212 = !DILocation(line: 707, column: 14, scope: !1200)
!1213 = !DILocation(line: 709, column: 2, scope: !1200)
!1214 = !DILocation(line: 709, column: 18, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 709, column: 13)
!1216 = !DILocation(line: 709, column: 24, scope: !1215)
!1217 = !DILocation(line: 709, column: 13, scope: !1196)
!1218 = !DILocation(line: 712, column: 13, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 709, column: 33)
!1220 = !DILocation(line: 712, column: 25, scope: !1219)
!1221 = !DILocation(line: 712, column: 32, scope: !1219)
!1222 = !DILocation(line: 711, column: 36, scope: !1219)
!1223 = !DILocation(line: 711, column: 16, scope: !1219)
!1224 = !DILocation(line: 711, column: 8, scope: !1219)
!1225 = !DILocation(line: 711, column: 14, scope: !1219)
!1226 = !DILocation(line: 713, column: 2, scope: !1219)
!1227 = !DILocation(line: 715, column: 11, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 715, column: 6)
!1229 = !DILocation(line: 715, column: 29, scope: !1228)
!1230 = !DILocation(line: 715, column: 34, scope: !1228)
!1231 = !DILocation(line: 715, column: 42, scope: !1228)
!1232 = !DILocation(line: 715, column: 48, scope: !1228)
!1233 = !DILocation(line: 715, column: 6, scope: !1174)
!1234 = !DILocation(line: 716, column: 3, scope: !1228)
!1235 = !DILocation(line: 717, column: 9, scope: !1174)
!1236 = !DILocation(line: 717, column: 2, scope: !1174)
!1237 = !DILocation(line: 719, column: 11, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 719, column: 6)
!1239 = !DILocation(line: 719, column: 18, scope: !1238)
!1240 = !DILocation(line: 719, column: 27, scope: !1238)
!1241 = !DILocation(line: 719, column: 6, scope: !1238)
!1242 = !DILocation(line: 719, column: 6, scope: !1174)
!1243 = !DILocation(line: 721, column: 13, scope: !1238)
!1244 = !DILocation(line: 721, column: 29, scope: !1238)
!1245 = !DILocation(line: 721, column: 36, scope: !1238)
!1246 = !DILocation(line: 721, column: 45, scope: !1238)
!1247 = !DILocation(line: 720, column: 30, scope: !1238)
!1248 = !DILocation(line: 720, column: 10, scope: !1238)
!1249 = !DILocalVariable(name: "rsrc", scope: !1174, file: !3, line: 693, type: !279)
!1250 = !DILocation(line: 720, column: 3, scope: !1238)
!1251 = !DILocation(line: 0, scope: !1238)
!1252 = !DILocation(line: 728, column: 11, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 728, column: 6)
!1254 = !DILocation(line: 728, column: 25, scope: !1253)
!1255 = !DILocation(line: 728, column: 32, scope: !1253)
!1256 = !DILocation(line: 728, column: 18, scope: !1253)
!1257 = !DILocation(line: 728, column: 6, scope: !1174)
!1258 = !DILocation(line: 730, column: 12, scope: !1253)
!1259 = !DILocation(line: 730, column: 19, scope: !1253)
!1260 = !DILocation(line: 730, column: 46, scope: !1253)
!1261 = !DILocation(line: 730, column: 39, scope: !1253)
!1262 = !DILocation(line: 729, column: 3, scope: !1253)
!1263 = !DILocation(line: 731, column: 16, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 731, column: 11)
!1265 = !DILocation(line: 731, column: 31, scope: !1264)
!1266 = !DILocation(line: 731, column: 38, scope: !1264)
!1267 = !DILocation(line: 731, column: 23, scope: !1264)
!1268 = !DILocation(line: 731, column: 11, scope: !1253)
!1269 = !DILocation(line: 732, column: 31, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 731, column: 59)
!1271 = !DILocation(line: 732, column: 38, scope: !1270)
!1272 = !DILocation(line: 732, column: 3, scope: !1270)
!1273 = !DILocation(line: 734, column: 22, scope: !1270)
!1274 = !DILocation(line: 734, column: 29, scope: !1270)
!1275 = !DILocation(line: 734, column: 8, scope: !1270)
!1276 = !DILocation(line: 734, column: 15, scope: !1270)
!1277 = !DILocation(line: 735, column: 2, scope: !1270)
!1278 = !DILocation(line: 736, column: 7, scope: !1174)
!1279 = !DILocation(line: 736, column: 18, scope: !1174)
!1280 = !DILocation(line: 737, column: 6, scope: !1174)
!1281 = !DILocation(line: 738, column: 8, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 738, column: 6)
!1283 = !DILocation(line: 738, column: 6, scope: !1174)
!1284 = !DILocation(line: 739, column: 3, scope: !1282)
!1285 = !DILocation(line: 740, column: 12, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 740, column: 6)
!1287 = !DILocation(line: 740, column: 19, scope: !1286)
!1288 = !DILocation(line: 740, column: 7, scope: !1286)
!1289 = !DILocation(line: 740, column: 24, scope: !1286)
!1290 = !DILocation(line: 740, column: 35, scope: !1286)
!1291 = !DILocation(line: 740, column: 6, scope: !1174)
!1292 = !DILocation(line: 743, column: 36, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 740, column: 48)
!1294 = !DILocalVariable(name: "linkname_length", scope: !1293, file: !3, line: 743, type: !47)
!1295 = !DILocation(line: 0, scope: !1293)
!1296 = !DILocation(line: 745, column: 3, scope: !1293)
!1297 = !DILocation(line: 746, column: 7, scope: !1293)
!1298 = !DILocalVariable(name: "p", scope: !1293, file: !3, line: 741, type: !45)
!1299 = !DILocation(line: 747, column: 9, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 747, column: 7)
!1301 = !DILocation(line: 747, column: 7, scope: !1293)
!1302 = !DILocation(line: 748, column: 26, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 747, column: 18)
!1304 = !DILocation(line: 748, column: 4, scope: !1303)
!1305 = !DILocation(line: 750, column: 4, scope: !1303)
!1306 = !DILocation(line: 753, column: 16, scope: !1293)
!1307 = !DILocalVariable(name: "sconv", scope: !1293, file: !3, line: 742, type: !105)
!1308 = !DILocation(line: 754, column: 13, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 754, column: 7)
!1310 = !DILocation(line: 754, column: 21, scope: !1309)
!1311 = !DILocation(line: 754, column: 30, scope: !1309)
!1312 = !DILocation(line: 754, column: 37, scope: !1309)
!1313 = !DILocation(line: 754, column: 25, scope: !1309)
!1314 = !DILocation(line: 754, column: 43, scope: !1309)
!1315 = !DILocation(line: 754, column: 7, scope: !1293)
!1316 = !DILocation(line: 755, column: 17, scope: !1309)
!1317 = !DILocation(line: 755, column: 4, scope: !1309)
!1318 = !DILocation(line: 756, column: 13, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 756, column: 7)
!1320 = !DILocation(line: 756, column: 7, scope: !1293)
!1321 = !DILocation(line: 757, column: 17, scope: !1319)
!1322 = !DILocation(line: 757, column: 4, scope: !1319)
!1323 = !DILocation(line: 758, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 758, column: 7)
!1325 = !DILocation(line: 759, column: 14, scope: !1324)
!1326 = !DILocation(line: 758, column: 7, scope: !1293)
!1327 = !DILocation(line: 760, column: 8, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 760, column: 8)
!1329 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 759, column: 20)
!1330 = !DILocation(line: 760, column: 14, scope: !1328)
!1331 = !DILocation(line: 760, column: 24, scope: !1328)
!1332 = !DILocation(line: 760, column: 41, scope: !1328)
!1333 = !DILocation(line: 760, column: 33, scope: !1328)
!1334 = !DILocation(line: 760, column: 52, scope: !1328)
!1335 = !DILocation(line: 761, column: 14, scope: !1328)
!1336 = !DILocation(line: 761, column: 21, scope: !1328)
!1337 = !DILocation(line: 761, column: 9, scope: !1328)
!1338 = !DILocation(line: 761, column: 27, scope: !1328)
!1339 = !DILocation(line: 760, column: 8, scope: !1329)
!1340 = !DILocation(line: 762, column: 8, scope: !1328)
!1341 = !DILocation(line: 764, column: 8, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 764, column: 8)
!1343 = !DILocation(line: 764, column: 14, scope: !1342)
!1344 = !DILocation(line: 764, column: 8, scope: !1329)
!1345 = !DILocation(line: 765, column: 27, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 764, column: 25)
!1347 = !DILocation(line: 765, column: 5, scope: !1346)
!1348 = !DILocation(line: 767, column: 5, scope: !1346)
!1349 = !DILocation(line: 774, column: 22, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 774, column: 8)
!1351 = !DILocation(line: 774, column: 14, scope: !1350)
!1352 = !DILocation(line: 774, column: 33, scope: !1350)
!1353 = !DILocation(line: 775, column: 14, scope: !1350)
!1354 = !DILocation(line: 775, column: 21, scope: !1350)
!1355 = !DILocation(line: 775, column: 9, scope: !1350)
!1356 = !DILocation(line: 775, column: 27, scope: !1350)
!1357 = !DILocation(line: 775, column: 44, scope: !1350)
!1358 = !DILocation(line: 774, column: 8, scope: !1329)
!1359 = !DILocation(line: 776, column: 27, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 775, column: 50)
!1361 = !DILocation(line: 780, column: 9, scope: !1360)
!1362 = !DILocation(line: 776, column: 5, scope: !1360)
!1363 = !DILocation(line: 783, column: 4, scope: !1360)
!1364 = !DILocation(line: 784, column: 3, scope: !1329)
!1365 = !DILocation(line: 785, column: 2, scope: !1293)
!1366 = !DILocation(line: 786, column: 6, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 786, column: 6)
!1368 = !DILocation(line: 786, column: 6, scope: !1174)
!1369 = !DILocation(line: 787, column: 14, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 786, column: 12)
!1371 = !DILocalVariable(name: "ret2", scope: !1370, file: !3, line: 787, type: !6)
!1372 = !DILocation(line: 0, scope: !1370)
!1373 = !DILocation(line: 788, column: 12, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 788, column: 7)
!1375 = !DILocation(line: 788, column: 7, scope: !1370)
!1376 = !DILocation(line: 789, column: 4, scope: !1374)
!1377 = !DILocation(line: 790, column: 2, scope: !1370)
!1378 = !DILocation(line: 791, column: 2, scope: !1174)
!1379 = !DILocation(line: 792, column: 1, scope: !1174)
!1380 = distinct !DISubprogram(name: "archive_read_support_format_zip", scope: !3, file: !3, line: 226, type: !24, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1381 = !DILocalVariable(name: "a", arg: 1, scope: !1380, file: !3, line: 226, type: !26)
!1382 = !DILocation(line: 0, scope: !1380)
!1383 = !DILocation(line: 229, column: 6, scope: !1380)
!1384 = !DILocalVariable(name: "r", scope: !1380, file: !3, line: 228, type: !6)
!1385 = !DILocation(line: 230, column: 8, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 230, column: 6)
!1387 = !DILocation(line: 230, column: 6, scope: !1380)
!1388 = !DILocation(line: 231, column: 3, scope: !1386)
!1389 = !DILocation(line: 232, column: 10, scope: !1380)
!1390 = !DILocation(line: 232, column: 2, scope: !1380)
!1391 = !DILocation(line: 233, column: 1, scope: !1380)
!1392 = distinct !DISubprogram(name: "archive_le16dec", scope: !1393, file: !1393, line: 81, type: !1394, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1393 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_endian.h", directory: "", checksumkind: CSK_MD5, checksum: "9e155272eb2b08a7cc6199da2b500265")
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!312, !45}
!1396 = !DILocalVariable(name: "pp", arg: 1, scope: !1392, file: !1393, line: 81, type: !45)
!1397 = !DILocation(line: 0, scope: !1392)
!1398 = !DILocalVariable(name: "p", scope: !1392, file: !1393, line: 83, type: !405)
!1399 = !DILocation(line: 85, column: 11, scope: !1392)
!1400 = !DILocation(line: 85, column: 16, scope: !1392)
!1401 = !DILocation(line: 85, column: 24, scope: !1392)
!1402 = !DILocation(line: 85, column: 22, scope: !1392)
!1403 = !DILocation(line: 85, column: 9, scope: !1392)
!1404 = !DILocation(line: 85, column: 2, scope: !1392)
!1405 = distinct !DISubprogram(name: "archive_le32dec", scope: !1393, file: !1393, line: 89, type: !1406, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!308, !45}
!1408 = !DILocalVariable(name: "pp", arg: 1, scope: !1405, file: !1393, line: 89, type: !45)
!1409 = !DILocation(line: 0, scope: !1405)
!1410 = !DILocalVariable(name: "p", scope: !1405, file: !1393, line: 91, type: !405)
!1411 = !DILocation(line: 93, column: 11, scope: !1405)
!1412 = !DILocation(line: 93, column: 16, scope: !1405)
!1413 = !DILocation(line: 93, column: 26, scope: !1405)
!1414 = !DILocation(line: 93, column: 31, scope: !1405)
!1415 = !DILocation(line: 93, column: 23, scope: !1405)
!1416 = !DILocation(line: 93, column: 41, scope: !1405)
!1417 = !DILocation(line: 93, column: 46, scope: !1405)
!1418 = !DILocation(line: 93, column: 38, scope: !1405)
!1419 = !DILocation(line: 93, column: 54, scope: !1405)
!1420 = !DILocation(line: 93, column: 52, scope: !1405)
!1421 = !DILocation(line: 93, column: 2, scope: !1405)
!1422 = !DILocalVariable(name: "a", arg: 1, scope: !2, file: !3, line: 410, type: !7)
!1423 = !DILocation(line: 0, scope: !2)
!1424 = !DILocalVariable(name: "zip", arg: 2, scope: !2, file: !3, line: 410, type: !268)
!1425 = !DILocation(line: 426, column: 20, scope: !2)
!1426 = !DILocation(line: 427, column: 12, scope: !2)
!1427 = !DILocation(line: 427, column: 44, scope: !2)
!1428 = !DILocation(line: 427, column: 37, scope: !2)
!1429 = !DILocation(line: 426, column: 52, scope: !2)
!1430 = !DILocalVariable(name: "correction", scope: !2, file: !3, line: 413, type: !54)
!1431 = !DILocation(line: 430, column: 7, scope: !2)
!1432 = !DILocation(line: 430, column: 32, scope: !2)
!1433 = !DILocation(line: 432, column: 30, scope: !2)
!1434 = !DILocation(line: 432, column: 2, scope: !2)
!1435 = !DILocation(line: 433, column: 21, scope: !2)
!1436 = !DILocation(line: 433, column: 7, scope: !2)
!1437 = !DILocation(line: 433, column: 14, scope: !2)
!1438 = !DILocation(line: 434, column: 31, scope: !2)
!1439 = !DILocation(line: 434, column: 2, scope: !2)
!1440 = !DILocation(line: 435, column: 31, scope: !2)
!1441 = !DILocation(line: 435, column: 2, scope: !2)
!1442 = !DILocation(line: 437, column: 33, scope: !2)
!1443 = !DILocation(line: 437, column: 21, scope: !2)
!1444 = !DILocation(line: 437, column: 7, scope: !2)
!1445 = !DILocation(line: 437, column: 19, scope: !2)
!1446 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 412, type: !16)
!1447 = !DILocation(line: 439, column: 7, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !2, file: !3, line: 439, column: 2)
!1449 = !DILocation(line: 0, scope: !1448)
!1450 = !DILocation(line: 439, column: 14, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 439, column: 2)
!1452 = !DILocation(line: 439, column: 23, scope: !1451)
!1453 = !DILocation(line: 439, column: 16, scope: !1451)
!1454 = !DILocation(line: 439, column: 2, scope: !1448)
!1455 = !DILocation(line: 440, column: 39, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 439, column: 55)
!1457 = !DILocation(line: 440, column: 34, scope: !1456)
!1458 = !DILocalVariable(name: "zip_entry", scope: !1456, file: !3, line: 440, type: !279)
!1459 = !DILocation(line: 0, scope: !1456)
!1460 = !DILocation(line: 445, column: 12, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 445, column: 7)
!1462 = !DILocalVariable(name: "p", scope: !1456, file: !3, line: 443, type: !83)
!1463 = !DILocation(line: 445, column: 47, scope: !1461)
!1464 = !DILocation(line: 445, column: 7, scope: !1456)
!1465 = !DILocation(line: 446, column: 4, scope: !1461)
!1466 = !DILocation(line: 447, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 447, column: 7)
!1468 = !DILocation(line: 447, column: 34, scope: !1467)
!1469 = !DILocation(line: 447, column: 7, scope: !1456)
!1470 = !DILocation(line: 448, column: 26, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 447, column: 40)
!1472 = !DILocation(line: 448, column: 4, scope: !1471)
!1473 = !DILocation(line: 450, column: 4, scope: !1471)
!1474 = !DILocation(line: 452, column: 8, scope: !1456)
!1475 = !DILocation(line: 452, column: 31, scope: !1456)
!1476 = !DILocation(line: 454, column: 23, scope: !1456)
!1477 = !DILocation(line: 454, column: 14, scope: !1456)
!1478 = !DILocation(line: 454, column: 21, scope: !1456)
!1479 = !DILocation(line: 456, column: 40, scope: !1456)
!1480 = !DILocation(line: 456, column: 22, scope: !1456)
!1481 = !DILocation(line: 456, column: 14, scope: !1456)
!1482 = !DILocation(line: 456, column: 20, scope: !1456)
!1483 = !DILocation(line: 457, column: 52, scope: !1456)
!1484 = !DILocation(line: 457, column: 34, scope: !1456)
!1485 = !DILocation(line: 457, column: 28, scope: !1456)
!1486 = !DILocation(line: 457, column: 14, scope: !1456)
!1487 = !DILocation(line: 457, column: 26, scope: !1456)
!1488 = !DILocation(line: 458, column: 33, scope: !1456)
!1489 = !DILocation(line: 458, column: 22, scope: !1456)
!1490 = !DILocation(line: 458, column: 14, scope: !1456)
!1491 = !DILocation(line: 458, column: 20, scope: !1456)
!1492 = !DILocation(line: 459, column: 40, scope: !1456)
!1493 = !DILocation(line: 459, column: 22, scope: !1456)
!1494 = !DILocation(line: 459, column: 14, scope: !1456)
!1495 = !DILocation(line: 459, column: 20, scope: !1456)
!1496 = !DILocation(line: 460, column: 50, scope: !1456)
!1497 = !DILocation(line: 460, column: 32, scope: !1456)
!1498 = !DILocation(line: 460, column: 14, scope: !1456)
!1499 = !DILocation(line: 460, column: 30, scope: !1456)
!1500 = !DILocation(line: 461, column: 52, scope: !1456)
!1501 = !DILocation(line: 461, column: 34, scope: !1456)
!1502 = !DILocation(line: 461, column: 14, scope: !1456)
!1503 = !DILocation(line: 461, column: 32, scope: !1456)
!1504 = !DILocation(line: 462, column: 39, scope: !1456)
!1505 = !DILocation(line: 462, column: 21, scope: !1456)
!1506 = !DILocalVariable(name: "filename_length", scope: !1456, file: !3, line: 441, type: !47)
!1507 = !DILocation(line: 463, column: 36, scope: !1456)
!1508 = !DILocation(line: 463, column: 18, scope: !1456)
!1509 = !DILocalVariable(name: "extra_length", scope: !1456, file: !3, line: 441, type: !47)
!1510 = !DILocation(line: 464, column: 38, scope: !1456)
!1511 = !DILocation(line: 464, column: 20, scope: !1456)
!1512 = !DILocalVariable(name: "comment_length", scope: !1456, file: !3, line: 441, type: !47)
!1513 = !DILocation(line: 467, column: 43, scope: !1456)
!1514 = !DILocation(line: 467, column: 25, scope: !1456)
!1515 = !DILocalVariable(name: "external_attributes", scope: !1456, file: !3, line: 442, type: !308)
!1516 = !DILocation(line: 469, column: 25, scope: !1456)
!1517 = !DILocation(line: 469, column: 7, scope: !1456)
!1518 = !DILocation(line: 469, column: 31, scope: !1456)
!1519 = !DILocation(line: 468, column: 14, scope: !1456)
!1520 = !DILocation(line: 468, column: 34, scope: !1456)
!1521 = !DILocation(line: 474, column: 14, scope: !1456)
!1522 = !DILocation(line: 474, column: 19, scope: !1456)
!1523 = !DILocation(line: 475, column: 18, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 475, column: 7)
!1525 = !DILocation(line: 475, column: 7, scope: !1524)
!1526 = !DILocation(line: 475, column: 25, scope: !1524)
!1527 = !DILocation(line: 475, column: 7, scope: !1456)
!1528 = !DILocation(line: 476, column: 42, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 475, column: 31)
!1530 = !DILocation(line: 476, column: 22, scope: !1529)
!1531 = !DILocation(line: 476, column: 15, scope: !1529)
!1532 = !DILocation(line: 476, column: 20, scope: !1529)
!1533 = !DILocation(line: 477, column: 3, scope: !1529)
!1534 = !DILocation(line: 485, column: 39, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 485, column: 7)
!1536 = !DILocation(line: 485, column: 12, scope: !1535)
!1537 = !DILocation(line: 486, column: 7, scope: !1535)
!1538 = !DILocation(line: 485, column: 7, scope: !1456)
!1539 = !DILocation(line: 487, column: 4, scope: !1535)
!1540 = !DILocation(line: 488, column: 12, scope: !1456)
!1541 = !DILocalVariable(name: "name", scope: !1456, file: !3, line: 443, type: !83)
!1542 = !DILocation(line: 489, column: 7, scope: !1456)
!1543 = !DILocalVariable(name: "r", scope: !1456, file: !3, line: 443, type: !83)
!1544 = !DILocation(line: 490, column: 23, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 490, column: 7)
!1546 = !DILocation(line: 490, column: 28, scope: !1545)
!1547 = !DILocation(line: 491, column: 7, scope: !1545)
!1548 = !DILocation(line: 491, column: 37, scope: !1545)
!1549 = !DILocation(line: 490, column: 7, scope: !1456)
!1550 = !DILocation(line: 495, column: 28, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 495, column: 8)
!1552 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 491, column: 43)
!1553 = !DILocation(line: 495, column: 8, scope: !1551)
!1554 = !DILocation(line: 495, column: 32, scope: !1551)
!1555 = !DILocation(line: 495, column: 39, scope: !1551)
!1556 = !DILocation(line: 496, column: 11, scope: !1551)
!1557 = !DILocation(line: 496, column: 18, scope: !1551)
!1558 = !DILocation(line: 496, column: 22, scope: !1551)
!1559 = !DILocation(line: 496, column: 25, scope: !1551)
!1560 = !DILocation(line: 496, column: 30, scope: !1551)
!1561 = !DILocation(line: 496, column: 37, scope: !1551)
!1562 = !DILocation(line: 496, column: 40, scope: !1551)
!1563 = !DILocation(line: 496, column: 45, scope: !1551)
!1564 = !DILocation(line: 495, column: 8, scope: !1552)
!1565 = !DILocation(line: 497, column: 41, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 496, column: 54)
!1567 = !DILocation(line: 498, column: 21, scope: !1566)
!1568 = !DILocation(line: 497, column: 5, scope: !1566)
!1569 = !DILocation(line: 500, column: 5, scope: !1566)
!1570 = !DILocation(line: 501, column: 4, scope: !1566)
!1571 = !DILocation(line: 504, column: 5, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 501, column: 11)
!1573 = !DILocation(line: 506, column: 41, scope: !1572)
!1574 = !DILocation(line: 507, column: 21, scope: !1572)
!1575 = !DILocation(line: 506, column: 5, scope: !1572)
!1576 = !DILocation(line: 509, column: 3, scope: !1552)
!1577 = !DILocation(line: 512, column: 4, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 509, column: 10)
!1579 = !DILocation(line: 513, column: 33, scope: !1578)
!1580 = !DILocation(line: 513, column: 52, scope: !1578)
!1581 = !DILocation(line: 513, column: 4, scope: !1578)
!1582 = !DILocation(line: 514, column: 32, scope: !1578)
!1583 = !DILocation(line: 514, column: 4, scope: !1578)
!1584 = !DILocation(line: 515, column: 33, scope: !1578)
!1585 = !DILocation(line: 516, column: 18, scope: !1578)
!1586 = !DILocation(line: 516, column: 13, scope: !1578)
!1587 = !DILocation(line: 516, column: 48, scope: !1578)
!1588 = !DILocation(line: 516, column: 43, scope: !1578)
!1589 = !DILocation(line: 515, column: 4, scope: !1578)
!1590 = !DILocation(line: 519, column: 40, scope: !1578)
!1591 = !DILocation(line: 520, column: 20, scope: !1578)
!1592 = !DILocation(line: 519, column: 4, scope: !1578)
!1593 = !DILocation(line: 532, column: 10, scope: !1456)
!1594 = !DILocation(line: 532, column: 28, scope: !1456)
!1595 = !DILocation(line: 532, column: 43, scope: !1456)
!1596 = !DILocation(line: 531, column: 3, scope: !1456)
!1597 = !DILocation(line: 533, column: 2, scope: !1456)
!1598 = !DILocation(line: 439, column: 50, scope: !1451)
!1599 = !DILocation(line: 439, column: 2, scope: !1451)
!1600 = distinct !{!1600, !1454, !1601, !684}
!1601 = !DILocation(line: 533, column: 2, scope: !1448)
!1602 = !DILocation(line: 535, column: 2, scope: !2)
!1603 = !DILocation(line: 536, column: 1, scope: !2)
!1604 = distinct !DISubprogram(name: "zip_read_consume", scope: !3, file: !3, line: 539, type: !1605, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!54, !7, !54}
!1607 = !DILocalVariable(name: "a", arg: 1, scope: !1604, file: !3, line: 539, type: !7)
!1608 = !DILocation(line: 0, scope: !1604)
!1609 = !DILocalVariable(name: "bytes", arg: 2, scope: !1604, file: !3, line: 539, type: !54)
!1610 = !DILocation(line: 541, column: 37, scope: !1604)
!1611 = !DILocation(line: 541, column: 45, scope: !1604)
!1612 = !DILocation(line: 541, column: 20, scope: !1604)
!1613 = !DILocalVariable(name: "zip", scope: !1604, file: !3, line: 541, type: !268)
!1614 = !DILocation(line: 544, column: 9, scope: !1604)
!1615 = !DILocalVariable(name: "skip", scope: !1604, file: !3, line: 542, type: !54)
!1616 = !DILocation(line: 545, column: 11, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 545, column: 6)
!1618 = !DILocation(line: 545, column: 6, scope: !1604)
!1619 = !DILocation(line: 546, column: 8, scope: !1617)
!1620 = !DILocation(line: 546, column: 15, scope: !1617)
!1621 = !DILocation(line: 546, column: 3, scope: !1617)
!1622 = !DILocation(line: 547, column: 2, scope: !1604)
!1623 = distinct !DISubprogram(name: "zip_read_local_file_header", scope: !3, file: !3, line: 950, type: !1624, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!6, !7, !32, !268}
!1626 = !DILocalVariable(name: "a", arg: 1, scope: !1623, file: !3, line: 950, type: !7)
!1627 = !DILocation(line: 0, scope: !1623)
!1628 = !DILocalVariable(name: "entry", arg: 2, scope: !1623, file: !3, line: 950, type: !32)
!1629 = !DILocalVariable(name: "zip", arg: 3, scope: !1623, file: !3, line: 951, type: !268)
!1630 = !DILocation(line: 959, column: 37, scope: !1623)
!1631 = !DILocalVariable(name: "zip_entry", scope: !1623, file: !3, line: 959, type: !279)
!1632 = !DILocalVariable(name: "ret", scope: !1623, file: !3, line: 962, type: !6)
!1633 = !DILocation(line: 965, column: 7, scope: !1623)
!1634 = !DILocation(line: 965, column: 23, scope: !1623)
!1635 = !DILocation(line: 966, column: 7, scope: !1623)
!1636 = !DILocation(line: 966, column: 20, scope: !1623)
!1637 = !DILocation(line: 967, column: 7, scope: !1623)
!1638 = !DILocation(line: 967, column: 37, scope: !1623)
!1639 = !DILocation(line: 968, column: 7, scope: !1623)
!1640 = !DILocation(line: 968, column: 35, scope: !1623)
!1641 = !DILocation(line: 969, column: 21, scope: !1623)
!1642 = !DILocation(line: 969, column: 7, scope: !1623)
!1643 = !DILocation(line: 969, column: 19, scope: !1623)
!1644 = !DILocation(line: 972, column: 11, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 972, column: 6)
!1646 = !DILocation(line: 972, column: 17, scope: !1645)
!1647 = !DILocation(line: 972, column: 25, scope: !1645)
!1648 = !DILocation(line: 972, column: 34, scope: !1645)
!1649 = !DILocation(line: 972, column: 29, scope: !1645)
!1650 = !DILocation(line: 972, column: 6, scope: !1623)
!1651 = !DILocation(line: 974, column: 55, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 972, column: 59)
!1653 = !DILocation(line: 974, column: 7, scope: !1652)
!1654 = !DILocation(line: 973, column: 8, scope: !1652)
!1655 = !DILocation(line: 973, column: 22, scope: !1652)
!1656 = !DILocation(line: 975, column: 8, scope: !1652)
!1657 = !DILocation(line: 975, column: 32, scope: !1652)
!1658 = !DILocation(line: 976, column: 2, scope: !1652)
!1659 = !DILocation(line: 978, column: 11, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 978, column: 6)
!1661 = !DILocalVariable(name: "p", scope: !1623, file: !3, line: 953, type: !83)
!1662 = !DILocation(line: 978, column: 46, scope: !1660)
!1663 = !DILocation(line: 978, column: 6, scope: !1623)
!1664 = !DILocation(line: 979, column: 25, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 978, column: 55)
!1666 = !DILocation(line: 979, column: 3, scope: !1665)
!1667 = !DILocation(line: 981, column: 3, scope: !1665)
!1668 = !DILocation(line: 984, column: 6, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 984, column: 6)
!1670 = !DILocation(line: 984, column: 33, scope: !1669)
!1671 = !DILocation(line: 984, column: 6, scope: !1623)
!1672 = !DILocation(line: 985, column: 25, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 984, column: 39)
!1674 = !DILocation(line: 985, column: 3, scope: !1673)
!1675 = !DILocation(line: 986, column: 3, scope: !1673)
!1676 = !DILocation(line: 988, column: 12, scope: !1623)
!1677 = !DILocalVariable(name: "version", scope: !1623, file: !3, line: 963, type: !85)
!1678 = !DILocation(line: 989, column: 22, scope: !1623)
!1679 = !DILocation(line: 989, column: 13, scope: !1623)
!1680 = !DILocation(line: 989, column: 20, scope: !1623)
!1681 = !DILocation(line: 990, column: 39, scope: !1623)
!1682 = !DILocation(line: 990, column: 21, scope: !1623)
!1683 = !DILocation(line: 990, column: 13, scope: !1623)
!1684 = !DILocation(line: 990, column: 19, scope: !1623)
!1685 = !DILocation(line: 991, column: 51, scope: !1623)
!1686 = !DILocation(line: 991, column: 33, scope: !1623)
!1687 = !DILocation(line: 991, column: 27, scope: !1623)
!1688 = !DILocation(line: 991, column: 13, scope: !1623)
!1689 = !DILocation(line: 991, column: 25, scope: !1623)
!1690 = !DILocation(line: 992, column: 32, scope: !1623)
!1691 = !DILocation(line: 992, column: 21, scope: !1623)
!1692 = !DILocation(line: 992, column: 13, scope: !1623)
!1693 = !DILocation(line: 992, column: 19, scope: !1623)
!1694 = !DILocation(line: 993, column: 34, scope: !1623)
!1695 = !DILocation(line: 993, column: 16, scope: !1623)
!1696 = !DILocalVariable(name: "local_crc32", scope: !1623, file: !3, line: 960, type: !308)
!1697 = !DILocation(line: 994, column: 38, scope: !1623)
!1698 = !DILocation(line: 994, column: 20, scope: !1623)
!1699 = !DILocalVariable(name: "compressed_size", scope: !1623, file: !3, line: 961, type: !54)
!1700 = !DILocation(line: 995, column: 40, scope: !1623)
!1701 = !DILocation(line: 995, column: 22, scope: !1623)
!1702 = !DILocalVariable(name: "uncompressed_size", scope: !1623, file: !3, line: 961, type: !54)
!1703 = !DILocation(line: 996, column: 38, scope: !1623)
!1704 = !DILocation(line: 996, column: 20, scope: !1623)
!1705 = !DILocalVariable(name: "filename_length", scope: !1623, file: !3, line: 957, type: !47)
!1706 = !DILocation(line: 997, column: 35, scope: !1623)
!1707 = !DILocation(line: 997, column: 17, scope: !1623)
!1708 = !DILocalVariable(name: "extra_length", scope: !1623, file: !3, line: 957, type: !47)
!1709 = !DILocation(line: 999, column: 2, scope: !1623)
!1710 = !DILocation(line: 1001, column: 11, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 1001, column: 6)
!1712 = !DILocation(line: 1001, column: 6, scope: !1711)
!1713 = !DILocation(line: 1001, column: 6, scope: !1623)
!1714 = !DILocation(line: 1004, column: 14, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 1001, column: 35)
!1716 = !DILocation(line: 1004, column: 20, scope: !1715)
!1717 = !DILocation(line: 1010, column: 19, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 1010, column: 7)
!1719 = !DILocation(line: 1010, column: 24, scope: !1718)
!1720 = !DILocation(line: 1010, column: 53, scope: !1718)
!1721 = !DILocation(line: 1010, column: 39, scope: !1718)
!1722 = !DILocation(line: 1010, column: 7, scope: !1715)
!1723 = !DILocation(line: 1011, column: 26, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 1010, column: 60)
!1725 = !DILocation(line: 1011, column: 4, scope: !1724)
!1726 = !DILocation(line: 1015, column: 3, scope: !1724)
!1727 = !DILocation(line: 1016, column: 23, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 1016, column: 7)
!1729 = !DILocation(line: 1017, column: 7, scope: !1728)
!1730 = !DILocation(line: 1017, column: 40, scope: !1728)
!1731 = !DILocation(line: 1017, column: 26, scope: !1728)
!1732 = !DILocation(line: 1016, column: 7, scope: !1715)
!1733 = !DILocation(line: 1018, column: 26, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 1017, column: 57)
!1735 = !DILocation(line: 1018, column: 4, scope: !1734)
!1736 = !DILocation(line: 1022, column: 3, scope: !1734)
!1737 = !DILocation(line: 0, scope: !1715)
!1738 = !DILocation(line: 1023, column: 25, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 1023, column: 7)
!1740 = !DILocation(line: 1024, column: 7, scope: !1739)
!1741 = !DILocation(line: 1024, column: 42, scope: !1739)
!1742 = !DILocation(line: 1024, column: 28, scope: !1739)
!1743 = !DILocation(line: 1023, column: 7, scope: !1715)
!1744 = !DILocation(line: 1025, column: 26, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 1024, column: 61)
!1746 = !DILocation(line: 1025, column: 4, scope: !1745)
!1747 = !DILocation(line: 1029, column: 3, scope: !1745)
!1748 = !DILocation(line: 1030, column: 2, scope: !1715)
!1749 = !DILocation(line: 1032, column: 14, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 1030, column: 9)
!1751 = !DILocation(line: 1032, column: 20, scope: !1750)
!1752 = !DILocation(line: 1033, column: 14, scope: !1750)
!1753 = !DILocation(line: 1033, column: 30, scope: !1750)
!1754 = !DILocation(line: 1034, column: 14, scope: !1750)
!1755 = !DILocation(line: 1034, column: 32, scope: !1750)
!1756 = !DILocation(line: 1038, column: 11, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 1038, column: 6)
!1758 = !DILocalVariable(name: "h", scope: !1623, file: !3, line: 954, type: !45)
!1759 = !DILocation(line: 1038, column: 59, scope: !1757)
!1760 = !DILocation(line: 1038, column: 6, scope: !1623)
!1761 = !DILocation(line: 1039, column: 25, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 1038, column: 68)
!1763 = !DILocation(line: 1039, column: 3, scope: !1762)
!1764 = !DILocation(line: 1041, column: 3, scope: !1762)
!1765 = !DILocation(line: 1043, column: 17, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 1043, column: 6)
!1767 = !DILocation(line: 1043, column: 6, scope: !1766)
!1768 = !DILocation(line: 1043, column: 23, scope: !1766)
!1769 = !DILocation(line: 1043, column: 6, scope: !1623)
!1770 = !DILocation(line: 1045, column: 12, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1045, column: 7)
!1772 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 1043, column: 40)
!1773 = !DILocation(line: 1045, column: 23, scope: !1771)
!1774 = !DILocation(line: 1045, column: 7, scope: !1772)
!1775 = !DILocation(line: 1048, column: 9, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 1045, column: 32)
!1777 = !DILocation(line: 1047, column: 8, scope: !1776)
!1778 = !DILocation(line: 1046, column: 9, scope: !1776)
!1779 = !DILocation(line: 1046, column: 20, scope: !1776)
!1780 = !DILocation(line: 1049, column: 13, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 1049, column: 8)
!1782 = !DILocation(line: 1049, column: 24, scope: !1781)
!1783 = !DILocation(line: 1049, column: 8, scope: !1776)
!1784 = !DILocation(line: 1050, column: 5, scope: !1781)
!1785 = !DILocation(line: 1051, column: 3, scope: !1776)
!1786 = !DILocation(line: 1052, column: 16, scope: !1772)
!1787 = !DILocalVariable(name: "sconv", scope: !1623, file: !3, line: 958, type: !105)
!1788 = !DILocation(line: 1053, column: 2, scope: !1772)
!1789 = !DILocation(line: 1053, column: 18, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 1053, column: 13)
!1791 = !DILocation(line: 1053, column: 24, scope: !1790)
!1792 = !DILocation(line: 1053, column: 13, scope: !1766)
!1793 = !DILocation(line: 1054, column: 16, scope: !1790)
!1794 = !DILocation(line: 1054, column: 3, scope: !1790)
!1795 = !DILocation(line: 1056, column: 16, scope: !1790)
!1796 = !DILocation(line: 0, scope: !1790)
!1797 = !DILocation(line: 0, scope: !1766)
!1798 = !DILocation(line: 1058, column: 6, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 1058, column: 6)
!1800 = !DILocation(line: 1059, column: 33, scope: !1799)
!1801 = !DILocation(line: 1058, column: 6, scope: !1623)
!1802 = !DILocation(line: 1060, column: 7, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 1060, column: 7)
!1804 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 1059, column: 39)
!1805 = !DILocation(line: 1060, column: 13, scope: !1803)
!1806 = !DILocation(line: 1060, column: 7, scope: !1804)
!1807 = !DILocation(line: 1061, column: 26, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 1060, column: 24)
!1809 = !DILocation(line: 1061, column: 4, scope: !1808)
!1810 = !DILocation(line: 1063, column: 4, scope: !1808)
!1811 = !DILocation(line: 1065, column: 25, scope: !1804)
!1812 = !DILocation(line: 1069, column: 7, scope: !1804)
!1813 = !DILocation(line: 1065, column: 3, scope: !1804)
!1814 = !DILocation(line: 1071, column: 2, scope: !1804)
!1815 = !DILocation(line: 1072, column: 2, scope: !1623)
!1816 = !DILocation(line: 1074, column: 17, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 1074, column: 6)
!1818 = !DILocation(line: 1074, column: 6, scope: !1817)
!1819 = !DILocation(line: 1074, column: 22, scope: !1817)
!1820 = !DILocation(line: 1074, column: 6, scope: !1623)
!1821 = !DILocation(line: 1078, column: 8, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 1074, column: 28)
!1823 = !DILocalVariable(name: "wp", scope: !1623, file: !3, line: 955, type: !1824)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1826)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !48, line: 74, baseType: !6)
!1827 = !DILocation(line: 1079, column: 10, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 1079, column: 7)
!1829 = !DILocation(line: 1079, column: 7, scope: !1822)
!1830 = !DILocation(line: 1080, column: 10, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 1079, column: 19)
!1832 = !DILocalVariable(name: "len", scope: !1623, file: !3, line: 957, type: !47)
!1833 = !DILocation(line: 1081, column: 12, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 1081, column: 8)
!1835 = !DILocation(line: 1081, column: 16, scope: !1834)
!1836 = !DILocation(line: 1081, column: 26, scope: !1834)
!1837 = !DILocation(line: 1081, column: 19, scope: !1834)
!1838 = !DILocation(line: 1081, column: 31, scope: !1834)
!1839 = !DILocation(line: 1081, column: 8, scope: !1831)
!1840 = !DILocation(line: 1082, column: 16, scope: !1834)
!1841 = !DILocation(line: 1082, column: 21, scope: !1834)
!1842 = !DILocation(line: 1082, column: 5, scope: !1834)
!1843 = !DILocation(line: 1084, column: 16, scope: !1834)
!1844 = !DILocation(line: 1084, column: 21, scope: !1834)
!1845 = !DILocation(line: 1085, column: 3, scope: !1831)
!1846 = !DILocation(line: 1086, column: 9, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 1085, column: 10)
!1848 = !DILocalVariable(name: "cp", scope: !1623, file: !3, line: 956, type: !83)
!1849 = !DILocation(line: 1087, column: 14, scope: !1847)
!1850 = !DILocation(line: 1087, column: 10, scope: !1847)
!1851 = !DILocation(line: 1087, column: 23, scope: !1847)
!1852 = !DILocation(line: 1088, column: 12, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 1088, column: 8)
!1854 = !DILocation(line: 1088, column: 16, scope: !1853)
!1855 = !DILocation(line: 1088, column: 26, scope: !1853)
!1856 = !DILocation(line: 1088, column: 19, scope: !1853)
!1857 = !DILocation(line: 1088, column: 31, scope: !1853)
!1858 = !DILocation(line: 1088, column: 8, scope: !1847)
!1859 = !DILocation(line: 1089, column: 16, scope: !1853)
!1860 = !DILocation(line: 1089, column: 21, scope: !1853)
!1861 = !DILocation(line: 1089, column: 5, scope: !1853)
!1862 = !DILocation(line: 1091, column: 16, scope: !1853)
!1863 = !DILocation(line: 1091, column: 21, scope: !1853)
!1864 = !DILocation(line: 1093, column: 2, scope: !1822)
!1865 = !DILocation(line: 1096, column: 11, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 1096, column: 6)
!1867 = !DILocation(line: 1096, column: 56, scope: !1866)
!1868 = !DILocation(line: 1096, column: 6, scope: !1623)
!1869 = !DILocation(line: 1097, column: 25, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 1096, column: 65)
!1871 = !DILocation(line: 1097, column: 3, scope: !1870)
!1872 = !DILocation(line: 1099, column: 3, scope: !1870)
!1873 = !DILocation(line: 1101, column: 2, scope: !1623)
!1874 = !DILocation(line: 1102, column: 2, scope: !1623)
!1875 = !DILocation(line: 1105, column: 43, scope: !1623)
!1876 = !DILocation(line: 1105, column: 32, scope: !1623)
!1877 = !DILocation(line: 1105, column: 2, scope: !1623)
!1878 = !DILocation(line: 1106, column: 42, scope: !1623)
!1879 = !DILocation(line: 1106, column: 2, scope: !1623)
!1880 = !DILocation(line: 1107, column: 42, scope: !1623)
!1881 = !DILocation(line: 1107, column: 2, scope: !1623)
!1882 = !DILocation(line: 1108, column: 44, scope: !1623)
!1883 = !DILocation(line: 1108, column: 2, scope: !1623)
!1884 = !DILocation(line: 1109, column: 44, scope: !1623)
!1885 = !DILocation(line: 1109, column: 2, scope: !1623)
!1886 = !DILocation(line: 1110, column: 44, scope: !1623)
!1887 = !DILocation(line: 1110, column: 2, scope: !1623)
!1888 = !DILocation(line: 1112, column: 23, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 1112, column: 6)
!1890 = !DILocation(line: 1112, column: 12, scope: !1889)
!1891 = !DILocation(line: 1112, column: 29, scope: !1889)
!1892 = !DILocation(line: 1112, column: 8, scope: !1889)
!1893 = !DILocation(line: 1112, column: 6, scope: !1623)
!1894 = !DILocation(line: 1113, column: 44, scope: !1889)
!1895 = !DILocation(line: 1113, column: 3, scope: !1889)
!1896 = !DILocation(line: 1115, column: 42, scope: !1623)
!1897 = !DILocation(line: 1115, column: 7, scope: !1623)
!1898 = !DILocation(line: 1115, column: 29, scope: !1623)
!1899 = !DILocation(line: 1118, column: 23, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 1118, column: 6)
!1901 = !DILocation(line: 1118, column: 12, scope: !1900)
!1902 = !DILocation(line: 1118, column: 29, scope: !1900)
!1903 = !DILocation(line: 1118, column: 8, scope: !1900)
!1904 = !DILocation(line: 1119, column: 6, scope: !1900)
!1905 = !DILocation(line: 1119, column: 14, scope: !1900)
!1906 = !DILocation(line: 1119, column: 36, scope: !1900)
!1907 = !DILocation(line: 1118, column: 6, scope: !1623)
!1908 = !DILocation(line: 1120, column: 8, scope: !1900)
!1909 = !DILocation(line: 1120, column: 21, scope: !1900)
!1910 = !DILocation(line: 1120, column: 3, scope: !1900)
!1911 = !DILocation(line: 1123, column: 15, scope: !1623)
!1912 = !DILocation(line: 1123, column: 10, scope: !1623)
!1913 = !DILocation(line: 1124, column: 6, scope: !1623)
!1914 = !DILocation(line: 1124, column: 14, scope: !1623)
!1915 = !DILocation(line: 1124, column: 20, scope: !1623)
!1916 = !DILocation(line: 1124, column: 28, scope: !1623)
!1917 = !DILocation(line: 1125, column: 28, scope: !1623)
!1918 = !DILocation(line: 1125, column: 35, scope: !1623)
!1919 = !DILocation(line: 1125, column: 23, scope: !1623)
!1920 = !DILocation(line: 1125, column: 6, scope: !1623)
!1921 = !DILocation(line: 1123, column: 2, scope: !1623)
!1922 = !DILocation(line: 1126, column: 40, scope: !1623)
!1923 = !DILocation(line: 1126, column: 35, scope: !1623)
!1924 = !DILocation(line: 1126, column: 5, scope: !1623)
!1925 = !DILocation(line: 1126, column: 13, scope: !1623)
!1926 = !DILocation(line: 1126, column: 33, scope: !1623)
!1927 = !DILocation(line: 1128, column: 2, scope: !1623)
!1928 = !DILocation(line: 1129, column: 1, scope: !1623)
!1929 = distinct !DISubprogram(name: "zip_read_mac_metadata", scope: !3, file: !3, line: 551, type: !1930, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!6, !7, !32, !279}
!1932 = !DILocalVariable(name: "a", arg: 1, scope: !1929, file: !3, line: 551, type: !7)
!1933 = !DILocation(line: 0, scope: !1929)
!1934 = !DILocalVariable(name: "entry", arg: 2, scope: !1929, file: !3, line: 551, type: !32)
!1935 = !DILocalVariable(name: "rsrc", arg: 3, scope: !1929, file: !3, line: 552, type: !279)
!1936 = !DILocation(line: 554, column: 37, scope: !1929)
!1937 = !DILocation(line: 554, column: 45, scope: !1929)
!1938 = !DILocation(line: 554, column: 20, scope: !1929)
!1939 = !DILocalVariable(name: "zip", scope: !1929, file: !3, line: 554, type: !268)
!1940 = !DILocation(line: 556, column: 24, scope: !1929)
!1941 = !DILocalVariable(name: "offset", scope: !1929, file: !3, line: 556, type: !54)
!1942 = !DILocalVariable(name: "ret", scope: !1929, file: !3, line: 559, type: !6)
!1943 = !DILocation(line: 561, column: 15, scope: !1929)
!1944 = !DILocation(line: 561, column: 9, scope: !1929)
!1945 = !DILocation(line: 561, column: 2, scope: !1929)
!1946 = !DILocation(line: 566, column: 3, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 561, column: 28)
!1948 = !DILocation(line: 569, column: 25, scope: !1947)
!1949 = !DILocation(line: 571, column: 30, scope: !1947)
!1950 = !DILocation(line: 571, column: 24, scope: !1947)
!1951 = !DILocation(line: 571, column: 7, scope: !1947)
!1952 = !DILocation(line: 569, column: 3, scope: !1947)
!1953 = !DILocation(line: 574, column: 3, scope: !1947)
!1954 = !DILocation(line: 577, column: 12, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 577, column: 6)
!1956 = !DILocation(line: 577, column: 30, scope: !1955)
!1957 = !DILocation(line: 577, column: 6, scope: !1929)
!1958 = !DILocation(line: 578, column: 25, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 577, column: 46)
!1960 = !DILocation(line: 580, column: 23, scope: !1959)
!1961 = !DILocation(line: 578, column: 3, scope: !1959)
!1962 = !DILocation(line: 581, column: 3, scope: !1959)
!1963 = !DILocation(line: 584, column: 34, scope: !1929)
!1964 = !DILocation(line: 584, column: 13, scope: !1929)
!1965 = !DILocalVariable(name: "metadata", scope: !1929, file: !3, line: 555, type: !353)
!1966 = !DILocation(line: 585, column: 15, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 585, column: 6)
!1968 = !DILocation(line: 585, column: 6, scope: !1929)
!1969 = !DILocation(line: 586, column: 25, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 585, column: 24)
!1971 = !DILocation(line: 586, column: 3, scope: !1970)
!1972 = !DILocation(line: 588, column: 3, scope: !1970)
!1973 = !DILocation(line: 591, column: 11, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 591, column: 6)
!1975 = !DILocation(line: 591, column: 26, scope: !1974)
!1976 = !DILocation(line: 591, column: 18, scope: !1974)
!1977 = !DILocation(line: 591, column: 6, scope: !1929)
!1978 = !DILocation(line: 592, column: 29, scope: !1974)
!1979 = !DILocation(line: 592, column: 56, scope: !1974)
!1980 = !DILocation(line: 592, column: 49, scope: !1974)
!1981 = !DILocation(line: 592, column: 3, scope: !1974)
!1982 = !DILocation(line: 593, column: 16, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 593, column: 11)
!1984 = !DILocation(line: 593, column: 32, scope: !1983)
!1985 = !DILocation(line: 593, column: 23, scope: !1983)
!1986 = !DILocation(line: 593, column: 11, scope: !1974)
!1987 = !DILocation(line: 594, column: 32, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 593, column: 53)
!1989 = !DILocation(line: 594, column: 3, scope: !1988)
!1990 = !DILocation(line: 595, column: 22, scope: !1988)
!1991 = !DILocation(line: 595, column: 29, scope: !1988)
!1992 = !DILocation(line: 595, column: 8, scope: !1988)
!1993 = !DILocation(line: 595, column: 15, scope: !1988)
!1994 = !DILocation(line: 596, column: 2, scope: !1988)
!1995 = !DILocation(line: 598, column: 10, scope: !1929)
!1996 = !DILocalVariable(name: "hsize", scope: !1929, file: !3, line: 558, type: !40)
!1997 = !DILocation(line: 599, column: 2, scope: !1929)
!1998 = !DILocation(line: 601, column: 34, scope: !1929)
!1999 = !DILocalVariable(name: "remaining_bytes", scope: !1929, file: !3, line: 557, type: !47)
!2000 = !DILocation(line: 602, column: 33, scope: !1929)
!2001 = !DILocalVariable(name: "metadata_bytes", scope: !1929, file: !3, line: 557, type: !47)
!2002 = !DILocalVariable(name: "mp", scope: !1929, file: !3, line: 555, type: !353)
!2003 = !DILocalVariable(name: "eof", scope: !1929, file: !3, line: 559, type: !6)
!2004 = !DILocation(line: 605, column: 2, scope: !1929)
!2005 = !DILocation(line: 603, column: 5, scope: !1929)
!2006 = !DILocation(line: 602, column: 17, scope: !1929)
!2007 = !DILocation(line: 559, column: 6, scope: !1929)
!2008 = !DILocation(line: 604, column: 6, scope: !1929)
!2009 = !DILocation(line: 605, column: 10, scope: !1929)
!2010 = !DILocation(line: 605, column: 14, scope: !1929)
!2011 = !DILocalVariable(name: "bytes_avail", scope: !2012, file: !3, line: 607, type: !40)
!2012 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 605, column: 34)
!2013 = !DILocation(line: 607, column: 11, scope: !2012)
!2014 = !DILocation(line: 610, column: 7, scope: !2012)
!2015 = !DILocalVariable(name: "p", scope: !2012, file: !3, line: 606, type: !405)
!2016 = !DILocation(line: 0, scope: !2012)
!2017 = !DILocation(line: 611, column: 9, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 611, column: 7)
!2019 = !DILocation(line: 611, column: 7, scope: !2012)
!2020 = !DILocation(line: 612, column: 26, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 611, column: 18)
!2022 = !DILocation(line: 612, column: 4, scope: !2021)
!2023 = !DILocation(line: 616, column: 4, scope: !2021)
!2024 = !DILocation(line: 618, column: 15, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 618, column: 7)
!2026 = !DILocation(line: 618, column: 27, scope: !2025)
!2027 = !DILocation(line: 618, column: 7, scope: !2012)
!2028 = !DILocation(line: 619, column: 16, scope: !2025)
!2029 = !DILocation(line: 619, column: 4, scope: !2025)
!2030 = !DILocation(line: 620, column: 16, scope: !2012)
!2031 = !DILocation(line: 620, column: 10, scope: !2012)
!2032 = !DILocation(line: 620, column: 3, scope: !2012)
!2033 = !DILocation(line: 622, column: 18, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 620, column: 29)
!2035 = !DILocation(line: 622, column: 4, scope: !2034)
!2036 = !DILocation(line: 623, column: 25, scope: !2034)
!2037 = !DILocalVariable(name: "bytes_used", scope: !2012, file: !3, line: 608, type: !47)
!2038 = !DILocation(line: 624, column: 19, scope: !2034)
!2039 = !DILocation(line: 625, column: 7, scope: !2034)
!2040 = !DILocation(line: 626, column: 23, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 626, column: 8)
!2042 = !DILocation(line: 626, column: 8, scope: !2034)
!2043 = !DILocation(line: 627, column: 5, scope: !2041)
!2044 = !DILocation(line: 628, column: 4, scope: !2034)
!2045 = !DILocation(line: 634, column: 10, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 631, column: 3)
!2047 = !DILocation(line: 635, column: 12, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 635, column: 8)
!2049 = !DILocation(line: 635, column: 8, scope: !2046)
!2050 = !DILocation(line: 636, column: 5, scope: !2048)
!2051 = !DILocation(line: 638, column: 17, scope: !2046)
!2052 = !DILocation(line: 638, column: 8, scope: !2046)
!2053 = !DILocation(line: 637, column: 9, scope: !2046)
!2054 = !DILocation(line: 637, column: 16, scope: !2046)
!2055 = !DILocation(line: 637, column: 24, scope: !2046)
!2056 = !DILocation(line: 639, column: 33, scope: !2046)
!2057 = !DILocation(line: 639, column: 27, scope: !2046)
!2058 = !DILocation(line: 639, column: 9, scope: !2046)
!2059 = !DILocation(line: 639, column: 16, scope: !2046)
!2060 = !DILocation(line: 639, column: 25, scope: !2046)
!2061 = !DILocation(line: 640, column: 9, scope: !2046)
!2062 = !DILocation(line: 640, column: 16, scope: !2046)
!2063 = !DILocation(line: 640, column: 25, scope: !2046)
!2064 = !DILocation(line: 641, column: 9, scope: !2046)
!2065 = !DILocation(line: 641, column: 16, scope: !2046)
!2066 = !DILocation(line: 641, column: 25, scope: !2046)
!2067 = !DILocation(line: 642, column: 28, scope: !2046)
!2068 = !DILocation(line: 642, column: 9, scope: !2046)
!2069 = !DILocation(line: 642, column: 16, scope: !2046)
!2070 = !DILocation(line: 642, column: 26, scope: !2046)
!2071 = !DILocation(line: 643, column: 9, scope: !2046)
!2072 = !DILocation(line: 643, column: 16, scope: !2046)
!2073 = !DILocation(line: 643, column: 26, scope: !2046)
!2074 = !DILocation(line: 645, column: 22, scope: !2046)
!2075 = !DILocation(line: 645, column: 8, scope: !2046)
!2076 = !DILocalVariable(name: "r", scope: !2046, file: !3, line: 632, type: !6)
!2077 = !DILocation(line: 0, scope: !2046)
!2078 = !DILocation(line: 646, column: 4, scope: !2046)
!2079 = !DILocation(line: 648, column: 5, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 646, column: 15)
!2081 = !DILocation(line: 651, column: 5, scope: !2080)
!2082 = !DILocation(line: 653, column: 27, scope: !2080)
!2083 = !DILocation(line: 653, column: 5, scope: !2080)
!2084 = !DILocation(line: 656, column: 5, scope: !2080)
!2085 = !DILocation(line: 658, column: 27, scope: !2080)
!2086 = !DILocation(line: 658, column: 5, scope: !2080)
!2087 = !DILocation(line: 662, column: 5, scope: !2080)
!2088 = !DILocation(line: 664, column: 22, scope: !2046)
!2089 = !DILocation(line: 664, column: 29, scope: !2046)
!2090 = !DILocation(line: 665, column: 27, scope: !2046)
!2091 = !DILocation(line: 665, column: 34, scope: !2046)
!2092 = !DILocation(line: 665, column: 19, scope: !2046)
!2093 = !DILocation(line: 666, column: 15, scope: !2046)
!2094 = !DILocation(line: 666, column: 22, scope: !2046)
!2095 = !DILocation(line: 666, column: 7, scope: !2046)
!2096 = !DILocation(line: 667, column: 4, scope: !2046)
!2097 = !DILocation(line: 672, column: 4, scope: !2034)
!2098 = !DILocation(line: 0, scope: !2034)
!2099 = !DILocation(line: 674, column: 3, scope: !2012)
!2100 = !DILocation(line: 675, column: 19, scope: !2012)
!2101 = distinct !{!2101, !2004, !2102, !684}
!2102 = !DILocation(line: 676, column: 2, scope: !1929)
!2103 = !DILocation(line: 678, column: 20, scope: !1929)
!2104 = !DILocation(line: 678, column: 38, scope: !1929)
!2105 = !DILocation(line: 677, column: 2, scope: !1929)
!2106 = !DILocation(line: 680, column: 2, scope: !1929)
!2107 = !DILocation(line: 681, column: 7, scope: !1929)
!2108 = !DILocation(line: 681, column: 14, scope: !1929)
!2109 = !DILocation(line: 681, column: 2, scope: !1929)
!2110 = !DILabel(scope: !1929, name: "exit_mac_metadata", file: !3, line: 682)
!2111 = !DILocation(line: 682, column: 1, scope: !1929)
!2112 = !DILocation(line: 683, column: 7, scope: !1929)
!2113 = !DILocation(line: 683, column: 23, scope: !1929)
!2114 = !DILocation(line: 684, column: 2, scope: !1929)
!2115 = !DILocation(line: 685, column: 2, scope: !1929)
!2116 = !DILocation(line: 686, column: 1, scope: !1929)
!2117 = distinct !DISubprogram(name: "cmp_node", scope: !3, file: !3, line: 333, type: !332, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2118 = !DILocalVariable(name: "n1", arg: 1, scope: !2117, file: !3, line: 333, type: !334)
!2119 = !DILocation(line: 0, scope: !2117)
!2120 = !DILocalVariable(name: "n2", arg: 2, scope: !2117, file: !3, line: 333, type: !334)
!2121 = !DILocation(line: 335, column: 31, scope: !2117)
!2122 = !DILocalVariable(name: "e1", scope: !2117, file: !3, line: 335, type: !409)
!2123 = !DILocation(line: 336, column: 31, scope: !2117)
!2124 = !DILocalVariable(name: "e2", scope: !2117, file: !3, line: 336, type: !409)
!2125 = !DILocation(line: 338, column: 20, scope: !2117)
!2126 = !DILocation(line: 338, column: 46, scope: !2117)
!2127 = !DILocation(line: 338, column: 40, scope: !2117)
!2128 = !DILocation(line: 338, column: 10, scope: !2117)
!2129 = !DILocation(line: 338, column: 2, scope: !2117)
!2130 = distinct !DISubprogram(name: "cmp_key", scope: !3, file: !3, line: 342, type: !340, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2131 = !DILocalVariable(name: "n", arg: 1, scope: !2130, file: !3, line: 342, type: !334)
!2132 = !DILocation(line: 0, scope: !2130)
!2133 = !DILocalVariable(name: "key", arg: 2, scope: !2130, file: !3, line: 342, type: !45)
!2134 = !DILocation(line: 347, column: 2, scope: !2130)
!2135 = distinct !DISubprogram(name: "rsrc_cmp_node", scope: !3, file: !3, line: 351, type: !332, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2136 = !DILocalVariable(name: "n1", arg: 1, scope: !2135, file: !3, line: 351, type: !334)
!2137 = !DILocation(line: 0, scope: !2135)
!2138 = !DILocalVariable(name: "n2", arg: 2, scope: !2135, file: !3, line: 352, type: !334)
!2139 = !DILocation(line: 354, column: 31, scope: !2135)
!2140 = !DILocalVariable(name: "e1", scope: !2135, file: !3, line: 354, type: !409)
!2141 = !DILocation(line: 355, column: 31, scope: !2135)
!2142 = !DILocalVariable(name: "e2", scope: !2135, file: !3, line: 355, type: !409)
!2143 = !DILocation(line: 357, column: 21, scope: !2135)
!2144 = !DILocation(line: 357, column: 30, scope: !2135)
!2145 = !DILocation(line: 357, column: 37, scope: !2135)
!2146 = !DILocation(line: 357, column: 46, scope: !2135)
!2147 = !DILocation(line: 357, column: 10, scope: !2135)
!2148 = !DILocation(line: 357, column: 2, scope: !2135)
!2149 = distinct !DISubprogram(name: "rsrc_cmp_key", scope: !3, file: !3, line: 361, type: !340, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2150 = !DILocalVariable(name: "n", arg: 1, scope: !2149, file: !3, line: 361, type: !334)
!2151 = !DILocation(line: 0, scope: !2149)
!2152 = !DILocalVariable(name: "key", arg: 2, scope: !2149, file: !3, line: 361, type: !45)
!2153 = !DILocation(line: 363, column: 30, scope: !2149)
!2154 = !DILocalVariable(name: "e", scope: !2149, file: !3, line: 363, type: !409)
!2155 = !DILocation(line: 364, column: 39, scope: !2149)
!2156 = !DILocation(line: 364, column: 48, scope: !2149)
!2157 = !DILocation(line: 364, column: 10, scope: !2149)
!2158 = !DILocation(line: 364, column: 2, scope: !2149)
!2159 = distinct !DISubprogram(name: "zip_time", scope: !3, file: !3, line: 1155, type: !2160, scopeLine: 1156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!302, !83}
!2162 = !DILocalVariable(name: "p", arg: 1, scope: !2159, file: !3, line: 1155, type: !83)
!2163 = !DILocation(line: 0, scope: !2159)
!2164 = !DILocalVariable(name: "ts", scope: !2159, file: !3, line: 1158, type: !2165)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !2166, line: 7, size: 448, elements: !2167)
!2166 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "", checksumkind: CSK_MD5, checksum: "9e5545b565ef031c4cd0faf90b69386f")
!2167 = !{!2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !2165, file: !2166, line: 9, baseType: !6, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !2165, file: !2166, line: 10, baseType: !6, size: 32, offset: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !2165, file: !2166, line: 11, baseType: !6, size: 32, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !2165, file: !2166, line: 12, baseType: !6, size: 32, offset: 96)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !2165, file: !2166, line: 13, baseType: !6, size: 32, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !2165, file: !2166, line: 14, baseType: !6, size: 32, offset: 160)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !2165, file: !2166, line: 15, baseType: !6, size: 32, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !2165, file: !2166, line: 16, baseType: !6, size: 32, offset: 224)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !2165, file: !2166, line: 17, baseType: !6, size: 32, offset: 256)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !2165, file: !2166, line: 20, baseType: !44, size: 64, offset: 320)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !2165, file: !2166, line: 21, baseType: !83, size: 64, offset: 384)
!2179 = !DILocation(line: 1158, column: 12, scope: !2159)
!2180 = !DILocation(line: 1160, column: 29, scope: !2159)
!2181 = !DILocation(line: 1160, column: 19, scope: !2159)
!2182 = !DILocation(line: 1160, column: 17, scope: !2159)
!2183 = !DILocation(line: 1160, column: 61, scope: !2159)
!2184 = !DILocation(line: 1160, column: 51, scope: !2159)
!2185 = !DILocation(line: 1160, column: 49, scope: !2159)
!2186 = !DILocation(line: 1160, column: 41, scope: !2159)
!2187 = !DILocation(line: 1160, column: 35, scope: !2159)
!2188 = !DILocalVariable(name: "msTime", scope: !2159, file: !3, line: 1157, type: !6)
!2189 = !DILocation(line: 1161, column: 29, scope: !2159)
!2190 = !DILocation(line: 1161, column: 19, scope: !2159)
!2191 = !DILocation(line: 1161, column: 17, scope: !2159)
!2192 = !DILocation(line: 1161, column: 61, scope: !2159)
!2193 = !DILocation(line: 1161, column: 51, scope: !2159)
!2194 = !DILocation(line: 1161, column: 49, scope: !2159)
!2195 = !DILocation(line: 1161, column: 41, scope: !2159)
!2196 = !DILocation(line: 1161, column: 35, scope: !2159)
!2197 = !DILocalVariable(name: "msDate", scope: !2159, file: !3, line: 1157, type: !6)
!2198 = !DILocation(line: 1163, column: 2, scope: !2159)
!2199 = !DILocation(line: 1164, column: 24, scope: !2159)
!2200 = !DILocation(line: 1164, column: 30, scope: !2159)
!2201 = !DILocation(line: 1164, column: 38, scope: !2159)
!2202 = !DILocation(line: 1164, column: 5, scope: !2159)
!2203 = !DILocation(line: 1164, column: 13, scope: !2159)
!2204 = !DILocation(line: 1165, column: 23, scope: !2159)
!2205 = !DILocation(line: 1165, column: 29, scope: !2159)
!2206 = !DILocation(line: 1165, column: 37, scope: !2159)
!2207 = !DILocation(line: 1165, column: 5, scope: !2159)
!2208 = !DILocation(line: 1165, column: 12, scope: !2159)
!2209 = !DILocation(line: 1166, column: 22, scope: !2159)
!2210 = !DILocation(line: 1166, column: 5, scope: !2159)
!2211 = !DILocation(line: 1166, column: 13, scope: !2159)
!2212 = !DILocation(line: 1167, column: 23, scope: !2159)
!2213 = !DILocation(line: 1167, column: 30, scope: !2159)
!2214 = !DILocation(line: 1167, column: 5, scope: !2159)
!2215 = !DILocation(line: 1167, column: 13, scope: !2159)
!2216 = !DILocation(line: 1168, column: 22, scope: !2159)
!2217 = !DILocation(line: 1168, column: 28, scope: !2159)
!2218 = !DILocation(line: 1168, column: 5, scope: !2159)
!2219 = !DILocation(line: 1168, column: 12, scope: !2159)
!2220 = !DILocation(line: 1169, column: 22, scope: !2159)
!2221 = !DILocation(line: 1169, column: 28, scope: !2159)
!2222 = !DILocation(line: 1169, column: 5, scope: !2159)
!2223 = !DILocation(line: 1169, column: 12, scope: !2159)
!2224 = !DILocation(line: 1170, column: 5, scope: !2159)
!2225 = !DILocation(line: 1170, column: 14, scope: !2159)
!2226 = !DILocation(line: 1171, column: 9, scope: !2159)
!2227 = !DILocation(line: 1171, column: 2, scope: !2159)
!2228 = distinct !DISubprogram(name: "rsrc_basename", scope: !3, file: !3, line: 368, type: !2229, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!83, !83, !47}
!2231 = !DILocalVariable(name: "name", arg: 1, scope: !2228, file: !3, line: 368, type: !83)
!2232 = !DILocation(line: 0, scope: !2228)
!2233 = !DILocalVariable(name: "name_length", arg: 2, scope: !2228, file: !3, line: 368, type: !47)
!2234 = !DILocalVariable(name: "s", scope: !2228, file: !3, line: 370, type: !83)
!2235 = !DILocalVariable(name: "r", scope: !2228, file: !3, line: 370, type: !83)
!2236 = !DILocation(line: 373, column: 2, scope: !2228)
!2237 = !DILocation(line: 374, column: 39, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 373, column: 11)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 373, column: 2)
!2240 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 373, column: 2)
!2241 = !DILocation(line: 374, column: 34, scope: !2238)
!2242 = !DILocation(line: 374, column: 7, scope: !2238)
!2243 = !DILocation(line: 375, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 375, column: 7)
!2245 = !DILocation(line: 375, column: 7, scope: !2238)
!2246 = !DILocation(line: 376, column: 4, scope: !2244)
!2247 = !DILocation(line: 377, column: 7, scope: !2238)
!2248 = !DILocation(line: 373, column: 2, scope: !2239)
!2249 = distinct !{!2249, !2250, !2251}
!2250 = !DILocation(line: 373, column: 2, scope: !2240)
!2251 = !DILocation(line: 378, column: 2, scope: !2240)
!2252 = !DILocation(line: 379, column: 2, scope: !2228)
!2253 = distinct !DISubprogram(name: "expose_parent_dirs", scope: !3, file: !3, line: 383, type: !2254, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{null, !268, !83, !47}
!2256 = !DILocalVariable(name: "zip", arg: 1, scope: !2253, file: !3, line: 383, type: !268)
!2257 = !DILocation(line: 0, scope: !2253)
!2258 = !DILocalVariable(name: "name", arg: 2, scope: !2253, file: !3, line: 383, type: !83)
!2259 = !DILocalVariable(name: "name_length", arg: 3, scope: !2253, file: !3, line: 383, type: !47)
!2260 = !DILocalVariable(name: "str", scope: !2253, file: !3, line: 385, type: !94)
!2261 = !DILocation(line: 385, column: 24, scope: !2253)
!2262 = !DILocation(line: 389, column: 2, scope: !2253)
!2263 = !DILocation(line: 389, column: 2, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 389, column: 2)
!2265 = !DILocation(line: 390, column: 2, scope: !2253)
!2266 = !DILocation(line: 391, column: 2, scope: !2253)
!2267 = !DILocation(line: 392, column: 19, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 391, column: 11)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 391, column: 2)
!2270 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 391, column: 2)
!2271 = !DILocation(line: 392, column: 7, scope: !2268)
!2272 = !DILocalVariable(name: "s", scope: !2253, file: !3, line: 387, type: !98)
!2273 = !DILocation(line: 393, column: 9, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 393, column: 7)
!2275 = !DILocation(line: 393, column: 7, scope: !2268)
!2276 = !DILocation(line: 394, column: 4, scope: !2274)
!2277 = !DILocation(line: 395, column: 6, scope: !2268)
!2278 = !DILocation(line: 399, column: 41, scope: !2268)
!2279 = !DILocation(line: 399, column: 56, scope: !2268)
!2280 = !DILocation(line: 399, column: 7, scope: !2268)
!2281 = !DILocation(line: 398, column: 9, scope: !2268)
!2282 = !DILocalVariable(name: "dir", scope: !2253, file: !3, line: 386, type: !279)
!2283 = !DILocation(line: 400, column: 11, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 400, column: 7)
!2285 = !DILocation(line: 400, column: 7, scope: !2268)
!2286 = !DILocation(line: 401, column: 4, scope: !2284)
!2287 = !DILocation(line: 402, column: 39, scope: !2268)
!2288 = !DILocation(line: 402, column: 56, scope: !2268)
!2289 = !DILocation(line: 402, column: 3, scope: !2268)
!2290 = !DILocation(line: 403, column: 29, scope: !2268)
!2291 = !DILocation(line: 403, column: 3, scope: !2268)
!2292 = !DILocation(line: 404, column: 39, scope: !2268)
!2293 = !DILocation(line: 404, column: 51, scope: !2268)
!2294 = !DILocation(line: 404, column: 3, scope: !2268)
!2295 = !DILocation(line: 391, column: 2, scope: !2269)
!2296 = distinct !{!2296, !2297, !2298}
!2297 = !DILocation(line: 391, column: 2, scope: !2270)
!2298 = !DILocation(line: 405, column: 2, scope: !2270)
!2299 = !DILocation(line: 406, column: 2, scope: !2253)
!2300 = !DILocation(line: 407, column: 1, scope: !2253)
!2301 = distinct !DISubprogram(name: "process_extra", scope: !3, file: !3, line: 1604, type: !2302, scopeLine: 1605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{null, !83, !47, !279}
!2304 = !DILocalVariable(name: "p", arg: 1, scope: !2301, file: !3, line: 1604, type: !83)
!2305 = !DILocation(line: 0, scope: !2301)
!2306 = !DILocalVariable(name: "extra_length", arg: 2, scope: !2301, file: !3, line: 1604, type: !47)
!2307 = !DILocalVariable(name: "zip_entry", arg: 3, scope: !2301, file: !3, line: 1604, type: !279)
!2308 = !DILocalVariable(name: "offset", scope: !2301, file: !3, line: 1606, type: !16)
!2309 = !DILocation(line: 1608, column: 2, scope: !2301)
!2310 = !DILocation(line: 1608, column: 9, scope: !2301)
!2311 = !DILocation(line: 1608, column: 31, scope: !2301)
!2312 = !DILocation(line: 1608, column: 16, scope: !2301)
!2313 = !DILocation(line: 1610, column: 47, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 1609, column: 2)
!2315 = !DILocation(line: 1610, column: 29, scope: !2314)
!2316 = !DILocalVariable(name: "headerid", scope: !2314, file: !3, line: 1610, type: !314)
!2317 = !DILocation(line: 0, scope: !2314)
!2318 = !DILocation(line: 1611, column: 47, scope: !2314)
!2319 = !DILocation(line: 1611, column: 56, scope: !2314)
!2320 = !DILocation(line: 1611, column: 29, scope: !2314)
!2321 = !DILocalVariable(name: "datasize", scope: !2314, file: !3, line: 1611, type: !314)
!2322 = !DILocation(line: 1612, column: 10, scope: !2314)
!2323 = !DILocation(line: 1613, column: 16, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 1613, column: 7)
!2325 = !DILocation(line: 1613, column: 14, scope: !2324)
!2326 = !DILocation(line: 1613, column: 7, scope: !2324)
!2327 = !DILocation(line: 1613, column: 25, scope: !2324)
!2328 = !DILocation(line: 1613, column: 7, scope: !2314)
!2329 = !DILocation(line: 1614, column: 4, scope: !2324)
!2330 = !DILocation(line: 1619, column: 11, scope: !2314)
!2331 = !DILocation(line: 1619, column: 3, scope: !2314)
!2332 = !DILocation(line: 1622, column: 8, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 1622, column: 8)
!2334 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 1619, column: 21)
!2335 = !DILocation(line: 1622, column: 17, scope: !2333)
!2336 = !DILocation(line: 1622, column: 8, scope: !2334)
!2337 = !DILocation(line: 1624, column: 27, scope: !2333)
!2338 = !DILocation(line: 1624, column: 9, scope: !2333)
!2339 = !DILocation(line: 1623, column: 16, scope: !2333)
!2340 = !DILocation(line: 1623, column: 34, scope: !2333)
!2341 = !DILocation(line: 1623, column: 5, scope: !2333)
!2342 = !DILocation(line: 1625, column: 8, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 1625, column: 8)
!2344 = !DILocation(line: 1625, column: 17, scope: !2343)
!2345 = !DILocation(line: 1625, column: 8, scope: !2334)
!2346 = !DILocation(line: 1627, column: 27, scope: !2343)
!2347 = !DILocation(line: 1627, column: 36, scope: !2343)
!2348 = !DILocation(line: 1627, column: 9, scope: !2343)
!2349 = !DILocation(line: 1626, column: 16, scope: !2343)
!2350 = !DILocation(line: 1626, column: 32, scope: !2343)
!2351 = !DILocation(line: 1626, column: 5, scope: !2343)
!2352 = !DILocation(line: 1628, column: 4, scope: !2334)
!2353 = !DILocation(line: 1632, column: 16, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 1630, column: 3)
!2355 = !DILocalVariable(name: "flags", scope: !2354, file: !3, line: 1632, type: !6)
!2356 = !DILocation(line: 0, scope: !2354)
!2357 = !DILocation(line: 1633, column: 10, scope: !2354)
!2358 = !DILocation(line: 1634, column: 12, scope: !2354)
!2359 = !DILocation(line: 1636, column: 14, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 1636, column: 8)
!2361 = !DILocation(line: 1636, column: 8, scope: !2354)
!2362 = !DILocation(line: 1643, column: 9, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 1643, column: 9)
!2364 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 1637, column: 4)
!2365 = !DILocation(line: 1643, column: 18, scope: !2363)
!2366 = !DILocation(line: 1643, column: 9, scope: !2364)
!2367 = !DILocation(line: 1644, column: 6, scope: !2363)
!2368 = !DILocation(line: 1645, column: 42, scope: !2364)
!2369 = !DILocation(line: 1645, column: 24, scope: !2364)
!2370 = !DILocation(line: 1645, column: 16, scope: !2364)
!2371 = !DILocation(line: 1645, column: 22, scope: !2364)
!2372 = !DILocation(line: 1646, column: 12, scope: !2364)
!2373 = !DILocation(line: 1647, column: 14, scope: !2364)
!2374 = !DILocation(line: 1648, column: 4, scope: !2364)
!2375 = !DILocation(line: 1649, column: 14, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 1649, column: 8)
!2377 = !DILocation(line: 1649, column: 8, scope: !2354)
!2378 = !DILocation(line: 1651, column: 9, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 1651, column: 9)
!2380 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 1650, column: 4)
!2381 = !DILocation(line: 1651, column: 18, scope: !2379)
!2382 = !DILocation(line: 1651, column: 9, scope: !2380)
!2383 = !DILocation(line: 1652, column: 6, scope: !2379)
!2384 = !DILocation(line: 1653, column: 42, scope: !2380)
!2385 = !DILocation(line: 1653, column: 24, scope: !2380)
!2386 = !DILocation(line: 1653, column: 16, scope: !2380)
!2387 = !DILocation(line: 1653, column: 22, scope: !2380)
!2388 = !DILocation(line: 1654, column: 12, scope: !2380)
!2389 = !DILocation(line: 1655, column: 14, scope: !2380)
!2390 = !DILocation(line: 1656, column: 4, scope: !2380)
!2391 = !DILocation(line: 1657, column: 14, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 1657, column: 8)
!2393 = !DILocation(line: 1657, column: 8, scope: !2354)
!2394 = !DILocation(line: 1659, column: 9, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 1659, column: 9)
!2396 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 1658, column: 4)
!2397 = !DILocation(line: 1659, column: 18, scope: !2395)
!2398 = !DILocation(line: 1659, column: 9, scope: !2396)
!2399 = !DILocation(line: 1660, column: 6, scope: !2395)
!2400 = !DILocation(line: 1661, column: 42, scope: !2396)
!2401 = !DILocation(line: 1661, column: 24, scope: !2396)
!2402 = !DILocation(line: 1661, column: 16, scope: !2396)
!2403 = !DILocation(line: 1661, column: 22, scope: !2396)
!2404 = !DILocation(line: 1662, column: 12, scope: !2396)
!2405 = !DILocation(line: 1663, column: 14, scope: !2396)
!2406 = !DILocation(line: 1664, column: 4, scope: !2396)
!2407 = !DILocation(line: 1665, column: 4, scope: !2354)
!2408 = !DILocation(line: 1670, column: 8, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 1670, column: 8)
!2410 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 1668, column: 3)
!2411 = !DILocation(line: 1670, column: 17, scope: !2409)
!2412 = !DILocation(line: 1670, column: 8, scope: !2410)
!2413 = !DILocation(line: 1671, column: 42, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 1670, column: 23)
!2415 = !DILocation(line: 1671, column: 24, scope: !2414)
!2416 = !DILocation(line: 1671, column: 16, scope: !2414)
!2417 = !DILocation(line: 1671, column: 22, scope: !2414)
!2418 = !DILocation(line: 1673, column: 27, scope: !2414)
!2419 = !DILocation(line: 1673, column: 36, scope: !2414)
!2420 = !DILocation(line: 1673, column: 9, scope: !2414)
!2421 = !DILocation(line: 1672, column: 16, scope: !2414)
!2422 = !DILocation(line: 1672, column: 22, scope: !2414)
!2423 = !DILocation(line: 1674, column: 4, scope: !2414)
!2424 = !DILocation(line: 1675, column: 8, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 1675, column: 8)
!2426 = !DILocation(line: 1675, column: 17, scope: !2425)
!2427 = !DILocation(line: 1675, column: 8, scope: !2410)
!2428 = !DILocation(line: 1677, column: 27, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 1675, column: 24)
!2430 = !DILocation(line: 1677, column: 36, scope: !2429)
!2431 = !DILocation(line: 1677, column: 9, scope: !2429)
!2432 = !DILocation(line: 1676, column: 16, scope: !2429)
!2433 = !DILocation(line: 1676, column: 20, scope: !2429)
!2434 = !DILocation(line: 1679, column: 27, scope: !2429)
!2435 = !DILocation(line: 1679, column: 36, scope: !2429)
!2436 = !DILocation(line: 1679, column: 9, scope: !2429)
!2437 = !DILocation(line: 1678, column: 16, scope: !2429)
!2438 = !DILocation(line: 1678, column: 20, scope: !2429)
!2439 = !DILocation(line: 1680, column: 4, scope: !2429)
!2440 = !DILocation(line: 1681, column: 4, scope: !2410)
!2441 = !DILocation(line: 1690, column: 8, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 1690, column: 8)
!2443 = !DILocation(line: 1690, column: 17, scope: !2442)
!2444 = !DILocation(line: 1690, column: 8, scope: !2334)
!2445 = !DILocation(line: 1691, column: 40, scope: !2442)
!2446 = !DILocation(line: 1691, column: 22, scope: !2442)
!2447 = !DILocation(line: 1691, column: 16, scope: !2442)
!2448 = !DILocation(line: 1691, column: 20, scope: !2442)
!2449 = !DILocation(line: 1691, column: 5, scope: !2442)
!2450 = !DILocation(line: 1692, column: 8, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 1692, column: 8)
!2452 = !DILocation(line: 1692, column: 17, scope: !2451)
!2453 = !DILocation(line: 1692, column: 8, scope: !2334)
!2454 = !DILocation(line: 1694, column: 27, scope: !2451)
!2455 = !DILocation(line: 1694, column: 36, scope: !2451)
!2456 = !DILocation(line: 1694, column: 9, scope: !2451)
!2457 = !DILocation(line: 1693, column: 16, scope: !2451)
!2458 = !DILocation(line: 1693, column: 20, scope: !2451)
!2459 = !DILocation(line: 1693, column: 5, scope: !2451)
!2460 = !DILocation(line: 1695, column: 4, scope: !2334)
!2461 = !DILocalVariable(name: "uidsize", scope: !2462, file: !3, line: 1699, type: !6)
!2462 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 1697, column: 3)
!2463 = !DILocation(line: 0, scope: !2462)
!2464 = !DILocalVariable(name: "gidsize", scope: !2462, file: !3, line: 1699, type: !6)
!2465 = !DILocation(line: 1701, column: 8, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 1701, column: 8)
!2467 = !DILocation(line: 1701, column: 17, scope: !2466)
!2468 = !DILocation(line: 1701, column: 22, scope: !2466)
!2469 = !DILocation(line: 1701, column: 25, scope: !2466)
!2470 = !DILocation(line: 1701, column: 35, scope: !2466)
!2471 = !DILocation(line: 1701, column: 8, scope: !2462)
!2472 = !DILocation(line: 1702, column: 9, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 1702, column: 9)
!2474 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 1701, column: 41)
!2475 = !DILocation(line: 1702, column: 18, scope: !2473)
!2476 = !DILocation(line: 1702, column: 9, scope: !2474)
!2477 = !DILocation(line: 1704, column: 24, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1702, column: 24)
!2479 = !DILocation(line: 1704, column: 16, scope: !2478)
!2480 = !DILocation(line: 1705, column: 18, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 1705, column: 10)
!2482 = !DILocation(line: 1705, column: 10, scope: !2478)
!2483 = !DILocation(line: 1708, column: 17, scope: !2481)
!2484 = !DILocation(line: 1708, column: 26, scope: !2481)
!2485 = !DILocation(line: 1707, column: 11, scope: !2481)
!2486 = !DILocation(line: 1706, column: 18, scope: !2481)
!2487 = !DILocation(line: 1706, column: 22, scope: !2481)
!2488 = !DILocation(line: 1706, column: 7, scope: !2481)
!2489 = !DILocation(line: 1709, column: 23, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 1709, column: 15)
!2491 = !DILocation(line: 1709, column: 28, scope: !2490)
!2492 = !DILocation(line: 1709, column: 31, scope: !2490)
!2493 = !DILocation(line: 1709, column: 40, scope: !2490)
!2494 = !DILocation(line: 1709, column: 15, scope: !2481)
!2495 = !DILocation(line: 1712, column: 17, scope: !2490)
!2496 = !DILocation(line: 1712, column: 26, scope: !2490)
!2497 = !DILocation(line: 1711, column: 11, scope: !2490)
!2498 = !DILocation(line: 1710, column: 18, scope: !2490)
!2499 = !DILocation(line: 1710, column: 22, scope: !2490)
!2500 = !DILocation(line: 1710, column: 7, scope: !2490)
!2501 = !DILocation(line: 1713, column: 5, scope: !2478)
!2502 = !DILocation(line: 1714, column: 9, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 1714, column: 9)
!2504 = !DILocation(line: 1714, column: 24, scope: !2503)
!2505 = !DILocation(line: 1714, column: 34, scope: !2503)
!2506 = !DILocation(line: 1714, column: 18, scope: !2503)
!2507 = !DILocation(line: 1714, column: 9, scope: !2474)
!2508 = !DILocation(line: 1716, column: 24, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 1714, column: 40)
!2510 = !DILocation(line: 1716, column: 26, scope: !2509)
!2511 = !DILocation(line: 1716, column: 16, scope: !2509)
!2512 = !DILocation(line: 1717, column: 18, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 1717, column: 10)
!2514 = !DILocation(line: 1717, column: 10, scope: !2509)
!2515 = !DILocation(line: 1720, column: 16, scope: !2513)
!2516 = !DILocation(line: 1720, column: 23, scope: !2513)
!2517 = !DILocation(line: 1720, column: 25, scope: !2513)
!2518 = !DILocation(line: 1720, column: 33, scope: !2513)
!2519 = !DILocation(line: 1719, column: 11, scope: !2513)
!2520 = !DILocation(line: 1718, column: 18, scope: !2513)
!2521 = !DILocation(line: 1718, column: 22, scope: !2513)
!2522 = !DILocation(line: 1718, column: 7, scope: !2513)
!2523 = !DILocation(line: 1721, column: 23, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 1721, column: 15)
!2525 = !DILocation(line: 1721, column: 28, scope: !2524)
!2526 = !DILocation(line: 1722, column: 10, scope: !2524)
!2527 = !DILocation(line: 1722, column: 25, scope: !2524)
!2528 = !DILocation(line: 1722, column: 35, scope: !2524)
!2529 = !DILocation(line: 1722, column: 19, scope: !2524)
!2530 = !DILocation(line: 1721, column: 15, scope: !2513)
!2531 = !DILocation(line: 1725, column: 16, scope: !2524)
!2532 = !DILocation(line: 1725, column: 23, scope: !2524)
!2533 = !DILocation(line: 1725, column: 25, scope: !2524)
!2534 = !DILocation(line: 1725, column: 33, scope: !2524)
!2535 = !DILocation(line: 1724, column: 11, scope: !2524)
!2536 = !DILocation(line: 1723, column: 18, scope: !2524)
!2537 = !DILocation(line: 1723, column: 22, scope: !2524)
!2538 = !DILocation(line: 1723, column: 7, scope: !2524)
!2539 = !DILocation(line: 1726, column: 5, scope: !2509)
!2540 = !DILocation(line: 1727, column: 4, scope: !2474)
!2541 = !DILocation(line: 1728, column: 4, scope: !2462)
!2542 = !DILocation(line: 1731, column: 4, scope: !2334)
!2543 = !DILocation(line: 1733, column: 13, scope: !2314)
!2544 = !DILocation(line: 1733, column: 10, scope: !2314)
!2545 = distinct !{!2545, !2309, !2546, !684}
!2546 = !DILocation(line: 1734, column: 2, scope: !2301)
!2547 = !DILocation(line: 1742, column: 1, scope: !2301)
!2548 = !DILocalVariable(name: "compression", arg: 1, scope: !420, file: !3, line: 1132, type: !6)
!2549 = !DILocation(line: 0, scope: !420)
!2550 = !DILocation(line: 1146, column: 8, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !420, file: !3, line: 1146, column: 6)
!2552 = !DILocation(line: 1146, column: 23, scope: !2551)
!2553 = !DILocation(line: 1146, column: 38, scope: !2551)
!2554 = !DILocation(line: 1146, column: 6, scope: !420)
!2555 = !DILocation(line: 1148, column: 10, scope: !2551)
!2556 = !DILocation(line: 1148, column: 3, scope: !2551)
!2557 = !DILocation(line: 1150, column: 3, scope: !2551)
!2558 = !DILocation(line: 0, scope: !2551)
!2559 = !DILocation(line: 1151, column: 1, scope: !420)
!2560 = distinct !DISubprogram(name: "archive_le64dec", scope: !1393, file: !1393, line: 97, type: !2561, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!411, !45}
!2563 = !DILocalVariable(name: "pp", arg: 1, scope: !2560, file: !1393, line: 97, type: !45)
!2564 = !DILocation(line: 0, scope: !2560)
!2565 = !DILocalVariable(name: "p", scope: !2560, file: !1393, line: 99, type: !405)
!2566 = !DILocation(line: 101, column: 39, scope: !2560)
!2567 = !DILocation(line: 101, column: 21, scope: !2560)
!2568 = !DILocation(line: 101, column: 11, scope: !2560)
!2569 = !DILocation(line: 101, column: 44, scope: !2560)
!2570 = !DILocation(line: 101, column: 53, scope: !2560)
!2571 = !DILocation(line: 101, column: 51, scope: !2560)
!2572 = !DILocation(line: 101, column: 2, scope: !2560)
!2573 = distinct !DISubprogram(name: "zip_get_local_file_header_size", scope: !3, file: !3, line: 924, type: !2574, scopeLine: 925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!40, !7, !47}
!2576 = !DILocalVariable(name: "a", arg: 1, scope: !2573, file: !3, line: 924, type: !7)
!2577 = !DILocation(line: 0, scope: !2573)
!2578 = !DILocalVariable(name: "extra", arg: 2, scope: !2573, file: !3, line: 924, type: !47)
!2579 = !DILocation(line: 929, column: 41, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 929, column: 6)
!2581 = !DILocation(line: 929, column: 11, scope: !2580)
!2582 = !DILocalVariable(name: "p", scope: !2573, file: !3, line: 926, type: !83)
!2583 = !DILocation(line: 929, column: 54, scope: !2580)
!2584 = !DILocation(line: 929, column: 6, scope: !2573)
!2585 = !DILocation(line: 930, column: 25, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 929, column: 63)
!2587 = !DILocation(line: 930, column: 3, scope: !2586)
!2588 = !DILocation(line: 932, column: 3, scope: !2586)
!2589 = !DILocation(line: 934, column: 4, scope: !2573)
!2590 = !DILocation(line: 936, column: 6, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 936, column: 6)
!2592 = !DILocation(line: 936, column: 33, scope: !2591)
!2593 = !DILocation(line: 936, column: 6, scope: !2573)
!2594 = !DILocation(line: 937, column: 25, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 936, column: 39)
!2596 = !DILocation(line: 937, column: 3, scope: !2595)
!2597 = !DILocation(line: 938, column: 3, scope: !2595)
!2598 = !DILocation(line: 940, column: 38, scope: !2573)
!2599 = !DILocation(line: 940, column: 20, scope: !2573)
!2600 = !DILocalVariable(name: "filename_length", scope: !2573, file: !3, line: 927, type: !40)
!2601 = !DILocation(line: 941, column: 35, scope: !2573)
!2602 = !DILocation(line: 941, column: 17, scope: !2573)
!2603 = !DILocalVariable(name: "extra_length", scope: !2573, file: !3, line: 927, type: !40)
!2604 = !DILocation(line: 943, column: 13, scope: !2573)
!2605 = !DILocation(line: 943, column: 31, scope: !2573)
!2606 = !DILocation(line: 943, column: 2, scope: !2573)
!2607 = !DILocation(line: 944, column: 1, scope: !2573)
!2608 = distinct !DISubprogram(name: "zip_deflate_init", scope: !3, file: !3, line: 1373, type: !4, scopeLine: 1374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2609 = !DILocalVariable(name: "a", arg: 1, scope: !2608, file: !3, line: 1373, type: !7)
!2610 = !DILocation(line: 0, scope: !2608)
!2611 = !DILocalVariable(name: "zip", arg: 2, scope: !2608, file: !3, line: 1373, type: !268)
!2612 = !DILocation(line: 1378, column: 12, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 1378, column: 6)
!2614 = !DILocation(line: 1378, column: 7, scope: !2613)
!2615 = !DILocation(line: 1378, column: 6, scope: !2608)
!2616 = !DILocation(line: 1379, column: 12, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 1379, column: 7)
!2618 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 1378, column: 29)
!2619 = !DILocation(line: 1379, column: 7, scope: !2617)
!2620 = !DILocation(line: 1379, column: 7, scope: !2618)
!2621 = !DILocation(line: 1380, column: 27, scope: !2617)
!2622 = !DILocation(line: 1380, column: 8, scope: !2617)
!2623 = !DILocalVariable(name: "r", scope: !2608, file: !3, line: 1375, type: !6)
!2624 = !DILocation(line: 1380, column: 4, scope: !2617)
!2625 = !DILocation(line: 1382, column: 8, scope: !2617)
!2626 = !DILocation(line: 0, scope: !2617)
!2627 = !DILocation(line: 1384, column: 9, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 1384, column: 7)
!2629 = !DILocation(line: 1384, column: 7, scope: !2618)
!2630 = !DILocation(line: 1385, column: 26, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 1384, column: 18)
!2632 = !DILocation(line: 1385, column: 4, scope: !2631)
!2633 = !DILocation(line: 1387, column: 4, scope: !2631)
!2634 = !DILocation(line: 1390, column: 8, scope: !2618)
!2635 = !DILocation(line: 1390, column: 21, scope: !2618)
!2636 = !DILocation(line: 1392, column: 8, scope: !2618)
!2637 = !DILocation(line: 1392, column: 24, scope: !2618)
!2638 = !DILocation(line: 1393, column: 2, scope: !2618)
!2639 = !DILocation(line: 1394, column: 2, scope: !2608)
!2640 = !DILocation(line: 1395, column: 1, scope: !2608)
!2641 = distinct !DISubprogram(name: "zip_read_data_none", scope: !3, file: !3, line: 1287, type: !249, scopeLine: 1289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2642 = !DILocalVariable(name: "a", arg: 1, scope: !2641, file: !3, line: 1287, type: !7)
!2643 = !DILocation(line: 0, scope: !2641)
!2644 = !DILocalVariable(name: "_buff", arg: 2, scope: !2641, file: !3, line: 1287, type: !67)
!2645 = !DILocalVariable(name: "size", arg: 3, scope: !2641, file: !3, line: 1288, type: !68)
!2646 = !DILocalVariable(name: "offset", arg: 4, scope: !2641, file: !3, line: 1288, type: !69)
!2647 = !DILocalVariable(name: "bytes_avail", scope: !2641, file: !3, line: 1292, type: !40)
!2648 = !DILocation(line: 1292, column: 10, scope: !2641)
!2649 = !DILocation(line: 1296, column: 26, scope: !2641)
!2650 = !DILocation(line: 1296, column: 34, scope: !2641)
!2651 = !DILocation(line: 1296, column: 8, scope: !2641)
!2652 = !DILocalVariable(name: "zip", scope: !2641, file: !3, line: 1290, type: !268)
!2653 = !DILocation(line: 1298, column: 11, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1298, column: 6)
!2655 = !DILocation(line: 1298, column: 18, scope: !2654)
!2656 = !DILocation(line: 1298, column: 6, scope: !2654)
!2657 = !DILocation(line: 1298, column: 24, scope: !2654)
!2658 = !DILocation(line: 1298, column: 6, scope: !2641)
!2659 = !DILocation(line: 1302, column: 10, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 1298, column: 45)
!2661 = !DILocalVariable(name: "buff", scope: !2641, file: !3, line: 1291, type: !83)
!2662 = !DILocation(line: 1303, column: 7, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1303, column: 7)
!2664 = !DILocation(line: 1303, column: 19, scope: !2663)
!2665 = !DILocation(line: 1303, column: 7, scope: !2660)
!2666 = !DILocation(line: 1308, column: 26, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 1303, column: 25)
!2668 = !DILocation(line: 1308, column: 4, scope: !2667)
!2669 = !DILocation(line: 1311, column: 4, scope: !2667)
!2670 = !DILocalVariable(name: "p", scope: !2660, file: !3, line: 1299, type: !83)
!2671 = !DILocation(line: 0, scope: !2660)
!2672 = !DILocation(line: 1315, column: 7, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1315, column: 7)
!2674 = !DILocation(line: 1315, column: 12, scope: !2673)
!2675 = !DILocation(line: 1315, column: 19, scope: !2673)
!2676 = !DILocation(line: 1315, column: 22, scope: !2673)
!2677 = !DILocation(line: 1315, column: 27, scope: !2673)
!2678 = !DILocation(line: 1316, column: 7, scope: !2673)
!2679 = !DILocation(line: 1316, column: 10, scope: !2673)
!2680 = !DILocation(line: 1316, column: 15, scope: !2673)
!2681 = !DILocation(line: 1316, column: 25, scope: !2673)
!2682 = !DILocation(line: 1316, column: 28, scope: !2673)
!2683 = !DILocation(line: 1316, column: 33, scope: !2673)
!2684 = !DILocation(line: 1317, column: 7, scope: !2673)
!2685 = !DILocation(line: 1317, column: 28, scope: !2673)
!2686 = !DILocation(line: 1317, column: 10, scope: !2673)
!2687 = !DILocation(line: 1317, column: 41, scope: !2673)
!2688 = !DILocation(line: 1317, column: 33, scope: !2673)
!2689 = !DILocation(line: 1318, column: 7, scope: !2673)
!2690 = !DILocation(line: 1318, column: 28, scope: !2673)
!2691 = !DILocation(line: 1318, column: 10, scope: !2673)
!2692 = !DILocation(line: 1319, column: 13, scope: !2673)
!2693 = !DILocation(line: 1318, column: 33, scope: !2673)
!2694 = !DILocation(line: 1320, column: 7, scope: !2673)
!2695 = !DILocation(line: 1320, column: 28, scope: !2673)
!2696 = !DILocation(line: 1320, column: 10, scope: !2673)
!2697 = !DILocation(line: 1321, column: 13, scope: !2673)
!2698 = !DILocation(line: 1320, column: 34, scope: !2673)
!2699 = !DILocation(line: 1315, column: 7, scope: !2660)
!2700 = !DILocation(line: 1322, column: 42, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 1321, column: 44)
!2702 = !DILocation(line: 1322, column: 24, scope: !2701)
!2703 = !DILocation(line: 1322, column: 9, scope: !2701)
!2704 = !DILocation(line: 1322, column: 16, scope: !2701)
!2705 = !DILocation(line: 1322, column: 22, scope: !2701)
!2706 = !DILocation(line: 1323, column: 52, scope: !2701)
!2707 = !DILocation(line: 1323, column: 34, scope: !2701)
!2708 = !DILocation(line: 1323, column: 9, scope: !2701)
!2709 = !DILocation(line: 1323, column: 16, scope: !2701)
!2710 = !DILocation(line: 1323, column: 32, scope: !2701)
!2711 = !DILocation(line: 1324, column: 54, scope: !2701)
!2712 = !DILocation(line: 1324, column: 36, scope: !2701)
!2713 = !DILocation(line: 1324, column: 9, scope: !2701)
!2714 = !DILocation(line: 1324, column: 16, scope: !2701)
!2715 = !DILocation(line: 1324, column: 34, scope: !2701)
!2716 = !DILocation(line: 1325, column: 9, scope: !2701)
!2717 = !DILocation(line: 1325, column: 22, scope: !2701)
!2718 = !DILocation(line: 1326, column: 9, scope: !2701)
!2719 = !DILocation(line: 1326, column: 20, scope: !2701)
!2720 = !DILocation(line: 1327, column: 4, scope: !2701)
!2721 = !DILocation(line: 1330, column: 3, scope: !2660)
!2722 = !DILocation(line: 1336, column: 3, scope: !2660)
!2723 = !DILocation(line: 1336, column: 21, scope: !2660)
!2724 = !DILocation(line: 1336, column: 19, scope: !2660)
!2725 = !DILocation(line: 1336, column: 33, scope: !2660)
!2726 = !DILocation(line: 1336, column: 12, scope: !2660)
!2727 = !DILocation(line: 1337, column: 8, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 1337, column: 8)
!2729 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1336, column: 38)
!2730 = !DILocation(line: 1337, column: 13, scope: !2728)
!2731 = !DILocation(line: 1337, column: 8, scope: !2729)
!2732 = !DILocation(line: 1337, column: 25, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1337, column: 21)
!2734 = !DILocation(line: 1337, column: 31, scope: !2733)
!2735 = !DILocation(line: 1338, column: 13, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1338, column: 13)
!2737 = !DILocation(line: 1338, column: 18, scope: !2736)
!2738 = !DILocation(line: 1338, column: 13, scope: !2728)
!2739 = !DILocation(line: 1338, column: 30, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1338, column: 26)
!2741 = !DILocation(line: 1338, column: 36, scope: !2740)
!2742 = !DILocation(line: 1339, column: 13, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1339, column: 13)
!2744 = !DILocation(line: 1339, column: 18, scope: !2743)
!2745 = !DILocation(line: 1339, column: 13, scope: !2736)
!2746 = !DILocation(line: 1339, column: 33, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 1339, column: 29)
!2748 = !DILocation(line: 1339, column: 39, scope: !2747)
!2749 = !DILocation(line: 1340, column: 13, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 1340, column: 13)
!2751 = !DILocation(line: 1340, column: 18, scope: !2750)
!2752 = !DILocation(line: 1340, column: 28, scope: !2750)
!2753 = !DILocation(line: 1340, column: 31, scope: !2750)
!2754 = !DILocation(line: 1340, column: 36, scope: !2750)
!2755 = !DILocation(line: 1341, column: 8, scope: !2750)
!2756 = !DILocation(line: 1341, column: 11, scope: !2750)
!2757 = !DILocation(line: 1341, column: 16, scope: !2750)
!2758 = !DILocation(line: 1341, column: 23, scope: !2750)
!2759 = !DILocation(line: 1341, column: 26, scope: !2750)
!2760 = !DILocation(line: 1341, column: 31, scope: !2750)
!2761 = !DILocation(line: 1340, column: 13, scope: !2743)
!2762 = !DILocation(line: 1342, column: 5, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 1341, column: 39)
!2764 = !DILocation(line: 1343, column: 15, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 1343, column: 11)
!2766 = !DILocation(line: 0, scope: !2743)
!2767 = !DILocation(line: 0, scope: !2736)
!2768 = !DILocation(line: 0, scope: !2728)
!2769 = distinct !{!2769, !2722, !2770, !684}
!2770 = !DILocation(line: 1344, column: 3, scope: !2660)
!2771 = !DILocation(line: 1345, column: 19, scope: !2660)
!2772 = !DILocation(line: 1345, column: 15, scope: !2660)
!2773 = !DILocation(line: 1346, column: 2, scope: !2660)
!2774 = !DILocation(line: 1347, column: 12, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1347, column: 7)
!2776 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 1346, column: 9)
!2777 = !DILocation(line: 1347, column: 34, scope: !2775)
!2778 = !DILocation(line: 1347, column: 7, scope: !2776)
!2779 = !DILocation(line: 1348, column: 9, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 1347, column: 40)
!2781 = !DILocation(line: 1348, column: 22, scope: !2780)
!2782 = !DILocation(line: 1349, column: 4, scope: !2780)
!2783 = !DILocation(line: 1352, column: 10, scope: !2776)
!2784 = !DILocation(line: 1353, column: 7, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1353, column: 7)
!2786 = !DILocation(line: 1353, column: 19, scope: !2785)
!2787 = !DILocation(line: 1353, column: 7, scope: !2776)
!2788 = !DILocation(line: 1354, column: 26, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 1353, column: 25)
!2790 = !DILocation(line: 1354, column: 4, scope: !2789)
!2791 = !DILocation(line: 1357, column: 4, scope: !2789)
!2792 = !DILocation(line: 1359, column: 7, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1359, column: 7)
!2794 = !DILocation(line: 1359, column: 26, scope: !2793)
!2795 = !DILocation(line: 1359, column: 19, scope: !2793)
!2796 = !DILocation(line: 1359, column: 7, scope: !2776)
!2797 = !DILocation(line: 1360, column: 32, scope: !2793)
!2798 = !DILocation(line: 1360, column: 16, scope: !2793)
!2799 = !DILocation(line: 1360, column: 4, scope: !2793)
!2800 = !DILocation(line: 0, scope: !2654)
!2801 = !DILocation(line: 1362, column: 10, scope: !2641)
!2802 = !DILocation(line: 1362, column: 8, scope: !2641)
!2803 = !DILocation(line: 1363, column: 32, scope: !2641)
!2804 = !DILocation(line: 1363, column: 7, scope: !2641)
!2805 = !DILocation(line: 1363, column: 29, scope: !2641)
!2806 = !DILocation(line: 1364, column: 40, scope: !2641)
!2807 = !DILocation(line: 1364, column: 7, scope: !2641)
!2808 = !DILocation(line: 1364, column: 37, scope: !2641)
!2809 = !DILocation(line: 1365, column: 38, scope: !2641)
!2810 = !DILocation(line: 1365, column: 7, scope: !2641)
!2811 = !DILocation(line: 1365, column: 35, scope: !2641)
!2812 = !DILocation(line: 1366, column: 21, scope: !2641)
!2813 = !DILocation(line: 1366, column: 7, scope: !2641)
!2814 = !DILocation(line: 1366, column: 18, scope: !2641)
!2815 = !DILocation(line: 1367, column: 9, scope: !2641)
!2816 = !DILocation(line: 1368, column: 2, scope: !2641)
!2817 = !DILocation(line: 1369, column: 1, scope: !2641)
!2818 = distinct !DISubprogram(name: "zip_read_data_deflate", scope: !3, file: !3, line: 1398, type: !249, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2819 = !DILocalVariable(name: "a", arg: 1, scope: !2818, file: !3, line: 1398, type: !7)
!2820 = !DILocation(line: 0, scope: !2818)
!2821 = !DILocalVariable(name: "buff", arg: 2, scope: !2818, file: !3, line: 1398, type: !67)
!2822 = !DILocalVariable(name: "size", arg: 3, scope: !2818, file: !3, line: 1399, type: !68)
!2823 = !DILocalVariable(name: "offset", arg: 4, scope: !2818, file: !3, line: 1399, type: !69)
!2824 = !DILocalVariable(name: "bytes_avail", scope: !2818, file: !3, line: 1402, type: !40)
!2825 = !DILocation(line: 1402, column: 10, scope: !2818)
!2826 = !DILocation(line: 1408, column: 26, scope: !2818)
!2827 = !DILocation(line: 1408, column: 34, scope: !2818)
!2828 = !DILocation(line: 1408, column: 8, scope: !2818)
!2829 = !DILocalVariable(name: "zip", scope: !2818, file: !3, line: 1401, type: !268)
!2830 = !DILocation(line: 1411, column: 11, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 1411, column: 6)
!2832 = !DILocation(line: 1411, column: 31, scope: !2831)
!2833 = !DILocation(line: 1411, column: 6, scope: !2818)
!2834 = !DILocation(line: 1412, column: 8, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 1411, column: 40)
!2836 = !DILocation(line: 1412, column: 33, scope: !2835)
!2837 = !DILocation(line: 1414, column: 38, scope: !2835)
!2838 = !DILocation(line: 1414, column: 26, scope: !2835)
!2839 = !DILocation(line: 1413, column: 8, scope: !2835)
!2840 = !DILocation(line: 1414, column: 7, scope: !2835)
!2841 = !DILocation(line: 1415, column: 12, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 1415, column: 7)
!2843 = !DILocation(line: 1415, column: 32, scope: !2842)
!2844 = !DILocation(line: 1415, column: 7, scope: !2835)
!2845 = !DILocation(line: 1416, column: 26, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1415, column: 41)
!2847 = !DILocation(line: 1416, column: 4, scope: !2846)
!2848 = !DILocation(line: 1418, column: 4, scope: !2846)
!2849 = !DILocation(line: 1420, column: 2, scope: !2835)
!2850 = !DILocation(line: 1422, column: 6, scope: !2818)
!2851 = !DILocalVariable(name: "r", scope: !2818, file: !3, line: 1404, type: !6)
!2852 = !DILocation(line: 1423, column: 8, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 1423, column: 6)
!2854 = !DILocation(line: 1423, column: 6, scope: !2818)
!2855 = !DILocation(line: 1424, column: 3, scope: !2853)
!2856 = !DILocation(line: 1432, column: 20, scope: !2818)
!2857 = !DILocalVariable(name: "compressed_buff", scope: !2818, file: !3, line: 1403, type: !45)
!2858 = !DILocation(line: 1433, column: 17, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 1433, column: 6)
!2860 = !DILocation(line: 1433, column: 24, scope: !2859)
!2861 = !DILocation(line: 1433, column: 12, scope: !2859)
!2862 = !DILocation(line: 1433, column: 30, scope: !2859)
!2863 = !DILocation(line: 1433, column: 8, scope: !2859)
!2864 = !DILocation(line: 1434, column: 6, scope: !2859)
!2865 = !DILocation(line: 1434, column: 9, scope: !2859)
!2866 = !DILocation(line: 1434, column: 28, scope: !2859)
!2867 = !DILocation(line: 1434, column: 21, scope: !2859)
!2868 = !DILocation(line: 1433, column: 6, scope: !2818)
!2869 = !DILocation(line: 1435, column: 31, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 1434, column: 51)
!2871 = !DILocation(line: 1435, column: 15, scope: !2870)
!2872 = !DILocation(line: 1436, column: 2, scope: !2870)
!2873 = !DILocation(line: 1437, column: 6, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 1437, column: 6)
!2875 = !DILocation(line: 1437, column: 18, scope: !2874)
!2876 = !DILocation(line: 1437, column: 6, scope: !2818)
!2877 = !DILocation(line: 1438, column: 25, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 1437, column: 24)
!2879 = !DILocation(line: 1438, column: 3, scope: !2878)
!2880 = !DILocation(line: 1440, column: 3, scope: !2878)
!2881 = !DILocation(line: 1449, column: 33, scope: !2818)
!2882 = !DILocation(line: 1449, column: 24, scope: !2818)
!2883 = !DILocation(line: 1449, column: 7, scope: !2818)
!2884 = !DILocation(line: 1449, column: 14, scope: !2818)
!2885 = !DILocation(line: 1449, column: 22, scope: !2818)
!2886 = !DILocation(line: 1450, column: 31, scope: !2818)
!2887 = !DILocation(line: 1450, column: 25, scope: !2818)
!2888 = !DILocation(line: 1450, column: 7, scope: !2818)
!2889 = !DILocation(line: 1450, column: 14, scope: !2818)
!2890 = !DILocation(line: 1450, column: 23, scope: !2818)
!2891 = !DILocation(line: 1451, column: 7, scope: !2818)
!2892 = !DILocation(line: 1451, column: 14, scope: !2818)
!2893 = !DILocation(line: 1451, column: 23, scope: !2818)
!2894 = !DILocation(line: 1452, column: 30, scope: !2818)
!2895 = !DILocation(line: 1452, column: 7, scope: !2818)
!2896 = !DILocation(line: 1452, column: 14, scope: !2818)
!2897 = !DILocation(line: 1452, column: 23, scope: !2818)
!2898 = !DILocation(line: 1453, column: 37, scope: !2818)
!2899 = !DILocation(line: 1453, column: 26, scope: !2818)
!2900 = !DILocation(line: 1453, column: 7, scope: !2818)
!2901 = !DILocation(line: 1453, column: 14, scope: !2818)
!2902 = !DILocation(line: 1453, column: 24, scope: !2818)
!2903 = !DILocation(line: 1454, column: 7, scope: !2818)
!2904 = !DILocation(line: 1454, column: 14, scope: !2818)
!2905 = !DILocation(line: 1454, column: 24, scope: !2818)
!2906 = !DILocation(line: 1456, column: 20, scope: !2818)
!2907 = !DILocation(line: 1456, column: 6, scope: !2818)
!2908 = !DILocation(line: 1457, column: 2, scope: !2818)
!2909 = !DILocation(line: 1459, column: 3, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 1457, column: 13)
!2911 = !DILocation(line: 1461, column: 8, scope: !2910)
!2912 = !DILocation(line: 1461, column: 21, scope: !2910)
!2913 = !DILocation(line: 1462, column: 3, scope: !2910)
!2914 = !DILocation(line: 1464, column: 25, scope: !2910)
!2915 = !DILocation(line: 1464, column: 3, scope: !2910)
!2916 = !DILocation(line: 1466, column: 3, scope: !2910)
!2917 = !DILocation(line: 1468, column: 25, scope: !2910)
!2918 = !DILocation(line: 1468, column: 3, scope: !2910)
!2919 = !DILocation(line: 1470, column: 3, scope: !2910)
!2920 = !DILocation(line: 1474, column: 21, scope: !2818)
!2921 = !DILocation(line: 1474, column: 28, scope: !2818)
!2922 = !DILocation(line: 1474, column: 14, scope: !2818)
!2923 = !DILocation(line: 1475, column: 22, scope: !2818)
!2924 = !DILocation(line: 1475, column: 2, scope: !2818)
!2925 = !DILocation(line: 1476, column: 32, scope: !2818)
!2926 = !DILocation(line: 1476, column: 7, scope: !2818)
!2927 = !DILocation(line: 1476, column: 29, scope: !2818)
!2928 = !DILocation(line: 1477, column: 38, scope: !2818)
!2929 = !DILocation(line: 1477, column: 7, scope: !2818)
!2930 = !DILocation(line: 1477, column: 35, scope: !2818)
!2931 = !DILocation(line: 1479, column: 15, scope: !2818)
!2932 = !DILocation(line: 1479, column: 22, scope: !2818)
!2933 = !DILocation(line: 1479, column: 8, scope: !2818)
!2934 = !DILocation(line: 1480, column: 45, scope: !2818)
!2935 = !DILocation(line: 1480, column: 52, scope: !2818)
!2936 = !DILocation(line: 1480, column: 7, scope: !2818)
!2937 = !DILocation(line: 1480, column: 37, scope: !2818)
!2938 = !DILocation(line: 1481, column: 15, scope: !2818)
!2939 = !DILocation(line: 1481, column: 8, scope: !2818)
!2940 = !DILocation(line: 1483, column: 11, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 1483, column: 6)
!2942 = !DILocation(line: 1483, column: 6, scope: !2941)
!2943 = !DILocation(line: 1483, column: 24, scope: !2941)
!2944 = !DILocation(line: 1483, column: 33, scope: !2941)
!2945 = !DILocation(line: 1483, column: 40, scope: !2941)
!2946 = !DILocation(line: 1483, column: 28, scope: !2941)
!2947 = !DILocation(line: 1483, column: 46, scope: !2941)
!2948 = !DILocation(line: 1483, column: 6, scope: !2818)
!2949 = !DILocation(line: 1486, column: 20, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 1486, column: 7)
!2951 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 1483, column: 68)
!2952 = !DILocalVariable(name: "p", scope: !2951, file: !3, line: 1484, type: !83)
!2953 = !DILocation(line: 0, scope: !2951)
!2954 = !DILocation(line: 1486, column: 12, scope: !2950)
!2955 = !DILocation(line: 1486, column: 7, scope: !2951)
!2956 = !DILocation(line: 1487, column: 26, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 1486, column: 56)
!2958 = !DILocation(line: 1487, column: 4, scope: !2957)
!2959 = !DILocation(line: 1490, column: 4, scope: !2957)
!2960 = !DILocation(line: 1493, column: 7, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 1493, column: 7)
!2962 = !DILocation(line: 1493, column: 12, scope: !2961)
!2963 = !DILocation(line: 1493, column: 19, scope: !2961)
!2964 = !DILocation(line: 1493, column: 22, scope: !2961)
!2965 = !DILocation(line: 1493, column: 27, scope: !2961)
!2966 = !DILocation(line: 1493, column: 34, scope: !2961)
!2967 = !DILocation(line: 1494, column: 7, scope: !2961)
!2968 = !DILocation(line: 1494, column: 12, scope: !2961)
!2969 = !DILocation(line: 1494, column: 22, scope: !2961)
!2970 = !DILocation(line: 1494, column: 25, scope: !2961)
!2971 = !DILocation(line: 1494, column: 30, scope: !2961)
!2972 = !DILocation(line: 1493, column: 7, scope: !2951)
!2973 = !DILocation(line: 1495, column: 42, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 1494, column: 41)
!2975 = !DILocation(line: 1495, column: 24, scope: !2974)
!2976 = !DILocation(line: 1495, column: 9, scope: !2974)
!2977 = !DILocation(line: 1495, column: 16, scope: !2974)
!2978 = !DILocation(line: 1495, column: 22, scope: !2974)
!2979 = !DILocation(line: 1496, column: 52, scope: !2974)
!2980 = !DILocation(line: 1496, column: 34, scope: !2974)
!2981 = !DILocation(line: 1496, column: 9, scope: !2974)
!2982 = !DILocation(line: 1496, column: 16, scope: !2974)
!2983 = !DILocation(line: 1496, column: 32, scope: !2974)
!2984 = !DILocation(line: 1497, column: 54, scope: !2974)
!2985 = !DILocation(line: 1497, column: 36, scope: !2974)
!2986 = !DILocation(line: 1497, column: 9, scope: !2974)
!2987 = !DILocation(line: 1497, column: 16, scope: !2974)
!2988 = !DILocation(line: 1497, column: 34, scope: !2974)
!2989 = !DILocation(line: 1498, column: 9, scope: !2974)
!2990 = !DILocation(line: 1498, column: 20, scope: !2974)
!2991 = !DILocation(line: 1499, column: 3, scope: !2974)
!2992 = !DILocation(line: 1500, column: 2, scope: !2951)
!2993 = !DILocation(line: 1502, column: 2, scope: !2818)
!2994 = !DILocation(line: 1503, column: 1, scope: !2818)
