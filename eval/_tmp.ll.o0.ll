; ModuleID = '/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_read_support_format_zip.c'
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
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.zip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.archive** %3, metadata !436, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.declare(metadata %struct.archive_read** %4, metadata !438, metadata !DIExpression()), !dbg !439
  %8 = load %struct.archive*, %struct.archive** %3, align 8, !dbg !440
  %9 = bitcast %struct.archive* %8 to %struct.archive_read*, !dbg !441
  store %struct.archive_read* %9, %struct.archive_read** %4, align 8, !dbg !439
  call void @llvm.dbg.declare(metadata %struct.zip** %5, metadata !442, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.declare(metadata i32* %6, metadata !444, metadata !DIExpression()), !dbg !445
  br label %10, !dbg !446

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %7, metadata !447, metadata !DIExpression()), !dbg !449
  %11 = load %struct.archive*, %struct.archive** %3, align 8, !dbg !449
  %12 = call i32 @__archive_check_magic(%struct.archive* noundef %11, i32 noundef 14594245, i32 noundef 1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !449
  store i32 %12, i32* %7, align 4, !dbg !449
  %13 = load i32, i32* %7, align 4, !dbg !450
  %14 = icmp eq i32 %13, -30, !dbg !450
  br i1 %14, label %15, label %16, !dbg !449

15:                                               ; preds = %10
  store i32 -30, i32* %2, align 4, !dbg !450
  br label %38, !dbg !450

16:                                               ; preds = %10
  br label %17, !dbg !449

17:                                               ; preds = %16
  %18 = call noalias i8* @malloc(i64 noundef 424) #8, !dbg !452
  %19 = bitcast i8* %18 to %struct.zip*, !dbg !453
  store %struct.zip* %19, %struct.zip** %5, align 8, !dbg !454
  %20 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !455
  %21 = icmp eq %struct.zip* %20, null, !dbg !457
  br i1 %21, label %22, label %25, !dbg !458

22:                                               ; preds = %17
  %23 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !459
  %24 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %23, i32 0, i32 0, !dbg !461
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %24, i32 noundef 12, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)), !dbg !462
  store i32 -30, i32* %2, align 4, !dbg !463
  br label %38, !dbg !463

25:                                               ; preds = %17
  %26 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !464
  %27 = bitcast %struct.zip* %26 to i8*, !dbg !465
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 424, i1 false), !dbg !465
  %28 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !466
  %29 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !467
  %30 = bitcast %struct.zip* %29 to i8*, !dbg !467
  %31 = call i32 @__archive_read_register_format(%struct.archive_read* noundef %28, i8* noundef %30, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 (%struct.archive_read*, i32)* noundef @archive_read_format_zip_streamable_bid, i32 (%struct.archive_read*, i8*, i8*)* noundef @archive_read_format_zip_options, i32 (%struct.archive_read*, %struct.archive_entry*)* noundef @archive_read_format_zip_streamable_read_header, i32 (%struct.archive_read*, i8**, i64*, i64*)* noundef @archive_read_format_zip_read_data, i32 (%struct.archive_read*)* noundef @archive_read_format_zip_read_data_skip, i64 (%struct.archive_read*, i64, i32)* noundef null, i32 (%struct.archive_read*)* noundef @archive_read_format_zip_cleanup), !dbg !468
  store i32 %31, i32* %6, align 4, !dbg !469
  %32 = load i32, i32* %6, align 4, !dbg !470
  %33 = icmp ne i32 %32, 0, !dbg !472
  br i1 %33, label %34, label %37, !dbg !473

34:                                               ; preds = %25
  %35 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !474
  %36 = bitcast %struct.zip* %35 to i8*, !dbg !474
  call void @free(i8* noundef %36) #8, !dbg !475
  br label %37, !dbg !475

37:                                               ; preds = %34, %25
  store i32 0, i32* %2, align 4, !dbg !476
  br label %38, !dbg !476

38:                                               ; preds = %37, %22, %15
  %39 = load i32, i32* %2, align 4, !dbg !477
  ret i32 %39, !dbg !477
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
define internal i32 @archive_read_format_zip_streamable_bid(%struct.archive_read* noundef %0, i32 noundef %1) #0 !dbg !478 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %4, metadata !479, metadata !DIExpression()), !dbg !480
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !481, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.declare(metadata i8** %6, metadata !483, metadata !DIExpression()), !dbg !484
  %7 = load i32, i32* %5, align 4, !dbg !485
  %8 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !486
  %9 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %8, i64 noundef 4, i64* noundef null), !dbg !488
  store i8* %9, i8** %6, align 8, !dbg !489
  %10 = icmp eq i8* %9, null, !dbg !490
  br i1 %10, label %11, label %12, !dbg !491

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !492
  br label %87, !dbg !492

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !493
  %14 = getelementptr inbounds i8, i8* %13, i64 0, !dbg !493
  %15 = load i8, i8* %14, align 1, !dbg !493
  %16 = sext i8 %15 to i32, !dbg !493
  %17 = icmp eq i32 %16, 80, !dbg !495
  br i1 %17, label %18, label %86, !dbg !496

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8, !dbg !497
  %20 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !497
  %21 = load i8, i8* %20, align 1, !dbg !497
  %22 = sext i8 %21 to i32, !dbg !497
  %23 = icmp eq i32 %22, 75, !dbg !498
  br i1 %23, label %24, label %86, !dbg !499

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8, !dbg !500
  %26 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !500
  %27 = load i8, i8* %26, align 1, !dbg !500
  %28 = sext i8 %27 to i32, !dbg !500
  %29 = icmp eq i32 %28, 1, !dbg !503
  br i1 %29, label %30, label %36, !dbg !504

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8, !dbg !505
  %32 = getelementptr inbounds i8, i8* %31, i64 3, !dbg !505
  %33 = load i8, i8* %32, align 1, !dbg !505
  %34 = sext i8 %33 to i32, !dbg !505
  %35 = icmp eq i32 %34, 2, !dbg !506
  br i1 %35, label %84, label %36, !dbg !507

36:                                               ; preds = %30, %24
  %37 = load i8*, i8** %6, align 8, !dbg !508
  %38 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !508
  %39 = load i8, i8* %38, align 1, !dbg !508
  %40 = sext i8 %39 to i32, !dbg !508
  %41 = icmp eq i32 %40, 3, !dbg !509
  br i1 %41, label %42, label %48, !dbg !510

42:                                               ; preds = %36
  %43 = load i8*, i8** %6, align 8, !dbg !511
  %44 = getelementptr inbounds i8, i8* %43, i64 3, !dbg !511
  %45 = load i8, i8* %44, align 1, !dbg !511
  %46 = sext i8 %45 to i32, !dbg !511
  %47 = icmp eq i32 %46, 4, !dbg !512
  br i1 %47, label %84, label %48, !dbg !513

48:                                               ; preds = %42, %36
  %49 = load i8*, i8** %6, align 8, !dbg !514
  %50 = getelementptr inbounds i8, i8* %49, i64 2, !dbg !514
  %51 = load i8, i8* %50, align 1, !dbg !514
  %52 = sext i8 %51 to i32, !dbg !514
  %53 = icmp eq i32 %52, 5, !dbg !515
  br i1 %53, label %54, label %60, !dbg !516

54:                                               ; preds = %48
  %55 = load i8*, i8** %6, align 8, !dbg !517
  %56 = getelementptr inbounds i8, i8* %55, i64 3, !dbg !517
  %57 = load i8, i8* %56, align 1, !dbg !517
  %58 = sext i8 %57 to i32, !dbg !517
  %59 = icmp eq i32 %58, 6, !dbg !518
  br i1 %59, label %84, label %60, !dbg !519

60:                                               ; preds = %54, %48
  %61 = load i8*, i8** %6, align 8, !dbg !520
  %62 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !520
  %63 = load i8, i8* %62, align 1, !dbg !520
  %64 = sext i8 %63 to i32, !dbg !520
  %65 = icmp eq i32 %64, 7, !dbg !521
  br i1 %65, label %66, label %72, !dbg !522

66:                                               ; preds = %60
  %67 = load i8*, i8** %6, align 8, !dbg !523
  %68 = getelementptr inbounds i8, i8* %67, i64 3, !dbg !523
  %69 = load i8, i8* %68, align 1, !dbg !523
  %70 = sext i8 %69 to i32, !dbg !523
  %71 = icmp eq i32 %70, 8, !dbg !524
  br i1 %71, label %84, label %72, !dbg !525

72:                                               ; preds = %66, %60
  %73 = load i8*, i8** %6, align 8, !dbg !526
  %74 = getelementptr inbounds i8, i8* %73, i64 2, !dbg !526
  %75 = load i8, i8* %74, align 1, !dbg !526
  %76 = sext i8 %75 to i32, !dbg !526
  %77 = icmp eq i32 %76, 48, !dbg !527
  br i1 %77, label %78, label %85, !dbg !528

78:                                               ; preds = %72
  %79 = load i8*, i8** %6, align 8, !dbg !529
  %80 = getelementptr inbounds i8, i8* %79, i64 3, !dbg !529
  %81 = load i8, i8* %80, align 1, !dbg !529
  %82 = sext i8 %81 to i32, !dbg !529
  %83 = icmp eq i32 %82, 48, !dbg !530
  br i1 %83, label %84, label %85, !dbg !531

84:                                               ; preds = %78, %66, %54, %42, %30
  store i32 30, i32* %3, align 4, !dbg !532
  br label %87, !dbg !532

85:                                               ; preds = %78, %72
  br label %86, !dbg !533

86:                                               ; preds = %85, %18, %12
  store i32 0, i32* %3, align 4, !dbg !534
  br label %87, !dbg !534

87:                                               ; preds = %86, %84, %11
  %88 = load i32, i32* %3, align 4, !dbg !535
  ret i32 %88, !dbg !535
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_zip_options(%struct.archive_read* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !536 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.zip*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %5, metadata !537, metadata !DIExpression()), !dbg !538
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !539, metadata !DIExpression()), !dbg !540
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !541, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.declare(metadata %struct.zip** %8, metadata !543, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.declare(metadata i32* %9, metadata !545, metadata !DIExpression()), !dbg !546
  store i32 -25, i32* %9, align 4, !dbg !546
  %10 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !547
  %11 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %10, i32 0, i32 19, !dbg !548
  %12 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %11, align 8, !dbg !548
  %13 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %12, i32 0, i32 0, !dbg !549
  %14 = load i8*, i8** %13, align 8, !dbg !549
  %15 = bitcast i8* %14 to %struct.zip*, !dbg !550
  store %struct.zip* %15, %struct.zip** %8, align 8, !dbg !551
  %16 = load i8*, i8** %6, align 8, !dbg !552
  %17 = call i32 @strcmp(i8* noundef %16, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0)) #9, !dbg !554
  %18 = icmp eq i32 %17, 0, !dbg !555
  br i1 %18, label %19, label %26, !dbg !556

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8, !dbg !557
  %21 = icmp ne i8* %20, null, !dbg !559
  %22 = zext i1 %21 to i64, !dbg !560
  %23 = select i1 %21, i32 1, i32 0, !dbg !560
  %24 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !561
  %25 = getelementptr inbounds %struct.zip, %struct.zip* %24, i32 0, i32 28, !dbg !562
  store i32 %23, i32* %25, align 8, !dbg !563
  store i32 0, i32* %4, align 4, !dbg !564
  br label %70, !dbg !564

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8, !dbg !565
  %28 = call i32 @strcmp(i8* noundef %27, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0)) #9, !dbg !567
  %29 = icmp eq i32 %28, 0, !dbg !568
  br i1 %29, label %30, label %68, !dbg !569

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8, !dbg !570
  %32 = icmp eq i8* %31, null, !dbg !573
  br i1 %32, label %39, label %33, !dbg !574

33:                                               ; preds = %30
  %34 = load i8*, i8** %7, align 8, !dbg !575
  %35 = getelementptr inbounds i8, i8* %34, i64 0, !dbg !575
  %36 = load i8, i8* %35, align 1, !dbg !575
  %37 = sext i8 %36 to i32, !dbg !575
  %38 = icmp eq i32 %37, 0, !dbg !576
  br i1 %38, label %39, label %42, !dbg !577

39:                                               ; preds = %33, %30
  %40 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !578
  %41 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %40, i32 0, i32 0, !dbg !579
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %41, i32 noundef -1, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.42, i64 0, i64 0)), !dbg !580
  br label %66, !dbg !580

42:                                               ; preds = %33
  %43 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !581
  %44 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %43, i32 0, i32 0, !dbg !583
  %45 = load i8*, i8** %7, align 8, !dbg !584
  %46 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive* noundef %44, i8* noundef %45, i32 noundef 0), !dbg !585
  %47 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !586
  %48 = getelementptr inbounds %struct.zip, %struct.zip* %47, i32 0, i32 25, !dbg !587
  store %struct.archive_string_conv* %46, %struct.archive_string_conv** %48, align 8, !dbg !588
  %49 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !589
  %50 = getelementptr inbounds %struct.zip, %struct.zip* %49, i32 0, i32 25, !dbg !591
  %51 = load %struct.archive_string_conv*, %struct.archive_string_conv** %50, align 8, !dbg !591
  %52 = icmp ne %struct.archive_string_conv* %51, null, !dbg !592
  br i1 %52, label %53, label %64, !dbg !593

53:                                               ; preds = %42
  %54 = load i8*, i8** %7, align 8, !dbg !594
  %55 = call i32 @strcmp(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !597
  %56 = icmp eq i32 %55, 0, !dbg !598
  br i1 %56, label %57, label %63, !dbg !599

57:                                               ; preds = %53
  %58 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !600
  %59 = getelementptr inbounds %struct.zip, %struct.zip* %58, i32 0, i32 25, !dbg !601
  %60 = load %struct.archive_string_conv*, %struct.archive_string_conv** %59, align 8, !dbg !601
  %61 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !602
  %62 = getelementptr inbounds %struct.zip, %struct.zip* %61, i32 0, i32 27, !dbg !603
  store %struct.archive_string_conv* %60, %struct.archive_string_conv** %62, align 8, !dbg !604
  br label %63, !dbg !602

63:                                               ; preds = %57, %53
  store i32 0, i32* %9, align 4, !dbg !605
  br label %65, !dbg !606

64:                                               ; preds = %42
  store i32 -30, i32* %9, align 4, !dbg !607
  br label %65

65:                                               ; preds = %64, %63
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32, i32* %9, align 4, !dbg !608
  store i32 %67, i32* %4, align 4, !dbg !609
  br label %70, !dbg !609

68:                                               ; preds = %26
  br label %69

69:                                               ; preds = %68
  store i32 -20, i32* %4, align 4, !dbg !610
  br label %70, !dbg !610

70:                                               ; preds = %69, %66, %19
  %71 = load i32, i32* %4, align 4, !dbg !611
  ret i32 %71, !dbg !611
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_zip_streamable_read_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1) #0 !dbg !612 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.zip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %4, metadata !613, metadata !DIExpression()), !dbg !614
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_entry** %5, metadata !615, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.declare(metadata %struct.zip** %6, metadata !617, metadata !DIExpression()), !dbg !618
  %11 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !619
  %12 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %11, i32 0, i32 0, !dbg !620
  %13 = getelementptr inbounds %struct.archive, %struct.archive* %12, i32 0, i32 3, !dbg !621
  store i32 327680, i32* %13, align 8, !dbg !622
  %14 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !623
  %15 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %14, i32 0, i32 0, !dbg !625
  %16 = getelementptr inbounds %struct.archive, %struct.archive* %15, i32 0, i32 4, !dbg !626
  %17 = load i8*, i8** %16, align 8, !dbg !626
  %18 = icmp eq i8* %17, null, !dbg !627
  br i1 %18, label %19, label %23, !dbg !628

19:                                               ; preds = %2
  %20 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !629
  %21 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %20, i32 0, i32 0, !dbg !630
  %22 = getelementptr inbounds %struct.archive, %struct.archive* %21, i32 0, i32 4, !dbg !631
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %22, align 8, !dbg !632
  br label %23, !dbg !629

23:                                               ; preds = %19, %2
  %24 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !633
  %25 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %24, i32 0, i32 19, !dbg !634
  %26 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %25, align 8, !dbg !634
  %27 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %26, i32 0, i32 0, !dbg !635
  %28 = load i8*, i8** %27, align 8, !dbg !635
  %29 = bitcast i8* %28 to %struct.zip*, !dbg !636
  store %struct.zip* %29, %struct.zip** %6, align 8, !dbg !637
  %30 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !638
  %31 = getelementptr inbounds %struct.zip, %struct.zip* %30, i32 0, i32 7, !dbg !640
  %32 = load %struct.zip_entry*, %struct.zip_entry** %31, align 8, !dbg !640
  %33 = icmp eq %struct.zip_entry* %32, null, !dbg !641
  br i1 %33, label %34, label %47, !dbg !642

34:                                               ; preds = %23
  %35 = call noalias i8* @malloc(i64 noundef 136) #8, !dbg !643
  %36 = bitcast i8* %35 to %struct.zip_entry*, !dbg !643
  %37 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !645
  %38 = getelementptr inbounds %struct.zip, %struct.zip* %37, i32 0, i32 7, !dbg !646
  store %struct.zip_entry* %36, %struct.zip_entry** %38, align 8, !dbg !647
  %39 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !648
  %40 = getelementptr inbounds %struct.zip, %struct.zip* %39, i32 0, i32 7, !dbg !650
  %41 = load %struct.zip_entry*, %struct.zip_entry** %40, align 8, !dbg !650
  %42 = icmp eq %struct.zip_entry* %41, null, !dbg !651
  br i1 %42, label %43, label %46, !dbg !652

43:                                               ; preds = %34
  %44 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !653
  %45 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %44, i32 0, i32 0, !dbg !655
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %45, i32 noundef 12, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0)), !dbg !656
  store i32 -30, i32* %3, align 4, !dbg !657
  br label %147, !dbg !657

46:                                               ; preds = %34
  br label %47, !dbg !658

47:                                               ; preds = %46, %23
  %48 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !659
  %49 = getelementptr inbounds %struct.zip, %struct.zip* %48, i32 0, i32 7, !dbg !660
  %50 = load %struct.zip_entry*, %struct.zip_entry** %49, align 8, !dbg !660
  %51 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !661
  %52 = getelementptr inbounds %struct.zip, %struct.zip* %51, i32 0, i32 8, !dbg !662
  store %struct.zip_entry* %50, %struct.zip_entry** %52, align 8, !dbg !663
  %53 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !664
  %54 = getelementptr inbounds %struct.zip, %struct.zip* %53, i32 0, i32 8, !dbg !665
  %55 = load %struct.zip_entry*, %struct.zip_entry** %54, align 8, !dbg !665
  %56 = bitcast %struct.zip_entry* %55 to i8*, !dbg !666
  call void @llvm.memset.p0i8.i64(i8* align 8 %56, i8 0, i64 136, i1 false), !dbg !666
  %57 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !667
  %58 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !668
  %59 = getelementptr inbounds %struct.zip, %struct.zip* %58, i32 0, i32 11, !dbg !669
  %60 = load i64, i64* %59, align 8, !dbg !669
  %61 = call i64 @zip_read_consume(%struct.archive_read* noundef %57, i64 noundef %60), !dbg !670
  %62 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !671
  %63 = getelementptr inbounds %struct.zip, %struct.zip* %62, i32 0, i32 11, !dbg !672
  store i64 0, i64* %63, align 8, !dbg !673
  br label %64, !dbg !674

64:                                               ; preds = %143, %47
  call void @llvm.dbg.declare(metadata i64* %7, metadata !675, metadata !DIExpression()), !dbg !679
  store i64 0, i64* %7, align 8, !dbg !679
  call void @llvm.dbg.declare(metadata i8** %8, metadata !680, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.declare(metadata i8** %9, metadata !682, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.declare(metadata i64* %10, metadata !684, metadata !DIExpression()), !dbg !685
  %65 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !686
  %66 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %65, i64 noundef 4, i64* noundef %10), !dbg !687
  store i8* %66, i8** %8, align 8, !dbg !688
  %67 = load i8*, i8** %8, align 8, !dbg !689
  %68 = icmp eq i8* %67, null, !dbg !691
  br i1 %68, label %69, label %70, !dbg !692

69:                                               ; preds = %64
  store i32 -30, i32* %3, align 4, !dbg !693
  br label %147, !dbg !693

70:                                               ; preds = %64
  %71 = load i8*, i8** %8, align 8, !dbg !694
  %72 = load i64, i64* %10, align 8, !dbg !695
  %73 = getelementptr inbounds i8, i8* %71, i64 %72, !dbg !696
  store i8* %73, i8** %9, align 8, !dbg !697
  br label %74, !dbg !698

74:                                               ; preds = %138, %70
  %75 = load i8*, i8** %8, align 8, !dbg !699
  %76 = getelementptr inbounds i8, i8* %75, i64 4, !dbg !700
  %77 = load i8*, i8** %9, align 8, !dbg !701
  %78 = icmp ule i8* %76, %77, !dbg !702
  br i1 %78, label %79, label %143, !dbg !698

79:                                               ; preds = %74
  %80 = load i8*, i8** %8, align 8, !dbg !703
  %81 = getelementptr inbounds i8, i8* %80, i64 0, !dbg !703
  %82 = load i8, i8* %81, align 1, !dbg !703
  %83 = sext i8 %82 to i32, !dbg !703
  %84 = icmp eq i32 %83, 80, !dbg !706
  br i1 %84, label %85, label %138, !dbg !707

85:                                               ; preds = %79
  %86 = load i8*, i8** %8, align 8, !dbg !708
  %87 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !708
  %88 = load i8, i8* %87, align 1, !dbg !708
  %89 = sext i8 %88 to i32, !dbg !708
  %90 = icmp eq i32 %89, 75, !dbg !709
  br i1 %90, label %91, label %138, !dbg !710

91:                                               ; preds = %85
  %92 = load i8*, i8** %8, align 8, !dbg !711
  %93 = getelementptr inbounds i8, i8* %92, i64 2, !dbg !711
  %94 = load i8, i8* %93, align 1, !dbg !711
  %95 = sext i8 %94 to i32, !dbg !711
  %96 = icmp eq i32 %95, 1, !dbg !714
  br i1 %96, label %97, label %104, !dbg !715

97:                                               ; preds = %91
  %98 = load i8*, i8** %8, align 8, !dbg !716
  %99 = getelementptr inbounds i8, i8* %98, i64 3, !dbg !716
  %100 = load i8, i8* %99, align 1, !dbg !716
  %101 = sext i8 %100 to i32, !dbg !716
  %102 = icmp eq i32 %101, 2, !dbg !717
  br i1 %102, label %103, label %104, !dbg !718

103:                                              ; preds = %97
  store i32 1, i32* %3, align 4, !dbg !719
  br label %147, !dbg !719

104:                                              ; preds = %97, %91
  %105 = load i8*, i8** %8, align 8, !dbg !720
  %106 = getelementptr inbounds i8, i8* %105, i64 2, !dbg !720
  %107 = load i8, i8* %106, align 1, !dbg !720
  %108 = sext i8 %107 to i32, !dbg !720
  %109 = icmp eq i32 %108, 3, !dbg !722
  br i1 %109, label %110, label %124, !dbg !723

110:                                              ; preds = %104
  %111 = load i8*, i8** %8, align 8, !dbg !724
  %112 = getelementptr inbounds i8, i8* %111, i64 3, !dbg !724
  %113 = load i8, i8* %112, align 1, !dbg !724
  %114 = sext i8 %113 to i32, !dbg !724
  %115 = icmp eq i32 %114, 4, !dbg !725
  br i1 %115, label %116, label %124, !dbg !726

116:                                              ; preds = %110
  %117 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !727
  %118 = load i64, i64* %7, align 8, !dbg !729
  %119 = call i64 @zip_read_consume(%struct.archive_read* noundef %117, i64 noundef %118), !dbg !730
  %120 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !731
  %121 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8, !dbg !732
  %122 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !733
  %123 = call i32 @zip_read_local_file_header(%struct.archive_read* noundef %120, %struct.archive_entry* noundef %121, %struct.zip* noundef %122), !dbg !734
  store i32 %123, i32* %3, align 4, !dbg !735
  br label %147, !dbg !735

124:                                              ; preds = %110, %104
  %125 = load i8*, i8** %8, align 8, !dbg !736
  %126 = getelementptr inbounds i8, i8* %125, i64 2, !dbg !736
  %127 = load i8, i8* %126, align 1, !dbg !736
  %128 = sext i8 %127 to i32, !dbg !736
  %129 = icmp eq i32 %128, 5, !dbg !738
  br i1 %129, label %130, label %137, !dbg !739

130:                                              ; preds = %124
  %131 = load i8*, i8** %8, align 8, !dbg !740
  %132 = getelementptr inbounds i8, i8* %131, i64 3, !dbg !740
  %133 = load i8, i8* %132, align 1, !dbg !740
  %134 = sext i8 %133 to i32, !dbg !740
  %135 = icmp eq i32 %134, 6, !dbg !741
  br i1 %135, label %136, label %137, !dbg !742

136:                                              ; preds = %130
  store i32 1, i32* %3, align 4, !dbg !743
  br label %147, !dbg !743

137:                                              ; preds = %130, %124
  br label %138, !dbg !744

138:                                              ; preds = %137, %85, %79
  %139 = load i8*, i8** %8, align 8, !dbg !745
  %140 = getelementptr inbounds i8, i8* %139, i32 1, !dbg !745
  store i8* %140, i8** %8, align 8, !dbg !745
  %141 = load i64, i64* %7, align 8, !dbg !746
  %142 = add nsw i64 %141, 1, !dbg !746
  store i64 %142, i64* %7, align 8, !dbg !746
  br label %74, !dbg !698, !llvm.loop !747

143:                                              ; preds = %74
  %144 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !750
  %145 = load i64, i64* %7, align 8, !dbg !751
  %146 = call i64 @zip_read_consume(%struct.archive_read* noundef %144, i64 noundef %145), !dbg !752
  br label %64, !dbg !753, !llvm.loop !754

147:                                              ; preds = %136, %116, %103, %69, %43
  %148 = load i32, i32* %3, align 4, !dbg !757
  ret i32 %148, !dbg !757
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_zip_read_data(%struct.archive_read* noundef %0, i8** noundef %1, i64* noundef %2, i64* noundef %3) #0 !dbg !758 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.zip*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %6, metadata !759, metadata !DIExpression()), !dbg !760
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !761, metadata !DIExpression()), !dbg !762
  store i64* %2, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !763, metadata !DIExpression()), !dbg !764
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !765, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.declare(metadata i32* %10, metadata !767, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.declare(metadata %struct.zip** %11, metadata !769, metadata !DIExpression()), !dbg !770
  %12 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !771
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 19, !dbg !772
  %14 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %13, align 8, !dbg !772
  %15 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %14, i32 0, i32 0, !dbg !773
  %16 = load i8*, i8** %15, align 8, !dbg !773
  %17 = bitcast i8* %16 to %struct.zip*, !dbg !774
  store %struct.zip* %17, %struct.zip** %11, align 8, !dbg !770
  %18 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !775
  %19 = getelementptr inbounds %struct.zip, %struct.zip* %18, i32 0, i32 14, !dbg !776
  %20 = load i64, i64* %19, align 8, !dbg !776
  %21 = load i64*, i64** %9, align 8, !dbg !777
  store i64 %20, i64* %21, align 8, !dbg !778
  %22 = load i64*, i64** %8, align 8, !dbg !779
  store i64 0, i64* %22, align 8, !dbg !780
  %23 = load i8**, i8*** %7, align 8, !dbg !781
  store i8* null, i8** %23, align 8, !dbg !782
  %24 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !783
  %25 = getelementptr inbounds %struct.zip, %struct.zip* %24, i32 0, i32 17, !dbg !785
  %26 = load i8, i8* %25, align 1, !dbg !785
  %27 = icmp ne i8 %26, 0, !dbg !783
  br i1 %27, label %28, label %29, !dbg !786

28:                                               ; preds = %4
  store i32 1, i32* %5, align 4, !dbg !787
  br label %182, !dbg !787

29:                                               ; preds = %4
  %30 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !788
  %31 = getelementptr inbounds %struct.zip, %struct.zip* %30, i32 0, i32 8, !dbg !790
  %32 = load %struct.zip_entry*, %struct.zip_entry** %31, align 8, !dbg !790
  %33 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %32, i32 0, i32 12, !dbg !791
  %34 = load i16, i16* %33, align 4, !dbg !791
  %35 = zext i16 %34 to i32, !dbg !788
  %36 = and i32 %35, 61440, !dbg !792
  %37 = icmp ne i32 32768, %36, !dbg !793
  br i1 %37, label %38, label %39, !dbg !794

38:                                               ; preds = %29
  store i32 1, i32* %5, align 4, !dbg !795
  br label %182, !dbg !795

39:                                               ; preds = %29
  %40 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !796
  %41 = getelementptr inbounds %struct.zip, %struct.zip* %40, i32 0, i32 8, !dbg !798
  %42 = load %struct.zip_entry*, %struct.zip_entry** %41, align 8, !dbg !798
  %43 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %42, i32 0, i32 13, !dbg !799
  %44 = load i16, i16* %43, align 2, !dbg !799
  %45 = zext i16 %44 to i32, !dbg !796
  %46 = and i32 %45, 65, !dbg !800
  %47 = icmp ne i32 %46, 0, !dbg !800
  br i1 %47, label %48, label %51, !dbg !801

48:                                               ; preds = %39
  %49 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !802
  %50 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %49, i32 0, i32 0, !dbg !804
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %50, i32 noundef 84, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i64 0, i64 0)), !dbg !805
  store i32 -25, i32* %5, align 4, !dbg !806
  br label %182, !dbg !806

51:                                               ; preds = %39
  %52 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !807
  %53 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !808
  %54 = getelementptr inbounds %struct.zip, %struct.zip* %53, i32 0, i32 11, !dbg !809
  %55 = load i64, i64* %54, align 8, !dbg !809
  %56 = call i64 @zip_read_consume(%struct.archive_read* noundef %52, i64 noundef %55), !dbg !810
  %57 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !811
  %58 = getelementptr inbounds %struct.zip, %struct.zip* %57, i32 0, i32 11, !dbg !812
  store i64 0, i64* %58, align 8, !dbg !813
  %59 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !814
  %60 = getelementptr inbounds %struct.zip, %struct.zip* %59, i32 0, i32 8, !dbg !815
  %61 = load %struct.zip_entry*, %struct.zip_entry** %60, align 8, !dbg !815
  %62 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %61, i32 0, i32 14, !dbg !816
  %63 = load i8, i8* %62, align 8, !dbg !816
  %64 = sext i8 %63 to i32, !dbg !814
  switch i32 %64, label %77 [
    i32 0, label %65
    i32 8, label %71
  ], !dbg !817

65:                                               ; preds = %51
  %66 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !818
  %67 = load i8**, i8*** %7, align 8, !dbg !820
  %68 = load i64*, i64** %8, align 8, !dbg !821
  %69 = load i64*, i64** %9, align 8, !dbg !822
  %70 = call i32 @zip_read_data_none(%struct.archive_read* noundef %66, i8** noundef %67, i64* noundef %68, i64* noundef %69), !dbg !823
  store i32 %70, i32* %10, align 4, !dbg !824
  br label %87, !dbg !825

71:                                               ; preds = %51
  %72 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !826
  %73 = load i8**, i8*** %7, align 8, !dbg !827
  %74 = load i64*, i64** %8, align 8, !dbg !828
  %75 = load i64*, i64** %9, align 8, !dbg !829
  %76 = call i32 @zip_read_data_deflate(%struct.archive_read* noundef %72, i8** noundef %73, i64* noundef %74, i64* noundef %75), !dbg !830
  store i32 %76, i32* %10, align 4, !dbg !831
  br label %87, !dbg !832

77:                                               ; preds = %51
  %78 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !833
  %79 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %78, i32 0, i32 0, !dbg !834
  %80 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !835
  %81 = getelementptr inbounds %struct.zip, %struct.zip* %80, i32 0, i32 8, !dbg !836
  %82 = load %struct.zip_entry*, %struct.zip_entry** %81, align 8, !dbg !836
  %83 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %82, i32 0, i32 14, !dbg !837
  %84 = load i8, i8* %83, align 8, !dbg !837
  %85 = sext i8 %84 to i32, !dbg !835
  %86 = call i8* @compression_name(i32 noundef %85), !dbg !838
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %79, i32 noundef 84, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef %86), !dbg !839
  store i32 -25, i32* %5, align 4, !dbg !840
  br label %182, !dbg !840

87:                                               ; preds = %71, %65
  %88 = load i32, i32* %10, align 4, !dbg !841
  %89 = icmp ne i32 %88, 0, !dbg !843
  br i1 %89, label %90, label %92, !dbg !844

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4, !dbg !845
  store i32 %91, i32* %5, align 4, !dbg !846
  br label %182, !dbg !846

92:                                               ; preds = %87
  %93 = load i64*, i64** %8, align 8, !dbg !847
  %94 = load i64, i64* %93, align 8, !dbg !849
  %95 = icmp ne i64 %94, 0, !dbg !849
  br i1 %95, label %96, label %108, !dbg !850

96:                                               ; preds = %92
  %97 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !851
  %98 = getelementptr inbounds %struct.zip, %struct.zip* %97, i32 0, i32 15, !dbg !852
  %99 = load i64, i64* %98, align 8, !dbg !852
  %100 = load i8**, i8*** %7, align 8, !dbg !853
  %101 = load i8*, i8** %100, align 8, !dbg !854
  %102 = load i64*, i64** %8, align 8, !dbg !855
  %103 = load i64, i64* %102, align 8, !dbg !856
  %104 = trunc i64 %103 to i32, !dbg !857
  %105 = call i64 @crc32(i64 noundef %99, i8* noundef %101, i32 noundef %104), !dbg !858
  %106 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !859
  %107 = getelementptr inbounds %struct.zip, %struct.zip* %106, i32 0, i32 15, !dbg !860
  store i64 %105, i64* %107, align 8, !dbg !861
  br label %108, !dbg !859

108:                                              ; preds = %96, %92
  %109 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !862
  %110 = getelementptr inbounds %struct.zip, %struct.zip* %109, i32 0, i32 17, !dbg !864
  %111 = load i8, i8* %110, align 1, !dbg !864
  %112 = icmp ne i8 %111, 0, !dbg !862
  br i1 %112, label %113, label %181, !dbg !865

113:                                              ; preds = %108
  %114 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !866
  %115 = getelementptr inbounds %struct.zip, %struct.zip* %114, i32 0, i32 8, !dbg !869
  %116 = load %struct.zip_entry*, %struct.zip_entry** %115, align 8, !dbg !869
  %117 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %116, i32 0, i32 2, !dbg !870
  %118 = load i64, i64* %117, align 8, !dbg !870
  %119 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !871
  %120 = getelementptr inbounds %struct.zip, %struct.zip* %119, i32 0, i32 13, !dbg !872
  %121 = load i64, i64* %120, align 8, !dbg !872
  %122 = icmp ne i64 %118, %121, !dbg !873
  br i1 %122, label %123, label %134, !dbg !874

123:                                              ; preds = %113
  %124 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !875
  %125 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %124, i32 0, i32 0, !dbg !877
  %126 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !878
  %127 = getelementptr inbounds %struct.zip, %struct.zip* %126, i32 0, i32 13, !dbg !879
  %128 = load i64, i64* %127, align 8, !dbg !879
  %129 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !880
  %130 = getelementptr inbounds %struct.zip, %struct.zip* %129, i32 0, i32 8, !dbg !881
  %131 = load %struct.zip_entry*, %struct.zip_entry** %130, align 8, !dbg !881
  %132 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %131, i32 0, i32 2, !dbg !882
  %133 = load i64, i64* %132, align 8, !dbg !882
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %125, i32 noundef -1, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.45, i64 0, i64 0), i64 noundef %128, i64 noundef %133), !dbg !883
  store i32 -20, i32* %5, align 4, !dbg !884
  br label %182, !dbg !884

134:                                              ; preds = %113
  %135 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !885
  %136 = getelementptr inbounds %struct.zip, %struct.zip* %135, i32 0, i32 8, !dbg !887
  %137 = load %struct.zip_entry*, %struct.zip_entry** %136, align 8, !dbg !887
  %138 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %137, i32 0, i32 3, !dbg !888
  %139 = load i64, i64* %138, align 8, !dbg !888
  %140 = and i64 %139, 4294967295, !dbg !889
  %141 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !890
  %142 = getelementptr inbounds %struct.zip, %struct.zip* %141, i32 0, i32 14, !dbg !891
  %143 = load i64, i64* %142, align 8, !dbg !891
  %144 = and i64 %143, 4294967295, !dbg !892
  %145 = icmp ne i64 %140, %144, !dbg !893
  br i1 %145, label %146, label %157, !dbg !894

146:                                              ; preds = %134
  %147 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !895
  %148 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %147, i32 0, i32 0, !dbg !897
  %149 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !898
  %150 = getelementptr inbounds %struct.zip, %struct.zip* %149, i32 0, i32 14, !dbg !899
  %151 = load i64, i64* %150, align 8, !dbg !899
  %152 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !900
  %153 = getelementptr inbounds %struct.zip, %struct.zip* %152, i32 0, i32 8, !dbg !901
  %154 = load %struct.zip_entry*, %struct.zip_entry** %153, align 8, !dbg !901
  %155 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %154, i32 0, i32 3, !dbg !902
  %156 = load i64, i64* %155, align 8, !dbg !902
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %148, i32 noundef -1, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.46, i64 0, i64 0), i64 noundef %151, i64 noundef %156), !dbg !903
  store i32 -20, i32* %5, align 4, !dbg !904
  br label %182, !dbg !904

157:                                              ; preds = %134
  %158 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !905
  %159 = getelementptr inbounds %struct.zip, %struct.zip* %158, i32 0, i32 8, !dbg !907
  %160 = load %struct.zip_entry*, %struct.zip_entry** %159, align 8, !dbg !907
  %161 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %160, i32 0, i32 11, !dbg !908
  %162 = load i32, i32* %161, align 8, !dbg !908
  %163 = zext i32 %162 to i64, !dbg !905
  %164 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !909
  %165 = getelementptr inbounds %struct.zip, %struct.zip* %164, i32 0, i32 15, !dbg !910
  %166 = load i64, i64* %165, align 8, !dbg !910
  %167 = icmp ne i64 %163, %166, !dbg !911
  br i1 %167, label %168, label %180, !dbg !912

168:                                              ; preds = %157
  %169 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !913
  %170 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %169, i32 0, i32 0, !dbg !915
  %171 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !916
  %172 = getelementptr inbounds %struct.zip, %struct.zip* %171, i32 0, i32 15, !dbg !917
  %173 = load i64, i64* %172, align 8, !dbg !917
  %174 = load %struct.zip*, %struct.zip** %11, align 8, !dbg !918
  %175 = getelementptr inbounds %struct.zip, %struct.zip* %174, i32 0, i32 8, !dbg !919
  %176 = load %struct.zip_entry*, %struct.zip_entry** %175, align 8, !dbg !919
  %177 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %176, i32 0, i32 11, !dbg !920
  %178 = load i32, i32* %177, align 8, !dbg !920
  %179 = zext i32 %178 to i64, !dbg !921
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %170, i32 noundef -1, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i64 0, i64 0), i64 noundef %173, i64 noundef %179), !dbg !922
  store i32 -20, i32* %5, align 4, !dbg !923
  br label %182, !dbg !923

180:                                              ; preds = %157
  br label %181, !dbg !924

181:                                              ; preds = %180, %108
  store i32 0, i32* %5, align 4, !dbg !925
  br label %182, !dbg !925

182:                                              ; preds = %181, %168, %146, %123, %90, %77, %48, %38, %28
  %183 = load i32, i32* %5, align 4, !dbg !926
  ret i32 %183, !dbg !926
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_zip_read_data_skip(%struct.archive_read* noundef %0) #0 !dbg !927 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.zip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %3, metadata !928, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.declare(metadata %struct.zip** %4, metadata !930, metadata !DIExpression()), !dbg !931
  %13 = load %struct.archive_read*, %struct.archive_read** %3, align 8, !dbg !932
  %14 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %13, i32 0, i32 19, !dbg !933
  %15 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %14, align 8, !dbg !933
  %16 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %15, i32 0, i32 0, !dbg !934
  %17 = load i8*, i8** %16, align 8, !dbg !934
  %18 = bitcast i8* %17 to %struct.zip*, !dbg !935
  store %struct.zip* %18, %struct.zip** %4, align 8, !dbg !936
  %19 = load %struct.zip*, %struct.zip** %4, align 8, !dbg !937
  %20 = getelementptr inbounds %struct.zip, %struct.zip* %19, i32 0, i32 17, !dbg !939
  %21 = load i8, i8* %20, align 1, !dbg !939
  %22 = icmp ne i8 %21, 0, !dbg !937
  br i1 %22, label %23, label %24, !dbg !940

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !941
  br label %172, !dbg !941

24:                                               ; preds = %1
  %25 = load %struct.zip*, %struct.zip** %4, align 8, !dbg !942
  %26 = getelementptr inbounds %struct.zip, %struct.zip* %25, i32 0, i32 8, !dbg !944
  %27 = load %struct.zip_entry*, %struct.zip_entry** %26, align 8, !dbg !944
  %28 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %27, i32 0, i32 13, !dbg !945
  %29 = load i16, i16* %28, align 2, !dbg !945
  %30 = zext i16 %29 to i32, !dbg !942
  %31 = and i32 %30, 8, !dbg !946
  %32 = icmp eq i32 0, %31, !dbg !947
  br i1 %32, label %33, label %49, !dbg !948

33:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %5, metadata !949, metadata !DIExpression()), !dbg !951
  %34 = load %struct.archive_read*, %struct.archive_read** %3, align 8, !dbg !952
  %35 = load %struct.zip*, %struct.zip** %4, align 8, !dbg !953
  %36 = getelementptr inbounds %struct.zip, %struct.zip* %35, i32 0, i32 12, !dbg !954
  %37 = load i64, i64* %36, align 8, !dbg !954
  %38 = load %struct.zip*, %struct.zip** %4, align 8, !dbg !955
  %39 = getelementptr inbounds %struct.zip, %struct.zip* %38, i32 0, i32 11, !dbg !956
  %40 = load i64, i64* %39, align 8, !dbg !956
  %41 = add i64 %37, %40, !dbg !957
  %42 = call i64 @zip_read_consume(%struct.archive_read* noundef %34, i64 noundef %41), !dbg !958
  store i64 %42, i64* %5, align 8, !dbg !951
  %43 = load i64, i64* %5, align 8, !dbg !959
  %44 = icmp slt i64 %43, 0, !dbg !961
  br i1 %44, label %45, label %46, !dbg !962

45:                                               ; preds = %33
  store i32 -30, i32* %2, align 4, !dbg !963
  br label %172, !dbg !963

46:                                               ; preds = %33
  %47 = load %struct.zip*, %struct.zip** %4, align 8, !dbg !964
  %48 = getelementptr inbounds %struct.zip, %struct.zip* %47, i32 0, i32 11, !dbg !965
  store i64 0, i64* %48, align 8, !dbg !966
  store i32 0, i32* %2, align 4, !dbg !967
  br label %172, !dbg !967

49:                                               ; preds = %24
  %50 = load %struct.zip*, %struct.zip** %4, align 8, !dbg !968
  %51 = getelementptr inbounds %struct.zip, %struct.zip* %50, i32 0, i32 8, !dbg !969
  %52 = load %struct.zip_entry*, %struct.zip_entry** %51, align 8, !dbg !969
  %53 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %52, i32 0, i32 14, !dbg !970
  %54 = load i8, i8* %53, align 8, !dbg !970
  %55 = sext i8 %54 to i32, !dbg !968
  switch i32 %55, label %72 [
    i32 8, label %56
  ], !dbg !971

56:                                               ; preds = %49
  br label %57, !dbg !972

57:                                               ; preds = %70, %56
  %58 = load %struct.zip*, %struct.zip** %4, align 8, !dbg !974
  %59 = getelementptr inbounds %struct.zip, %struct.zip* %58, i32 0, i32 17, !dbg !975
  %60 = load i8, i8* %59, align 1, !dbg !975
  %61 = icmp ne i8 %60, 0, !dbg !976
  %62 = xor i1 %61, true, !dbg !976
  br i1 %62, label %63, label %71, !dbg !972

63:                                               ; preds = %57
  call void @llvm.dbg.declare(metadata i64* %6, metadata !977, metadata !DIExpression()), !dbg !979
  store i64 0, i64* %6, align 8, !dbg !979
  call void @llvm.dbg.declare(metadata i8** %7, metadata !980, metadata !DIExpression()), !dbg !981
  store i8* null, i8** %7, align 8, !dbg !981
  call void @llvm.dbg.declare(metadata i64* %8, metadata !982, metadata !DIExpression()), !dbg !983
  store i64 0, i64* %8, align 8, !dbg !983
  call void @llvm.dbg.declare(metadata i32* %9, metadata !984, metadata !DIExpression()), !dbg !985
  %64 = load %struct.archive_read*, %struct.archive_read** %3, align 8, !dbg !986
  %65 = call i32 @zip_read_data_deflate(%struct.archive_read* noundef %64, i8** noundef %7, i64* noundef %8, i64* noundef %6), !dbg !987
  store i32 %65, i32* %9, align 4, !dbg !988
  %66 = load i32, i32* %9, align 4, !dbg !989
  %67 = icmp ne i32 %66, 0, !dbg !991
  br i1 %67, label %68, label %70, !dbg !992

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4, !dbg !993
  store i32 %69, i32* %2, align 4, !dbg !994
  br label %172, !dbg !994

70:                                               ; preds = %63
  br label %57, !dbg !972, !llvm.loop !995

71:                                               ; preds = %57
  store i32 0, i32* %2, align 4, !dbg !997
  br label %172, !dbg !997

72:                                               ; preds = %49
  %73 = load %struct.archive_read*, %struct.archive_read** %3, align 8, !dbg !998
  %74 = load %struct.zip*, %struct.zip** %4, align 8, !dbg !999
  %75 = getelementptr inbounds %struct.zip, %struct.zip* %74, i32 0, i32 11, !dbg !1000
  %76 = load i64, i64* %75, align 8, !dbg !1000
  %77 = call i64 @zip_read_consume(%struct.archive_read* noundef %73, i64 noundef %76), !dbg !1001
  %78 = load %struct.zip*, %struct.zip** %4, align 8, !dbg !1002
  %79 = getelementptr inbounds %struct.zip, %struct.zip* %78, i32 0, i32 11, !dbg !1003
  store i64 0, i64* %79, align 8, !dbg !1004
  br label %80, !dbg !1005

80:                                               ; preds = %164, %72
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1006, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1011, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1013, metadata !DIExpression()), !dbg !1014
  %81 = load %struct.archive_read*, %struct.archive_read** %3, align 8, !dbg !1015
  %82 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %81, i64 noundef 16, i64* noundef %12), !dbg !1016
  store i8* %82, i8** %11, align 8, !dbg !1017
  %83 = load i64, i64* %12, align 8, !dbg !1018
  %84 = icmp slt i64 %83, 16, !dbg !1020
  br i1 %84, label %85, label %88, !dbg !1021

85:                                               ; preds = %80
  %86 = load %struct.archive_read*, %struct.archive_read** %3, align 8, !dbg !1022
  %87 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %86, i32 0, i32 0, !dbg !1024
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %87, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i64 0, i64 0)), !dbg !1025
  store i32 -30, i32* %2, align 4, !dbg !1026
  br label %172, !dbg !1026

88:                                               ; preds = %80
  %89 = load i8*, i8** %11, align 8, !dbg !1027
  store i8* %89, i8** %10, align 8, !dbg !1028
  br label %90, !dbg !1029

90:                                               ; preds = %163, %88
  %91 = load i8*, i8** %10, align 8, !dbg !1030
  %92 = load i8*, i8** %11, align 8, !dbg !1031
  %93 = load i64, i64* %12, align 8, !dbg !1032
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !1033
  %95 = getelementptr inbounds i8, i8* %94, i64 -16, !dbg !1034
  %96 = icmp ule i8* %91, %95, !dbg !1035
  br i1 %96, label %97, label %164, !dbg !1029

97:                                               ; preds = %90
  %98 = load i8*, i8** %10, align 8, !dbg !1036
  %99 = getelementptr inbounds i8, i8* %98, i64 3, !dbg !1036
  %100 = load i8, i8* %99, align 1, !dbg !1036
  %101 = sext i8 %100 to i32, !dbg !1036
  %102 = icmp eq i32 %101, 80, !dbg !1039
  br i1 %102, label %103, label %106, !dbg !1040

103:                                              ; preds = %97
  %104 = load i8*, i8** %10, align 8, !dbg !1041
  %105 = getelementptr inbounds i8, i8* %104, i64 3, !dbg !1041
  store i8* %105, i8** %10, align 8, !dbg !1041
  br label %163, !dbg !1043

106:                                              ; preds = %97
  %107 = load i8*, i8** %10, align 8, !dbg !1044
  %108 = getelementptr inbounds i8, i8* %107, i64 3, !dbg !1044
  %109 = load i8, i8* %108, align 1, !dbg !1044
  %110 = sext i8 %109 to i32, !dbg !1044
  %111 = icmp eq i32 %110, 75, !dbg !1046
  br i1 %111, label %112, label %115, !dbg !1047

112:                                              ; preds = %106
  %113 = load i8*, i8** %10, align 8, !dbg !1048
  %114 = getelementptr inbounds i8, i8* %113, i64 2, !dbg !1048
  store i8* %114, i8** %10, align 8, !dbg !1048
  br label %162, !dbg !1050

115:                                              ; preds = %106
  %116 = load i8*, i8** %10, align 8, !dbg !1051
  %117 = getelementptr inbounds i8, i8* %116, i64 3, !dbg !1051
  %118 = load i8, i8* %117, align 1, !dbg !1051
  %119 = sext i8 %118 to i32, !dbg !1051
  %120 = icmp eq i32 %119, 7, !dbg !1053
  br i1 %120, label %121, label %124, !dbg !1054

121:                                              ; preds = %115
  %122 = load i8*, i8** %10, align 8, !dbg !1055
  %123 = getelementptr inbounds i8, i8* %122, i64 1, !dbg !1055
  store i8* %123, i8** %10, align 8, !dbg !1055
  br label %161, !dbg !1057

124:                                              ; preds = %115
  %125 = load i8*, i8** %10, align 8, !dbg !1058
  %126 = getelementptr inbounds i8, i8* %125, i64 3, !dbg !1058
  %127 = load i8, i8* %126, align 1, !dbg !1058
  %128 = sext i8 %127 to i32, !dbg !1058
  %129 = icmp eq i32 %128, 8, !dbg !1060
  br i1 %129, label %130, label %157, !dbg !1061

130:                                              ; preds = %124
  %131 = load i8*, i8** %10, align 8, !dbg !1062
  %132 = getelementptr inbounds i8, i8* %131, i64 2, !dbg !1062
  %133 = load i8, i8* %132, align 1, !dbg !1062
  %134 = sext i8 %133 to i32, !dbg !1062
  %135 = icmp eq i32 %134, 7, !dbg !1063
  br i1 %135, label %136, label %157, !dbg !1064

136:                                              ; preds = %130
  %137 = load i8*, i8** %10, align 8, !dbg !1065
  %138 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !1065
  %139 = load i8, i8* %138, align 1, !dbg !1065
  %140 = sext i8 %139 to i32, !dbg !1065
  %141 = icmp eq i32 %140, 75, !dbg !1066
  br i1 %141, label %142, label %157, !dbg !1067

142:                                              ; preds = %136
  %143 = load i8*, i8** %10, align 8, !dbg !1068
  %144 = getelementptr inbounds i8, i8* %143, i64 0, !dbg !1068
  %145 = load i8, i8* %144, align 1, !dbg !1068
  %146 = sext i8 %145 to i32, !dbg !1068
  %147 = icmp eq i32 %146, 80, !dbg !1069
  br i1 %147, label %148, label %157, !dbg !1070

148:                                              ; preds = %142
  %149 = load %struct.archive_read*, %struct.archive_read** %3, align 8, !dbg !1071
  %150 = load i8*, i8** %10, align 8, !dbg !1073
  %151 = load i8*, i8** %11, align 8, !dbg !1074
  %152 = ptrtoint i8* %150 to i64, !dbg !1075
  %153 = ptrtoint i8* %151 to i64, !dbg !1075
  %154 = sub i64 %152, %153, !dbg !1075
  %155 = add nsw i64 %154, 16, !dbg !1076
  %156 = call i64 @zip_read_consume(%struct.archive_read* noundef %149, i64 noundef %155), !dbg !1077
  store i32 0, i32* %2, align 4, !dbg !1078
  br label %172, !dbg !1078

157:                                              ; preds = %142, %136, %130, %124
  %158 = load i8*, i8** %10, align 8, !dbg !1079
  %159 = getelementptr inbounds i8, i8* %158, i64 4, !dbg !1079
  store i8* %159, i8** %10, align 8, !dbg !1079
  br label %160

160:                                              ; preds = %157
  br label %161

161:                                              ; preds = %160, %121
  br label %162

162:                                              ; preds = %161, %112
  br label %163

163:                                              ; preds = %162, %103
  br label %90, !dbg !1029, !llvm.loop !1081

164:                                              ; preds = %90
  %165 = load %struct.archive_read*, %struct.archive_read** %3, align 8, !dbg !1083
  %166 = load i8*, i8** %10, align 8, !dbg !1084
  %167 = load i8*, i8** %11, align 8, !dbg !1085
  %168 = ptrtoint i8* %166 to i64, !dbg !1086
  %169 = ptrtoint i8* %167 to i64, !dbg !1086
  %170 = sub i64 %168, %169, !dbg !1086
  %171 = call i64 @zip_read_consume(%struct.archive_read* noundef %165, i64 noundef %170), !dbg !1087
  br label %80, !dbg !1088, !llvm.loop !1089

172:                                              ; preds = %148, %85, %71, %68, %46, %45, %23
  %173 = load i32, i32* %2, align 4, !dbg !1092
  ret i32 %173, !dbg !1092
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_zip_cleanup(%struct.archive_read* noundef %0) #0 !dbg !1093 {
  %2 = alloca %struct.archive_read*, align 8
  %3 = alloca %struct.zip*, align 8
  %4 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %2, metadata !1094, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.declare(metadata %struct.zip** %3, metadata !1096, metadata !DIExpression()), !dbg !1097
  %5 = load %struct.archive_read*, %struct.archive_read** %2, align 8, !dbg !1098
  %6 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %5, i32 0, i32 19, !dbg !1099
  %7 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %6, align 8, !dbg !1099
  %8 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %7, i32 0, i32 0, !dbg !1100
  %9 = load i8*, i8** %8, align 8, !dbg !1100
  %10 = bitcast i8* %9 to %struct.zip*, !dbg !1101
  store %struct.zip* %10, %struct.zip** %3, align 8, !dbg !1102
  %11 = load %struct.zip*, %struct.zip** %3, align 8, !dbg !1103
  %12 = getelementptr inbounds %struct.zip, %struct.zip* %11, i32 0, i32 23, !dbg !1105
  %13 = load i8, i8* %12, align 8, !dbg !1105
  %14 = icmp ne i8 %13, 0, !dbg !1103
  br i1 %14, label %15, label %19, !dbg !1106

15:                                               ; preds = %1
  %16 = load %struct.zip*, %struct.zip** %3, align 8, !dbg !1107
  %17 = getelementptr inbounds %struct.zip, %struct.zip* %16, i32 0, i32 22, !dbg !1108
  %18 = call i32 @inflateEnd(%struct.z_stream_s* noundef %17), !dbg !1109
  br label %19, !dbg !1109

19:                                               ; preds = %15, %1
  %20 = load %struct.zip*, %struct.zip** %3, align 8, !dbg !1110
  %21 = getelementptr inbounds %struct.zip, %struct.zip* %20, i32 0, i32 7, !dbg !1112
  %22 = load %struct.zip_entry*, %struct.zip_entry** %21, align 8, !dbg !1112
  %23 = icmp ne %struct.zip_entry* %22, null, !dbg !1110
  br i1 %23, label %24, label %49, !dbg !1113

24:                                               ; preds = %19
  %25 = load %struct.zip*, %struct.zip** %3, align 8, !dbg !1114
  %26 = getelementptr inbounds %struct.zip, %struct.zip* %25, i32 0, i32 3, !dbg !1115
  %27 = load i64, i64* %26, align 8, !dbg !1115
  %28 = icmp ne i64 %27, 0, !dbg !1114
  br i1 %28, label %29, label %49, !dbg !1116

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1117, metadata !DIExpression()), !dbg !1119
  store i32 0, i32* %4, align 4, !dbg !1120
  br label %30, !dbg !1122

30:                                               ; preds = %45, %29
  %31 = load i32, i32* %4, align 4, !dbg !1123
  %32 = zext i32 %31 to i64, !dbg !1123
  %33 = load %struct.zip*, %struct.zip** %3, align 8, !dbg !1125
  %34 = getelementptr inbounds %struct.zip, %struct.zip* %33, i32 0, i32 3, !dbg !1126
  %35 = load i64, i64* %34, align 8, !dbg !1126
  %36 = icmp ult i64 %32, %35, !dbg !1127
  br i1 %36, label %37, label %48, !dbg !1128

37:                                               ; preds = %30
  %38 = load %struct.zip*, %struct.zip** %3, align 8, !dbg !1129
  %39 = getelementptr inbounds %struct.zip, %struct.zip* %38, i32 0, i32 7, !dbg !1130
  %40 = load %struct.zip_entry*, %struct.zip_entry** %39, align 8, !dbg !1130
  %41 = load i32, i32* %4, align 4, !dbg !1131
  %42 = zext i32 %41 to i64, !dbg !1129
  %43 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %40, i64 %42, !dbg !1129
  %44 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %43, i32 0, i32 7, !dbg !1132
  call void @archive_string_free(%struct.archive_string* noundef %44), !dbg !1133
  br label %45, !dbg !1133

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4, !dbg !1134
  %47 = add i32 %46, 1, !dbg !1134
  store i32 %47, i32* %4, align 4, !dbg !1134
  br label %30, !dbg !1135, !llvm.loop !1136

48:                                               ; preds = %30
  br label %49, !dbg !1138

49:                                               ; preds = %48, %24, %19
  %50 = load %struct.zip*, %struct.zip** %3, align 8, !dbg !1139
  %51 = getelementptr inbounds %struct.zip, %struct.zip* %50, i32 0, i32 7, !dbg !1140
  %52 = load %struct.zip_entry*, %struct.zip_entry** %51, align 8, !dbg !1140
  %53 = bitcast %struct.zip_entry* %52 to i8*, !dbg !1139
  call void @free(i8* noundef %53) #8, !dbg !1141
  %54 = load %struct.zip*, %struct.zip** %3, align 8, !dbg !1142
  %55 = getelementptr inbounds %struct.zip, %struct.zip* %54, i32 0, i32 20, !dbg !1143
  %56 = load i8*, i8** %55, align 8, !dbg !1143
  call void @free(i8* noundef %56) #8, !dbg !1144
  %57 = load %struct.zip*, %struct.zip** %3, align 8, !dbg !1145
  %58 = getelementptr inbounds %struct.zip, %struct.zip* %57, i32 0, i32 24, !dbg !1146
  call void @archive_string_free(%struct.archive_string* noundef %58), !dbg !1147
  %59 = load %struct.zip*, %struct.zip** %3, align 8, !dbg !1148
  %60 = bitcast %struct.zip* %59 to i8*, !dbg !1148
  call void @free(i8* noundef %60) #8, !dbg !1149
  %61 = load %struct.archive_read*, %struct.archive_read** %2, align 8, !dbg !1150
  %62 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %61, i32 0, i32 19, !dbg !1151
  %63 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %62, align 8, !dbg !1151
  %64 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %63, i32 0, i32 0, !dbg !1152
  store i8* null, i8** %64, align 8, !dbg !1153
  ret i32 0, !dbg !1154
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @archive_read_support_format_zip_seekable(%struct.archive* noundef %0) #0 !dbg !1155 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.zip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.archive** %3, metadata !1156, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.declare(metadata %struct.archive_read** %4, metadata !1158, metadata !DIExpression()), !dbg !1159
  %8 = load %struct.archive*, %struct.archive** %3, align 8, !dbg !1160
  %9 = bitcast %struct.archive* %8 to %struct.archive_read*, !dbg !1161
  store %struct.archive_read* %9, %struct.archive_read** %4, align 8, !dbg !1159
  call void @llvm.dbg.declare(metadata %struct.zip** %5, metadata !1162, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1164, metadata !DIExpression()), !dbg !1165
  br label %10, !dbg !1166

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1167, metadata !DIExpression()), !dbg !1169
  %11 = load %struct.archive*, %struct.archive** %3, align 8, !dbg !1169
  %12 = call i32 @__archive_check_magic(%struct.archive* noundef %11, i32 noundef 14594245, i32 noundef 1, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)), !dbg !1169
  store i32 %12, i32* %7, align 4, !dbg !1169
  %13 = load i32, i32* %7, align 4, !dbg !1170
  %14 = icmp eq i32 %13, -30, !dbg !1170
  br i1 %14, label %15, label %16, !dbg !1169

15:                                               ; preds = %10
  store i32 -30, i32* %2, align 4, !dbg !1170
  br label %38, !dbg !1170

16:                                               ; preds = %10
  br label %17, !dbg !1169

17:                                               ; preds = %16
  %18 = call noalias i8* @malloc(i64 noundef 424) #8, !dbg !1172
  %19 = bitcast i8* %18 to %struct.zip*, !dbg !1173
  store %struct.zip* %19, %struct.zip** %5, align 8, !dbg !1174
  %20 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1175
  %21 = icmp eq %struct.zip* %20, null, !dbg !1177
  br i1 %21, label %22, label %25, !dbg !1178

22:                                               ; preds = %17
  %23 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1179
  %24 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %23, i32 0, i32 0, !dbg !1181
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %24, i32 noundef 12, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)), !dbg !1182
  store i32 -30, i32* %2, align 4, !dbg !1183
  br label %38, !dbg !1183

25:                                               ; preds = %17
  %26 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1184
  %27 = bitcast %struct.zip* %26 to i8*, !dbg !1185
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 424, i1 false), !dbg !1185
  %28 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1186
  %29 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1187
  %30 = bitcast %struct.zip* %29 to i8*, !dbg !1187
  %31 = call i32 @__archive_read_register_format(%struct.archive_read* noundef %28, i8* noundef %30, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 (%struct.archive_read*, i32)* noundef @archive_read_format_zip_seekable_bid, i32 (%struct.archive_read*, i8*, i8*)* noundef @archive_read_format_zip_options, i32 (%struct.archive_read*, %struct.archive_entry*)* noundef @archive_read_format_zip_seekable_read_header, i32 (%struct.archive_read*, i8**, i64*, i64*)* noundef @archive_read_format_zip_read_data, i32 (%struct.archive_read*)* noundef @archive_read_format_zip_read_data_skip, i64 (%struct.archive_read*, i64, i32)* noundef null, i32 (%struct.archive_read*)* noundef @archive_read_format_zip_cleanup), !dbg !1188
  store i32 %31, i32* %6, align 4, !dbg !1189
  %32 = load i32, i32* %6, align 4, !dbg !1190
  %33 = icmp ne i32 %32, 0, !dbg !1192
  br i1 %33, label %34, label %37, !dbg !1193

34:                                               ; preds = %25
  %35 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1194
  %36 = bitcast %struct.zip* %35 to i8*, !dbg !1194
  call void @free(i8* noundef %36) #8, !dbg !1195
  br label %37, !dbg !1195

37:                                               ; preds = %34, %25
  store i32 0, i32* %2, align 4, !dbg !1196
  br label %38, !dbg !1196

38:                                               ; preds = %37, %22, %15
  %39 = load i32, i32* %2, align 4, !dbg !1197
  ret i32 %39, !dbg !1197
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_zip_seekable_bid(%struct.archive_read* noundef %0, i32 noundef %1) #0 !dbg !1198 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %4, metadata !1199, metadata !DIExpression()), !dbg !1200
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1201, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.declare(metadata %struct.zip** %6, metadata !1203, metadata !DIExpression()), !dbg !1204
  %12 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1205
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 19, !dbg !1206
  %14 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %13, align 8, !dbg !1206
  %15 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %14, i32 0, i32 0, !dbg !1207
  %16 = load i8*, i8** %15, align 8, !dbg !1207
  %17 = bitcast i8* %16 to %struct.zip*, !dbg !1208
  store %struct.zip* %17, %struct.zip** %6, align 8, !dbg !1204
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1209, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1211, metadata !DIExpression()), !dbg !1212
  %18 = load i32, i32* %5, align 4, !dbg !1213
  %19 = icmp sgt i32 %18, 32, !dbg !1215
  br i1 %19, label %20, label %21, !dbg !1216

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1217
  br label %162, !dbg !1217

21:                                               ; preds = %2
  %22 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1218
  %23 = call i64 @__archive_read_seek(%struct.archive_read* noundef %22, i64 noundef -22, i32 noundef 2), !dbg !1219
  store i64 %23, i64* %7, align 8, !dbg !1220
  %24 = load i64, i64* %7, align 8, !dbg !1221
  %25 = icmp sle i64 %24, 0, !dbg !1223
  br i1 %25, label %26, label %27, !dbg !1224

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4, !dbg !1225
  br label %162, !dbg !1225

27:                                               ; preds = %21
  %28 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1226
  %29 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %28, i64 noundef 22, i64* noundef null), !dbg !1228
  store i8* %29, i8** %8, align 8, !dbg !1229
  %30 = icmp eq i8* %29, null, !dbg !1230
  br i1 %30, label %31, label %32, !dbg !1231

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4, !dbg !1232
  br label %162, !dbg !1232

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8, !dbg !1233
  %34 = call i32 @memcmp(i8* noundef %33, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 noundef 8) #9, !dbg !1235
  %35 = icmp ne i32 %34, 0, !dbg !1236
  br i1 %35, label %36, label %119, !dbg !1237

36:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1238, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1241, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1243, metadata !DIExpression()), !dbg !1244
  %37 = load i64, i64* %7, align 8, !dbg !1245
  %38 = add nsw i64 %37, 22, !dbg !1247
  %39 = icmp sgt i64 %38, 16384, !dbg !1248
  br i1 %39, label %40, label %45, !dbg !1249

40:                                               ; preds = %36
  store i64 16384, i64* %10, align 8, !dbg !1250
  %41 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1252
  %42 = load i64, i64* %10, align 8, !dbg !1253
  %43 = mul nsw i64 %42, -1, !dbg !1254
  %44 = call i64 @__archive_read_seek(%struct.archive_read* noundef %41, i64 noundef %43, i32 noundef 2), !dbg !1255
  store i64 %44, i64* %7, align 8, !dbg !1256
  br label %50, !dbg !1257

45:                                               ; preds = %36
  %46 = load i64, i64* %7, align 8, !dbg !1258
  %47 = add nsw i64 %46, 22, !dbg !1260
  store i64 %47, i64* %10, align 8, !dbg !1261
  %48 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1262
  %49 = call i64 @__archive_read_seek(%struct.archive_read* noundef %48, i64 noundef 0, i32 noundef 0), !dbg !1263
  store i64 %49, i64* %7, align 8, !dbg !1264
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i64, i64* %7, align 8, !dbg !1265
  %52 = icmp slt i64 %51, 0, !dbg !1267
  br i1 %52, label %53, label %54, !dbg !1268

53:                                               ; preds = %50
  store i32 0, i32* %3, align 4, !dbg !1269
  br label %162, !dbg !1269

54:                                               ; preds = %50
  %55 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1270
  %56 = load i64, i64* %10, align 8, !dbg !1272
  %57 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %55, i64 noundef %56, i64* noundef null), !dbg !1273
  store i8* %57, i8** %8, align 8, !dbg !1274
  %58 = icmp eq i8* %57, null, !dbg !1275
  br i1 %58, label %59, label %60, !dbg !1276

59:                                               ; preds = %54
  store i32 0, i32* %3, align 4, !dbg !1277
  br label %162, !dbg !1277

60:                                               ; preds = %54
  store i32 0, i32* %11, align 4, !dbg !1278
  store i64 0, i64* %9, align 8, !dbg !1280
  br label %61, !dbg !1281

61:                                               ; preds = %113, %60
  %62 = load i32, i32* %11, align 4, !dbg !1282
  %63 = icmp ne i32 %62, 0, !dbg !1282
  br i1 %63, label %69, label %64, !dbg !1284

64:                                               ; preds = %61
  %65 = load i64, i64* %9, align 8, !dbg !1285
  %66 = load i64, i64* %10, align 8, !dbg !1286
  %67 = sub nsw i64 %66, 22, !dbg !1287
  %68 = icmp slt i64 %65, %67, !dbg !1288
  br label %69

69:                                               ; preds = %64, %61
  %70 = phi i1 [ false, %61 ], [ %68, %64 ], !dbg !1289
  br i1 %70, label %71, label %114, !dbg !1290

71:                                               ; preds = %69
  %72 = load i8*, i8** %8, align 8, !dbg !1291
  %73 = load i64, i64* %9, align 8, !dbg !1293
  %74 = getelementptr inbounds i8, i8* %72, i64 %73, !dbg !1291
  %75 = load i8, i8* %74, align 1, !dbg !1291
  %76 = sext i8 %75 to i32, !dbg !1291
  switch i32 %76, label %110 [
    i32 80, label %77
    i32 75, label %101
    i32 5, label %104
    i32 6, label %107
  ], !dbg !1294

77:                                               ; preds = %71
  %78 = load i8*, i8** %8, align 8, !dbg !1295
  %79 = load i64, i64* %9, align 8, !dbg !1298
  %80 = getelementptr inbounds i8, i8* %78, i64 %79, !dbg !1299
  %81 = call i32 @memcmp(i8* noundef %80, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 noundef 8) #9, !dbg !1300
  %82 = icmp eq i32 %81, 0, !dbg !1301
  br i1 %82, label %83, label %97, !dbg !1302

83:                                               ; preds = %77
  %84 = load i64, i64* %9, align 8, !dbg !1303
  %85 = load i8*, i8** %8, align 8, !dbg !1305
  %86 = getelementptr inbounds i8, i8* %85, i64 %84, !dbg !1305
  store i8* %86, i8** %8, align 8, !dbg !1305
  %87 = load i64, i64* %10, align 8, !dbg !1306
  %88 = load i8*, i8** %8, align 8, !dbg !1307
  %89 = getelementptr inbounds i8, i8* %88, i64 20, !dbg !1308
  %90 = call zeroext i16 @archive_le16dec(i8* noundef %89), !dbg !1309
  %91 = zext i16 %90 to i32, !dbg !1309
  %92 = add nsw i32 22, %91, !dbg !1310
  %93 = sext i32 %92 to i64, !dbg !1311
  %94 = sub nsw i64 %87, %93, !dbg !1312
  %95 = load i64, i64* %7, align 8, !dbg !1313
  %96 = add nsw i64 %95, %94, !dbg !1313
  store i64 %96, i64* %7, align 8, !dbg !1313
  store i32 1, i32* %11, align 4, !dbg !1314
  br label %100, !dbg !1315

97:                                               ; preds = %77
  %98 = load i64, i64* %9, align 8, !dbg !1316
  %99 = add nsw i64 %98, 8, !dbg !1316
  store i64 %99, i64* %9, align 8, !dbg !1316
  br label %100

100:                                              ; preds = %97, %83
  br label %113, !dbg !1317

101:                                              ; preds = %71
  %102 = load i64, i64* %9, align 8, !dbg !1318
  %103 = add nsw i64 %102, 7, !dbg !1318
  store i64 %103, i64* %9, align 8, !dbg !1318
  br label %113, !dbg !1319

104:                                              ; preds = %71
  %105 = load i64, i64* %9, align 8, !dbg !1320
  %106 = add nsw i64 %105, 6, !dbg !1320
  store i64 %106, i64* %9, align 8, !dbg !1320
  br label %113, !dbg !1321

107:                                              ; preds = %71
  %108 = load i64, i64* %9, align 8, !dbg !1322
  %109 = add nsw i64 %108, 5, !dbg !1322
  store i64 %109, i64* %9, align 8, !dbg !1322
  br label %113, !dbg !1323

110:                                              ; preds = %71
  %111 = load i64, i64* %9, align 8, !dbg !1324
  %112 = add nsw i64 %111, 1, !dbg !1324
  store i64 %112, i64* %9, align 8, !dbg !1324
  br label %113, !dbg !1325

113:                                              ; preds = %110, %107, %104, %101, %100
  br label %61, !dbg !1326, !llvm.loop !1327

114:                                              ; preds = %69
  %115 = load i32, i32* %11, align 4, !dbg !1329
  %116 = icmp ne i32 %115, 0, !dbg !1329
  br i1 %116, label %118, label %117, !dbg !1331

117:                                              ; preds = %114
  store i32 0, i32* %3, align 4, !dbg !1332
  br label %162, !dbg !1332

118:                                              ; preds = %114
  br label %119, !dbg !1333

119:                                              ; preds = %118, %32
  %120 = load i8*, i8** %8, align 8, !dbg !1334
  %121 = getelementptr inbounds i8, i8* %120, i64 10, !dbg !1335
  %122 = call zeroext i16 @archive_le16dec(i8* noundef %121), !dbg !1336
  %123 = zext i16 %122 to i64, !dbg !1336
  %124 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1337
  %125 = getelementptr inbounds %struct.zip, %struct.zip* %124, i32 0, i32 3, !dbg !1338
  store i64 %123, i64* %125, align 8, !dbg !1339
  %126 = load i8*, i8** %8, align 8, !dbg !1340
  %127 = getelementptr inbounds i8, i8* %126, i64 12, !dbg !1341
  %128 = call i32 @archive_le32dec(i8* noundef %127), !dbg !1342
  %129 = zext i32 %128 to i64, !dbg !1342
  %130 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1343
  %131 = getelementptr inbounds %struct.zip, %struct.zip* %130, i32 0, i32 2, !dbg !1344
  store i64 %129, i64* %131, align 8, !dbg !1345
  %132 = load i8*, i8** %8, align 8, !dbg !1346
  %133 = getelementptr inbounds i8, i8* %132, i64 16, !dbg !1347
  %134 = call i32 @archive_le32dec(i8* noundef %133), !dbg !1348
  %135 = zext i32 %134 to i64, !dbg !1348
  %136 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1349
  %137 = getelementptr inbounds %struct.zip, %struct.zip* %136, i32 0, i32 1, !dbg !1350
  store i64 %135, i64* %137, align 8, !dbg !1351
  %138 = load i64, i64* %7, align 8, !dbg !1352
  %139 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1353
  %140 = getelementptr inbounds %struct.zip, %struct.zip* %139, i32 0, i32 0, !dbg !1354
  store i64 %138, i64* %140, align 8, !dbg !1355
  %141 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1356
  %142 = getelementptr inbounds %struct.zip, %struct.zip* %141, i32 0, i32 3, !dbg !1358
  %143 = load i64, i64* %142, align 8, !dbg !1358
  %144 = load i8*, i8** %8, align 8, !dbg !1359
  %145 = getelementptr inbounds i8, i8* %144, i64 8, !dbg !1360
  %146 = call zeroext i16 @archive_le16dec(i8* noundef %145), !dbg !1361
  %147 = zext i16 %146 to i64, !dbg !1361
  %148 = icmp ne i64 %143, %147, !dbg !1362
  br i1 %148, label %149, label %150, !dbg !1363

149:                                              ; preds = %119
  store i32 0, i32* %3, align 4, !dbg !1364
  br label %162, !dbg !1364

150:                                              ; preds = %119
  %151 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1365
  %152 = getelementptr inbounds %struct.zip, %struct.zip* %151, i32 0, i32 1, !dbg !1367
  %153 = load i64, i64* %152, align 8, !dbg !1367
  %154 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1368
  %155 = getelementptr inbounds %struct.zip, %struct.zip* %154, i32 0, i32 2, !dbg !1369
  %156 = load i64, i64* %155, align 8, !dbg !1369
  %157 = add nsw i64 %153, %156, !dbg !1370
  %158 = load i64, i64* %7, align 8, !dbg !1371
  %159 = icmp sgt i64 %157, %158, !dbg !1372
  br i1 %159, label %160, label %161, !dbg !1373

160:                                              ; preds = %150
  store i32 0, i32* %3, align 4, !dbg !1374
  br label %162, !dbg !1374

161:                                              ; preds = %150
  store i32 32, i32* %3, align 4, !dbg !1375
  br label %162, !dbg !1375

162:                                              ; preds = %161, %160, %149, %117, %59, %53, %31, %26, %20
  %163 = load i32, i32* %3, align 4, !dbg !1376
  ret i32 %163, !dbg !1376
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_read_format_zip_seekable_read_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1) #0 !dbg !1377 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.zip*, align 8
  %7 = alloca %struct.zip_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.archive_string_conv*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %4, metadata !1378, metadata !DIExpression()), !dbg !1379
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_entry** %5, metadata !1380, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.declare(metadata %struct.zip** %6, metadata !1382, metadata !DIExpression()), !dbg !1383
  %14 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1384
  %15 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %14, i32 0, i32 19, !dbg !1385
  %16 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %15, align 8, !dbg !1385
  %17 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %16, i32 0, i32 0, !dbg !1386
  %18 = load i8*, i8** %17, align 8, !dbg !1386
  %19 = bitcast i8* %18 to %struct.zip*, !dbg !1387
  store %struct.zip* %19, %struct.zip** %6, align 8, !dbg !1383
  call void @llvm.dbg.declare(metadata %struct.zip_entry** %7, metadata !1388, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1390, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1392, metadata !DIExpression()), !dbg !1393
  store i32 0, i32* %9, align 4, !dbg !1393
  %20 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1394
  %21 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %20, i32 0, i32 0, !dbg !1395
  %22 = getelementptr inbounds %struct.archive, %struct.archive* %21, i32 0, i32 3, !dbg !1396
  store i32 327680, i32* %22, align 8, !dbg !1397
  %23 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1398
  %24 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %23, i32 0, i32 0, !dbg !1400
  %25 = getelementptr inbounds %struct.archive, %struct.archive* %24, i32 0, i32 4, !dbg !1401
  %26 = load i8*, i8** %25, align 8, !dbg !1401
  %27 = icmp eq i8* %26, null, !dbg !1402
  br i1 %27, label %28, label %32, !dbg !1403

28:                                               ; preds = %2
  %29 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1404
  %30 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %29, i32 0, i32 0, !dbg !1405
  %31 = getelementptr inbounds %struct.archive, %struct.archive* %30, i32 0, i32 4, !dbg !1406
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %31, align 8, !dbg !1407
  br label %32, !dbg !1404

32:                                               ; preds = %28, %2
  %33 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1408
  %34 = getelementptr inbounds %struct.zip, %struct.zip* %33, i32 0, i32 7, !dbg !1410
  %35 = load %struct.zip_entry*, %struct.zip_entry** %34, align 8, !dbg !1410
  %36 = icmp eq %struct.zip_entry* %35, null, !dbg !1411
  br i1 %36, label %37, label %57, !dbg !1412

37:                                               ; preds = %32
  %38 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1413
  %39 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1415
  %40 = call i32 @slurp_central_directory(%struct.archive_read* noundef %38, %struct.zip* noundef %39), !dbg !1416
  store i32 %40, i32* %8, align 4, !dbg !1417
  %41 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1418
  %42 = getelementptr inbounds %struct.zip, %struct.zip* %41, i32 0, i32 3, !dbg !1419
  %43 = load i64, i64* %42, align 8, !dbg !1419
  %44 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1420
  %45 = getelementptr inbounds %struct.zip, %struct.zip* %44, i32 0, i32 6, !dbg !1421
  store i64 %43, i64* %45, align 8, !dbg !1422
  %46 = load i32, i32* %8, align 4, !dbg !1423
  %47 = icmp ne i32 %46, 0, !dbg !1425
  br i1 %47, label %48, label %50, !dbg !1426

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4, !dbg !1427
  store i32 %49, i32* %3, align 4, !dbg !1428
  br label %291, !dbg !1428

50:                                               ; preds = %37
  %51 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1429
  %52 = getelementptr inbounds %struct.zip, %struct.zip* %51, i32 0, i32 9, !dbg !1429
  %53 = call %struct.archive_rb_node* @__archive_rb_tree_iterate(%struct.archive_rb_tree* noundef %52, %struct.archive_rb_node* noundef null, i32 noundef 0), !dbg !1429
  %54 = bitcast %struct.archive_rb_node* %53 to %struct.zip_entry*, !dbg !1430
  %55 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1431
  %56 = getelementptr inbounds %struct.zip, %struct.zip* %55, i32 0, i32 8, !dbg !1432
  store %struct.zip_entry* %54, %struct.zip_entry** %56, align 8, !dbg !1433
  br label %74, !dbg !1434

57:                                               ; preds = %32
  %58 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1435
  %59 = getelementptr inbounds %struct.zip, %struct.zip* %58, i32 0, i32 8, !dbg !1437
  %60 = load %struct.zip_entry*, %struct.zip_entry** %59, align 8, !dbg !1437
  %61 = icmp ne %struct.zip_entry* %60, null, !dbg !1438
  br i1 %61, label %62, label %73, !dbg !1439

62:                                               ; preds = %57
  %63 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1440
  %64 = getelementptr inbounds %struct.zip, %struct.zip* %63, i32 0, i32 9, !dbg !1442
  %65 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1443
  %66 = getelementptr inbounds %struct.zip, %struct.zip* %65, i32 0, i32 8, !dbg !1444
  %67 = load %struct.zip_entry*, %struct.zip_entry** %66, align 8, !dbg !1444
  %68 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %67, i32 0, i32 0, !dbg !1445
  %69 = call %struct.archive_rb_node* @__archive_rb_tree_iterate(%struct.archive_rb_tree* noundef %64, %struct.archive_rb_node* noundef %68, i32 noundef 1), !dbg !1446
  %70 = bitcast %struct.archive_rb_node* %69 to %struct.zip_entry*, !dbg !1447
  %71 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1448
  %72 = getelementptr inbounds %struct.zip, %struct.zip* %71, i32 0, i32 8, !dbg !1449
  store %struct.zip_entry* %70, %struct.zip_entry** %72, align 8, !dbg !1450
  br label %73, !dbg !1451

73:                                               ; preds = %62, %57
  br label %74

74:                                               ; preds = %73, %50
  %75 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1452
  %76 = getelementptr inbounds %struct.zip, %struct.zip* %75, i32 0, i32 6, !dbg !1454
  %77 = load i64, i64* %76, align 8, !dbg !1454
  %78 = icmp ule i64 %77, 0, !dbg !1455
  br i1 %78, label %84, label %79, !dbg !1456

79:                                               ; preds = %74
  %80 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1457
  %81 = getelementptr inbounds %struct.zip, %struct.zip* %80, i32 0, i32 8, !dbg !1458
  %82 = load %struct.zip_entry*, %struct.zip_entry** %81, align 8, !dbg !1458
  %83 = icmp eq %struct.zip_entry* %82, null, !dbg !1459
  br i1 %83, label %84, label %85, !dbg !1460

84:                                               ; preds = %79, %74
  store i32 1, i32* %3, align 4, !dbg !1461
  br label %291, !dbg !1461

85:                                               ; preds = %79
  %86 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1462
  %87 = getelementptr inbounds %struct.zip, %struct.zip* %86, i32 0, i32 6, !dbg !1463
  %88 = load i64, i64* %87, align 8, !dbg !1464
  %89 = add i64 %88, -1, !dbg !1464
  store i64 %89, i64* %87, align 8, !dbg !1464
  %90 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1465
  %91 = getelementptr inbounds %struct.zip, %struct.zip* %90, i32 0, i32 8, !dbg !1467
  %92 = load %struct.zip_entry*, %struct.zip_entry** %91, align 8, !dbg !1467
  %93 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %92, i32 0, i32 7, !dbg !1468
  %94 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %93, i32 0, i32 0, !dbg !1469
  %95 = load i8*, i8** %94, align 8, !dbg !1469
  %96 = icmp ne i8* %95, null, !dbg !1465
  br i1 %96, label %97, label %108, !dbg !1470

97:                                               ; preds = %85
  %98 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1471
  %99 = getelementptr inbounds %struct.zip, %struct.zip* %98, i32 0, i32 10, !dbg !1472
  %100 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1473
  %101 = getelementptr inbounds %struct.zip, %struct.zip* %100, i32 0, i32 8, !dbg !1474
  %102 = load %struct.zip_entry*, %struct.zip_entry** %101, align 8, !dbg !1474
  %103 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %102, i32 0, i32 7, !dbg !1475
  %104 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %103, i32 0, i32 0, !dbg !1476
  %105 = load i8*, i8** %104, align 8, !dbg !1476
  %106 = call %struct.archive_rb_node* @__archive_rb_tree_find_node(%struct.archive_rb_tree* noundef %99, i8* noundef %105), !dbg !1477
  %107 = bitcast %struct.archive_rb_node* %106 to %struct.zip_entry*, !dbg !1478
  store %struct.zip_entry* %107, %struct.zip_entry** %7, align 8, !dbg !1479
  br label %109, !dbg !1480

108:                                              ; preds = %85
  store %struct.zip_entry* null, %struct.zip_entry** %7, align 8, !dbg !1481
  br label %109

109:                                              ; preds = %108, %97
  %110 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1482
  %111 = getelementptr inbounds %struct.zip, %struct.zip* %110, i32 0, i32 5, !dbg !1484
  %112 = load i64, i64* %111, align 8, !dbg !1484
  %113 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1485
  %114 = getelementptr inbounds %struct.zip, %struct.zip* %113, i32 0, i32 8, !dbg !1486
  %115 = load %struct.zip_entry*, %struct.zip_entry** %114, align 8, !dbg !1486
  %116 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %115, i32 0, i32 1, !dbg !1487
  %117 = load i64, i64* %116, align 8, !dbg !1487
  %118 = icmp slt i64 %112, %117, !dbg !1488
  br i1 %118, label %119, label %131, !dbg !1489

119:                                              ; preds = %109
  %120 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1490
  %121 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1491
  %122 = getelementptr inbounds %struct.zip, %struct.zip* %121, i32 0, i32 8, !dbg !1492
  %123 = load %struct.zip_entry*, %struct.zip_entry** %122, align 8, !dbg !1492
  %124 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %123, i32 0, i32 1, !dbg !1493
  %125 = load i64, i64* %124, align 8, !dbg !1493
  %126 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1494
  %127 = getelementptr inbounds %struct.zip, %struct.zip* %126, i32 0, i32 5, !dbg !1495
  %128 = load i64, i64* %127, align 8, !dbg !1495
  %129 = sub nsw i64 %125, %128, !dbg !1496
  %130 = call i64 @zip_read_consume(%struct.archive_read* noundef %120, i64 noundef %129), !dbg !1497
  br label %157, !dbg !1497

131:                                              ; preds = %109
  %132 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1498
  %133 = getelementptr inbounds %struct.zip, %struct.zip* %132, i32 0, i32 5, !dbg !1500
  %134 = load i64, i64* %133, align 8, !dbg !1500
  %135 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1501
  %136 = getelementptr inbounds %struct.zip, %struct.zip* %135, i32 0, i32 8, !dbg !1502
  %137 = load %struct.zip_entry*, %struct.zip_entry** %136, align 8, !dbg !1502
  %138 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %137, i32 0, i32 1, !dbg !1503
  %139 = load i64, i64* %138, align 8, !dbg !1503
  %140 = icmp ne i64 %134, %139, !dbg !1504
  br i1 %140, label %141, label %156, !dbg !1505

141:                                              ; preds = %131
  %142 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1506
  %143 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1508
  %144 = getelementptr inbounds %struct.zip, %struct.zip* %143, i32 0, i32 8, !dbg !1509
  %145 = load %struct.zip_entry*, %struct.zip_entry** %144, align 8, !dbg !1509
  %146 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %145, i32 0, i32 1, !dbg !1510
  %147 = load i64, i64* %146, align 8, !dbg !1510
  %148 = call i64 @__archive_read_seek(%struct.archive_read* noundef %142, i64 noundef %147, i32 noundef 0), !dbg !1511
  %149 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1512
  %150 = getelementptr inbounds %struct.zip, %struct.zip* %149, i32 0, i32 8, !dbg !1513
  %151 = load %struct.zip_entry*, %struct.zip_entry** %150, align 8, !dbg !1513
  %152 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %151, i32 0, i32 1, !dbg !1514
  %153 = load i64, i64* %152, align 8, !dbg !1514
  %154 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1515
  %155 = getelementptr inbounds %struct.zip, %struct.zip* %154, i32 0, i32 5, !dbg !1516
  store i64 %153, i64* %155, align 8, !dbg !1517
  br label %156, !dbg !1518

156:                                              ; preds = %141, %131
  br label %157

157:                                              ; preds = %156, %119
  %158 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1519
  %159 = getelementptr inbounds %struct.zip, %struct.zip* %158, i32 0, i32 11, !dbg !1520
  store i64 0, i64* %159, align 8, !dbg !1521
  %160 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1522
  %161 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8, !dbg !1523
  %162 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1524
  %163 = call i32 @zip_read_local_file_header(%struct.archive_read* noundef %160, %struct.archive_entry* noundef %161, %struct.zip* noundef %162), !dbg !1525
  store i32 %163, i32* %8, align 4, !dbg !1526
  %164 = load i32, i32* %8, align 4, !dbg !1527
  %165 = icmp ne i32 %164, 0, !dbg !1529
  br i1 %165, label %166, label %168, !dbg !1530

166:                                              ; preds = %157
  %167 = load i32, i32* %8, align 4, !dbg !1531
  store i32 %167, i32* %3, align 4, !dbg !1532
  br label %291, !dbg !1532

168:                                              ; preds = %157
  %169 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1533
  %170 = getelementptr inbounds %struct.zip, %struct.zip* %169, i32 0, i32 8, !dbg !1535
  %171 = load %struct.zip_entry*, %struct.zip_entry** %170, align 8, !dbg !1535
  %172 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %171, i32 0, i32 12, !dbg !1536
  %173 = load i16, i16* %172, align 4, !dbg !1536
  %174 = zext i16 %173 to i32, !dbg !1533
  %175 = and i32 %174, 61440, !dbg !1537
  %176 = icmp eq i32 %175, 40960, !dbg !1538
  br i1 %176, label %177, label %275, !dbg !1539

177:                                              ; preds = %168
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1540, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.declare(metadata %struct.archive_string_conv** %11, metadata !1543, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1545, metadata !DIExpression()), !dbg !1546
  %178 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8, !dbg !1547
  %179 = call i64 @archive_entry_size(%struct.archive_entry* noundef %178), !dbg !1548
  store i64 %179, i64* %12, align 8, !dbg !1546
  %180 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8, !dbg !1549
  call void @archive_entry_set_size(%struct.archive_entry* noundef %180, i64 noundef 0), !dbg !1550
  %181 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1551
  %182 = load i64, i64* %12, align 8, !dbg !1552
  %183 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %181, i64 noundef %182, i64* noundef null), !dbg !1553
  store i8* %183, i8** %10, align 8, !dbg !1554
  %184 = load i8*, i8** %10, align 8, !dbg !1555
  %185 = icmp eq i8* %184, null, !dbg !1557
  br i1 %185, label %186, label %189, !dbg !1558

186:                                              ; preds = %177
  %187 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1559
  %188 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %187, i32 0, i32 0, !dbg !1561
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %188, i32 noundef -1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0)), !dbg !1562
  store i32 -30, i32* %3, align 4, !dbg !1563
  br label %291, !dbg !1563

189:                                              ; preds = %177
  %190 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1564
  %191 = getelementptr inbounds %struct.zip, %struct.zip* %190, i32 0, i32 25, !dbg !1565
  %192 = load %struct.archive_string_conv*, %struct.archive_string_conv** %191, align 8, !dbg !1565
  store %struct.archive_string_conv* %192, %struct.archive_string_conv** %11, align 8, !dbg !1566
  %193 = load %struct.archive_string_conv*, %struct.archive_string_conv** %11, align 8, !dbg !1567
  %194 = icmp eq %struct.archive_string_conv* %193, null, !dbg !1569
  br i1 %194, label %195, label %208, !dbg !1570

195:                                              ; preds = %189
  %196 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1571
  %197 = getelementptr inbounds %struct.zip, %struct.zip* %196, i32 0, i32 8, !dbg !1572
  %198 = load %struct.zip_entry*, %struct.zip_entry** %197, align 8, !dbg !1572
  %199 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %198, i32 0, i32 13, !dbg !1573
  %200 = load i16, i16* %199, align 2, !dbg !1573
  %201 = zext i16 %200 to i32, !dbg !1571
  %202 = and i32 %201, 2048, !dbg !1574
  %203 = icmp ne i32 %202, 0, !dbg !1574
  br i1 %203, label %204, label %208, !dbg !1575

204:                                              ; preds = %195
  %205 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1576
  %206 = getelementptr inbounds %struct.zip, %struct.zip* %205, i32 0, i32 27, !dbg !1577
  %207 = load %struct.archive_string_conv*, %struct.archive_string_conv** %206, align 8, !dbg !1577
  store %struct.archive_string_conv* %207, %struct.archive_string_conv** %11, align 8, !dbg !1578
  br label %208, !dbg !1579

208:                                              ; preds = %204, %195, %189
  %209 = load %struct.archive_string_conv*, %struct.archive_string_conv** %11, align 8, !dbg !1580
  %210 = icmp eq %struct.archive_string_conv* %209, null, !dbg !1582
  br i1 %210, label %211, label %215, !dbg !1583

211:                                              ; preds = %208
  %212 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1584
  %213 = getelementptr inbounds %struct.zip, %struct.zip* %212, i32 0, i32 26, !dbg !1585
  %214 = load %struct.archive_string_conv*, %struct.archive_string_conv** %213, align 8, !dbg !1585
  store %struct.archive_string_conv* %214, %struct.archive_string_conv** %11, align 8, !dbg !1586
  br label %215, !dbg !1587

215:                                              ; preds = %211, %208
  %216 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8, !dbg !1588
  %217 = load i8*, i8** %10, align 8, !dbg !1590
  %218 = load i64, i64* %12, align 8, !dbg !1591
  %219 = load %struct.archive_string_conv*, %struct.archive_string_conv** %11, align 8, !dbg !1592
  %220 = call i32 @_archive_entry_copy_symlink_l(%struct.archive_entry* noundef %216, i8* noundef %217, i64 noundef %218, %struct.archive_string_conv* noundef %219), !dbg !1593
  %221 = icmp ne i32 %220, 0, !dbg !1594
  br i1 %221, label %222, label %274, !dbg !1595

222:                                              ; preds = %215
  %223 = call i32* @__errno_location() #10, !dbg !1596
  %224 = load i32, i32* %223, align 4, !dbg !1596
  %225 = icmp ne i32 %224, 12, !dbg !1599
  br i1 %225, label %226, label %246, !dbg !1600

226:                                              ; preds = %222
  %227 = load %struct.archive_string_conv*, %struct.archive_string_conv** %11, align 8, !dbg !1601
  %228 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1602
  %229 = getelementptr inbounds %struct.zip, %struct.zip* %228, i32 0, i32 27, !dbg !1603
  %230 = load %struct.archive_string_conv*, %struct.archive_string_conv** %229, align 8, !dbg !1603
  %231 = icmp eq %struct.archive_string_conv* %227, %230, !dbg !1604
  br i1 %231, label %232, label %246, !dbg !1605

232:                                              ; preds = %226
  %233 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1606
  %234 = getelementptr inbounds %struct.zip, %struct.zip* %233, i32 0, i32 8, !dbg !1607
  %235 = load %struct.zip_entry*, %struct.zip_entry** %234, align 8, !dbg !1607
  %236 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %235, i32 0, i32 13, !dbg !1608
  %237 = load i16, i16* %236, align 2, !dbg !1608
  %238 = zext i16 %237 to i32, !dbg !1606
  %239 = and i32 %238, 2048, !dbg !1609
  %240 = icmp ne i32 %239, 0, !dbg !1609
  br i1 %240, label %241, label %246, !dbg !1610

241:                                              ; preds = %232
  %242 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8, !dbg !1611
  %243 = load i8*, i8** %10, align 8, !dbg !1612
  %244 = load i64, i64* %12, align 8, !dbg !1613
  %245 = call i32 @_archive_entry_copy_symlink_l(%struct.archive_entry* noundef %242, i8* noundef %243, i64 noundef %244, %struct.archive_string_conv* noundef null), !dbg !1614
  br label %246, !dbg !1614

246:                                              ; preds = %241, %232, %226, %222
  %247 = call i32* @__errno_location() #10, !dbg !1615
  %248 = load i32, i32* %247, align 4, !dbg !1615
  %249 = icmp eq i32 %248, 12, !dbg !1617
  br i1 %249, label %250, label %253, !dbg !1618

250:                                              ; preds = %246
  %251 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1619
  %252 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %251, i32 0, i32 0, !dbg !1621
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %252, i32 noundef 12, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0)), !dbg !1622
  store i32 -30, i32* %3, align 4, !dbg !1623
  br label %291, !dbg !1623

253:                                              ; preds = %246
  %254 = load %struct.archive_string_conv*, %struct.archive_string_conv** %11, align 8, !dbg !1624
  %255 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1626
  %256 = getelementptr inbounds %struct.zip, %struct.zip* %255, i32 0, i32 27, !dbg !1627
  %257 = load %struct.archive_string_conv*, %struct.archive_string_conv** %256, align 8, !dbg !1627
  %258 = icmp ne %struct.archive_string_conv* %254, %257, !dbg !1628
  br i1 %258, label %268, label %259, !dbg !1629

259:                                              ; preds = %253
  %260 = load %struct.zip*, %struct.zip** %6, align 8, !dbg !1630
  %261 = getelementptr inbounds %struct.zip, %struct.zip* %260, i32 0, i32 8, !dbg !1631
  %262 = load %struct.zip_entry*, %struct.zip_entry** %261, align 8, !dbg !1631
  %263 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %262, i32 0, i32 13, !dbg !1632
  %264 = load i16, i16* %263, align 2, !dbg !1632
  %265 = zext i16 %264 to i32, !dbg !1630
  %266 = and i32 %265, 2048, !dbg !1633
  %267 = icmp eq i32 %266, 0, !dbg !1634
  br i1 %267, label %268, label %273, !dbg !1635

268:                                              ; preds = %259, %253
  %269 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1636
  %270 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %269, i32 0, i32 0, !dbg !1638
  %271 = load %struct.archive_string_conv*, %struct.archive_string_conv** %11, align 8, !dbg !1639
  %272 = call i8* @archive_string_conversion_charset_name(%struct.archive_string_conv* noundef %271), !dbg !1640
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %270, i32 noundef 84, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i8* noundef %272), !dbg !1641
  store i32 -20, i32* %9, align 4, !dbg !1642
  br label %273, !dbg !1643

273:                                              ; preds = %268, %259
  br label %274, !dbg !1644

274:                                              ; preds = %273, %215
  br label %275, !dbg !1645

275:                                              ; preds = %274, %168
  %276 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8, !dbg !1646
  %277 = icmp ne %struct.zip_entry* %276, null, !dbg !1646
  br i1 %277, label %278, label %289, !dbg !1648

278:                                              ; preds = %275
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1649, metadata !DIExpression()), !dbg !1651
  %279 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1652
  %280 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8, !dbg !1653
  %281 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8, !dbg !1654
  %282 = call i32 @zip_read_mac_metadata(%struct.archive_read* noundef %279, %struct.archive_entry* noundef %280, %struct.zip_entry* noundef %281), !dbg !1655
  store i32 %282, i32* %13, align 4, !dbg !1651
  %283 = load i32, i32* %13, align 4, !dbg !1656
  %284 = load i32, i32* %9, align 4, !dbg !1658
  %285 = icmp slt i32 %283, %284, !dbg !1659
  br i1 %285, label %286, label %288, !dbg !1660

286:                                              ; preds = %278
  %287 = load i32, i32* %13, align 4, !dbg !1661
  store i32 %287, i32* %9, align 4, !dbg !1662
  br label %288, !dbg !1663

288:                                              ; preds = %286, %278
  br label %289, !dbg !1664

289:                                              ; preds = %288, %275
  %290 = load i32, i32* %9, align 4, !dbg !1665
  store i32 %290, i32* %3, align 4, !dbg !1666
  br label %291, !dbg !1666

291:                                              ; preds = %289, %250, %186, %166, %84, %48
  %292 = load i32, i32* %3, align 4, !dbg !1667
  ret i32 %292, !dbg !1667
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @archive_read_support_format_zip(%struct.archive* noundef %0) #0 !dbg !1668 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.archive** %3, metadata !1669, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1671, metadata !DIExpression()), !dbg !1672
  %5 = load %struct.archive*, %struct.archive** %3, align 8, !dbg !1673
  %6 = call i32 @archive_read_support_format_zip_streamable(%struct.archive* noundef %5), !dbg !1674
  store i32 %6, i32* %4, align 4, !dbg !1675
  %7 = load i32, i32* %4, align 4, !dbg !1676
  %8 = icmp ne i32 %7, 0, !dbg !1678
  br i1 %8, label %9, label %11, !dbg !1679

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4, !dbg !1680
  store i32 %10, i32* %2, align 4, !dbg !1681
  br label %14, !dbg !1681

11:                                               ; preds = %1
  %12 = load %struct.archive*, %struct.archive** %3, align 8, !dbg !1682
  %13 = call i32 @archive_read_support_format_zip_seekable(%struct.archive* noundef %12), !dbg !1683
  store i32 %13, i32* %2, align 4, !dbg !1684
  br label %14, !dbg !1684

14:                                               ; preds = %11, %9
  %15 = load i32, i32* %2, align 4, !dbg !1685
  ret i32 %15, !dbg !1685
}

declare i64 @__archive_read_seek(%struct.archive_read* noundef, i64 noundef, i32 noundef) #2

declare i8* @__archive_read_ahead(%struct.archive_read* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @archive_le16dec(i8* noundef %0) #0 !dbg !1686 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1690, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1692, metadata !DIExpression()), !dbg !1693
  %4 = load i8*, i8** %2, align 8, !dbg !1694
  store i8* %4, i8** %3, align 8, !dbg !1693
  %5 = load i8*, i8** %3, align 8, !dbg !1695
  %6 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1695
  %7 = load i8, i8* %6, align 1, !dbg !1695
  %8 = zext i8 %7 to i32, !dbg !1695
  %9 = shl i32 %8, 8, !dbg !1696
  %10 = load i8*, i8** %3, align 8, !dbg !1697
  %11 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !1697
  %12 = load i8, i8* %11, align 1, !dbg !1697
  %13 = zext i8 %12 to i32, !dbg !1697
  %14 = or i32 %9, %13, !dbg !1698
  %15 = trunc i32 %14 to i16, !dbg !1699
  ret i16 %15, !dbg !1700
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @archive_le32dec(i8* noundef %0) #0 !dbg !1701 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1704, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1706, metadata !DIExpression()), !dbg !1707
  %4 = load i8*, i8** %2, align 8, !dbg !1708
  store i8* %4, i8** %3, align 8, !dbg !1707
  %5 = load i8*, i8** %3, align 8, !dbg !1709
  %6 = getelementptr inbounds i8, i8* %5, i64 3, !dbg !1709
  %7 = load i8, i8* %6, align 1, !dbg !1709
  %8 = zext i8 %7 to i32, !dbg !1709
  %9 = shl i32 %8, 24, !dbg !1710
  %10 = load i8*, i8** %3, align 8, !dbg !1711
  %11 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !1711
  %12 = load i8, i8* %11, align 1, !dbg !1711
  %13 = zext i8 %12 to i32, !dbg !1711
  %14 = shl i32 %13, 16, !dbg !1712
  %15 = or i32 %9, %14, !dbg !1713
  %16 = load i8*, i8** %3, align 8, !dbg !1714
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1714
  %18 = load i8, i8* %17, align 1, !dbg !1714
  %19 = zext i8 %18 to i32, !dbg !1714
  %20 = shl i32 %19, 8, !dbg !1715
  %21 = or i32 %15, %20, !dbg !1716
  %22 = load i8*, i8** %3, align 8, !dbg !1717
  %23 = getelementptr inbounds i8, i8* %22, i64 0, !dbg !1717
  %24 = load i8, i8* %23, align 1, !dbg !1717
  %25 = zext i8 %24 to i32, !dbg !1717
  %26 = or i32 %21, %25, !dbg !1718
  ret i32 %26, !dbg !1719
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @slurp_central_directory(%struct.archive_read* noundef %0, %struct.zip* noundef %1) #0 !dbg !2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.zip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.zip_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %4, metadata !1720, metadata !DIExpression()), !dbg !1721
  store %struct.zip* %1, %struct.zip** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.zip** %5, metadata !1722, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1724, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1726, metadata !DIExpression()), !dbg !1727
  %16 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1728
  %17 = getelementptr inbounds %struct.zip, %struct.zip* %16, i32 0, i32 0, !dbg !1729
  %18 = load i64, i64* %17, align 8, !dbg !1729
  %19 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1730
  %20 = getelementptr inbounds %struct.zip, %struct.zip* %19, i32 0, i32 1, !dbg !1731
  %21 = load i64, i64* %20, align 8, !dbg !1731
  %22 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1732
  %23 = getelementptr inbounds %struct.zip, %struct.zip* %22, i32 0, i32 2, !dbg !1733
  %24 = load i64, i64* %23, align 8, !dbg !1733
  %25 = add i64 %21, %24, !dbg !1734
  %26 = sub i64 %18, %25, !dbg !1735
  store i64 %26, i64* %7, align 8, !dbg !1736
  %27 = load i64, i64* %7, align 8, !dbg !1737
  %28 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1738
  %29 = getelementptr inbounds %struct.zip, %struct.zip* %28, i32 0, i32 1, !dbg !1739
  %30 = load i64, i64* %29, align 8, !dbg !1740
  %31 = add nsw i64 %30, %27, !dbg !1740
  store i64 %31, i64* %29, align 8, !dbg !1740
  %32 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1741
  %33 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1742
  %34 = getelementptr inbounds %struct.zip, %struct.zip* %33, i32 0, i32 1, !dbg !1743
  %35 = load i64, i64* %34, align 8, !dbg !1743
  %36 = call i64 @__archive_read_seek(%struct.archive_read* noundef %32, i64 noundef %35, i32 noundef 0), !dbg !1744
  %37 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1745
  %38 = getelementptr inbounds %struct.zip, %struct.zip* %37, i32 0, i32 1, !dbg !1746
  %39 = load i64, i64* %38, align 8, !dbg !1746
  %40 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1747
  %41 = getelementptr inbounds %struct.zip, %struct.zip* %40, i32 0, i32 5, !dbg !1748
  store i64 %39, i64* %41, align 8, !dbg !1749
  %42 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1750
  %43 = getelementptr inbounds %struct.zip, %struct.zip* %42, i32 0, i32 9, !dbg !1751
  call void @__archive_rb_tree_init(%struct.archive_rb_tree* noundef %43, %struct.archive_rb_tree_ops* noundef @slurp_central_directory.rb_ops), !dbg !1752
  %44 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1753
  %45 = getelementptr inbounds %struct.zip, %struct.zip* %44, i32 0, i32 10, !dbg !1754
  call void @__archive_rb_tree_init(%struct.archive_rb_tree* noundef %45, %struct.archive_rb_tree_ops* noundef @slurp_central_directory.rb_rsrc_ops), !dbg !1755
  %46 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1756
  %47 = getelementptr inbounds %struct.zip, %struct.zip* %46, i32 0, i32 3, !dbg !1757
  %48 = load i64, i64* %47, align 8, !dbg !1757
  %49 = call noalias i8* @calloc(i64 noundef %48, i64 noundef 136) #8, !dbg !1758
  %50 = bitcast i8* %49 to %struct.zip_entry*, !dbg !1758
  %51 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1759
  %52 = getelementptr inbounds %struct.zip, %struct.zip* %51, i32 0, i32 7, !dbg !1760
  store %struct.zip_entry* %50, %struct.zip_entry** %52, align 8, !dbg !1761
  store i32 0, i32* %6, align 4, !dbg !1762
  br label %53, !dbg !1764

53:                                               ; preds = %275, %2
  %54 = load i32, i32* %6, align 4, !dbg !1765
  %55 = zext i32 %54 to i64, !dbg !1765
  %56 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1767
  %57 = getelementptr inbounds %struct.zip, %struct.zip* %56, i32 0, i32 3, !dbg !1768
  %58 = load i64, i64* %57, align 8, !dbg !1768
  %59 = icmp ult i64 %55, %58, !dbg !1769
  br i1 %59, label %60, label %278, !dbg !1770

60:                                               ; preds = %53
  call void @llvm.dbg.declare(metadata %struct.zip_entry** %8, metadata !1771, metadata !DIExpression()), !dbg !1773
  %61 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1774
  %62 = getelementptr inbounds %struct.zip, %struct.zip* %61, i32 0, i32 7, !dbg !1775
  %63 = load %struct.zip_entry*, %struct.zip_entry** %62, align 8, !dbg !1775
  %64 = load i32, i32* %6, align 4, !dbg !1776
  %65 = zext i32 %64 to i64, !dbg !1774
  %66 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %63, i64 %65, !dbg !1774
  store %struct.zip_entry* %66, %struct.zip_entry** %8, align 8, !dbg !1773
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1777, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1779, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1781, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1783, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1785, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1787, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1789, metadata !DIExpression()), !dbg !1790
  %67 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1791
  %68 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %67, i64 noundef 46, i64* noundef null), !dbg !1793
  store i8* %68, i8** %14, align 8, !dbg !1794
  %69 = icmp eq i8* %68, null, !dbg !1795
  br i1 %69, label %70, label %71, !dbg !1796

70:                                               ; preds = %60
  store i32 -30, i32* %3, align 4, !dbg !1797
  br label %279, !dbg !1797

71:                                               ; preds = %60
  %72 = load i8*, i8** %14, align 8, !dbg !1798
  %73 = call i32 @memcmp(i8* noundef %72, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 noundef 4) #9, !dbg !1800
  %74 = icmp ne i32 %73, 0, !dbg !1801
  br i1 %74, label %75, label %78, !dbg !1802

75:                                               ; preds = %71
  %76 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1803
  %77 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %76, i32 0, i32 0, !dbg !1805
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %77, i32 noundef -1, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0)), !dbg !1806
  store i32 -30, i32* %3, align 4, !dbg !1807
  br label %279, !dbg !1807

78:                                               ; preds = %71
  %79 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1808
  %80 = getelementptr inbounds %struct.zip, %struct.zip* %79, i32 0, i32 4, !dbg !1809
  store i8 1, i8* %80, align 8, !dbg !1810
  %81 = load i8*, i8** %14, align 8, !dbg !1811
  %82 = getelementptr inbounds i8, i8* %81, i64 5, !dbg !1811
  %83 = load i8, i8* %82, align 1, !dbg !1811
  %84 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1812
  %85 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %84, i32 0, i32 15, !dbg !1813
  store i8 %83, i8* %85, align 1, !dbg !1814
  %86 = load i8*, i8** %14, align 8, !dbg !1815
  %87 = getelementptr inbounds i8, i8* %86, i64 8, !dbg !1816
  %88 = call zeroext i16 @archive_le16dec(i8* noundef %87), !dbg !1817
  %89 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1818
  %90 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %89, i32 0, i32 13, !dbg !1819
  store i16 %88, i16* %90, align 2, !dbg !1820
  %91 = load i8*, i8** %14, align 8, !dbg !1821
  %92 = getelementptr inbounds i8, i8* %91, i64 10, !dbg !1822
  %93 = call zeroext i16 @archive_le16dec(i8* noundef %92), !dbg !1823
  %94 = trunc i16 %93 to i8, !dbg !1824
  %95 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1825
  %96 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %95, i32 0, i32 14, !dbg !1826
  store i8 %94, i8* %96, align 8, !dbg !1827
  %97 = load i8*, i8** %14, align 8, !dbg !1828
  %98 = getelementptr inbounds i8, i8* %97, i64 12, !dbg !1829
  %99 = call i64 @zip_time(i8* noundef %98), !dbg !1830
  %100 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1831
  %101 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %100, i32 0, i32 8, !dbg !1832
  store i64 %99, i64* %101, align 8, !dbg !1833
  %102 = load i8*, i8** %14, align 8, !dbg !1834
  %103 = getelementptr inbounds i8, i8* %102, i64 16, !dbg !1835
  %104 = call i32 @archive_le32dec(i8* noundef %103), !dbg !1836
  %105 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1837
  %106 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %105, i32 0, i32 11, !dbg !1838
  store i32 %104, i32* %106, align 8, !dbg !1839
  %107 = load i8*, i8** %14, align 8, !dbg !1840
  %108 = getelementptr inbounds i8, i8* %107, i64 20, !dbg !1841
  %109 = call i32 @archive_le32dec(i8* noundef %108), !dbg !1842
  %110 = zext i32 %109 to i64, !dbg !1842
  %111 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1843
  %112 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %111, i32 0, i32 2, !dbg !1844
  store i64 %110, i64* %112, align 8, !dbg !1845
  %113 = load i8*, i8** %14, align 8, !dbg !1846
  %114 = getelementptr inbounds i8, i8* %113, i64 24, !dbg !1847
  %115 = call i32 @archive_le32dec(i8* noundef %114), !dbg !1848
  %116 = zext i32 %115 to i64, !dbg !1848
  %117 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1849
  %118 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %117, i32 0, i32 3, !dbg !1850
  store i64 %116, i64* %118, align 8, !dbg !1851
  %119 = load i8*, i8** %14, align 8, !dbg !1852
  %120 = getelementptr inbounds i8, i8* %119, i64 28, !dbg !1853
  %121 = call zeroext i16 @archive_le16dec(i8* noundef %120), !dbg !1854
  %122 = zext i16 %121 to i64, !dbg !1854
  store i64 %122, i64* %9, align 8, !dbg !1855
  %123 = load i8*, i8** %14, align 8, !dbg !1856
  %124 = getelementptr inbounds i8, i8* %123, i64 30, !dbg !1857
  %125 = call zeroext i16 @archive_le16dec(i8* noundef %124), !dbg !1858
  %126 = zext i16 %125 to i64, !dbg !1858
  store i64 %126, i64* %10, align 8, !dbg !1859
  %127 = load i8*, i8** %14, align 8, !dbg !1860
  %128 = getelementptr inbounds i8, i8* %127, i64 32, !dbg !1861
  %129 = call zeroext i16 @archive_le16dec(i8* noundef %128), !dbg !1862
  %130 = zext i16 %129 to i64, !dbg !1862
  store i64 %130, i64* %11, align 8, !dbg !1863
  %131 = load i8*, i8** %14, align 8, !dbg !1864
  %132 = getelementptr inbounds i8, i8* %131, i64 38, !dbg !1865
  %133 = call i32 @archive_le32dec(i8* noundef %132), !dbg !1866
  store i32 %133, i32* %12, align 4, !dbg !1867
  %134 = load i8*, i8** %14, align 8, !dbg !1868
  %135 = getelementptr inbounds i8, i8* %134, i64 42, !dbg !1869
  %136 = call i32 @archive_le32dec(i8* noundef %135), !dbg !1870
  %137 = zext i32 %136 to i64, !dbg !1870
  %138 = load i64, i64* %7, align 8, !dbg !1871
  %139 = add nsw i64 %137, %138, !dbg !1872
  %140 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1873
  %141 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %140, i32 0, i32 1, !dbg !1874
  store i64 %139, i64* %141, align 8, !dbg !1875
  %142 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1876
  %143 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %142, i32 0, i32 12, !dbg !1877
  store i16 0, i16* %143, align 4, !dbg !1878
  %144 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1879
  %145 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %144, i32 0, i32 15, !dbg !1881
  %146 = load i8, i8* %145, align 1, !dbg !1881
  %147 = sext i8 %146 to i32, !dbg !1879
  %148 = icmp eq i32 %147, 3, !dbg !1882
  br i1 %148, label %149, label %155, !dbg !1883

149:                                              ; preds = %78
  %150 = load i32, i32* %12, align 4, !dbg !1884
  %151 = lshr i32 %150, 16, !dbg !1886
  %152 = trunc i32 %151 to i16, !dbg !1884
  %153 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1887
  %154 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %153, i32 0, i32 12, !dbg !1888
  store i16 %152, i16* %154, align 4, !dbg !1889
  br label %155, !dbg !1890

155:                                              ; preds = %149, %78
  %156 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1891
  %157 = load i64, i64* %9, align 8, !dbg !1893
  %158 = add i64 46, %157, !dbg !1894
  %159 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %156, i64 noundef %158, i64* noundef null), !dbg !1895
  store i8* %159, i8** %14, align 8, !dbg !1896
  %160 = icmp eq i8* %159, null, !dbg !1897
  br i1 %160, label %161, label %162, !dbg !1898

161:                                              ; preds = %155
  store i32 -30, i32* %3, align 4, !dbg !1899
  br label %279, !dbg !1899

162:                                              ; preds = %155
  %163 = load i8*, i8** %14, align 8, !dbg !1900
  %164 = getelementptr inbounds i8, i8* %163, i64 46, !dbg !1901
  store i8* %164, i8** %13, align 8, !dbg !1902
  %165 = load i8*, i8** %13, align 8, !dbg !1903
  %166 = load i64, i64* %9, align 8, !dbg !1904
  %167 = call i8* @rsrc_basename(i8* noundef %165, i64 noundef %166), !dbg !1905
  store i8* %167, i8** %15, align 8, !dbg !1906
  %168 = load i64, i64* %9, align 8, !dbg !1907
  %169 = icmp uge i64 %168, 9, !dbg !1909
  br i1 %169, label %170, label %225, !dbg !1910

170:                                              ; preds = %162
  %171 = load i8*, i8** %13, align 8, !dbg !1911
  %172 = call i32 @strncmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef %171, i64 noundef 9) #9, !dbg !1912
  %173 = icmp eq i32 %172, 0, !dbg !1913
  br i1 %173, label %174, label %225, !dbg !1914

174:                                              ; preds = %170
  %175 = load i8*, i8** %13, align 8, !dbg !1915
  %176 = load i64, i64* %9, align 8, !dbg !1918
  %177 = sub i64 %176, 1, !dbg !1919
  %178 = getelementptr inbounds i8, i8* %175, i64 %177, !dbg !1915
  %179 = load i8, i8* %178, align 1, !dbg !1915
  %180 = sext i8 %179 to i32, !dbg !1915
  %181 = icmp ne i32 %180, 47, !dbg !1920
  br i1 %181, label %182, label %210, !dbg !1921

182:                                              ; preds = %174
  %183 = load i8*, i8** %15, align 8, !dbg !1922
  %184 = load i8*, i8** %13, align 8, !dbg !1923
  %185 = ptrtoint i8* %183 to i64, !dbg !1924
  %186 = ptrtoint i8* %184 to i64, !dbg !1924
  %187 = sub i64 %185, %186, !dbg !1924
  %188 = icmp slt i64 %187, 3, !dbg !1925
  br i1 %188, label %201, label %189, !dbg !1926

189:                                              ; preds = %182
  %190 = load i8*, i8** %15, align 8, !dbg !1927
  %191 = getelementptr inbounds i8, i8* %190, i64 0, !dbg !1927
  %192 = load i8, i8* %191, align 1, !dbg !1927
  %193 = sext i8 %192 to i32, !dbg !1927
  %194 = icmp ne i32 %193, 46, !dbg !1928
  br i1 %194, label %201, label %195, !dbg !1929

195:                                              ; preds = %189
  %196 = load i8*, i8** %15, align 8, !dbg !1930
  %197 = getelementptr inbounds i8, i8* %196, i64 1, !dbg !1930
  %198 = load i8, i8* %197, align 1, !dbg !1930
  %199 = sext i8 %198 to i32, !dbg !1930
  %200 = icmp ne i32 %199, 95, !dbg !1931
  br i1 %200, label %201, label %210, !dbg !1932

201:                                              ; preds = %195, %189, %182
  %202 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1933
  %203 = getelementptr inbounds %struct.zip, %struct.zip* %202, i32 0, i32 9, !dbg !1935
  %204 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1936
  %205 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %204, i32 0, i32 0, !dbg !1937
  %206 = call i32 @__archive_rb_tree_insert_node(%struct.archive_rb_tree* noundef %203, %struct.archive_rb_node* noundef %205), !dbg !1938
  %207 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1939
  %208 = load i8*, i8** %13, align 8, !dbg !1940
  %209 = load i64, i64* %9, align 8, !dbg !1941
  call void @expose_parent_dirs(%struct.zip* noundef %207, i8* noundef %208, i64 noundef %209), !dbg !1942
  br label %224, !dbg !1943

210:                                              ; preds = %195, %174
  %211 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1944
  %212 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %211, i32 0, i32 7, !dbg !1944
  %213 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %212, i32 0, i32 1, !dbg !1944
  store i64 0, i64* %213, align 8, !dbg !1944
  %214 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1944
  %215 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %214, i32 0, i32 7, !dbg !1944
  %216 = load i8*, i8** %13, align 8, !dbg !1944
  %217 = load i64, i64* %9, align 8, !dbg !1944
  %218 = call %struct.archive_string* @archive_strncat(%struct.archive_string* noundef %215, i8* noundef %216, i64 noundef %217), !dbg !1944
  %219 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1946
  %220 = getelementptr inbounds %struct.zip, %struct.zip* %219, i32 0, i32 10, !dbg !1947
  %221 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1948
  %222 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %221, i32 0, i32 0, !dbg !1949
  %223 = call i32 @__archive_rb_tree_insert_node(%struct.archive_rb_tree* noundef %220, %struct.archive_rb_node* noundef %222), !dbg !1950
  br label %224

224:                                              ; preds = %210, %201
  br label %266, !dbg !1951

225:                                              ; preds = %170, %162
  %226 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1952
  %227 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %226, i32 0, i32 7, !dbg !1952
  %228 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %227, i32 0, i32 1, !dbg !1952
  store i64 0, i64* %228, align 8, !dbg !1952
  %229 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1952
  %230 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %229, i32 0, i32 7, !dbg !1952
  %231 = call %struct.archive_string* @archive_strncat(%struct.archive_string* noundef %230, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i64 noundef 9), !dbg !1952
  %232 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1954
  %233 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %232, i32 0, i32 7, !dbg !1955
  %234 = load i8*, i8** %13, align 8, !dbg !1956
  %235 = load i8*, i8** %15, align 8, !dbg !1957
  %236 = load i8*, i8** %13, align 8, !dbg !1958
  %237 = ptrtoint i8* %235 to i64, !dbg !1959
  %238 = ptrtoint i8* %236 to i64, !dbg !1959
  %239 = sub i64 %237, %238, !dbg !1959
  %240 = call %struct.archive_string* @archive_strncat(%struct.archive_string* noundef %233, i8* noundef %234, i64 noundef %239), !dbg !1960
  %241 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1961
  %242 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %241, i32 0, i32 7, !dbg !1962
  %243 = call %struct.archive_string* @archive_strcat(%struct.archive_string* noundef %242, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)), !dbg !1963
  %244 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1964
  %245 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %244, i32 0, i32 7, !dbg !1965
  %246 = load i8*, i8** %13, align 8, !dbg !1966
  %247 = load i8*, i8** %15, align 8, !dbg !1967
  %248 = load i8*, i8** %13, align 8, !dbg !1968
  %249 = ptrtoint i8* %247 to i64, !dbg !1969
  %250 = ptrtoint i8* %248 to i64, !dbg !1969
  %251 = sub i64 %249, %250, !dbg !1969
  %252 = getelementptr inbounds i8, i8* %246, i64 %251, !dbg !1970
  %253 = load i64, i64* %9, align 8, !dbg !1971
  %254 = load i8*, i8** %15, align 8, !dbg !1972
  %255 = load i8*, i8** %13, align 8, !dbg !1973
  %256 = ptrtoint i8* %254 to i64, !dbg !1974
  %257 = ptrtoint i8* %255 to i64, !dbg !1974
  %258 = sub i64 %256, %257, !dbg !1974
  %259 = sub i64 %253, %258, !dbg !1975
  %260 = call %struct.archive_string* @archive_strncat(%struct.archive_string* noundef %245, i8* noundef %252, i64 noundef %259), !dbg !1976
  %261 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !1977
  %262 = getelementptr inbounds %struct.zip, %struct.zip* %261, i32 0, i32 9, !dbg !1978
  %263 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !1979
  %264 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %263, i32 0, i32 0, !dbg !1980
  %265 = call i32 @__archive_rb_tree_insert_node(%struct.archive_rb_tree* noundef %262, %struct.archive_rb_node* noundef %264), !dbg !1981
  br label %266

266:                                              ; preds = %225, %224
  %267 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !1982
  %268 = load i64, i64* %9, align 8, !dbg !1983
  %269 = add i64 46, %268, !dbg !1984
  %270 = load i64, i64* %10, align 8, !dbg !1985
  %271 = add i64 %269, %270, !dbg !1986
  %272 = load i64, i64* %11, align 8, !dbg !1987
  %273 = add i64 %271, %272, !dbg !1988
  %274 = call i64 @__archive_read_consume(%struct.archive_read* noundef %267, i64 noundef %273), !dbg !1989
  br label %275, !dbg !1990

275:                                              ; preds = %266
  %276 = load i32, i32* %6, align 4, !dbg !1991
  %277 = add i32 %276, 1, !dbg !1991
  store i32 %277, i32* %6, align 4, !dbg !1991
  br label %53, !dbg !1992, !llvm.loop !1993

278:                                              ; preds = %53
  store i32 0, i32* %3, align 4, !dbg !1995
  br label %279, !dbg !1995

279:                                              ; preds = %278, %161, %75, %70
  %280 = load i32, i32* %3, align 4, !dbg !1996
  ret i32 %280, !dbg !1996
}

declare %struct.archive_rb_node* @__archive_rb_tree_iterate(%struct.archive_rb_tree* noundef, %struct.archive_rb_node* noundef, i32 noundef) #2

declare %struct.archive_rb_node* @__archive_rb_tree_find_node(%struct.archive_rb_tree* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @zip_read_consume(%struct.archive_read* noundef %0, i64 noundef %1) #0 !dbg !1997 {
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.zip*, align 8
  %6 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %3, metadata !2000, metadata !DIExpression()), !dbg !2001
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2002, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.declare(metadata %struct.zip** %5, metadata !2004, metadata !DIExpression()), !dbg !2005
  %7 = load %struct.archive_read*, %struct.archive_read** %3, align 8, !dbg !2006
  %8 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %7, i32 0, i32 19, !dbg !2007
  %9 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %8, align 8, !dbg !2007
  %10 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %9, i32 0, i32 0, !dbg !2008
  %11 = load i8*, i8** %10, align 8, !dbg !2008
  %12 = bitcast i8* %11 to %struct.zip*, !dbg !2009
  store %struct.zip* %12, %struct.zip** %5, align 8, !dbg !2005
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2010, metadata !DIExpression()), !dbg !2011
  %13 = load %struct.archive_read*, %struct.archive_read** %3, align 8, !dbg !2012
  %14 = load i64, i64* %4, align 8, !dbg !2013
  %15 = call i64 @__archive_read_consume(%struct.archive_read* noundef %13, i64 noundef %14), !dbg !2014
  store i64 %15, i64* %6, align 8, !dbg !2015
  %16 = load i64, i64* %6, align 8, !dbg !2016
  %17 = icmp sgt i64 %16, 0, !dbg !2018
  br i1 %17, label %18, label %24, !dbg !2019

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8, !dbg !2020
  %20 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !2021
  %21 = getelementptr inbounds %struct.zip, %struct.zip* %20, i32 0, i32 5, !dbg !2022
  %22 = load i64, i64* %21, align 8, !dbg !2023
  %23 = add nsw i64 %22, %19, !dbg !2023
  store i64 %23, i64* %21, align 8, !dbg !2023
  br label %24, !dbg !2021

24:                                               ; preds = %18, %2
  %25 = load i64, i64* %6, align 8, !dbg !2024
  ret i64 %25, !dbg !2025
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @zip_read_local_file_header(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1, %struct.zip* noundef %2) #0 !dbg !2026 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca %struct.zip*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.archive_string_conv*, align 8
  %16 = alloca %struct.zip_entry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %5, metadata !2029, metadata !DIExpression()), !dbg !2030
  store %struct.archive_entry* %1, %struct.archive_entry** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_entry** %6, metadata !2031, metadata !DIExpression()), !dbg !2032
  store %struct.zip* %2, %struct.zip** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.zip** %7, metadata !2033, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2035, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2037, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2039, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2044, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2046, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2048, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2050, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.declare(metadata %struct.archive_string_conv** %15, metadata !2052, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.declare(metadata %struct.zip_entry** %16, metadata !2054, metadata !DIExpression()), !dbg !2055
  %22 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2056
  %23 = getelementptr inbounds %struct.zip, %struct.zip* %22, i32 0, i32 8, !dbg !2057
  %24 = load %struct.zip_entry*, %struct.zip_entry** %23, align 8, !dbg !2057
  store %struct.zip_entry* %24, %struct.zip_entry** %16, align 8, !dbg !2055
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2058, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.declare(metadata i64* %18, metadata !2060, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.declare(metadata i64* %19, metadata !2062, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2064, metadata !DIExpression()), !dbg !2065
  store i32 0, i32* %20, align 4, !dbg !2065
  call void @llvm.dbg.declare(metadata i8* %21, metadata !2066, metadata !DIExpression()), !dbg !2067
  %25 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2068
  %26 = getelementptr inbounds %struct.zip, %struct.zip* %25, i32 0, i32 16, !dbg !2069
  store i8 0, i8* %26, align 8, !dbg !2070
  %27 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2071
  %28 = getelementptr inbounds %struct.zip, %struct.zip* %27, i32 0, i32 17, !dbg !2072
  store i8 0, i8* %28, align 1, !dbg !2073
  %29 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2074
  %30 = getelementptr inbounds %struct.zip, %struct.zip* %29, i32 0, i32 14, !dbg !2075
  store i64 0, i64* %30, align 8, !dbg !2076
  %31 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2077
  %32 = getelementptr inbounds %struct.zip, %struct.zip* %31, i32 0, i32 13, !dbg !2078
  store i64 0, i64* %32, align 8, !dbg !2079
  %33 = call i64 @crc32(i64 noundef 0, i8* noundef null, i32 noundef 0), !dbg !2080
  %34 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2081
  %35 = getelementptr inbounds %struct.zip, %struct.zip* %34, i32 0, i32 15, !dbg !2082
  store i64 %33, i64* %35, align 8, !dbg !2083
  %36 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2084
  %37 = getelementptr inbounds %struct.zip, %struct.zip* %36, i32 0, i32 25, !dbg !2086
  %38 = load %struct.archive_string_conv*, %struct.archive_string_conv** %37, align 8, !dbg !2086
  %39 = icmp eq %struct.archive_string_conv* %38, null, !dbg !2087
  br i1 %39, label %40, label %53, !dbg !2088

40:                                               ; preds = %3
  %41 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2089
  %42 = getelementptr inbounds %struct.zip, %struct.zip* %41, i32 0, i32 28, !dbg !2090
  %43 = load i32, i32* %42, align 8, !dbg !2090
  %44 = icmp ne i32 %43, 0, !dbg !2089
  br i1 %44, label %53, label %45, !dbg !2091

45:                                               ; preds = %40
  %46 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2092
  %47 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %46, i32 0, i32 0, !dbg !2094
  %48 = call %struct.archive_string_conv* @archive_string_default_conversion_for_read(%struct.archive* noundef %47), !dbg !2095
  %49 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2096
  %50 = getelementptr inbounds %struct.zip, %struct.zip* %49, i32 0, i32 26, !dbg !2097
  store %struct.archive_string_conv* %48, %struct.archive_string_conv** %50, align 8, !dbg !2098
  %51 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2099
  %52 = getelementptr inbounds %struct.zip, %struct.zip* %51, i32 0, i32 28, !dbg !2100
  store i32 1, i32* %52, align 8, !dbg !2101
  br label %53, !dbg !2102

53:                                               ; preds = %45, %40, %3
  %54 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2103
  %55 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %54, i64 noundef 30, i64* noundef null), !dbg !2105
  store i8* %55, i8** %8, align 8, !dbg !2106
  %56 = icmp eq i8* %55, null, !dbg !2107
  br i1 %56, label %57, label %60, !dbg !2108

57:                                               ; preds = %53
  %58 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2109
  %59 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %58, i32 0, i32 0, !dbg !2111
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %59, i32 noundef 84, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0)), !dbg !2112
  store i32 -30, i32* %4, align 4, !dbg !2113
  br label %397, !dbg !2113

60:                                               ; preds = %53
  %61 = load i8*, i8** %8, align 8, !dbg !2114
  %62 = call i32 @memcmp(i8* noundef %61, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 noundef 4) #9, !dbg !2116
  %63 = icmp ne i32 %62, 0, !dbg !2117
  br i1 %63, label %64, label %67, !dbg !2118

64:                                               ; preds = %60
  %65 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2119
  %66 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %65, i32 0, i32 0, !dbg !2121
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %66, i32 noundef -1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)), !dbg !2122
  store i32 -30, i32* %4, align 4, !dbg !2123
  br label %397, !dbg !2123

67:                                               ; preds = %60
  %68 = load i8*, i8** %8, align 8, !dbg !2124
  %69 = getelementptr inbounds i8, i8* %68, i64 4, !dbg !2124
  %70 = load i8, i8* %69, align 1, !dbg !2124
  store i8 %70, i8* %21, align 1, !dbg !2125
  %71 = load i8*, i8** %8, align 8, !dbg !2126
  %72 = getelementptr inbounds i8, i8* %71, i64 5, !dbg !2126
  %73 = load i8, i8* %72, align 1, !dbg !2126
  %74 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2127
  %75 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %74, i32 0, i32 15, !dbg !2128
  store i8 %73, i8* %75, align 1, !dbg !2129
  %76 = load i8*, i8** %8, align 8, !dbg !2130
  %77 = getelementptr inbounds i8, i8* %76, i64 6, !dbg !2131
  %78 = call zeroext i16 @archive_le16dec(i8* noundef %77), !dbg !2132
  %79 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2133
  %80 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %79, i32 0, i32 13, !dbg !2134
  store i16 %78, i16* %80, align 2, !dbg !2135
  %81 = load i8*, i8** %8, align 8, !dbg !2136
  %82 = getelementptr inbounds i8, i8* %81, i64 8, !dbg !2137
  %83 = call zeroext i16 @archive_le16dec(i8* noundef %82), !dbg !2138
  %84 = trunc i16 %83 to i8, !dbg !2139
  %85 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2140
  %86 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %85, i32 0, i32 14, !dbg !2141
  store i8 %84, i8* %86, align 8, !dbg !2142
  %87 = load i8*, i8** %8, align 8, !dbg !2143
  %88 = getelementptr inbounds i8, i8* %87, i64 10, !dbg !2144
  %89 = call i64 @zip_time(i8* noundef %88), !dbg !2145
  %90 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2146
  %91 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %90, i32 0, i32 8, !dbg !2147
  store i64 %89, i64* %91, align 8, !dbg !2148
  %92 = load i8*, i8** %8, align 8, !dbg !2149
  %93 = getelementptr inbounds i8, i8* %92, i64 14, !dbg !2150
  %94 = call i32 @archive_le32dec(i8* noundef %93), !dbg !2151
  store i32 %94, i32* %17, align 4, !dbg !2152
  %95 = load i8*, i8** %8, align 8, !dbg !2153
  %96 = getelementptr inbounds i8, i8* %95, i64 18, !dbg !2154
  %97 = call i32 @archive_le32dec(i8* noundef %96), !dbg !2155
  %98 = zext i32 %97 to i64, !dbg !2155
  store i64 %98, i64* %18, align 8, !dbg !2156
  %99 = load i8*, i8** %8, align 8, !dbg !2157
  %100 = getelementptr inbounds i8, i8* %99, i64 22, !dbg !2158
  %101 = call i32 @archive_le32dec(i8* noundef %100), !dbg !2159
  %102 = zext i32 %101 to i64, !dbg !2159
  store i64 %102, i64* %19, align 8, !dbg !2160
  %103 = load i8*, i8** %8, align 8, !dbg !2161
  %104 = getelementptr inbounds i8, i8* %103, i64 26, !dbg !2162
  %105 = call zeroext i16 @archive_le16dec(i8* noundef %104), !dbg !2163
  %106 = zext i16 %105 to i64, !dbg !2163
  store i64 %106, i64* %13, align 8, !dbg !2164
  %107 = load i8*, i8** %8, align 8, !dbg !2165
  %108 = getelementptr inbounds i8, i8* %107, i64 28, !dbg !2166
  %109 = call zeroext i16 @archive_le16dec(i8* noundef %108), !dbg !2167
  %110 = zext i16 %109 to i64, !dbg !2167
  store i64 %110, i64* %14, align 8, !dbg !2168
  %111 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2169
  %112 = call i64 @zip_read_consume(%struct.archive_read* noundef %111, i64 noundef 30), !dbg !2170
  %113 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2171
  %114 = getelementptr inbounds %struct.zip, %struct.zip* %113, i32 0, i32 4, !dbg !2173
  %115 = load i8, i8* %114, align 8, !dbg !2173
  %116 = icmp ne i8 %115, 0, !dbg !2171
  br i1 %116, label %117, label %160, !dbg !2174

117:                                              ; preds = %67
  %118 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2175
  %119 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %118, i32 0, i32 13, !dbg !2177
  %120 = load i16, i16* %119, align 2, !dbg !2178
  %121 = zext i16 %120 to i32, !dbg !2178
  %122 = and i32 %121, -9, !dbg !2178
  %123 = trunc i32 %122 to i16, !dbg !2178
  store i16 %123, i16* %119, align 2, !dbg !2178
  %124 = load i32, i32* %17, align 4, !dbg !2179
  %125 = icmp ne i32 %124, 0, !dbg !2181
  br i1 %125, label %126, label %135, !dbg !2182

126:                                              ; preds = %117
  %127 = load i32, i32* %17, align 4, !dbg !2183
  %128 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2184
  %129 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %128, i32 0, i32 11, !dbg !2185
  %130 = load i32, i32* %129, align 8, !dbg !2185
  %131 = icmp ne i32 %127, %130, !dbg !2186
  br i1 %131, label %132, label %135, !dbg !2187

132:                                              ; preds = %126
  %133 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2188
  %134 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %133, i32 0, i32 0, !dbg !2190
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %134, i32 noundef 84, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0)), !dbg !2191
  store i32 -20, i32* %20, align 4, !dbg !2192
  br label %135, !dbg !2193

135:                                              ; preds = %132, %126, %117
  %136 = load i64, i64* %18, align 8, !dbg !2194
  %137 = icmp ne i64 %136, 0, !dbg !2196
  br i1 %137, label %138, label %147, !dbg !2197

138:                                              ; preds = %135
  %139 = load i64, i64* %18, align 8, !dbg !2198
  %140 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2199
  %141 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %140, i32 0, i32 2, !dbg !2200
  %142 = load i64, i64* %141, align 8, !dbg !2200
  %143 = icmp ne i64 %139, %142, !dbg !2201
  br i1 %143, label %144, label %147, !dbg !2202

144:                                              ; preds = %138
  %145 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2203
  %146 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %145, i32 0, i32 0, !dbg !2205
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %146, i32 noundef 84, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)), !dbg !2206
  store i32 -20, i32* %20, align 4, !dbg !2207
  br label %147, !dbg !2208

147:                                              ; preds = %144, %138, %135
  %148 = load i64, i64* %19, align 8, !dbg !2209
  %149 = icmp ne i64 %148, 0, !dbg !2211
  br i1 %149, label %150, label %159, !dbg !2212

150:                                              ; preds = %147
  %151 = load i64, i64* %19, align 8, !dbg !2213
  %152 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2214
  %153 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %152, i32 0, i32 3, !dbg !2215
  %154 = load i64, i64* %153, align 8, !dbg !2215
  %155 = icmp ne i64 %151, %154, !dbg !2216
  br i1 %155, label %156, label %159, !dbg !2217

156:                                              ; preds = %150
  %157 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2218
  %158 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %157, i32 0, i32 0, !dbg !2220
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %158, i32 noundef 84, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0)), !dbg !2221
  store i32 -20, i32* %20, align 4, !dbg !2222
  br label %159, !dbg !2223

159:                                              ; preds = %156, %150, %147
  br label %170, !dbg !2224

160:                                              ; preds = %67
  %161 = load i32, i32* %17, align 4, !dbg !2225
  %162 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2227
  %163 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %162, i32 0, i32 11, !dbg !2228
  store i32 %161, i32* %163, align 8, !dbg !2229
  %164 = load i64, i64* %18, align 8, !dbg !2230
  %165 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2231
  %166 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %165, i32 0, i32 2, !dbg !2232
  store i64 %164, i64* %166, align 8, !dbg !2233
  %167 = load i64, i64* %19, align 8, !dbg !2234
  %168 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2235
  %169 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %168, i32 0, i32 3, !dbg !2236
  store i64 %167, i64* %169, align 8, !dbg !2237
  br label %170

170:                                              ; preds = %160, %159
  %171 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2238
  %172 = load i64, i64* %13, align 8, !dbg !2240
  %173 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %171, i64 noundef %172, i64* noundef null), !dbg !2241
  store i8* %173, i8** %9, align 8, !dbg !2242
  %174 = icmp eq i8* %173, null, !dbg !2243
  br i1 %174, label %175, label %178, !dbg !2244

175:                                              ; preds = %170
  %176 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2245
  %177 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %176, i32 0, i32 0, !dbg !2247
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %177, i32 noundef 84, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0)), !dbg !2248
  store i32 -30, i32* %4, align 4, !dbg !2249
  br label %397, !dbg !2249

178:                                              ; preds = %170
  %179 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2250
  %180 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %179, i32 0, i32 13, !dbg !2252
  %181 = load i16, i16* %180, align 2, !dbg !2252
  %182 = zext i16 %181 to i32, !dbg !2250
  %183 = and i32 %182, 2048, !dbg !2253
  %184 = icmp ne i32 %183, 0, !dbg !2253
  br i1 %184, label %185, label %206, !dbg !2254

185:                                              ; preds = %178
  %186 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2255
  %187 = getelementptr inbounds %struct.zip, %struct.zip* %186, i32 0, i32 27, !dbg !2258
  %188 = load %struct.archive_string_conv*, %struct.archive_string_conv** %187, align 8, !dbg !2258
  %189 = icmp eq %struct.archive_string_conv* %188, null, !dbg !2259
  br i1 %189, label %190, label %202, !dbg !2260

190:                                              ; preds = %185
  %191 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2261
  %192 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %191, i32 0, i32 0, !dbg !2263
  %193 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive* noundef %192, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 noundef 1), !dbg !2264
  %194 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2265
  %195 = getelementptr inbounds %struct.zip, %struct.zip* %194, i32 0, i32 27, !dbg !2266
  store %struct.archive_string_conv* %193, %struct.archive_string_conv** %195, align 8, !dbg !2267
  %196 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2268
  %197 = getelementptr inbounds %struct.zip, %struct.zip* %196, i32 0, i32 27, !dbg !2270
  %198 = load %struct.archive_string_conv*, %struct.archive_string_conv** %197, align 8, !dbg !2270
  %199 = icmp eq %struct.archive_string_conv* %198, null, !dbg !2271
  br i1 %199, label %200, label %201, !dbg !2272

200:                                              ; preds = %190
  store i32 -30, i32* %4, align 4, !dbg !2273
  br label %397, !dbg !2273

201:                                              ; preds = %190
  br label %202, !dbg !2274

202:                                              ; preds = %201, %185
  %203 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2275
  %204 = getelementptr inbounds %struct.zip, %struct.zip* %203, i32 0, i32 27, !dbg !2276
  %205 = load %struct.archive_string_conv*, %struct.archive_string_conv** %204, align 8, !dbg !2276
  store %struct.archive_string_conv* %205, %struct.archive_string_conv** %15, align 8, !dbg !2277
  br label %220, !dbg !2278

206:                                              ; preds = %178
  %207 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2279
  %208 = getelementptr inbounds %struct.zip, %struct.zip* %207, i32 0, i32 25, !dbg !2281
  %209 = load %struct.archive_string_conv*, %struct.archive_string_conv** %208, align 8, !dbg !2281
  %210 = icmp ne %struct.archive_string_conv* %209, null, !dbg !2282
  br i1 %210, label %211, label %215, !dbg !2283

211:                                              ; preds = %206
  %212 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2284
  %213 = getelementptr inbounds %struct.zip, %struct.zip* %212, i32 0, i32 25, !dbg !2285
  %214 = load %struct.archive_string_conv*, %struct.archive_string_conv** %213, align 8, !dbg !2285
  store %struct.archive_string_conv* %214, %struct.archive_string_conv** %15, align 8, !dbg !2286
  br label %219, !dbg !2287

215:                                              ; preds = %206
  %216 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2288
  %217 = getelementptr inbounds %struct.zip, %struct.zip* %216, i32 0, i32 26, !dbg !2289
  %218 = load %struct.archive_string_conv*, %struct.archive_string_conv** %217, align 8, !dbg !2289
  store %struct.archive_string_conv* %218, %struct.archive_string_conv** %15, align 8, !dbg !2290
  br label %219

219:                                              ; preds = %215, %211
  br label %220

220:                                              ; preds = %219, %202
  %221 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8, !dbg !2291
  %222 = load i8*, i8** %9, align 8, !dbg !2293
  %223 = load i64, i64* %13, align 8, !dbg !2294
  %224 = load %struct.archive_string_conv*, %struct.archive_string_conv** %15, align 8, !dbg !2295
  %225 = call i32 @_archive_entry_copy_pathname_l(%struct.archive_entry* noundef %221, i8* noundef %222, i64 noundef %223, %struct.archive_string_conv* noundef %224), !dbg !2296
  %226 = icmp ne i32 %225, 0, !dbg !2297
  br i1 %226, label %227, label %239, !dbg !2298

227:                                              ; preds = %220
  %228 = call i32* @__errno_location() #10, !dbg !2299
  %229 = load i32, i32* %228, align 4, !dbg !2299
  %230 = icmp eq i32 %229, 12, !dbg !2302
  br i1 %230, label %231, label %234, !dbg !2303

231:                                              ; preds = %227
  %232 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2304
  %233 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %232, i32 0, i32 0, !dbg !2306
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %233, i32 noundef 12, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0)), !dbg !2307
  store i32 -30, i32* %4, align 4, !dbg !2308
  br label %397, !dbg !2308

234:                                              ; preds = %227
  %235 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2309
  %236 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %235, i32 0, i32 0, !dbg !2310
  %237 = load %struct.archive_string_conv*, %struct.archive_string_conv** %15, align 8, !dbg !2311
  %238 = call i8* @archive_string_conversion_charset_name(%struct.archive_string_conv* noundef %237), !dbg !2312
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %236, i32 noundef 84, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0), i8* noundef %238), !dbg !2313
  store i32 -20, i32* %20, align 4, !dbg !2314
  br label %239, !dbg !2315

239:                                              ; preds = %234, %220
  %240 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2316
  %241 = load i64, i64* %13, align 8, !dbg !2317
  %242 = call i64 @zip_read_consume(%struct.archive_read* noundef %240, i64 noundef %241), !dbg !2318
  %243 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2319
  %244 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %243, i32 0, i32 12, !dbg !2321
  %245 = load i16, i16* %244, align 4, !dbg !2321
  %246 = zext i16 %245 to i32, !dbg !2319
  %247 = icmp eq i32 %246, 0, !dbg !2322
  br i1 %247, label %248, label %301, !dbg !2323

248:                                              ; preds = %239
  %249 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8, !dbg !2324
  %250 = call i32* @archive_entry_pathname_w(%struct.archive_entry* noundef %249), !dbg !2326
  store i32* %250, i32** %10, align 8, !dbg !2327
  %251 = load i32*, i32** %10, align 8, !dbg !2328
  %252 = icmp ne i32* %251, null, !dbg !2330
  br i1 %252, label %253, label %272, !dbg !2331

253:                                              ; preds = %248
  %254 = load i32*, i32** %10, align 8, !dbg !2332
  %255 = call i64 @wcslen(i32* noundef %254) #9, !dbg !2334
  store i64 %255, i64* %12, align 8, !dbg !2335
  %256 = load i64, i64* %12, align 8, !dbg !2336
  %257 = icmp ugt i64 %256, 0, !dbg !2338
  br i1 %257, label %258, label %268, !dbg !2339

258:                                              ; preds = %253
  %259 = load i32*, i32** %10, align 8, !dbg !2340
  %260 = load i64, i64* %12, align 8, !dbg !2341
  %261 = sub i64 %260, 1, !dbg !2342
  %262 = getelementptr inbounds i32, i32* %259, i64 %261, !dbg !2340
  %263 = load i32, i32* %262, align 4, !dbg !2340
  %264 = icmp eq i32 %263, 47, !dbg !2343
  br i1 %264, label %265, label %268, !dbg !2344

265:                                              ; preds = %258
  %266 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2345
  %267 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %266, i32 0, i32 12, !dbg !2346
  store i16 16895, i16* %267, align 4, !dbg !2347
  br label %271, !dbg !2345

268:                                              ; preds = %258, %253
  %269 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2348
  %270 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %269, i32 0, i32 12, !dbg !2349
  store i16 -32330, i16* %270, align 4, !dbg !2350
  br label %271

271:                                              ; preds = %268, %265
  br label %300, !dbg !2351

272:                                              ; preds = %248
  %273 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8, !dbg !2352
  %274 = call i8* @archive_entry_pathname(%struct.archive_entry* noundef %273), !dbg !2354
  store i8* %274, i8** %11, align 8, !dbg !2355
  %275 = load i8*, i8** %11, align 8, !dbg !2356
  %276 = icmp ne i8* %275, null, !dbg !2357
  br i1 %276, label %277, label %280, !dbg !2358

277:                                              ; preds = %272
  %278 = load i8*, i8** %11, align 8, !dbg !2359
  %279 = call i64 @strlen(i8* noundef %278) #9, !dbg !2360
  br label %281, !dbg !2358

280:                                              ; preds = %272
  br label %281, !dbg !2358

281:                                              ; preds = %280, %277
  %282 = phi i64 [ %279, %277 ], [ 0, %280 ], !dbg !2358
  store i64 %282, i64* %12, align 8, !dbg !2361
  %283 = load i64, i64* %12, align 8, !dbg !2362
  %284 = icmp ugt i64 %283, 0, !dbg !2364
  br i1 %284, label %285, label %296, !dbg !2365

285:                                              ; preds = %281
  %286 = load i8*, i8** %11, align 8, !dbg !2366
  %287 = load i64, i64* %12, align 8, !dbg !2367
  %288 = sub i64 %287, 1, !dbg !2368
  %289 = getelementptr inbounds i8, i8* %286, i64 %288, !dbg !2366
  %290 = load i8, i8* %289, align 1, !dbg !2366
  %291 = sext i8 %290 to i32, !dbg !2366
  %292 = icmp eq i32 %291, 47, !dbg !2369
  br i1 %292, label %293, label %296, !dbg !2370

293:                                              ; preds = %285
  %294 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2371
  %295 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %294, i32 0, i32 12, !dbg !2372
  store i16 16895, i16* %295, align 4, !dbg !2373
  br label %299, !dbg !2371

296:                                              ; preds = %285, %281
  %297 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2374
  %298 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %297, i32 0, i32 12, !dbg !2375
  store i16 -32330, i16* %298, align 4, !dbg !2376
  br label %299

299:                                              ; preds = %296, %293
  br label %300

300:                                              ; preds = %299, %271
  br label %301, !dbg !2377

301:                                              ; preds = %300, %239
  %302 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2378
  %303 = load i64, i64* %14, align 8, !dbg !2380
  %304 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %302, i64 noundef %303, i64* noundef null), !dbg !2381
  store i8* %304, i8** %9, align 8, !dbg !2382
  %305 = icmp eq i8* %304, null, !dbg !2383
  br i1 %305, label %306, label %309, !dbg !2384

306:                                              ; preds = %301
  %307 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2385
  %308 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %307, i32 0, i32 0, !dbg !2387
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %308, i32 noundef 84, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0)), !dbg !2388
  store i32 -30, i32* %4, align 4, !dbg !2389
  br label %397, !dbg !2389

309:                                              ; preds = %301
  %310 = load i8*, i8** %9, align 8, !dbg !2390
  %311 = load i64, i64* %14, align 8, !dbg !2391
  %312 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2392
  call void @process_extra(i8* noundef %310, i64 noundef %311, %struct.zip_entry* noundef %312), !dbg !2393
  %313 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2394
  %314 = load i64, i64* %14, align 8, !dbg !2395
  %315 = call i64 @zip_read_consume(%struct.archive_read* noundef %313, i64 noundef %314), !dbg !2396
  %316 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8, !dbg !2397
  %317 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2398
  %318 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %317, i32 0, i32 12, !dbg !2399
  %319 = load i16, i16* %318, align 4, !dbg !2399
  %320 = zext i16 %319 to i32, !dbg !2398
  call void @archive_entry_set_mode(%struct.archive_entry* noundef %316, i32 noundef %320), !dbg !2400
  %321 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8, !dbg !2401
  %322 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2402
  %323 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %322, i32 0, i32 5, !dbg !2403
  %324 = load i64, i64* %323, align 8, !dbg !2403
  call void @archive_entry_set_uid(%struct.archive_entry* noundef %321, i64 noundef %324), !dbg !2404
  %325 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8, !dbg !2405
  %326 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2406
  %327 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %326, i32 0, i32 4, !dbg !2407
  %328 = load i64, i64* %327, align 8, !dbg !2407
  call void @archive_entry_set_gid(%struct.archive_entry* noundef %325, i64 noundef %328), !dbg !2408
  %329 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8, !dbg !2409
  %330 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2410
  %331 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %330, i32 0, i32 8, !dbg !2411
  %332 = load i64, i64* %331, align 8, !dbg !2411
  call void @archive_entry_set_mtime(%struct.archive_entry* noundef %329, i64 noundef %332, i64 noundef 0), !dbg !2412
  %333 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8, !dbg !2413
  %334 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2414
  %335 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %334, i32 0, i32 10, !dbg !2415
  %336 = load i64, i64* %335, align 8, !dbg !2415
  call void @archive_entry_set_ctime(%struct.archive_entry* noundef %333, i64 noundef %336, i64 noundef 0), !dbg !2416
  %337 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8, !dbg !2417
  %338 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2418
  %339 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %338, i32 0, i32 9, !dbg !2419
  %340 = load i64, i64* %339, align 8, !dbg !2419
  call void @archive_entry_set_atime(%struct.archive_entry* noundef %337, i64 noundef %340, i64 noundef 0), !dbg !2420
  %341 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2421
  %342 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %341, i32 0, i32 13, !dbg !2423
  %343 = load i16, i16* %342, align 2, !dbg !2423
  %344 = zext i16 %343 to i32, !dbg !2421
  %345 = and i32 %344, 8, !dbg !2424
  %346 = icmp eq i32 0, %345, !dbg !2425
  br i1 %346, label %347, label %352, !dbg !2426

347:                                              ; preds = %309
  %348 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8, !dbg !2427
  %349 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2428
  %350 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %349, i32 0, i32 3, !dbg !2429
  %351 = load i64, i64* %350, align 8, !dbg !2429
  call void @archive_entry_set_size(%struct.archive_entry* noundef %348, i64 noundef %351), !dbg !2430
  br label %352, !dbg !2430

352:                                              ; preds = %347, %309
  %353 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2431
  %354 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %353, i32 0, i32 2, !dbg !2432
  %355 = load i64, i64* %354, align 8, !dbg !2432
  %356 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2433
  %357 = getelementptr inbounds %struct.zip, %struct.zip* %356, i32 0, i32 12, !dbg !2434
  store i64 %355, i64* %357, align 8, !dbg !2435
  %358 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8, !dbg !2436
  %359 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %358, i32 0, i32 13, !dbg !2438
  %360 = load i16, i16* %359, align 2, !dbg !2438
  %361 = zext i16 %360 to i32, !dbg !2436
  %362 = and i32 %361, 8, !dbg !2439
  %363 = icmp eq i32 0, %362, !dbg !2440
  br i1 %363, label %364, label %372, !dbg !2441

364:                                              ; preds = %352
  %365 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2442
  %366 = getelementptr inbounds %struct.zip, %struct.zip* %365, i32 0, i32 12, !dbg !2443
  %367 = load i64, i64* %366, align 8, !dbg !2443
  %368 = icmp slt i64 %367, 1, !dbg !2444
  br i1 %368, label %369, label %372, !dbg !2445

369:                                              ; preds = %364
  %370 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2446
  %371 = getelementptr inbounds %struct.zip, %struct.zip* %370, i32 0, i32 17, !dbg !2447
  store i8 1, i8* %371, align 1, !dbg !2448
  br label %372, !dbg !2446

372:                                              ; preds = %369, %364, %352
  %373 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2449
  %374 = getelementptr inbounds %struct.zip, %struct.zip* %373, i32 0, i32 29, !dbg !2450
  %375 = getelementptr inbounds [64 x i8], [64 x i8]* %374, i64 0, i64 0, !dbg !2449
  %376 = load i8, i8* %21, align 1, !dbg !2451
  %377 = sext i8 %376 to i32, !dbg !2451
  %378 = sdiv i32 %377, 10, !dbg !2452
  %379 = load i8, i8* %21, align 1, !dbg !2453
  %380 = sext i8 %379 to i32, !dbg !2453
  %381 = srem i32 %380, 10, !dbg !2454
  %382 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2455
  %383 = getelementptr inbounds %struct.zip, %struct.zip* %382, i32 0, i32 8, !dbg !2456
  %384 = load %struct.zip_entry*, %struct.zip_entry** %383, align 8, !dbg !2456
  %385 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %384, i32 0, i32 14, !dbg !2457
  %386 = load i8, i8* %385, align 8, !dbg !2457
  %387 = sext i8 %386 to i32, !dbg !2455
  %388 = call i8* @compression_name(i32 noundef %387), !dbg !2458
  %389 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %375, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 noundef %378, i32 noundef %381, i8* noundef %388) #8, !dbg !2459
  %390 = load %struct.zip*, %struct.zip** %7, align 8, !dbg !2460
  %391 = getelementptr inbounds %struct.zip, %struct.zip* %390, i32 0, i32 29, !dbg !2461
  %392 = getelementptr inbounds [64 x i8], [64 x i8]* %391, i64 0, i64 0, !dbg !2460
  %393 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2462
  %394 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %393, i32 0, i32 0, !dbg !2463
  %395 = getelementptr inbounds %struct.archive, %struct.archive* %394, i32 0, i32 4, !dbg !2464
  store i8* %392, i8** %395, align 8, !dbg !2465
  %396 = load i32, i32* %20, align 4, !dbg !2466
  store i32 %396, i32* %4, align 4, !dbg !2467
  br label %397, !dbg !2467

397:                                              ; preds = %372, %306, %231, %200, %175, %64, %57
  %398 = load i32, i32* %4, align 4, !dbg !2468
  ret i32 %398, !dbg !2468
}

declare i64 @archive_entry_size(%struct.archive_entry* noundef) #2

declare void @archive_entry_set_size(%struct.archive_entry* noundef, i64 noundef) #2

declare i32 @_archive_entry_copy_symlink_l(%struct.archive_entry* noundef, i8* noundef, i64 noundef, %struct.archive_string_conv* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #6

declare i8* @archive_string_conversion_charset_name(%struct.archive_string_conv* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @zip_read_mac_metadata(%struct.archive_read* noundef %0, %struct.archive_entry* noundef %1, %struct.zip_entry* noundef %2) #0 !dbg !2469 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca %struct.zip_entry*, align 8
  %8 = alloca %struct.zip*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %5, metadata !2472, metadata !DIExpression()), !dbg !2473
  store %struct.archive_entry* %1, %struct.archive_entry** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_entry** %6, metadata !2474, metadata !DIExpression()), !dbg !2475
  store %struct.zip_entry* %2, %struct.zip_entry** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.zip_entry** %7, metadata !2476, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.declare(metadata %struct.zip** %8, metadata !2478, metadata !DIExpression()), !dbg !2479
  %21 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2480
  %22 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %21, i32 0, i32 19, !dbg !2481
  %23 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %22, align 8, !dbg !2481
  %24 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %23, i32 0, i32 0, !dbg !2482
  %25 = load i8*, i8** %24, align 8, !dbg !2482
  %26 = bitcast i8* %25 to %struct.zip*, !dbg !2483
  store %struct.zip* %26, %struct.zip** %8, align 8, !dbg !2479
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2484, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2486, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2488, metadata !DIExpression()), !dbg !2489
  %27 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2490
  %28 = getelementptr inbounds %struct.zip, %struct.zip* %27, i32 0, i32 5, !dbg !2491
  %29 = load i64, i64* %28, align 8, !dbg !2491
  store i64 %29, i64* %11, align 8, !dbg !2489
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2492, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2494, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2496, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2498, metadata !DIExpression()), !dbg !2499
  store i32 0, i32* %15, align 4, !dbg !2499
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2500, metadata !DIExpression()), !dbg !2501
  %30 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8, !dbg !2502
  %31 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %30, i32 0, i32 14, !dbg !2503
  %32 = load i8, i8* %31, align 8, !dbg !2503
  %33 = sext i8 %32 to i32, !dbg !2502
  switch i32 %33, label %35 [
    i32 0, label %34
    i32 8, label %34
  ], !dbg !2504

34:                                               ; preds = %3, %3
  br label %43, !dbg !2505

35:                                               ; preds = %3
  %36 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2507
  %37 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %36, i32 0, i32 0, !dbg !2508
  %38 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8, !dbg !2509
  %39 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %38, i32 0, i32 14, !dbg !2510
  %40 = load i8, i8* %39, align 8, !dbg !2510
  %41 = sext i8 %40 to i32, !dbg !2509
  %42 = call i8* @compression_name(i32 noundef %41), !dbg !2511
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %37, i32 noundef 84, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef %42), !dbg !2512
  store i32 -20, i32* %4, align 4, !dbg !2513
  br label %250, !dbg !2513

43:                                               ; preds = %34
  %44 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8, !dbg !2514
  %45 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %44, i32 0, i32 3, !dbg !2516
  %46 = load i64, i64* %45, align 8, !dbg !2516
  %47 = icmp sgt i64 %46, 131072, !dbg !2517
  br i1 %47, label %48, label %54, !dbg !2518

48:                                               ; preds = %43
  %49 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2519
  %50 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %49, i32 0, i32 0, !dbg !2521
  %51 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8, !dbg !2522
  %52 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %51, i32 0, i32 3, !dbg !2523
  %53 = load i64, i64* %52, align 8, !dbg !2523
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %50, i32 noundef 84, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.34, i64 0, i64 0), i64 noundef %53), !dbg !2524
  store i32 -20, i32* %4, align 4, !dbg !2525
  br label %250, !dbg !2525

54:                                               ; preds = %43
  %55 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8, !dbg !2526
  %56 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %55, i32 0, i32 3, !dbg !2527
  %57 = load i64, i64* %56, align 8, !dbg !2527
  %58 = call noalias i8* @malloc(i64 noundef %57) #8, !dbg !2528
  store i8* %58, i8** %9, align 8, !dbg !2529
  %59 = load i8*, i8** %9, align 8, !dbg !2530
  %60 = icmp eq i8* %59, null, !dbg !2532
  br i1 %60, label %61, label %64, !dbg !2533

61:                                               ; preds = %54
  %62 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2534
  %63 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %62, i32 0, i32 0, !dbg !2536
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %63, i32 noundef 12, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0)), !dbg !2537
  store i32 -30, i32* %4, align 4, !dbg !2538
  br label %250, !dbg !2538

64:                                               ; preds = %54
  %65 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2539
  %66 = getelementptr inbounds %struct.zip, %struct.zip* %65, i32 0, i32 5, !dbg !2541
  %67 = load i64, i64* %66, align 8, !dbg !2541
  %68 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8, !dbg !2542
  %69 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %68, i32 0, i32 1, !dbg !2543
  %70 = load i64, i64* %69, align 8, !dbg !2543
  %71 = icmp slt i64 %67, %70, !dbg !2544
  br i1 %71, label %72, label %82, !dbg !2545

72:                                               ; preds = %64
  %73 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2546
  %74 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8, !dbg !2547
  %75 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %74, i32 0, i32 1, !dbg !2548
  %76 = load i64, i64* %75, align 8, !dbg !2548
  %77 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2549
  %78 = getelementptr inbounds %struct.zip, %struct.zip* %77, i32 0, i32 5, !dbg !2550
  %79 = load i64, i64* %78, align 8, !dbg !2550
  %80 = sub nsw i64 %76, %79, !dbg !2551
  %81 = call i64 @zip_read_consume(%struct.archive_read* noundef %73, i64 noundef %80), !dbg !2552
  br label %104, !dbg !2552

82:                                               ; preds = %64
  %83 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2553
  %84 = getelementptr inbounds %struct.zip, %struct.zip* %83, i32 0, i32 5, !dbg !2555
  %85 = load i64, i64* %84, align 8, !dbg !2555
  %86 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8, !dbg !2556
  %87 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %86, i32 0, i32 1, !dbg !2557
  %88 = load i64, i64* %87, align 8, !dbg !2557
  %89 = icmp ne i64 %85, %88, !dbg !2558
  br i1 %89, label %90, label %103, !dbg !2559

90:                                               ; preds = %82
  %91 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2560
  %92 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8, !dbg !2562
  %93 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %92, i32 0, i32 1, !dbg !2563
  %94 = load i64, i64* %93, align 8, !dbg !2563
  %95 = call i64 @__archive_read_seek(%struct.archive_read* noundef %91, i64 noundef %94, i32 noundef 0), !dbg !2564
  %96 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2565
  %97 = getelementptr inbounds %struct.zip, %struct.zip* %96, i32 0, i32 8, !dbg !2566
  %98 = load %struct.zip_entry*, %struct.zip_entry** %97, align 8, !dbg !2566
  %99 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %98, i32 0, i32 1, !dbg !2567
  %100 = load i64, i64* %99, align 8, !dbg !2567
  %101 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2568
  %102 = getelementptr inbounds %struct.zip, %struct.zip* %101, i32 0, i32 5, !dbg !2569
  store i64 %100, i64* %102, align 8, !dbg !2570
  br label %103, !dbg !2571

103:                                              ; preds = %90, %82
  br label %104

104:                                              ; preds = %103, %72
  %105 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2572
  %106 = call i64 @zip_get_local_file_header_size(%struct.archive_read* noundef %105, i64 noundef 0), !dbg !2573
  store i64 %106, i64* %14, align 8, !dbg !2574
  %107 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2575
  %108 = load i64, i64* %14, align 8, !dbg !2576
  %109 = call i64 @zip_read_consume(%struct.archive_read* noundef %107, i64 noundef %108), !dbg !2577
  %110 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8, !dbg !2578
  %111 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %110, i32 0, i32 2, !dbg !2579
  %112 = load i64, i64* %111, align 8, !dbg !2579
  store i64 %112, i64* %12, align 8, !dbg !2580
  %113 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8, !dbg !2581
  %114 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %113, i32 0, i32 3, !dbg !2582
  %115 = load i64, i64* %114, align 8, !dbg !2582
  store i64 %115, i64* %13, align 8, !dbg !2583
  %116 = load i8*, i8** %9, align 8, !dbg !2584
  store i8* %116, i8** %10, align 8, !dbg !2585
  store i32 0, i32* %16, align 4, !dbg !2586
  br label %117, !dbg !2587

117:                                              ; preds = %224, %104
  %118 = load i32, i32* %16, align 4, !dbg !2588
  %119 = icmp ne i32 %118, 0, !dbg !2588
  br i1 %119, label %123, label %120, !dbg !2589

120:                                              ; preds = %117
  %121 = load i64, i64* %12, align 8, !dbg !2590
  %122 = icmp ne i64 %121, 0, !dbg !2589
  br label %123

123:                                              ; preds = %120, %117
  %124 = phi i1 [ false, %117 ], [ %122, %120 ], !dbg !2591
  br i1 %124, label %125, label %231, !dbg !2587

125:                                              ; preds = %123
  call void @llvm.dbg.declare(metadata i8** %17, metadata !2592, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.declare(metadata i64* %18, metadata !2595, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.declare(metadata i64* %19, metadata !2597, metadata !DIExpression()), !dbg !2598
  %126 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2599
  %127 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %126, i64 noundef 1, i64* noundef %18), !dbg !2600
  store i8* %127, i8** %17, align 8, !dbg !2601
  %128 = load i8*, i8** %17, align 8, !dbg !2602
  %129 = icmp eq i8* %128, null, !dbg !2604
  br i1 %129, label %130, label %133, !dbg !2605

130:                                              ; preds = %125
  %131 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2606
  %132 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %131, i32 0, i32 0, !dbg !2608
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %132, i32 noundef 84, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0)), !dbg !2609
  store i32 -20, i32* %15, align 4, !dbg !2610
  br label %245, !dbg !2611

133:                                              ; preds = %125
  %134 = load i64, i64* %18, align 8, !dbg !2612
  %135 = load i64, i64* %12, align 8, !dbg !2614
  %136 = icmp ugt i64 %134, %135, !dbg !2615
  br i1 %136, label %137, label %139, !dbg !2616

137:                                              ; preds = %133
  %138 = load i64, i64* %12, align 8, !dbg !2617
  store i64 %138, i64* %18, align 8, !dbg !2618
  br label %139, !dbg !2619

139:                                              ; preds = %137, %133
  %140 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8, !dbg !2620
  %141 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %140, i32 0, i32 14, !dbg !2621
  %142 = load i8, i8* %141, align 8, !dbg !2621
  %143 = sext i8 %142 to i32, !dbg !2620
  switch i32 %143, label %223 [
    i32 0, label %144
    i32 8, label %159
  ], !dbg !2622

144:                                              ; preds = %139
  %145 = load i8*, i8** %10, align 8, !dbg !2623
  %146 = load i8*, i8** %17, align 8, !dbg !2625
  %147 = load i64, i64* %18, align 8, !dbg !2626
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %145, i8* align 1 %146, i64 %147, i1 false), !dbg !2627
  %148 = load i64, i64* %18, align 8, !dbg !2628
  store i64 %148, i64* %19, align 8, !dbg !2629
  %149 = load i64, i64* %19, align 8, !dbg !2630
  %150 = load i64, i64* %13, align 8, !dbg !2631
  %151 = sub i64 %150, %149, !dbg !2631
  store i64 %151, i64* %13, align 8, !dbg !2631
  %152 = load i64, i64* %19, align 8, !dbg !2632
  %153 = load i8*, i8** %10, align 8, !dbg !2633
  %154 = getelementptr inbounds i8, i8* %153, i64 %152, !dbg !2633
  store i8* %154, i8** %10, align 8, !dbg !2633
  %155 = load i64, i64* %13, align 8, !dbg !2634
  %156 = icmp eq i64 %155, 0, !dbg !2636
  br i1 %156, label %157, label %158, !dbg !2637

157:                                              ; preds = %144
  store i32 1, i32* %16, align 4, !dbg !2638
  br label %158, !dbg !2639

158:                                              ; preds = %157, %144
  br label %224, !dbg !2640

159:                                              ; preds = %139
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2641, metadata !DIExpression()), !dbg !2643
  %160 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2644
  %161 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2645
  %162 = call i32 @zip_deflate_init(%struct.archive_read* noundef %160, %struct.zip* noundef %161), !dbg !2646
  store i32 %162, i32* %15, align 4, !dbg !2647
  %163 = load i32, i32* %15, align 4, !dbg !2648
  %164 = icmp ne i32 %163, 0, !dbg !2650
  br i1 %164, label %165, label %166, !dbg !2651

165:                                              ; preds = %159
  br label %245, !dbg !2652

166:                                              ; preds = %159
  %167 = load i8*, i8** %17, align 8, !dbg !2653
  %168 = ptrtoint i8* %167 to i64, !dbg !2654
  %169 = inttoptr i64 %168 to i8*, !dbg !2655
  %170 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2656
  %171 = getelementptr inbounds %struct.zip, %struct.zip* %170, i32 0, i32 22, !dbg !2657
  %172 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %171, i32 0, i32 0, !dbg !2658
  store i8* %169, i8** %172, align 8, !dbg !2659
  %173 = load i64, i64* %18, align 8, !dbg !2660
  %174 = trunc i64 %173 to i32, !dbg !2661
  %175 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2662
  %176 = getelementptr inbounds %struct.zip, %struct.zip* %175, i32 0, i32 22, !dbg !2663
  %177 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %176, i32 0, i32 1, !dbg !2664
  store i32 %174, i32* %177, align 8, !dbg !2665
  %178 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2666
  %179 = getelementptr inbounds %struct.zip, %struct.zip* %178, i32 0, i32 22, !dbg !2667
  %180 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %179, i32 0, i32 2, !dbg !2668
  store i64 0, i64* %180, align 8, !dbg !2669
  %181 = load i8*, i8** %10, align 8, !dbg !2670
  %182 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2671
  %183 = getelementptr inbounds %struct.zip, %struct.zip* %182, i32 0, i32 22, !dbg !2672
  %184 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %183, i32 0, i32 3, !dbg !2673
  store i8* %181, i8** %184, align 8, !dbg !2674
  %185 = load i64, i64* %13, align 8, !dbg !2675
  %186 = trunc i64 %185 to i32, !dbg !2676
  %187 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2677
  %188 = getelementptr inbounds %struct.zip, %struct.zip* %187, i32 0, i32 22, !dbg !2678
  %189 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %188, i32 0, i32 4, !dbg !2679
  store i32 %186, i32* %189, align 8, !dbg !2680
  %190 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2681
  %191 = getelementptr inbounds %struct.zip, %struct.zip* %190, i32 0, i32 22, !dbg !2682
  %192 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %191, i32 0, i32 5, !dbg !2683
  store i64 0, i64* %192, align 8, !dbg !2684
  %193 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2685
  %194 = getelementptr inbounds %struct.zip, %struct.zip* %193, i32 0, i32 22, !dbg !2686
  %195 = call i32 @inflate(%struct.z_stream_s* noundef %194, i32 noundef 0), !dbg !2687
  store i32 %195, i32* %20, align 4, !dbg !2688
  %196 = load i32, i32* %20, align 4, !dbg !2689
  switch i32 %196, label %202 [
    i32 0, label %197
    i32 1, label %198
    i32 -4, label %199
  ], !dbg !2690

197:                                              ; preds = %166
  br label %206, !dbg !2691

198:                                              ; preds = %166
  store i32 1, i32* %16, align 4, !dbg !2693
  br label %206, !dbg !2694

199:                                              ; preds = %166
  %200 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2695
  %201 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %200, i32 0, i32 0, !dbg !2696
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %201, i32 noundef 12, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0)), !dbg !2697
  store i32 -30, i32* %15, align 4, !dbg !2698
  br label %245, !dbg !2699

202:                                              ; preds = %166
  %203 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2700
  %204 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %203, i32 0, i32 0, !dbg !2701
  %205 = load i32, i32* %20, align 4, !dbg !2702
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %204, i32 noundef -1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i32 noundef %205), !dbg !2703
  store i32 -30, i32* %15, align 4, !dbg !2704
  br label %245, !dbg !2705

206:                                              ; preds = %198, %197
  %207 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2706
  %208 = getelementptr inbounds %struct.zip, %struct.zip* %207, i32 0, i32 22, !dbg !2707
  %209 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %208, i32 0, i32 2, !dbg !2708
  %210 = load i64, i64* %209, align 8, !dbg !2708
  store i64 %210, i64* %19, align 8, !dbg !2709
  %211 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2710
  %212 = getelementptr inbounds %struct.zip, %struct.zip* %211, i32 0, i32 22, !dbg !2711
  %213 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %212, i32 0, i32 5, !dbg !2712
  %214 = load i64, i64* %213, align 8, !dbg !2712
  %215 = load i64, i64* %13, align 8, !dbg !2713
  %216 = sub i64 %215, %214, !dbg !2713
  store i64 %216, i64* %13, align 8, !dbg !2713
  %217 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2714
  %218 = getelementptr inbounds %struct.zip, %struct.zip* %217, i32 0, i32 22, !dbg !2715
  %219 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %218, i32 0, i32 5, !dbg !2716
  %220 = load i64, i64* %219, align 8, !dbg !2716
  %221 = load i8*, i8** %10, align 8, !dbg !2717
  %222 = getelementptr inbounds i8, i8* %221, i64 %220, !dbg !2717
  store i8* %222, i8** %10, align 8, !dbg !2717
  br label %224, !dbg !2718

223:                                              ; preds = %139
  store i64 0, i64* %19, align 8, !dbg !2719
  br label %224, !dbg !2720

224:                                              ; preds = %223, %206, %158
  %225 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2721
  %226 = load i64, i64* %19, align 8, !dbg !2722
  %227 = call i64 @zip_read_consume(%struct.archive_read* noundef %225, i64 noundef %226), !dbg !2723
  %228 = load i64, i64* %19, align 8, !dbg !2724
  %229 = load i64, i64* %12, align 8, !dbg !2725
  %230 = sub i64 %229, %228, !dbg !2725
  store i64 %230, i64* %12, align 8, !dbg !2725
  br label %117, !dbg !2587, !llvm.loop !2726

231:                                              ; preds = %123
  %232 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8, !dbg !2728
  %233 = load i8*, i8** %9, align 8, !dbg !2729
  %234 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8, !dbg !2730
  %235 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %234, i32 0, i32 3, !dbg !2731
  %236 = load i64, i64* %235, align 8, !dbg !2731
  %237 = load i64, i64* %13, align 8, !dbg !2732
  %238 = sub i64 %236, %237, !dbg !2733
  call void @archive_entry_copy_mac_metadata(%struct.archive_entry* noundef %232, i8* noundef %233, i64 noundef %238), !dbg !2734
  %239 = load %struct.archive_read*, %struct.archive_read** %5, align 8, !dbg !2735
  %240 = load i64, i64* %11, align 8, !dbg !2736
  %241 = call i64 @__archive_read_seek(%struct.archive_read* noundef %239, i64 noundef %240, i32 noundef 0), !dbg !2737
  %242 = load i64, i64* %11, align 8, !dbg !2738
  %243 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2739
  %244 = getelementptr inbounds %struct.zip, %struct.zip* %243, i32 0, i32 5, !dbg !2740
  store i64 %242, i64* %244, align 8, !dbg !2741
  br label %245, !dbg !2739

245:                                              ; preds = %231, %202, %199, %165, %130
  call void @llvm.dbg.label(metadata !2742), !dbg !2743
  %246 = load %struct.zip*, %struct.zip** %8, align 8, !dbg !2744
  %247 = getelementptr inbounds %struct.zip, %struct.zip* %246, i32 0, i32 16, !dbg !2745
  store i8 0, i8* %247, align 8, !dbg !2746
  %248 = load i8*, i8** %9, align 8, !dbg !2747
  call void @free(i8* noundef %248) #8, !dbg !2748
  %249 = load i32, i32* %15, align 4, !dbg !2749
  store i32 %249, i32* %4, align 4, !dbg !2750
  br label %250, !dbg !2750

250:                                              ; preds = %245, %61, %48, %35
  %251 = load i32, i32* %4, align 4, !dbg !2751
  ret i32 %251, !dbg !2751
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmp_node(%struct.archive_rb_node* noundef %0, %struct.archive_rb_node* noundef %1) #0 !dbg !2752 {
  %3 = alloca %struct.archive_rb_node*, align 8
  %4 = alloca %struct.archive_rb_node*, align 8
  %5 = alloca %struct.zip_entry*, align 8
  %6 = alloca %struct.zip_entry*, align 8
  store %struct.archive_rb_node* %0, %struct.archive_rb_node** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_rb_node** %3, metadata !2753, metadata !DIExpression()), !dbg !2754
  store %struct.archive_rb_node* %1, %struct.archive_rb_node** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_rb_node** %4, metadata !2755, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.declare(metadata %struct.zip_entry** %5, metadata !2757, metadata !DIExpression()), !dbg !2758
  %7 = load %struct.archive_rb_node*, %struct.archive_rb_node** %3, align 8, !dbg !2759
  %8 = bitcast %struct.archive_rb_node* %7 to %struct.zip_entry*, !dbg !2760
  store %struct.zip_entry* %8, %struct.zip_entry** %5, align 8, !dbg !2758
  call void @llvm.dbg.declare(metadata %struct.zip_entry** %6, metadata !2761, metadata !DIExpression()), !dbg !2762
  %9 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8, !dbg !2763
  %10 = bitcast %struct.archive_rb_node* %9 to %struct.zip_entry*, !dbg !2764
  store %struct.zip_entry* %10, %struct.zip_entry** %6, align 8, !dbg !2762
  %11 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !2765
  %12 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %11, i32 0, i32 1, !dbg !2766
  %13 = load i64, i64* %12, align 8, !dbg !2766
  %14 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8, !dbg !2767
  %15 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %14, i32 0, i32 1, !dbg !2768
  %16 = load i64, i64* %15, align 8, !dbg !2768
  %17 = sub nsw i64 %13, %16, !dbg !2769
  %18 = trunc i64 %17 to i32, !dbg !2770
  ret i32 %18, !dbg !2771
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmp_key(%struct.archive_rb_node* noundef %0, i8* noundef %1) #0 !dbg !2772 {
  %3 = alloca %struct.archive_rb_node*, align 8
  %4 = alloca i8*, align 8
  store %struct.archive_rb_node* %0, %struct.archive_rb_node** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_rb_node** %3, metadata !2773, metadata !DIExpression()), !dbg !2774
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2775, metadata !DIExpression()), !dbg !2776
  %5 = load %struct.archive_rb_node*, %struct.archive_rb_node** %3, align 8, !dbg !2777
  %6 = load i8*, i8** %4, align 8, !dbg !2778
  ret i32 1, !dbg !2779
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsrc_cmp_node(%struct.archive_rb_node* noundef %0, %struct.archive_rb_node* noundef %1) #0 !dbg !2780 {
  %3 = alloca %struct.archive_rb_node*, align 8
  %4 = alloca %struct.archive_rb_node*, align 8
  %5 = alloca %struct.zip_entry*, align 8
  %6 = alloca %struct.zip_entry*, align 8
  store %struct.archive_rb_node* %0, %struct.archive_rb_node** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_rb_node** %3, metadata !2781, metadata !DIExpression()), !dbg !2782
  store %struct.archive_rb_node* %1, %struct.archive_rb_node** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_rb_node** %4, metadata !2783, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.declare(metadata %struct.zip_entry** %5, metadata !2785, metadata !DIExpression()), !dbg !2786
  %7 = load %struct.archive_rb_node*, %struct.archive_rb_node** %3, align 8, !dbg !2787
  %8 = bitcast %struct.archive_rb_node* %7 to %struct.zip_entry*, !dbg !2788
  store %struct.zip_entry* %8, %struct.zip_entry** %5, align 8, !dbg !2786
  call void @llvm.dbg.declare(metadata %struct.zip_entry** %6, metadata !2789, metadata !DIExpression()), !dbg !2790
  %9 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8, !dbg !2791
  %10 = bitcast %struct.archive_rb_node* %9 to %struct.zip_entry*, !dbg !2792
  store %struct.zip_entry* %10, %struct.zip_entry** %6, align 8, !dbg !2790
  %11 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !2793
  %12 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %11, i32 0, i32 7, !dbg !2794
  %13 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %12, i32 0, i32 0, !dbg !2795
  %14 = load i8*, i8** %13, align 8, !dbg !2795
  %15 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8, !dbg !2796
  %16 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %15, i32 0, i32 7, !dbg !2797
  %17 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %16, i32 0, i32 0, !dbg !2798
  %18 = load i8*, i8** %17, align 8, !dbg !2798
  %19 = call i32 @strcmp(i8* noundef %14, i8* noundef %18) #9, !dbg !2799
  ret i32 %19, !dbg !2800
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsrc_cmp_key(%struct.archive_rb_node* noundef %0, i8* noundef %1) #0 !dbg !2801 {
  %3 = alloca %struct.archive_rb_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.zip_entry*, align 8
  store %struct.archive_rb_node* %0, %struct.archive_rb_node** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_rb_node** %3, metadata !2802, metadata !DIExpression()), !dbg !2803
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2804, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.declare(metadata %struct.zip_entry** %5, metadata !2806, metadata !DIExpression()), !dbg !2807
  %6 = load %struct.archive_rb_node*, %struct.archive_rb_node** %3, align 8, !dbg !2808
  %7 = bitcast %struct.archive_rb_node* %6 to %struct.zip_entry*, !dbg !2809
  store %struct.zip_entry* %7, %struct.zip_entry** %5, align 8, !dbg !2807
  %8 = load i8*, i8** %4, align 8, !dbg !2810
  %9 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8, !dbg !2811
  %10 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %9, i32 0, i32 7, !dbg !2812
  %11 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %10, i32 0, i32 0, !dbg !2813
  %12 = load i8*, i8** %11, align 8, !dbg !2813
  %13 = call i32 @strcmp(i8* noundef %8, i8* noundef %12) #9, !dbg !2814
  ret i32 %13, !dbg !2815
}

declare void @__archive_rb_tree_init(%struct.archive_rb_tree* noundef, %struct.archive_rb_tree_ops* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @zip_time(i8* noundef %0) #0 !dbg !2816 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2819, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2821, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2823, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.declare(metadata %struct.tm* %5, metadata !2825, metadata !DIExpression()), !dbg !2840
  %6 = load i8*, i8** %2, align 8, !dbg !2841
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !2841
  %8 = load i8, i8* %7, align 1, !dbg !2841
  %9 = sext i8 %8 to i32, !dbg !2842
  %10 = and i32 255, %9, !dbg !2843
  %11 = load i8*, i8** %2, align 8, !dbg !2844
  %12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !2844
  %13 = load i8, i8* %12, align 1, !dbg !2844
  %14 = sext i8 %13 to i32, !dbg !2845
  %15 = and i32 255, %14, !dbg !2846
  %16 = mul i32 256, %15, !dbg !2847
  %17 = add i32 %10, %16, !dbg !2848
  store i32 %17, i32* %3, align 4, !dbg !2849
  %18 = load i8*, i8** %2, align 8, !dbg !2850
  %19 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !2850
  %20 = load i8, i8* %19, align 1, !dbg !2850
  %21 = sext i8 %20 to i32, !dbg !2851
  %22 = and i32 255, %21, !dbg !2852
  %23 = load i8*, i8** %2, align 8, !dbg !2853
  %24 = getelementptr inbounds i8, i8* %23, i64 3, !dbg !2853
  %25 = load i8, i8* %24, align 1, !dbg !2853
  %26 = sext i8 %25 to i32, !dbg !2854
  %27 = and i32 255, %26, !dbg !2855
  %28 = mul i32 256, %27, !dbg !2856
  %29 = add i32 %22, %28, !dbg !2857
  store i32 %29, i32* %4, align 4, !dbg !2858
  %30 = bitcast %struct.tm* %5 to i8*, !dbg !2859
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 56, i1 false), !dbg !2859
  %31 = load i32, i32* %4, align 4, !dbg !2860
  %32 = ashr i32 %31, 9, !dbg !2861
  %33 = and i32 %32, 127, !dbg !2862
  %34 = add nsw i32 %33, 80, !dbg !2863
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5, !dbg !2864
  store i32 %34, i32* %35, align 4, !dbg !2865
  %36 = load i32, i32* %4, align 4, !dbg !2866
  %37 = ashr i32 %36, 5, !dbg !2867
  %38 = and i32 %37, 15, !dbg !2868
  %39 = sub nsw i32 %38, 1, !dbg !2869
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4, !dbg !2870
  store i32 %39, i32* %40, align 8, !dbg !2871
  %41 = load i32, i32* %4, align 4, !dbg !2872
  %42 = and i32 %41, 31, !dbg !2873
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3, !dbg !2874
  store i32 %42, i32* %43, align 4, !dbg !2875
  %44 = load i32, i32* %3, align 4, !dbg !2876
  %45 = ashr i32 %44, 11, !dbg !2877
  %46 = and i32 %45, 31, !dbg !2878
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2, !dbg !2879
  store i32 %46, i32* %47, align 8, !dbg !2880
  %48 = load i32, i32* %3, align 4, !dbg !2881
  %49 = ashr i32 %48, 5, !dbg !2882
  %50 = and i32 %49, 63, !dbg !2883
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1, !dbg !2884
  store i32 %50, i32* %51, align 4, !dbg !2885
  %52 = load i32, i32* %3, align 4, !dbg !2886
  %53 = shl i32 %52, 1, !dbg !2887
  %54 = and i32 %53, 62, !dbg !2888
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0, !dbg !2889
  store i32 %54, i32* %55, align 8, !dbg !2890
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 8, !dbg !2891
  store i32 -1, i32* %56, align 8, !dbg !2892
  %57 = call i64 @mktime(%struct.tm* noundef %5) #8, !dbg !2893
  ret i64 %57, !dbg !2894
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @rsrc_basename(i8* noundef %0, i64 noundef %1) #0 !dbg !2895 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2898, metadata !DIExpression()), !dbg !2899
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2900, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2902, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2904, metadata !DIExpression()), !dbg !2905
  %7 = load i8*, i8** %3, align 8, !dbg !2906
  store i8* %7, i8** %5, align 8, !dbg !2907
  store i8* %7, i8** %6, align 8, !dbg !2908
  br label %8, !dbg !2909

8:                                                ; preds = %21, %2
  %9 = load i8*, i8** %5, align 8, !dbg !2910
  %10 = load i64, i64* %4, align 8, !dbg !2914
  %11 = load i8*, i8** %5, align 8, !dbg !2915
  %12 = load i8*, i8** %3, align 8, !dbg !2916
  %13 = ptrtoint i8* %11 to i64, !dbg !2917
  %14 = ptrtoint i8* %12 to i64, !dbg !2917
  %15 = sub i64 %13, %14, !dbg !2917
  %16 = sub i64 %10, %15, !dbg !2918
  %17 = call i8* @memchr(i8* noundef %9, i32 noundef 47, i64 noundef %16) #9, !dbg !2919
  store i8* %17, i8** %5, align 8, !dbg !2920
  %18 = load i8*, i8** %5, align 8, !dbg !2921
  %19 = icmp eq i8* %18, null, !dbg !2923
  br i1 %19, label %20, label %21, !dbg !2924

20:                                               ; preds = %8
  br label %24, !dbg !2925

21:                                               ; preds = %8
  %22 = load i8*, i8** %5, align 8, !dbg !2926
  %23 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !2926
  store i8* %23, i8** %5, align 8, !dbg !2926
  store i8* %23, i8** %6, align 8, !dbg !2927
  br label %8, !dbg !2928, !llvm.loop !2929

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8, !dbg !2932
  ret i8* %25, !dbg !2933
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #5

declare i32 @__archive_rb_tree_insert_node(%struct.archive_rb_tree* noundef, %struct.archive_rb_node* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @expose_parent_dirs(%struct.zip* noundef %0, i8* noundef %1, i64 noundef %2) #0 !dbg !2934 {
  %4 = alloca %struct.zip*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.archive_string, align 8
  %8 = alloca %struct.zip_entry*, align 8
  %9 = alloca i8*, align 8
  store %struct.zip* %0, %struct.zip** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.zip** %4, metadata !2937, metadata !DIExpression()), !dbg !2938
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2939, metadata !DIExpression()), !dbg !2940
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2941, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.declare(metadata %struct.archive_string* %7, metadata !2943, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.declare(metadata %struct.zip_entry** %8, metadata !2945, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2947, metadata !DIExpression()), !dbg !2948
  br label %10, !dbg !2949

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %7, i32 0, i32 0, !dbg !2950
  store i8* null, i8** %11, align 8, !dbg !2950
  %12 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %7, i32 0, i32 1, !dbg !2950
  store i64 0, i64* %12, align 8, !dbg !2950
  %13 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %7, i32 0, i32 2, !dbg !2950
  store i64 0, i64* %13, align 8, !dbg !2950
  br label %14, !dbg !2950

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %7, i32 0, i32 1, !dbg !2952
  store i64 0, i64* %15, align 8, !dbg !2952
  %16 = load i8*, i8** %5, align 8, !dbg !2952
  %17 = load i64, i64* %6, align 8, !dbg !2952
  %18 = call %struct.archive_string* @archive_strncat(%struct.archive_string* noundef %7, i8* noundef %16, i64 noundef %17), !dbg !2952
  br label %19, !dbg !2953

19:                                               ; preds = %37, %14
  %20 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %7, i32 0, i32 0, !dbg !2954
  %21 = load i8*, i8** %20, align 8, !dbg !2954
  %22 = call i8* @strrchr(i8* noundef %21, i32 noundef 47) #9, !dbg !2958
  store i8* %22, i8** %9, align 8, !dbg !2959
  %23 = load i8*, i8** %9, align 8, !dbg !2960
  %24 = icmp eq i8* %23, null, !dbg !2962
  br i1 %24, label %25, label %26, !dbg !2963

25:                                               ; preds = %19
  br label %49, !dbg !2964

26:                                               ; preds = %19
  %27 = load i8*, i8** %9, align 8, !dbg !2965
  store i8 0, i8* %27, align 1, !dbg !2966
  %28 = load %struct.zip*, %struct.zip** %4, align 8, !dbg !2967
  %29 = getelementptr inbounds %struct.zip, %struct.zip* %28, i32 0, i32 10, !dbg !2968
  %30 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %7, i32 0, i32 0, !dbg !2969
  %31 = load i8*, i8** %30, align 8, !dbg !2969
  %32 = call %struct.archive_rb_node* @__archive_rb_tree_find_node(%struct.archive_rb_tree* noundef %29, i8* noundef %31), !dbg !2970
  %33 = bitcast %struct.archive_rb_node* %32 to %struct.zip_entry*, !dbg !2971
  store %struct.zip_entry* %33, %struct.zip_entry** %8, align 8, !dbg !2972
  %34 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !2973
  %35 = icmp eq %struct.zip_entry* %34, null, !dbg !2975
  br i1 %35, label %36, label %37, !dbg !2976

36:                                               ; preds = %26
  br label %49, !dbg !2977

37:                                               ; preds = %26
  %38 = load %struct.zip*, %struct.zip** %4, align 8, !dbg !2978
  %39 = getelementptr inbounds %struct.zip, %struct.zip* %38, i32 0, i32 10, !dbg !2979
  %40 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !2980
  %41 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %40, i32 0, i32 0, !dbg !2981
  call void @__archive_rb_tree_remove_node(%struct.archive_rb_tree* noundef %39, %struct.archive_rb_node* noundef %41), !dbg !2982
  %42 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !2983
  %43 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %42, i32 0, i32 7, !dbg !2984
  call void @archive_string_free(%struct.archive_string* noundef %43), !dbg !2985
  %44 = load %struct.zip*, %struct.zip** %4, align 8, !dbg !2986
  %45 = getelementptr inbounds %struct.zip, %struct.zip* %44, i32 0, i32 9, !dbg !2987
  %46 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8, !dbg !2988
  %47 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %46, i32 0, i32 0, !dbg !2989
  %48 = call i32 @__archive_rb_tree_insert_node(%struct.archive_rb_tree* noundef %45, %struct.archive_rb_node* noundef %47), !dbg !2990
  br label %19, !dbg !2991, !llvm.loop !2992

49:                                               ; preds = %36, %25
  call void @archive_string_free(%struct.archive_string* noundef %7), !dbg !2995
  ret void, !dbg !2996
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
define internal void @process_extra(i8* noundef %0, i64 noundef %1, %struct.zip_entry* noundef %2) #0 !dbg !2997 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.zip_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3000, metadata !DIExpression()), !dbg !3001
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3002, metadata !DIExpression()), !dbg !3003
  store %struct.zip_entry* %2, %struct.zip_entry** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.zip_entry** %6, metadata !3004, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3006, metadata !DIExpression()), !dbg !3007
  store i32 0, i32* %7, align 4, !dbg !3007
  br label %13, !dbg !3008

13:                                               ; preds = %344, %3
  %14 = load i32, i32* %7, align 4, !dbg !3009
  %15 = zext i32 %14 to i64, !dbg !3009
  %16 = load i64, i64* %5, align 8, !dbg !3010
  %17 = sub i64 %16, 4, !dbg !3011
  %18 = icmp ult i64 %15, %17, !dbg !3012
  br i1 %18, label %19, label %349, !dbg !3008

19:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata i16* %8, metadata !3013, metadata !DIExpression()), !dbg !3015
  %20 = load i8*, i8** %4, align 8, !dbg !3016
  %21 = load i32, i32* %7, align 4, !dbg !3017
  %22 = zext i32 %21 to i64, !dbg !3018
  %23 = getelementptr inbounds i8, i8* %20, i64 %22, !dbg !3018
  %24 = call zeroext i16 @archive_le16dec(i8* noundef %23), !dbg !3019
  store i16 %24, i16* %8, align 2, !dbg !3015
  call void @llvm.dbg.declare(metadata i16* %9, metadata !3020, metadata !DIExpression()), !dbg !3021
  %25 = load i8*, i8** %4, align 8, !dbg !3022
  %26 = load i32, i32* %7, align 4, !dbg !3023
  %27 = zext i32 %26 to i64, !dbg !3024
  %28 = getelementptr inbounds i8, i8* %25, i64 %27, !dbg !3024
  %29 = getelementptr inbounds i8, i8* %28, i64 2, !dbg !3025
  %30 = call zeroext i16 @archive_le16dec(i8* noundef %29), !dbg !3026
  store i16 %30, i16* %9, align 2, !dbg !3021
  %31 = load i32, i32* %7, align 4, !dbg !3027
  %32 = add i32 %31, 4, !dbg !3027
  store i32 %32, i32* %7, align 4, !dbg !3027
  %33 = load i32, i32* %7, align 4, !dbg !3028
  %34 = load i16, i16* %9, align 2, !dbg !3030
  %35 = zext i16 %34 to i32, !dbg !3030
  %36 = add i32 %33, %35, !dbg !3031
  %37 = zext i32 %36 to i64, !dbg !3028
  %38 = load i64, i64* %5, align 8, !dbg !3032
  %39 = icmp ugt i64 %37, %38, !dbg !3033
  br i1 %39, label %40, label %41, !dbg !3034

40:                                               ; preds = %19
  br label %349, !dbg !3035

41:                                               ; preds = %19
  %42 = load i16, i16* %8, align 2, !dbg !3036
  %43 = zext i16 %42 to i32, !dbg !3036
  switch i32 %43, label %343 [
    i32 1, label %44
    i32 21589, label %70
    i32 22613, label %153
    i32 30805, label %199
    i32 30837, label %227
  ], !dbg !3037

44:                                               ; preds = %41
  %45 = load i16, i16* %9, align 2, !dbg !3038
  %46 = zext i16 %45 to i32, !dbg !3038
  %47 = icmp sge i32 %46, 8, !dbg !3041
  br i1 %47, label %48, label %56, !dbg !3042

48:                                               ; preds = %44
  %49 = load i8*, i8** %4, align 8, !dbg !3043
  %50 = load i32, i32* %7, align 4, !dbg !3044
  %51 = zext i32 %50 to i64, !dbg !3045
  %52 = getelementptr inbounds i8, i8* %49, i64 %51, !dbg !3045
  %53 = call i64 @archive_le64dec(i8* noundef %52), !dbg !3046
  %54 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !3047
  %55 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %54, i32 0, i32 3, !dbg !3048
  store i64 %53, i64* %55, align 8, !dbg !3049
  br label %56, !dbg !3047

56:                                               ; preds = %48, %44
  %57 = load i16, i16* %9, align 2, !dbg !3050
  %58 = zext i16 %57 to i32, !dbg !3050
  %59 = icmp sge i32 %58, 16, !dbg !3052
  br i1 %59, label %60, label %69, !dbg !3053

60:                                               ; preds = %56
  %61 = load i8*, i8** %4, align 8, !dbg !3054
  %62 = load i32, i32* %7, align 4, !dbg !3055
  %63 = zext i32 %62 to i64, !dbg !3056
  %64 = getelementptr inbounds i8, i8* %61, i64 %63, !dbg !3056
  %65 = getelementptr inbounds i8, i8* %64, i64 8, !dbg !3057
  %66 = call i64 @archive_le64dec(i8* noundef %65), !dbg !3058
  %67 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !3059
  %68 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %67, i32 0, i32 2, !dbg !3060
  store i64 %66, i64* %68, align 8, !dbg !3061
  br label %69, !dbg !3059

69:                                               ; preds = %60, %56
  br label %344, !dbg !3062

70:                                               ; preds = %41
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3063, metadata !DIExpression()), !dbg !3065
  %71 = load i8*, i8** %4, align 8, !dbg !3066
  %72 = load i32, i32* %7, align 4, !dbg !3067
  %73 = zext i32 %72 to i64, !dbg !3066
  %74 = getelementptr inbounds i8, i8* %71, i64 %73, !dbg !3066
  %75 = load i8, i8* %74, align 1, !dbg !3066
  %76 = sext i8 %75 to i32, !dbg !3066
  store i32 %76, i32* %10, align 4, !dbg !3065
  %77 = load i32, i32* %7, align 4, !dbg !3068
  %78 = add i32 %77, 1, !dbg !3068
  store i32 %78, i32* %7, align 4, !dbg !3068
  %79 = load i16, i16* %9, align 2, !dbg !3069
  %80 = add i16 %79, -1, !dbg !3069
  store i16 %80, i16* %9, align 2, !dbg !3069
  %81 = load i32, i32* %10, align 4, !dbg !3070
  %82 = and i32 %81, 1, !dbg !3072
  %83 = icmp ne i32 %82, 0, !dbg !3072
  br i1 %83, label %84, label %104, !dbg !3073

84:                                               ; preds = %70
  %85 = load i16, i16* %9, align 2, !dbg !3074
  %86 = zext i16 %85 to i32, !dbg !3074
  %87 = icmp slt i32 %86, 4, !dbg !3077
  br i1 %87, label %88, label %89, !dbg !3078

88:                                               ; preds = %84
  br label %344, !dbg !3079

89:                                               ; preds = %84
  %90 = load i8*, i8** %4, align 8, !dbg !3080
  %91 = load i32, i32* %7, align 4, !dbg !3081
  %92 = zext i32 %91 to i64, !dbg !3082
  %93 = getelementptr inbounds i8, i8* %90, i64 %92, !dbg !3082
  %94 = call i32 @archive_le32dec(i8* noundef %93), !dbg !3083
  %95 = zext i32 %94 to i64, !dbg !3083
  %96 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !3084
  %97 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %96, i32 0, i32 8, !dbg !3085
  store i64 %95, i64* %97, align 8, !dbg !3086
  %98 = load i32, i32* %7, align 4, !dbg !3087
  %99 = add i32 %98, 4, !dbg !3087
  store i32 %99, i32* %7, align 4, !dbg !3087
  %100 = load i16, i16* %9, align 2, !dbg !3088
  %101 = zext i16 %100 to i32, !dbg !3088
  %102 = sub nsw i32 %101, 4, !dbg !3088
  %103 = trunc i32 %102 to i16, !dbg !3088
  store i16 %103, i16* %9, align 2, !dbg !3088
  br label %104, !dbg !3089

104:                                              ; preds = %89, %70
  %105 = load i32, i32* %10, align 4, !dbg !3090
  %106 = and i32 %105, 2, !dbg !3092
  %107 = icmp ne i32 %106, 0, !dbg !3092
  br i1 %107, label %108, label %128, !dbg !3093

108:                                              ; preds = %104
  %109 = load i16, i16* %9, align 2, !dbg !3094
  %110 = zext i16 %109 to i32, !dbg !3094
  %111 = icmp slt i32 %110, 4, !dbg !3097
  br i1 %111, label %112, label %113, !dbg !3098

112:                                              ; preds = %108
  br label %344, !dbg !3099

113:                                              ; preds = %108
  %114 = load i8*, i8** %4, align 8, !dbg !3100
  %115 = load i32, i32* %7, align 4, !dbg !3101
  %116 = zext i32 %115 to i64, !dbg !3102
  %117 = getelementptr inbounds i8, i8* %114, i64 %116, !dbg !3102
  %118 = call i32 @archive_le32dec(i8* noundef %117), !dbg !3103
  %119 = zext i32 %118 to i64, !dbg !3103
  %120 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !3104
  %121 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %120, i32 0, i32 9, !dbg !3105
  store i64 %119, i64* %121, align 8, !dbg !3106
  %122 = load i32, i32* %7, align 4, !dbg !3107
  %123 = add i32 %122, 4, !dbg !3107
  store i32 %123, i32* %7, align 4, !dbg !3107
  %124 = load i16, i16* %9, align 2, !dbg !3108
  %125 = zext i16 %124 to i32, !dbg !3108
  %126 = sub nsw i32 %125, 4, !dbg !3108
  %127 = trunc i32 %126 to i16, !dbg !3108
  store i16 %127, i16* %9, align 2, !dbg !3108
  br label %128, !dbg !3109

128:                                              ; preds = %113, %104
  %129 = load i32, i32* %10, align 4, !dbg !3110
  %130 = and i32 %129, 4, !dbg !3112
  %131 = icmp ne i32 %130, 0, !dbg !3112
  br i1 %131, label %132, label %152, !dbg !3113

132:                                              ; preds = %128
  %133 = load i16, i16* %9, align 2, !dbg !3114
  %134 = zext i16 %133 to i32, !dbg !3114
  %135 = icmp slt i32 %134, 4, !dbg !3117
  br i1 %135, label %136, label %137, !dbg !3118

136:                                              ; preds = %132
  br label %344, !dbg !3119

137:                                              ; preds = %132
  %138 = load i8*, i8** %4, align 8, !dbg !3120
  %139 = load i32, i32* %7, align 4, !dbg !3121
  %140 = zext i32 %139 to i64, !dbg !3122
  %141 = getelementptr inbounds i8, i8* %138, i64 %140, !dbg !3122
  %142 = call i32 @archive_le32dec(i8* noundef %141), !dbg !3123
  %143 = zext i32 %142 to i64, !dbg !3123
  %144 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !3124
  %145 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %144, i32 0, i32 10, !dbg !3125
  store i64 %143, i64* %145, align 8, !dbg !3126
  %146 = load i32, i32* %7, align 4, !dbg !3127
  %147 = add i32 %146, 4, !dbg !3127
  store i32 %147, i32* %7, align 4, !dbg !3127
  %148 = load i16, i16* %9, align 2, !dbg !3128
  %149 = zext i16 %148 to i32, !dbg !3128
  %150 = sub nsw i32 %149, 4, !dbg !3128
  %151 = trunc i32 %150 to i16, !dbg !3128
  store i16 %151, i16* %9, align 2, !dbg !3128
  br label %152, !dbg !3129

152:                                              ; preds = %137, %128
  br label %344, !dbg !3130

153:                                              ; preds = %41
  %154 = load i16, i16* %9, align 2, !dbg !3131
  %155 = zext i16 %154 to i32, !dbg !3131
  %156 = icmp sge i32 %155, 8, !dbg !3134
  br i1 %156, label %157, label %175, !dbg !3135

157:                                              ; preds = %153
  %158 = load i8*, i8** %4, align 8, !dbg !3136
  %159 = load i32, i32* %7, align 4, !dbg !3138
  %160 = zext i32 %159 to i64, !dbg !3139
  %161 = getelementptr inbounds i8, i8* %158, i64 %160, !dbg !3139
  %162 = call i32 @archive_le32dec(i8* noundef %161), !dbg !3140
  %163 = zext i32 %162 to i64, !dbg !3140
  %164 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !3141
  %165 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %164, i32 0, i32 9, !dbg !3142
  store i64 %163, i64* %165, align 8, !dbg !3143
  %166 = load i8*, i8** %4, align 8, !dbg !3144
  %167 = load i32, i32* %7, align 4, !dbg !3145
  %168 = zext i32 %167 to i64, !dbg !3146
  %169 = getelementptr inbounds i8, i8* %166, i64 %168, !dbg !3146
  %170 = getelementptr inbounds i8, i8* %169, i64 4, !dbg !3147
  %171 = call i32 @archive_le32dec(i8* noundef %170), !dbg !3148
  %172 = zext i32 %171 to i64, !dbg !3148
  %173 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !3149
  %174 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %173, i32 0, i32 8, !dbg !3150
  store i64 %172, i64* %174, align 8, !dbg !3151
  br label %175, !dbg !3152

175:                                              ; preds = %157, %153
  %176 = load i16, i16* %9, align 2, !dbg !3153
  %177 = zext i16 %176 to i32, !dbg !3153
  %178 = icmp sge i32 %177, 12, !dbg !3155
  br i1 %178, label %179, label %198, !dbg !3156

179:                                              ; preds = %175
  %180 = load i8*, i8** %4, align 8, !dbg !3157
  %181 = load i32, i32* %7, align 4, !dbg !3159
  %182 = zext i32 %181 to i64, !dbg !3160
  %183 = getelementptr inbounds i8, i8* %180, i64 %182, !dbg !3160
  %184 = getelementptr inbounds i8, i8* %183, i64 8, !dbg !3161
  %185 = call zeroext i16 @archive_le16dec(i8* noundef %184), !dbg !3162
  %186 = zext i16 %185 to i64, !dbg !3162
  %187 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !3163
  %188 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %187, i32 0, i32 5, !dbg !3164
  store i64 %186, i64* %188, align 8, !dbg !3165
  %189 = load i8*, i8** %4, align 8, !dbg !3166
  %190 = load i32, i32* %7, align 4, !dbg !3167
  %191 = zext i32 %190 to i64, !dbg !3168
  %192 = getelementptr inbounds i8, i8* %189, i64 %191, !dbg !3168
  %193 = getelementptr inbounds i8, i8* %192, i64 10, !dbg !3169
  %194 = call zeroext i16 @archive_le16dec(i8* noundef %193), !dbg !3170
  %195 = zext i16 %194 to i64, !dbg !3170
  %196 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !3171
  %197 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %196, i32 0, i32 4, !dbg !3172
  store i64 %195, i64* %197, align 8, !dbg !3173
  br label %198, !dbg !3174

198:                                              ; preds = %179, %175
  br label %344, !dbg !3175

199:                                              ; preds = %41
  %200 = load i16, i16* %9, align 2, !dbg !3176
  %201 = zext i16 %200 to i32, !dbg !3176
  %202 = icmp sge i32 %201, 2, !dbg !3178
  br i1 %202, label %203, label %212, !dbg !3179

203:                                              ; preds = %199
  %204 = load i8*, i8** %4, align 8, !dbg !3180
  %205 = load i32, i32* %7, align 4, !dbg !3181
  %206 = zext i32 %205 to i64, !dbg !3182
  %207 = getelementptr inbounds i8, i8* %204, i64 %206, !dbg !3182
  %208 = call zeroext i16 @archive_le16dec(i8* noundef %207), !dbg !3183
  %209 = zext i16 %208 to i64, !dbg !3183
  %210 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !3184
  %211 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %210, i32 0, i32 5, !dbg !3185
  store i64 %209, i64* %211, align 8, !dbg !3186
  br label %212, !dbg !3184

212:                                              ; preds = %203, %199
  %213 = load i16, i16* %9, align 2, !dbg !3187
  %214 = zext i16 %213 to i32, !dbg !3187
  %215 = icmp sge i32 %214, 4, !dbg !3189
  br i1 %215, label %216, label %226, !dbg !3190

216:                                              ; preds = %212
  %217 = load i8*, i8** %4, align 8, !dbg !3191
  %218 = load i32, i32* %7, align 4, !dbg !3192
  %219 = zext i32 %218 to i64, !dbg !3193
  %220 = getelementptr inbounds i8, i8* %217, i64 %219, !dbg !3193
  %221 = getelementptr inbounds i8, i8* %220, i64 2, !dbg !3194
  %222 = call zeroext i16 @archive_le16dec(i8* noundef %221), !dbg !3195
  %223 = zext i16 %222 to i64, !dbg !3195
  %224 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !3196
  %225 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %224, i32 0, i32 4, !dbg !3197
  store i64 %223, i64* %225, align 8, !dbg !3198
  br label %226, !dbg !3196

226:                                              ; preds = %216, %212
  br label %344, !dbg !3199

227:                                              ; preds = %41
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3200, metadata !DIExpression()), !dbg !3202
  store i32 0, i32* %11, align 4, !dbg !3202
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3203, metadata !DIExpression()), !dbg !3204
  store i32 0, i32* %12, align 4, !dbg !3204
  %228 = load i16, i16* %9, align 2, !dbg !3205
  %229 = zext i16 %228 to i32, !dbg !3205
  %230 = icmp sge i32 %229, 1, !dbg !3207
  br i1 %230, label %231, label %342, !dbg !3208

231:                                              ; preds = %227
  %232 = load i8*, i8** %4, align 8, !dbg !3209
  %233 = load i32, i32* %7, align 4, !dbg !3210
  %234 = zext i32 %233 to i64, !dbg !3209
  %235 = getelementptr inbounds i8, i8* %232, i64 %234, !dbg !3209
  %236 = load i8, i8* %235, align 1, !dbg !3209
  %237 = sext i8 %236 to i32, !dbg !3209
  %238 = icmp eq i32 %237, 1, !dbg !3211
  br i1 %238, label %239, label %342, !dbg !3212

239:                                              ; preds = %231
  %240 = load i16, i16* %9, align 2, !dbg !3213
  %241 = zext i16 %240 to i32, !dbg !3213
  %242 = icmp sge i32 %241, 4, !dbg !3216
  br i1 %242, label %243, label %282, !dbg !3217

243:                                              ; preds = %239
  %244 = load i8*, i8** %4, align 8, !dbg !3218
  %245 = load i32, i32* %7, align 4, !dbg !3220
  %246 = add i32 %245, 1, !dbg !3221
  %247 = zext i32 %246 to i64, !dbg !3218
  %248 = getelementptr inbounds i8, i8* %244, i64 %247, !dbg !3218
  %249 = load i8, i8* %248, align 1, !dbg !3218
  %250 = sext i8 %249 to i32, !dbg !3218
  store i32 %250, i32* %11, align 4, !dbg !3222
  %251 = load i32, i32* %11, align 4, !dbg !3223
  %252 = icmp eq i32 %251, 2, !dbg !3225
  br i1 %252, label %253, label %263, !dbg !3226

253:                                              ; preds = %243
  %254 = load i8*, i8** %4, align 8, !dbg !3227
  %255 = load i32, i32* %7, align 4, !dbg !3228
  %256 = zext i32 %255 to i64, !dbg !3229
  %257 = getelementptr inbounds i8, i8* %254, i64 %256, !dbg !3229
  %258 = getelementptr inbounds i8, i8* %257, i64 2, !dbg !3230
  %259 = call zeroext i16 @archive_le16dec(i8* noundef %258), !dbg !3231
  %260 = zext i16 %259 to i64, !dbg !3231
  %261 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !3232
  %262 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %261, i32 0, i32 5, !dbg !3233
  store i64 %260, i64* %262, align 8, !dbg !3234
  br label %281, !dbg !3232

263:                                              ; preds = %243
  %264 = load i32, i32* %11, align 4, !dbg !3235
  %265 = icmp eq i32 %264, 4, !dbg !3237
  br i1 %265, label %266, label %280, !dbg !3238

266:                                              ; preds = %263
  %267 = load i16, i16* %9, align 2, !dbg !3239
  %268 = zext i16 %267 to i32, !dbg !3239
  %269 = icmp sge i32 %268, 6, !dbg !3240
  br i1 %269, label %270, label %280, !dbg !3241

270:                                              ; preds = %266
  %271 = load i8*, i8** %4, align 8, !dbg !3242
  %272 = load i32, i32* %7, align 4, !dbg !3243
  %273 = zext i32 %272 to i64, !dbg !3244
  %274 = getelementptr inbounds i8, i8* %271, i64 %273, !dbg !3244
  %275 = getelementptr inbounds i8, i8* %274, i64 2, !dbg !3245
  %276 = call i32 @archive_le32dec(i8* noundef %275), !dbg !3246
  %277 = zext i32 %276 to i64, !dbg !3246
  %278 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !3247
  %279 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %278, i32 0, i32 5, !dbg !3248
  store i64 %277, i64* %279, align 8, !dbg !3249
  br label %280, !dbg !3247

280:                                              ; preds = %270, %266, %263
  br label %281

281:                                              ; preds = %280, %253
  br label %282, !dbg !3250

282:                                              ; preds = %281, %239
  %283 = load i16, i16* %9, align 2, !dbg !3251
  %284 = zext i16 %283 to i32, !dbg !3251
  %285 = load i32, i32* %11, align 4, !dbg !3253
  %286 = add nsw i32 2, %285, !dbg !3254
  %287 = add nsw i32 %286, 3, !dbg !3255
  %288 = icmp sge i32 %284, %287, !dbg !3256
  br i1 %288, label %289, label %341, !dbg !3257

289:                                              ; preds = %282
  %290 = load i8*, i8** %4, align 8, !dbg !3258
  %291 = load i32, i32* %7, align 4, !dbg !3260
  %292 = add i32 %291, 2, !dbg !3261
  %293 = load i32, i32* %11, align 4, !dbg !3262
  %294 = add i32 %292, %293, !dbg !3263
  %295 = zext i32 %294 to i64, !dbg !3258
  %296 = getelementptr inbounds i8, i8* %290, i64 %295, !dbg !3258
  %297 = load i8, i8* %296, align 1, !dbg !3258
  %298 = sext i8 %297 to i32, !dbg !3258
  store i32 %298, i32* %12, align 4, !dbg !3264
  %299 = load i32, i32* %12, align 4, !dbg !3265
  %300 = icmp eq i32 %299, 2, !dbg !3267
  br i1 %300, label %301, label %315, !dbg !3268

301:                                              ; preds = %289
  %302 = load i8*, i8** %4, align 8, !dbg !3269
  %303 = load i32, i32* %7, align 4, !dbg !3270
  %304 = zext i32 %303 to i64, !dbg !3271
  %305 = getelementptr inbounds i8, i8* %302, i64 %304, !dbg !3271
  %306 = getelementptr inbounds i8, i8* %305, i64 2, !dbg !3272
  %307 = load i32, i32* %11, align 4, !dbg !3273
  %308 = sext i32 %307 to i64, !dbg !3274
  %309 = getelementptr inbounds i8, i8* %306, i64 %308, !dbg !3274
  %310 = getelementptr inbounds i8, i8* %309, i64 1, !dbg !3275
  %311 = call zeroext i16 @archive_le16dec(i8* noundef %310), !dbg !3276
  %312 = zext i16 %311 to i64, !dbg !3276
  %313 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !3277
  %314 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %313, i32 0, i32 4, !dbg !3278
  store i64 %312, i64* %314, align 8, !dbg !3279
  br label %340, !dbg !3277

315:                                              ; preds = %289
  %316 = load i32, i32* %12, align 4, !dbg !3280
  %317 = icmp eq i32 %316, 4, !dbg !3282
  br i1 %317, label %318, label %339, !dbg !3283

318:                                              ; preds = %315
  %319 = load i16, i16* %9, align 2, !dbg !3284
  %320 = zext i16 %319 to i32, !dbg !3284
  %321 = load i32, i32* %11, align 4, !dbg !3285
  %322 = add nsw i32 2, %321, !dbg !3286
  %323 = add nsw i32 %322, 5, !dbg !3287
  %324 = icmp sge i32 %320, %323, !dbg !3288
  br i1 %324, label %325, label %339, !dbg !3289

325:                                              ; preds = %318
  %326 = load i8*, i8** %4, align 8, !dbg !3290
  %327 = load i32, i32* %7, align 4, !dbg !3291
  %328 = zext i32 %327 to i64, !dbg !3292
  %329 = getelementptr inbounds i8, i8* %326, i64 %328, !dbg !3292
  %330 = getelementptr inbounds i8, i8* %329, i64 2, !dbg !3293
  %331 = load i32, i32* %11, align 4, !dbg !3294
  %332 = sext i32 %331 to i64, !dbg !3295
  %333 = getelementptr inbounds i8, i8* %330, i64 %332, !dbg !3295
  %334 = getelementptr inbounds i8, i8* %333, i64 1, !dbg !3296
  %335 = call i32 @archive_le32dec(i8* noundef %334), !dbg !3297
  %336 = zext i32 %335 to i64, !dbg !3297
  %337 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8, !dbg !3298
  %338 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %337, i32 0, i32 4, !dbg !3299
  store i64 %336, i64* %338, align 8, !dbg !3300
  br label %339, !dbg !3298

339:                                              ; preds = %325, %318, %315
  br label %340

340:                                              ; preds = %339, %301
  br label %341, !dbg !3301

341:                                              ; preds = %340, %282
  br label %342, !dbg !3302

342:                                              ; preds = %341, %231, %227
  br label %344, !dbg !3303

343:                                              ; preds = %41
  br label %344, !dbg !3304

344:                                              ; preds = %343, %342, %226, %198, %152, %136, %112, %88, %69
  %345 = load i16, i16* %9, align 2, !dbg !3305
  %346 = zext i16 %345 to i32, !dbg !3305
  %347 = load i32, i32* %7, align 4, !dbg !3306
  %348 = add i32 %347, %346, !dbg !3306
  store i32 %348, i32* %7, align 4, !dbg !3306
  br label %13, !dbg !3008, !llvm.loop !3307

349:                                              ; preds = %40, %13
  ret void, !dbg !3309
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
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3310, metadata !DIExpression()), !dbg !3311
  %4 = load i32, i32* %3, align 4, !dbg !3312
  %5 = icmp sle i32 0, %4, !dbg !3314
  br i1 %5, label %6, label %14, !dbg !3315

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !3316
  %8 = icmp slt i32 %7, 9, !dbg !3317
  br i1 %8, label %9, label %14, !dbg !3318

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4, !dbg !3319
  %11 = sext i32 %10 to i64, !dbg !3320
  %12 = getelementptr inbounds [9 x i8*], [9 x i8*]* @compression_name.compression_names, i64 0, i64 %11, !dbg !3320
  %13 = load i8*, i8** %12, align 8, !dbg !3320
  store i8* %13, i8** %2, align 8, !dbg !3321
  br label %15, !dbg !3321

14:                                               ; preds = %6, %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8, !dbg !3322
  br label %15, !dbg !3322

15:                                               ; preds = %14, %9
  %16 = load i8*, i8** %2, align 8, !dbg !3323
  ret i8* %16, !dbg !3323
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @archive_le64dec(i8* noundef %0) #0 !dbg !3324 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3327, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3329, metadata !DIExpression()), !dbg !3330
  %4 = load i8*, i8** %2, align 8, !dbg !3331
  store i8* %4, i8** %3, align 8, !dbg !3330
  %5 = load i8*, i8** %3, align 8, !dbg !3332
  %6 = getelementptr inbounds i8, i8* %5, i64 4, !dbg !3333
  %7 = call i32 @archive_le32dec(i8* noundef %6), !dbg !3334
  %8 = zext i32 %7 to i64, !dbg !3335
  %9 = shl i64 %8, 32, !dbg !3336
  %10 = load i8*, i8** %3, align 8, !dbg !3337
  %11 = call i32 @archive_le32dec(i8* noundef %10), !dbg !3338
  %12 = zext i32 %11 to i64, !dbg !3338
  %13 = or i64 %9, %12, !dbg !3339
  ret i64 %13, !dbg !3340
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @zip_get_local_file_header_size(%struct.archive_read* noundef %0, i64 noundef %1) #0 !dbg !3341 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %4, metadata !3344, metadata !DIExpression()), !dbg !3345
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3346, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3348, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3350, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3352, metadata !DIExpression()), !dbg !3353
  %9 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !3354
  %10 = load i64, i64* %5, align 8, !dbg !3356
  %11 = add i64 %10, 30, !dbg !3357
  %12 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %9, i64 noundef %11, i64* noundef null), !dbg !3358
  store i8* %12, i8** %6, align 8, !dbg !3359
  %13 = icmp eq i8* %12, null, !dbg !3360
  br i1 %13, label %14, label %17, !dbg !3361

14:                                               ; preds = %2
  %15 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !3362
  %16 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %15, i32 0, i32 0, !dbg !3364
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %16, i32 noundef 84, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0)), !dbg !3365
  store i64 -20, i64* %3, align 8, !dbg !3366
  br label %40, !dbg !3366

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8, !dbg !3367
  %19 = load i8*, i8** %6, align 8, !dbg !3368
  %20 = getelementptr inbounds i8, i8* %19, i64 %18, !dbg !3368
  store i8* %20, i8** %6, align 8, !dbg !3368
  %21 = load i8*, i8** %6, align 8, !dbg !3369
  %22 = call i32 @memcmp(i8* noundef %21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 noundef 4) #9, !dbg !3371
  %23 = icmp ne i32 %22, 0, !dbg !3372
  br i1 %23, label %24, label %27, !dbg !3373

24:                                               ; preds = %17
  %25 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !3374
  %26 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %25, i32 0, i32 0, !dbg !3376
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %26, i32 noundef -1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)), !dbg !3377
  store i64 -20, i64* %3, align 8, !dbg !3378
  br label %40, !dbg !3378

27:                                               ; preds = %17
  %28 = load i8*, i8** %6, align 8, !dbg !3379
  %29 = getelementptr inbounds i8, i8* %28, i64 26, !dbg !3380
  %30 = call zeroext i16 @archive_le16dec(i8* noundef %29), !dbg !3381
  %31 = zext i16 %30 to i64, !dbg !3381
  store i64 %31, i64* %7, align 8, !dbg !3382
  %32 = load i8*, i8** %6, align 8, !dbg !3383
  %33 = getelementptr inbounds i8, i8* %32, i64 28, !dbg !3384
  %34 = call zeroext i16 @archive_le16dec(i8* noundef %33), !dbg !3385
  %35 = zext i16 %34 to i64, !dbg !3385
  store i64 %35, i64* %8, align 8, !dbg !3386
  %36 = load i64, i64* %7, align 8, !dbg !3387
  %37 = add nsw i64 30, %36, !dbg !3388
  %38 = load i64, i64* %8, align 8, !dbg !3389
  %39 = add nsw i64 %37, %38, !dbg !3390
  store i64 %39, i64* %3, align 8, !dbg !3391
  br label %40, !dbg !3391

40:                                               ; preds = %27, %24, %14
  %41 = load i64, i64* %3, align 8, !dbg !3392
  ret i64 %41, !dbg !3392
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define internal i32 @zip_deflate_init(%struct.archive_read* noundef %0, %struct.zip* noundef %1) #0 !dbg !3393 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.zip*, align 8
  %6 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %4, metadata !3394, metadata !DIExpression()), !dbg !3395
  store %struct.zip* %1, %struct.zip** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.zip** %5, metadata !3396, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3398, metadata !DIExpression()), !dbg !3399
  %7 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !3400
  %8 = getelementptr inbounds %struct.zip, %struct.zip* %7, i32 0, i32 16, !dbg !3402
  %9 = load i8, i8* %8, align 8, !dbg !3402
  %10 = icmp ne i8 %9, 0, !dbg !3400
  br i1 %10, label %35, label %11, !dbg !3403

11:                                               ; preds = %2
  %12 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !3404
  %13 = getelementptr inbounds %struct.zip, %struct.zip* %12, i32 0, i32 23, !dbg !3407
  %14 = load i8, i8* %13, align 8, !dbg !3407
  %15 = icmp ne i8 %14, 0, !dbg !3404
  br i1 %15, label %16, label %20, !dbg !3408

16:                                               ; preds = %11
  %17 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !3409
  %18 = getelementptr inbounds %struct.zip, %struct.zip* %17, i32 0, i32 22, !dbg !3410
  %19 = call i32 @inflateReset(%struct.z_stream_s* noundef %18), !dbg !3411
  store i32 %19, i32* %6, align 4, !dbg !3412
  br label %24, !dbg !3413

20:                                               ; preds = %11
  %21 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !3414
  %22 = getelementptr inbounds %struct.zip, %struct.zip* %21, i32 0, i32 22, !dbg !3414
  %23 = call i32 @inflateInit2_(%struct.z_stream_s* noundef %22, i32 noundef -15, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i32 noundef 112), !dbg !3414
  store i32 %23, i32* %6, align 4, !dbg !3415
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %6, align 4, !dbg !3416
  %26 = icmp ne i32 %25, 0, !dbg !3418
  br i1 %26, label %27, label %30, !dbg !3419

27:                                               ; preds = %24
  %28 = load %struct.archive_read*, %struct.archive_read** %4, align 8, !dbg !3420
  %29 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %28, i32 0, i32 0, !dbg !3422
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %29, i32 noundef -1, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i64 0, i64 0)), !dbg !3423
  store i32 -30, i32* %3, align 4, !dbg !3424
  br label %36, !dbg !3424

30:                                               ; preds = %24
  %31 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !3425
  %32 = getelementptr inbounds %struct.zip, %struct.zip* %31, i32 0, i32 23, !dbg !3426
  store i8 1, i8* %32, align 8, !dbg !3427
  %33 = load %struct.zip*, %struct.zip** %5, align 8, !dbg !3428
  %34 = getelementptr inbounds %struct.zip, %struct.zip* %33, i32 0, i32 16, !dbg !3429
  store i8 1, i8* %34, align 8, !dbg !3430
  br label %35, !dbg !3431

35:                                               ; preds = %30, %2
  store i32 0, i32* %3, align 4, !dbg !3432
  br label %36, !dbg !3432

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %3, align 4, !dbg !3433
  ret i32 %37, !dbg !3433
}

declare i32 @inflate(%struct.z_stream_s* noundef, i32 noundef) #2

declare void @archive_entry_copy_mac_metadata(%struct.archive_entry* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare i32 @inflateReset(%struct.z_stream_s* noundef) #2

declare i32 @inflateInit2_(%struct.z_stream_s* noundef, i32 noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @zip_read_data_none(%struct.archive_read* noundef %0, i8** noundef %1, i64* noundef %2, i64* noundef %3) #0 !dbg !3434 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.zip*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %6, metadata !3435, metadata !DIExpression()), !dbg !3436
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !3437, metadata !DIExpression()), !dbg !3438
  store i64* %2, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !3439, metadata !DIExpression()), !dbg !3440
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !3441, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.declare(metadata %struct.zip** %10, metadata !3443, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3445, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3447, metadata !DIExpression()), !dbg !3448
  %14 = load i64*, i64** %9, align 8, !dbg !3449
  %15 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !3450
  %16 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %15, i32 0, i32 19, !dbg !3451
  %17 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %16, align 8, !dbg !3451
  %18 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %17, i32 0, i32 0, !dbg !3452
  %19 = load i8*, i8** %18, align 8, !dbg !3452
  %20 = bitcast i8* %19 to %struct.zip*, !dbg !3453
  store %struct.zip* %20, %struct.zip** %10, align 8, !dbg !3454
  %21 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3455
  %22 = getelementptr inbounds %struct.zip, %struct.zip* %21, i32 0, i32 8, !dbg !3457
  %23 = load %struct.zip_entry*, %struct.zip_entry** %22, align 8, !dbg !3457
  %24 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %23, i32 0, i32 13, !dbg !3458
  %25 = load i16, i16* %24, align 2, !dbg !3458
  %26 = zext i16 %25 to i32, !dbg !3455
  %27 = and i32 %26, 8, !dbg !3459
  %28 = icmp ne i32 %27, 0, !dbg !3459
  br i1 %28, label %29, label %192, !dbg !3460

29:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3461, metadata !DIExpression()), !dbg !3463
  %30 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !3464
  %31 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %30, i64 noundef 16, i64* noundef %12), !dbg !3465
  store i8* %31, i8** %11, align 8, !dbg !3466
  %32 = load i64, i64* %12, align 8, !dbg !3467
  %33 = icmp slt i64 %32, 16, !dbg !3469
  br i1 %33, label %34, label %37, !dbg !3470

34:                                               ; preds = %29
  %35 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !3471
  %36 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %35, i32 0, i32 0, !dbg !3473
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %36, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i64 0, i64 0)), !dbg !3474
  store i32 -30, i32* %5, align 4, !dbg !3475
  br label %244, !dbg !3475

37:                                               ; preds = %29
  %38 = load i8*, i8** %11, align 8, !dbg !3476
  store i8* %38, i8** %13, align 8, !dbg !3477
  %39 = load i8*, i8** %13, align 8, !dbg !3478
  %40 = getelementptr inbounds i8, i8* %39, i64 0, !dbg !3478
  %41 = load i8, i8* %40, align 1, !dbg !3478
  %42 = sext i8 %41 to i32, !dbg !3478
  %43 = icmp eq i32 %42, 80, !dbg !3480
  br i1 %43, label %44, label %117, !dbg !3481

44:                                               ; preds = %37
  %45 = load i8*, i8** %13, align 8, !dbg !3482
  %46 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !3482
  %47 = load i8, i8* %46, align 1, !dbg !3482
  %48 = sext i8 %47 to i32, !dbg !3482
  %49 = icmp eq i32 %48, 75, !dbg !3483
  br i1 %49, label %50, label %117, !dbg !3484

50:                                               ; preds = %44
  %51 = load i8*, i8** %13, align 8, !dbg !3485
  %52 = getelementptr inbounds i8, i8* %51, i64 2, !dbg !3485
  %53 = load i8, i8* %52, align 1, !dbg !3485
  %54 = sext i8 %53 to i32, !dbg !3485
  %55 = icmp eq i32 %54, 7, !dbg !3486
  br i1 %55, label %56, label %117, !dbg !3487

56:                                               ; preds = %50
  %57 = load i8*, i8** %13, align 8, !dbg !3488
  %58 = getelementptr inbounds i8, i8* %57, i64 3, !dbg !3488
  %59 = load i8, i8* %58, align 1, !dbg !3488
  %60 = sext i8 %59 to i32, !dbg !3488
  %61 = icmp eq i32 %60, 8, !dbg !3489
  br i1 %61, label %62, label %117, !dbg !3490

62:                                               ; preds = %56
  %63 = load i8*, i8** %13, align 8, !dbg !3491
  %64 = getelementptr inbounds i8, i8* %63, i64 4, !dbg !3492
  %65 = call i32 @archive_le32dec(i8* noundef %64), !dbg !3493
  %66 = zext i32 %65 to i64, !dbg !3493
  %67 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3494
  %68 = getelementptr inbounds %struct.zip, %struct.zip* %67, i32 0, i32 15, !dbg !3495
  %69 = load i64, i64* %68, align 8, !dbg !3495
  %70 = icmp eq i64 %66, %69, !dbg !3496
  br i1 %70, label %71, label %117, !dbg !3497

71:                                               ; preds = %62
  %72 = load i8*, i8** %13, align 8, !dbg !3498
  %73 = getelementptr inbounds i8, i8* %72, i64 8, !dbg !3499
  %74 = call i32 @archive_le32dec(i8* noundef %73), !dbg !3500
  %75 = zext i32 %74 to i64, !dbg !3500
  %76 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3501
  %77 = getelementptr inbounds %struct.zip, %struct.zip* %76, i32 0, i32 13, !dbg !3502
  %78 = load i64, i64* %77, align 8, !dbg !3502
  %79 = icmp eq i64 %75, %78, !dbg !3503
  br i1 %79, label %80, label %117, !dbg !3504

80:                                               ; preds = %71
  %81 = load i8*, i8** %13, align 8, !dbg !3505
  %82 = getelementptr inbounds i8, i8* %81, i64 12, !dbg !3506
  %83 = call i32 @archive_le32dec(i8* noundef %82), !dbg !3507
  %84 = zext i32 %83 to i64, !dbg !3507
  %85 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3508
  %86 = getelementptr inbounds %struct.zip, %struct.zip* %85, i32 0, i32 14, !dbg !3509
  %87 = load i64, i64* %86, align 8, !dbg !3509
  %88 = icmp eq i64 %84, %87, !dbg !3510
  br i1 %88, label %89, label %117, !dbg !3511

89:                                               ; preds = %80
  %90 = load i8*, i8** %13, align 8, !dbg !3512
  %91 = getelementptr inbounds i8, i8* %90, i64 4, !dbg !3514
  %92 = call i32 @archive_le32dec(i8* noundef %91), !dbg !3515
  %93 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3516
  %94 = getelementptr inbounds %struct.zip, %struct.zip* %93, i32 0, i32 8, !dbg !3517
  %95 = load %struct.zip_entry*, %struct.zip_entry** %94, align 8, !dbg !3517
  %96 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %95, i32 0, i32 11, !dbg !3518
  store i32 %92, i32* %96, align 8, !dbg !3519
  %97 = load i8*, i8** %13, align 8, !dbg !3520
  %98 = getelementptr inbounds i8, i8* %97, i64 8, !dbg !3521
  %99 = call i32 @archive_le32dec(i8* noundef %98), !dbg !3522
  %100 = zext i32 %99 to i64, !dbg !3522
  %101 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3523
  %102 = getelementptr inbounds %struct.zip, %struct.zip* %101, i32 0, i32 8, !dbg !3524
  %103 = load %struct.zip_entry*, %struct.zip_entry** %102, align 8, !dbg !3524
  %104 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %103, i32 0, i32 2, !dbg !3525
  store i64 %100, i64* %104, align 8, !dbg !3526
  %105 = load i8*, i8** %13, align 8, !dbg !3527
  %106 = getelementptr inbounds i8, i8* %105, i64 12, !dbg !3528
  %107 = call i32 @archive_le32dec(i8* noundef %106), !dbg !3529
  %108 = zext i32 %107 to i64, !dbg !3529
  %109 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3530
  %110 = getelementptr inbounds %struct.zip, %struct.zip* %109, i32 0, i32 8, !dbg !3531
  %111 = load %struct.zip_entry*, %struct.zip_entry** %110, align 8, !dbg !3531
  %112 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %111, i32 0, i32 3, !dbg !3532
  store i64 %108, i64* %112, align 8, !dbg !3533
  %113 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3534
  %114 = getelementptr inbounds %struct.zip, %struct.zip* %113, i32 0, i32 17, !dbg !3535
  store i8 1, i8* %114, align 1, !dbg !3536
  %115 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3537
  %116 = getelementptr inbounds %struct.zip, %struct.zip* %115, i32 0, i32 11, !dbg !3538
  store i64 16, i64* %116, align 8, !dbg !3539
  store i32 0, i32* %5, align 4, !dbg !3540
  br label %244, !dbg !3540

117:                                              ; preds = %80, %71, %62, %56, %50, %44, %37
  %118 = load i8*, i8** %13, align 8, !dbg !3541
  %119 = getelementptr inbounds i8, i8* %118, i32 1, !dbg !3541
  store i8* %119, i8** %13, align 8, !dbg !3541
  br label %120, !dbg !3542

120:                                              ; preds = %185, %117
  %121 = load i8*, i8** %13, align 8, !dbg !3543
  %122 = load i8*, i8** %11, align 8, !dbg !3544
  %123 = load i64, i64* %12, align 8, !dbg !3545
  %124 = getelementptr inbounds i8, i8* %122, i64 %123, !dbg !3546
  %125 = getelementptr inbounds i8, i8* %124, i64 -4, !dbg !3547
  %126 = icmp ult i8* %121, %125, !dbg !3548
  br i1 %126, label %127, label %186, !dbg !3542

127:                                              ; preds = %120
  %128 = load i8*, i8** %13, align 8, !dbg !3549
  %129 = getelementptr inbounds i8, i8* %128, i64 3, !dbg !3549
  %130 = load i8, i8* %129, align 1, !dbg !3549
  %131 = sext i8 %130 to i32, !dbg !3549
  %132 = icmp eq i32 %131, 80, !dbg !3552
  br i1 %132, label %133, label %136, !dbg !3553

133:                                              ; preds = %127
  %134 = load i8*, i8** %13, align 8, !dbg !3554
  %135 = getelementptr inbounds i8, i8* %134, i64 3, !dbg !3554
  store i8* %135, i8** %13, align 8, !dbg !3554
  br label %185, !dbg !3556

136:                                              ; preds = %127
  %137 = load i8*, i8** %13, align 8, !dbg !3557
  %138 = getelementptr inbounds i8, i8* %137, i64 3, !dbg !3557
  %139 = load i8, i8* %138, align 1, !dbg !3557
  %140 = sext i8 %139 to i32, !dbg !3557
  %141 = icmp eq i32 %140, 75, !dbg !3559
  br i1 %141, label %142, label %145, !dbg !3560

142:                                              ; preds = %136
  %143 = load i8*, i8** %13, align 8, !dbg !3561
  %144 = getelementptr inbounds i8, i8* %143, i64 2, !dbg !3561
  store i8* %144, i8** %13, align 8, !dbg !3561
  br label %184, !dbg !3563

145:                                              ; preds = %136
  %146 = load i8*, i8** %13, align 8, !dbg !3564
  %147 = getelementptr inbounds i8, i8* %146, i64 3, !dbg !3564
  %148 = load i8, i8* %147, align 1, !dbg !3564
  %149 = sext i8 %148 to i32, !dbg !3564
  %150 = icmp eq i32 %149, 7, !dbg !3566
  br i1 %150, label %151, label %154, !dbg !3567

151:                                              ; preds = %145
  %152 = load i8*, i8** %13, align 8, !dbg !3568
  %153 = getelementptr inbounds i8, i8* %152, i64 1, !dbg !3568
  store i8* %153, i8** %13, align 8, !dbg !3568
  br label %183, !dbg !3570

154:                                              ; preds = %145
  %155 = load i8*, i8** %13, align 8, !dbg !3571
  %156 = getelementptr inbounds i8, i8* %155, i64 3, !dbg !3571
  %157 = load i8, i8* %156, align 1, !dbg !3571
  %158 = sext i8 %157 to i32, !dbg !3571
  %159 = icmp eq i32 %158, 8, !dbg !3573
  br i1 %159, label %160, label %179, !dbg !3574

160:                                              ; preds = %154
  %161 = load i8*, i8** %13, align 8, !dbg !3575
  %162 = getelementptr inbounds i8, i8* %161, i64 2, !dbg !3575
  %163 = load i8, i8* %162, align 1, !dbg !3575
  %164 = sext i8 %163 to i32, !dbg !3575
  %165 = icmp eq i32 %164, 7, !dbg !3576
  br i1 %165, label %166, label %179, !dbg !3577

166:                                              ; preds = %160
  %167 = load i8*, i8** %13, align 8, !dbg !3578
  %168 = getelementptr inbounds i8, i8* %167, i64 1, !dbg !3578
  %169 = load i8, i8* %168, align 1, !dbg !3578
  %170 = sext i8 %169 to i32, !dbg !3578
  %171 = icmp eq i32 %170, 75, !dbg !3579
  br i1 %171, label %172, label %179, !dbg !3580

172:                                              ; preds = %166
  %173 = load i8*, i8** %13, align 8, !dbg !3581
  %174 = getelementptr inbounds i8, i8* %173, i64 0, !dbg !3581
  %175 = load i8, i8* %174, align 1, !dbg !3581
  %176 = sext i8 %175 to i32, !dbg !3581
  %177 = icmp eq i32 %176, 80, !dbg !3582
  br i1 %177, label %178, label %179, !dbg !3583

178:                                              ; preds = %172
  br label %186, !dbg !3584

179:                                              ; preds = %172, %166, %160, %154
  %180 = load i8*, i8** %13, align 8, !dbg !3586
  %181 = getelementptr inbounds i8, i8* %180, i64 4, !dbg !3586
  store i8* %181, i8** %13, align 8, !dbg !3586
  br label %182

182:                                              ; preds = %179
  br label %183

183:                                              ; preds = %182, %151
  br label %184

184:                                              ; preds = %183, %142
  br label %185

185:                                              ; preds = %184, %133
  br label %120, !dbg !3542, !llvm.loop !3588

186:                                              ; preds = %178, %120
  %187 = load i8*, i8** %13, align 8, !dbg !3590
  %188 = load i8*, i8** %11, align 8, !dbg !3591
  %189 = ptrtoint i8* %187 to i64, !dbg !3592
  %190 = ptrtoint i8* %188 to i64, !dbg !3592
  %191 = sub i64 %189, %190, !dbg !3592
  store i64 %191, i64* %12, align 8, !dbg !3593
  br label %219, !dbg !3594

192:                                              ; preds = %4
  %193 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3595
  %194 = getelementptr inbounds %struct.zip, %struct.zip* %193, i32 0, i32 12, !dbg !3598
  %195 = load i64, i64* %194, align 8, !dbg !3598
  %196 = icmp eq i64 %195, 0, !dbg !3599
  br i1 %196, label %197, label %200, !dbg !3600

197:                                              ; preds = %192
  %198 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3601
  %199 = getelementptr inbounds %struct.zip, %struct.zip* %198, i32 0, i32 17, !dbg !3603
  store i8 1, i8* %199, align 1, !dbg !3604
  store i32 0, i32* %5, align 4, !dbg !3605
  br label %244, !dbg !3605

200:                                              ; preds = %192
  %201 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !3606
  %202 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %201, i64 noundef 1, i64* noundef %12), !dbg !3607
  store i8* %202, i8** %11, align 8, !dbg !3608
  %203 = load i64, i64* %12, align 8, !dbg !3609
  %204 = icmp sle i64 %203, 0, !dbg !3611
  br i1 %204, label %205, label %208, !dbg !3612

205:                                              ; preds = %200
  %206 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !3613
  %207 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %206, i32 0, i32 0, !dbg !3615
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %207, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i64 0, i64 0)), !dbg !3616
  store i32 -30, i32* %5, align 4, !dbg !3617
  br label %244, !dbg !3617

208:                                              ; preds = %200
  %209 = load i64, i64* %12, align 8, !dbg !3618
  %210 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3620
  %211 = getelementptr inbounds %struct.zip, %struct.zip* %210, i32 0, i32 12, !dbg !3621
  %212 = load i64, i64* %211, align 8, !dbg !3621
  %213 = icmp sgt i64 %209, %212, !dbg !3622
  br i1 %213, label %214, label %218, !dbg !3623

214:                                              ; preds = %208
  %215 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3624
  %216 = getelementptr inbounds %struct.zip, %struct.zip* %215, i32 0, i32 12, !dbg !3625
  %217 = load i64, i64* %216, align 8, !dbg !3625
  store i64 %217, i64* %12, align 8, !dbg !3626
  br label %218, !dbg !3627

218:                                              ; preds = %214, %208
  br label %219

219:                                              ; preds = %218, %186
  %220 = load i64, i64* %12, align 8, !dbg !3628
  %221 = load i64*, i64** %8, align 8, !dbg !3629
  store i64 %220, i64* %221, align 8, !dbg !3630
  %222 = load i64, i64* %12, align 8, !dbg !3631
  %223 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3632
  %224 = getelementptr inbounds %struct.zip, %struct.zip* %223, i32 0, i32 12, !dbg !3633
  %225 = load i64, i64* %224, align 8, !dbg !3634
  %226 = sub nsw i64 %225, %222, !dbg !3634
  store i64 %226, i64* %224, align 8, !dbg !3634
  %227 = load i64, i64* %12, align 8, !dbg !3635
  %228 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3636
  %229 = getelementptr inbounds %struct.zip, %struct.zip* %228, i32 0, i32 14, !dbg !3637
  %230 = load i64, i64* %229, align 8, !dbg !3638
  %231 = add nsw i64 %230, %227, !dbg !3638
  store i64 %231, i64* %229, align 8, !dbg !3638
  %232 = load i64, i64* %12, align 8, !dbg !3639
  %233 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3640
  %234 = getelementptr inbounds %struct.zip, %struct.zip* %233, i32 0, i32 13, !dbg !3641
  %235 = load i64, i64* %234, align 8, !dbg !3642
  %236 = add nsw i64 %235, %232, !dbg !3642
  store i64 %236, i64* %234, align 8, !dbg !3642
  %237 = load i64, i64* %12, align 8, !dbg !3643
  %238 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3644
  %239 = getelementptr inbounds %struct.zip, %struct.zip* %238, i32 0, i32 11, !dbg !3645
  %240 = load i64, i64* %239, align 8, !dbg !3646
  %241 = add i64 %240, %237, !dbg !3646
  store i64 %241, i64* %239, align 8, !dbg !3646
  %242 = load i8*, i8** %11, align 8, !dbg !3647
  %243 = load i8**, i8*** %7, align 8, !dbg !3648
  store i8* %242, i8** %243, align 8, !dbg !3649
  store i32 0, i32* %5, align 4, !dbg !3650
  br label %244, !dbg !3650

244:                                              ; preds = %219, %205, %197, %89, %34
  %245 = load i32, i32* %5, align 4, !dbg !3651
  ret i32 %245, !dbg !3651
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @zip_read_data_deflate(%struct.archive_read* noundef %0, i8** noundef %1, i64* noundef %2, i64* noundef %3) #0 !dbg !3652 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.zip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.archive_read** %6, metadata !3653, metadata !DIExpression()), !dbg !3654
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !3655, metadata !DIExpression()), !dbg !3656
  store i64* %2, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !3657, metadata !DIExpression()), !dbg !3658
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !3659, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.declare(metadata %struct.zip** %10, metadata !3661, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3663, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3665, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3667, metadata !DIExpression()), !dbg !3668
  %15 = load i64*, i64** %9, align 8, !dbg !3669
  %16 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !3670
  %17 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %16, i32 0, i32 19, !dbg !3671
  %18 = load %struct.archive_format_descriptor*, %struct.archive_format_descriptor** %17, align 8, !dbg !3671
  %19 = getelementptr inbounds %struct.archive_format_descriptor, %struct.archive_format_descriptor* %18, i32 0, i32 0, !dbg !3672
  %20 = load i8*, i8** %19, align 8, !dbg !3672
  %21 = bitcast i8* %20 to %struct.zip*, !dbg !3673
  store %struct.zip* %21, %struct.zip** %10, align 8, !dbg !3674
  %22 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3675
  %23 = getelementptr inbounds %struct.zip, %struct.zip* %22, i32 0, i32 20, !dbg !3677
  %24 = load i8*, i8** %23, align 8, !dbg !3677
  %25 = icmp eq i8* %24, null, !dbg !3678
  br i1 %25, label %26, label %43, !dbg !3679

26:                                               ; preds = %4
  %27 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3680
  %28 = getelementptr inbounds %struct.zip, %struct.zip* %27, i32 0, i32 21, !dbg !3682
  store i64 262144, i64* %28, align 8, !dbg !3683
  %29 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3684
  %30 = getelementptr inbounds %struct.zip, %struct.zip* %29, i32 0, i32 21, !dbg !3685
  %31 = load i64, i64* %30, align 8, !dbg !3685
  %32 = call noalias i8* @malloc(i64 noundef %31) #8, !dbg !3686
  %33 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3687
  %34 = getelementptr inbounds %struct.zip, %struct.zip* %33, i32 0, i32 20, !dbg !3688
  store i8* %32, i8** %34, align 8, !dbg !3689
  %35 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3690
  %36 = getelementptr inbounds %struct.zip, %struct.zip* %35, i32 0, i32 20, !dbg !3692
  %37 = load i8*, i8** %36, align 8, !dbg !3692
  %38 = icmp eq i8* %37, null, !dbg !3693
  br i1 %38, label %39, label %42, !dbg !3694

39:                                               ; preds = %26
  %40 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !3695
  %41 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %40, i32 0, i32 0, !dbg !3697
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %41, i32 noundef 12, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0)), !dbg !3698
  store i32 -30, i32* %5, align 4, !dbg !3699
  br label %232, !dbg !3699

42:                                               ; preds = %26
  br label %43, !dbg !3700

43:                                               ; preds = %42, %4
  %44 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !3701
  %45 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3702
  %46 = call i32 @zip_deflate_init(%struct.archive_read* noundef %44, %struct.zip* noundef %45), !dbg !3703
  store i32 %46, i32* %13, align 4, !dbg !3704
  %47 = load i32, i32* %13, align 4, !dbg !3705
  %48 = icmp ne i32 %47, 0, !dbg !3707
  br i1 %48, label %49, label %51, !dbg !3708

49:                                               ; preds = %43
  %50 = load i32, i32* %13, align 4, !dbg !3709
  store i32 %50, i32* %5, align 4, !dbg !3710
  br label %232, !dbg !3710

51:                                               ; preds = %43
  %52 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !3711
  %53 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %52, i64 noundef 1, i64* noundef %11), !dbg !3712
  store i8* %53, i8** %12, align 8, !dbg !3713
  %54 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3714
  %55 = getelementptr inbounds %struct.zip, %struct.zip* %54, i32 0, i32 8, !dbg !3716
  %56 = load %struct.zip_entry*, %struct.zip_entry** %55, align 8, !dbg !3716
  %57 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %56, i32 0, i32 13, !dbg !3717
  %58 = load i16, i16* %57, align 2, !dbg !3717
  %59 = zext i16 %58 to i32, !dbg !3714
  %60 = and i32 %59, 8, !dbg !3718
  %61 = icmp eq i32 0, %60, !dbg !3719
  br i1 %61, label %62, label %72, !dbg !3720

62:                                               ; preds = %51
  %63 = load i64, i64* %11, align 8, !dbg !3721
  %64 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3722
  %65 = getelementptr inbounds %struct.zip, %struct.zip* %64, i32 0, i32 12, !dbg !3723
  %66 = load i64, i64* %65, align 8, !dbg !3723
  %67 = icmp sgt i64 %63, %66, !dbg !3724
  br i1 %67, label %68, label %72, !dbg !3725

68:                                               ; preds = %62
  %69 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3726
  %70 = getelementptr inbounds %struct.zip, %struct.zip* %69, i32 0, i32 12, !dbg !3728
  %71 = load i64, i64* %70, align 8, !dbg !3728
  store i64 %71, i64* %11, align 8, !dbg !3729
  br label %72, !dbg !3730

72:                                               ; preds = %68, %62, %51
  %73 = load i64, i64* %11, align 8, !dbg !3731
  %74 = icmp sle i64 %73, 0, !dbg !3733
  br i1 %74, label %75, label %78, !dbg !3734

75:                                               ; preds = %72
  %76 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !3735
  %77 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %76, i32 0, i32 0, !dbg !3737
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %77, i32 noundef 84, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0)), !dbg !3738
  store i32 -30, i32* %5, align 4, !dbg !3739
  br label %232, !dbg !3739

78:                                               ; preds = %72
  %79 = load i8*, i8** %12, align 8, !dbg !3740
  %80 = ptrtoint i8* %79 to i64, !dbg !3741
  %81 = inttoptr i64 %80 to i8*, !dbg !3742
  %82 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3743
  %83 = getelementptr inbounds %struct.zip, %struct.zip* %82, i32 0, i32 22, !dbg !3744
  %84 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %83, i32 0, i32 0, !dbg !3745
  store i8* %81, i8** %84, align 8, !dbg !3746
  %85 = load i64, i64* %11, align 8, !dbg !3747
  %86 = trunc i64 %85 to i32, !dbg !3748
  %87 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3749
  %88 = getelementptr inbounds %struct.zip, %struct.zip* %87, i32 0, i32 22, !dbg !3750
  %89 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %88, i32 0, i32 1, !dbg !3751
  store i32 %86, i32* %89, align 8, !dbg !3752
  %90 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3753
  %91 = getelementptr inbounds %struct.zip, %struct.zip* %90, i32 0, i32 22, !dbg !3754
  %92 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %91, i32 0, i32 2, !dbg !3755
  store i64 0, i64* %92, align 8, !dbg !3756
  %93 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3757
  %94 = getelementptr inbounds %struct.zip, %struct.zip* %93, i32 0, i32 20, !dbg !3758
  %95 = load i8*, i8** %94, align 8, !dbg !3758
  %96 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3759
  %97 = getelementptr inbounds %struct.zip, %struct.zip* %96, i32 0, i32 22, !dbg !3760
  %98 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %97, i32 0, i32 3, !dbg !3761
  store i8* %95, i8** %98, align 8, !dbg !3762
  %99 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3763
  %100 = getelementptr inbounds %struct.zip, %struct.zip* %99, i32 0, i32 21, !dbg !3764
  %101 = load i64, i64* %100, align 8, !dbg !3764
  %102 = trunc i64 %101 to i32, !dbg !3765
  %103 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3766
  %104 = getelementptr inbounds %struct.zip, %struct.zip* %103, i32 0, i32 22, !dbg !3767
  %105 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %104, i32 0, i32 4, !dbg !3768
  store i32 %102, i32* %105, align 8, !dbg !3769
  %106 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3770
  %107 = getelementptr inbounds %struct.zip, %struct.zip* %106, i32 0, i32 22, !dbg !3771
  %108 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %107, i32 0, i32 5, !dbg !3772
  store i64 0, i64* %108, align 8, !dbg !3773
  %109 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3774
  %110 = getelementptr inbounds %struct.zip, %struct.zip* %109, i32 0, i32 22, !dbg !3775
  %111 = call i32 @inflate(%struct.z_stream_s* noundef %110, i32 noundef 0), !dbg !3776
  store i32 %111, i32* %13, align 4, !dbg !3777
  %112 = load i32, i32* %13, align 4, !dbg !3778
  switch i32 %112, label %120 [
    i32 0, label %113
    i32 1, label %114
    i32 -4, label %117
  ], !dbg !3779

113:                                              ; preds = %78
  br label %124, !dbg !3780

114:                                              ; preds = %78
  %115 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3782
  %116 = getelementptr inbounds %struct.zip, %struct.zip* %115, i32 0, i32 17, !dbg !3783
  store i8 1, i8* %116, align 1, !dbg !3784
  br label %124, !dbg !3785

117:                                              ; preds = %78
  %118 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !3786
  %119 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %118, i32 0, i32 0, !dbg !3787
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %119, i32 noundef 12, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0)), !dbg !3788
  store i32 -30, i32* %5, align 4, !dbg !3789
  br label %232, !dbg !3789

120:                                              ; preds = %78
  %121 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !3790
  %122 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %121, i32 0, i32 0, !dbg !3791
  %123 = load i32, i32* %13, align 4, !dbg !3792
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %122, i32 noundef -1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i32 noundef %123), !dbg !3793
  store i32 -30, i32* %5, align 4, !dbg !3794
  br label %232, !dbg !3794

124:                                              ; preds = %114, %113
  %125 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3795
  %126 = getelementptr inbounds %struct.zip, %struct.zip* %125, i32 0, i32 22, !dbg !3796
  %127 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %126, i32 0, i32 2, !dbg !3797
  %128 = load i64, i64* %127, align 8, !dbg !3797
  store i64 %128, i64* %11, align 8, !dbg !3798
  %129 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !3799
  %130 = load i64, i64* %11, align 8, !dbg !3800
  %131 = call i64 @zip_read_consume(%struct.archive_read* noundef %129, i64 noundef %130), !dbg !3801
  %132 = load i64, i64* %11, align 8, !dbg !3802
  %133 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3803
  %134 = getelementptr inbounds %struct.zip, %struct.zip* %133, i32 0, i32 12, !dbg !3804
  %135 = load i64, i64* %134, align 8, !dbg !3805
  %136 = sub nsw i64 %135, %132, !dbg !3805
  store i64 %136, i64* %134, align 8, !dbg !3805
  %137 = load i64, i64* %11, align 8, !dbg !3806
  %138 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3807
  %139 = getelementptr inbounds %struct.zip, %struct.zip* %138, i32 0, i32 13, !dbg !3808
  %140 = load i64, i64* %139, align 8, !dbg !3809
  %141 = add nsw i64 %140, %137, !dbg !3809
  store i64 %141, i64* %139, align 8, !dbg !3809
  %142 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3810
  %143 = getelementptr inbounds %struct.zip, %struct.zip* %142, i32 0, i32 22, !dbg !3811
  %144 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %143, i32 0, i32 5, !dbg !3812
  %145 = load i64, i64* %144, align 8, !dbg !3812
  %146 = load i64*, i64** %8, align 8, !dbg !3813
  store i64 %145, i64* %146, align 8, !dbg !3814
  %147 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3815
  %148 = getelementptr inbounds %struct.zip, %struct.zip* %147, i32 0, i32 22, !dbg !3816
  %149 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %148, i32 0, i32 5, !dbg !3817
  %150 = load i64, i64* %149, align 8, !dbg !3817
  %151 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3818
  %152 = getelementptr inbounds %struct.zip, %struct.zip* %151, i32 0, i32 14, !dbg !3819
  %153 = load i64, i64* %152, align 8, !dbg !3820
  %154 = add i64 %153, %150, !dbg !3820
  store i64 %154, i64* %152, align 8, !dbg !3820
  %155 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3821
  %156 = getelementptr inbounds %struct.zip, %struct.zip* %155, i32 0, i32 20, !dbg !3822
  %157 = load i8*, i8** %156, align 8, !dbg !3822
  %158 = load i8**, i8*** %7, align 8, !dbg !3823
  store i8* %157, i8** %158, align 8, !dbg !3824
  %159 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3825
  %160 = getelementptr inbounds %struct.zip, %struct.zip* %159, i32 0, i32 17, !dbg !3827
  %161 = load i8, i8* %160, align 1, !dbg !3827
  %162 = sext i8 %161 to i32, !dbg !3825
  %163 = icmp ne i32 %162, 0, !dbg !3825
  br i1 %163, label %164, label %231, !dbg !3828

164:                                              ; preds = %124
  %165 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3829
  %166 = getelementptr inbounds %struct.zip, %struct.zip* %165, i32 0, i32 8, !dbg !3830
  %167 = load %struct.zip_entry*, %struct.zip_entry** %166, align 8, !dbg !3830
  %168 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %167, i32 0, i32 13, !dbg !3831
  %169 = load i16, i16* %168, align 2, !dbg !3831
  %170 = zext i16 %169 to i32, !dbg !3829
  %171 = and i32 %170, 8, !dbg !3832
  %172 = icmp ne i32 %171, 0, !dbg !3832
  br i1 %172, label %173, label %231, !dbg !3833

173:                                              ; preds = %164
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3834, metadata !DIExpression()), !dbg !3836
  %174 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !3837
  %175 = call i8* @__archive_read_ahead(%struct.archive_read* noundef %174, i64 noundef 16, i64* noundef null), !dbg !3839
  store i8* %175, i8** %14, align 8, !dbg !3840
  %176 = icmp eq i8* null, %175, !dbg !3841
  br i1 %176, label %177, label %180, !dbg !3842

177:                                              ; preds = %173
  %178 = load %struct.archive_read*, %struct.archive_read** %6, align 8, !dbg !3843
  %179 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %178, i32 0, i32 0, !dbg !3845
  call void (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* noundef %179, i32 noundef 84, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.51, i64 0, i64 0)), !dbg !3846
  store i32 -30, i32* %5, align 4, !dbg !3847
  br label %232, !dbg !3847

180:                                              ; preds = %173
  %181 = load i8*, i8** %14, align 8, !dbg !3848
  %182 = getelementptr inbounds i8, i8* %181, i64 0, !dbg !3848
  %183 = load i8, i8* %182, align 1, !dbg !3848
  %184 = sext i8 %183 to i32, !dbg !3848
  %185 = icmp eq i32 %184, 80, !dbg !3850
  br i1 %185, label %186, label %230, !dbg !3851

186:                                              ; preds = %180
  %187 = load i8*, i8** %14, align 8, !dbg !3852
  %188 = getelementptr inbounds i8, i8* %187, i64 1, !dbg !3852
  %189 = load i8, i8* %188, align 1, !dbg !3852
  %190 = sext i8 %189 to i32, !dbg !3852
  %191 = icmp eq i32 %190, 75, !dbg !3853
  br i1 %191, label %192, label %230, !dbg !3854

192:                                              ; preds = %186
  %193 = load i8*, i8** %14, align 8, !dbg !3855
  %194 = getelementptr inbounds i8, i8* %193, i64 2, !dbg !3855
  %195 = load i8, i8* %194, align 1, !dbg !3855
  %196 = sext i8 %195 to i32, !dbg !3855
  %197 = icmp eq i32 %196, 7, !dbg !3856
  br i1 %197, label %198, label %230, !dbg !3857

198:                                              ; preds = %192
  %199 = load i8*, i8** %14, align 8, !dbg !3858
  %200 = getelementptr inbounds i8, i8* %199, i64 3, !dbg !3858
  %201 = load i8, i8* %200, align 1, !dbg !3858
  %202 = sext i8 %201 to i32, !dbg !3858
  %203 = icmp eq i32 %202, 8, !dbg !3859
  br i1 %203, label %204, label %230, !dbg !3860

204:                                              ; preds = %198
  %205 = load i8*, i8** %14, align 8, !dbg !3861
  %206 = getelementptr inbounds i8, i8* %205, i64 4, !dbg !3863
  %207 = call i32 @archive_le32dec(i8* noundef %206), !dbg !3864
  %208 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3865
  %209 = getelementptr inbounds %struct.zip, %struct.zip* %208, i32 0, i32 8, !dbg !3866
  %210 = load %struct.zip_entry*, %struct.zip_entry** %209, align 8, !dbg !3866
  %211 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %210, i32 0, i32 11, !dbg !3867
  store i32 %207, i32* %211, align 8, !dbg !3868
  %212 = load i8*, i8** %14, align 8, !dbg !3869
  %213 = getelementptr inbounds i8, i8* %212, i64 8, !dbg !3870
  %214 = call i32 @archive_le32dec(i8* noundef %213), !dbg !3871
  %215 = zext i32 %214 to i64, !dbg !3871
  %216 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3872
  %217 = getelementptr inbounds %struct.zip, %struct.zip* %216, i32 0, i32 8, !dbg !3873
  %218 = load %struct.zip_entry*, %struct.zip_entry** %217, align 8, !dbg !3873
  %219 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %218, i32 0, i32 2, !dbg !3874
  store i64 %215, i64* %219, align 8, !dbg !3875
  %220 = load i8*, i8** %14, align 8, !dbg !3876
  %221 = getelementptr inbounds i8, i8* %220, i64 12, !dbg !3877
  %222 = call i32 @archive_le32dec(i8* noundef %221), !dbg !3878
  %223 = zext i32 %222 to i64, !dbg !3878
  %224 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3879
  %225 = getelementptr inbounds %struct.zip, %struct.zip* %224, i32 0, i32 8, !dbg !3880
  %226 = load %struct.zip_entry*, %struct.zip_entry** %225, align 8, !dbg !3880
  %227 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %226, i32 0, i32 3, !dbg !3881
  store i64 %223, i64* %227, align 8, !dbg !3882
  %228 = load %struct.zip*, %struct.zip** %10, align 8, !dbg !3883
  %229 = getelementptr inbounds %struct.zip, %struct.zip* %228, i32 0, i32 11, !dbg !3884
  store i64 16, i64* %229, align 8, !dbg !3885
  br label %230, !dbg !3886

230:                                              ; preds = %204, %198, %192, %186, %180
  br label %231, !dbg !3887

231:                                              ; preds = %230, %164, %124
  store i32 0, i32* %5, align 4, !dbg !3888
  br label %232, !dbg !3888

232:                                              ; preds = %231, %177, %120, %117, %75, %49, %39
  %233 = load i32, i32* %5, align 4, !dbg !3889
  ret i32 %233, !dbg !3889
}

declare i32 @inflateEnd(%struct.z_stream_s* noundef) #2

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
!437 = !DILocation(line: 158, column: 60, scope: !435)
!438 = !DILocalVariable(name: "a", scope: !435, file: !3, line: 160, type: !7)
!439 = !DILocation(line: 160, column: 23, scope: !435)
!440 = !DILocation(line: 160, column: 50, scope: !435)
!441 = !DILocation(line: 160, column: 27, scope: !435)
!442 = !DILocalVariable(name: "zip", scope: !435, file: !3, line: 161, type: !268)
!443 = !DILocation(line: 161, column: 14, scope: !435)
!444 = !DILocalVariable(name: "r", scope: !435, file: !3, line: 162, type: !6)
!445 = !DILocation(line: 162, column: 6, scope: !435)
!446 = !DILocation(line: 164, column: 2, scope: !435)
!447 = !DILocalVariable(name: "magic_test", scope: !448, file: !3, line: 164, type: !6)
!448 = distinct !DILexicalBlock(scope: !435, file: !3, line: 164, column: 2)
!449 = !DILocation(line: 164, column: 2, scope: !448)
!450 = !DILocation(line: 164, column: 2, scope: !451)
!451 = distinct !DILexicalBlock(scope: !448, file: !3, line: 164, column: 2)
!452 = !DILocation(line: 167, column: 22, scope: !435)
!453 = !DILocation(line: 167, column: 8, scope: !435)
!454 = !DILocation(line: 167, column: 6, scope: !435)
!455 = !DILocation(line: 168, column: 6, scope: !456)
!456 = distinct !DILexicalBlock(scope: !435, file: !3, line: 168, column: 6)
!457 = !DILocation(line: 168, column: 10, scope: !456)
!458 = !DILocation(line: 168, column: 6, scope: !435)
!459 = !DILocation(line: 169, column: 22, scope: !460)
!460 = distinct !DILexicalBlock(scope: !456, file: !3, line: 168, column: 19)
!461 = !DILocation(line: 169, column: 25, scope: !460)
!462 = !DILocation(line: 169, column: 3, scope: !460)
!463 = !DILocation(line: 171, column: 3, scope: !460)
!464 = !DILocation(line: 173, column: 9, scope: !435)
!465 = !DILocation(line: 173, column: 2, scope: !435)
!466 = !DILocation(line: 175, column: 37, scope: !435)
!467 = !DILocation(line: 176, column: 6, scope: !435)
!468 = !DILocation(line: 175, column: 6, scope: !435)
!469 = !DILocation(line: 175, column: 4, scope: !435)
!470 = !DILocation(line: 186, column: 6, scope: !471)
!471 = distinct !DILexicalBlock(scope: !435, file: !3, line: 186, column: 6)
!472 = !DILocation(line: 186, column: 8, scope: !471)
!473 = !DILocation(line: 186, column: 6, scope: !435)
!474 = !DILocation(line: 187, column: 8, scope: !471)
!475 = !DILocation(line: 187, column: 3, scope: !471)
!476 = !DILocation(line: 188, column: 2, scope: !435)
!477 = !DILocation(line: 189, column: 1, scope: !435)
!478 = distinct !DISubprogram(name: "archive_read_format_zip_streamable_bid", scope: !3, file: !3, line: 795, type: !237, scopeLine: 796, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!479 = !DILocalVariable(name: "a", arg: 1, scope: !478, file: !3, line: 795, type: !7)
!480 = !DILocation(line: 795, column: 61, scope: !478)
!481 = !DILocalVariable(name: "best_bid", arg: 2, scope: !478, file: !3, line: 795, type: !6)
!482 = !DILocation(line: 795, column: 68, scope: !478)
!483 = !DILocalVariable(name: "p", scope: !478, file: !3, line: 797, type: !83)
!484 = !DILocation(line: 797, column: 14, scope: !478)
!485 = !DILocation(line: 799, column: 8, scope: !478)
!486 = !DILocation(line: 801, column: 32, scope: !487)
!487 = distinct !DILexicalBlock(scope: !478, file: !3, line: 801, column: 6)
!488 = !DILocation(line: 801, column: 11, scope: !487)
!489 = !DILocation(line: 801, column: 9, scope: !487)
!490 = !DILocation(line: 801, column: 45, scope: !487)
!491 = !DILocation(line: 801, column: 6, scope: !478)
!492 = !DILocation(line: 802, column: 3, scope: !487)
!493 = !DILocation(line: 809, column: 6, scope: !494)
!494 = distinct !DILexicalBlock(scope: !478, file: !3, line: 809, column: 6)
!495 = !DILocation(line: 809, column: 11, scope: !494)
!496 = !DILocation(line: 809, column: 18, scope: !494)
!497 = !DILocation(line: 809, column: 21, scope: !494)
!498 = !DILocation(line: 809, column: 26, scope: !494)
!499 = !DILocation(line: 809, column: 6, scope: !478)
!500 = !DILocation(line: 810, column: 8, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 810, column: 7)
!502 = distinct !DILexicalBlock(scope: !494, file: !3, line: 809, column: 34)
!503 = !DILocation(line: 810, column: 13, scope: !501)
!504 = !DILocation(line: 810, column: 23, scope: !501)
!505 = !DILocation(line: 810, column: 26, scope: !501)
!506 = !DILocation(line: 810, column: 31, scope: !501)
!507 = !DILocation(line: 811, column: 7, scope: !501)
!508 = !DILocation(line: 811, column: 11, scope: !501)
!509 = !DILocation(line: 811, column: 16, scope: !501)
!510 = !DILocation(line: 811, column: 26, scope: !501)
!511 = !DILocation(line: 811, column: 29, scope: !501)
!512 = !DILocation(line: 811, column: 34, scope: !501)
!513 = !DILocation(line: 812, column: 7, scope: !501)
!514 = !DILocation(line: 812, column: 11, scope: !501)
!515 = !DILocation(line: 812, column: 16, scope: !501)
!516 = !DILocation(line: 812, column: 26, scope: !501)
!517 = !DILocation(line: 812, column: 29, scope: !501)
!518 = !DILocation(line: 812, column: 34, scope: !501)
!519 = !DILocation(line: 813, column: 7, scope: !501)
!520 = !DILocation(line: 813, column: 11, scope: !501)
!521 = !DILocation(line: 813, column: 16, scope: !501)
!522 = !DILocation(line: 813, column: 26, scope: !501)
!523 = !DILocation(line: 813, column: 29, scope: !501)
!524 = !DILocation(line: 813, column: 34, scope: !501)
!525 = !DILocation(line: 814, column: 7, scope: !501)
!526 = !DILocation(line: 814, column: 11, scope: !501)
!527 = !DILocation(line: 814, column: 16, scope: !501)
!528 = !DILocation(line: 814, column: 23, scope: !501)
!529 = !DILocation(line: 814, column: 26, scope: !501)
!530 = !DILocation(line: 814, column: 31, scope: !501)
!531 = !DILocation(line: 810, column: 7, scope: !502)
!532 = !DILocation(line: 815, column: 4, scope: !501)
!533 = !DILocation(line: 816, column: 2, scope: !502)
!534 = !DILocation(line: 823, column: 2, scope: !478)
!535 = !DILocation(line: 824, column: 1, scope: !478)
!536 = distinct !DISubprogram(name: "archive_read_format_zip_options", scope: !3, file: !3, line: 827, type: !241, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!537 = !DILocalVariable(name: "a", arg: 1, scope: !536, file: !3, line: 827, type: !7)
!538 = !DILocation(line: 827, column: 54, scope: !536)
!539 = !DILocalVariable(name: "key", arg: 2, scope: !536, file: !3, line: 828, type: !83)
!540 = !DILocation(line: 828, column: 17, scope: !536)
!541 = !DILocalVariable(name: "val", arg: 3, scope: !536, file: !3, line: 828, type: !83)
!542 = !DILocation(line: 828, column: 34, scope: !536)
!543 = !DILocalVariable(name: "zip", scope: !536, file: !3, line: 830, type: !268)
!544 = !DILocation(line: 830, column: 14, scope: !536)
!545 = !DILocalVariable(name: "ret", scope: !536, file: !3, line: 831, type: !6)
!546 = !DILocation(line: 831, column: 6, scope: !536)
!547 = !DILocation(line: 833, column: 23, scope: !536)
!548 = !DILocation(line: 833, column: 26, scope: !536)
!549 = !DILocation(line: 833, column: 34, scope: !536)
!550 = !DILocation(line: 833, column: 8, scope: !536)
!551 = !DILocation(line: 833, column: 6, scope: !536)
!552 = !DILocation(line: 834, column: 13, scope: !553)
!553 = distinct !DILexicalBlock(scope: !536, file: !3, line: 834, column: 6)
!554 = !DILocation(line: 834, column: 6, scope: !553)
!555 = !DILocation(line: 834, column: 32, scope: !553)
!556 = !DILocation(line: 834, column: 6, scope: !536)
!557 = !DILocation(line: 836, column: 35, scope: !558)
!558 = distinct !DILexicalBlock(scope: !553, file: !3, line: 834, column: 38)
!559 = !DILocation(line: 836, column: 39, scope: !558)
!560 = !DILocation(line: 836, column: 34, scope: !558)
!561 = !DILocation(line: 836, column: 3, scope: !558)
!562 = !DILocation(line: 836, column: 8, scope: !558)
!563 = !DILocation(line: 836, column: 32, scope: !558)
!564 = !DILocation(line: 837, column: 3, scope: !558)
!565 = !DILocation(line: 838, column: 20, scope: !566)
!566 = distinct !DILexicalBlock(scope: !553, file: !3, line: 838, column: 13)
!567 = !DILocation(line: 838, column: 13, scope: !566)
!568 = !DILocation(line: 838, column: 40, scope: !566)
!569 = !DILocation(line: 838, column: 13, scope: !553)
!570 = !DILocation(line: 839, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !3, line: 839, column: 7)
!572 = distinct !DILexicalBlock(scope: !566, file: !3, line: 838, column: 46)
!573 = !DILocation(line: 839, column: 11, scope: !571)
!574 = !DILocation(line: 839, column: 19, scope: !571)
!575 = !DILocation(line: 839, column: 22, scope: !571)
!576 = !DILocation(line: 839, column: 29, scope: !571)
!577 = !DILocation(line: 839, column: 7, scope: !572)
!578 = !DILocation(line: 840, column: 23, scope: !571)
!579 = !DILocation(line: 840, column: 26, scope: !571)
!580 = !DILocation(line: 840, column: 4, scope: !571)
!581 = !DILocation(line: 845, column: 9, scope: !582)
!582 = distinct !DILexicalBlock(scope: !571, file: !3, line: 843, column: 8)
!583 = !DILocation(line: 845, column: 12, scope: !582)
!584 = !DILocation(line: 845, column: 21, scope: !582)
!585 = !DILocation(line: 844, column: 17, scope: !582)
!586 = !DILocation(line: 844, column: 4, scope: !582)
!587 = !DILocation(line: 844, column: 9, scope: !582)
!588 = !DILocation(line: 844, column: 15, scope: !582)
!589 = !DILocation(line: 846, column: 8, scope: !590)
!590 = distinct !DILexicalBlock(scope: !582, file: !3, line: 846, column: 8)
!591 = !DILocation(line: 846, column: 13, scope: !590)
!592 = !DILocation(line: 846, column: 19, scope: !590)
!593 = !DILocation(line: 846, column: 8, scope: !582)
!594 = !DILocation(line: 847, column: 16, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !3, line: 847, column: 9)
!596 = distinct !DILexicalBlock(scope: !590, file: !3, line: 846, column: 28)
!597 = !DILocation(line: 847, column: 9, scope: !595)
!598 = !DILocation(line: 847, column: 30, scope: !595)
!599 = !DILocation(line: 847, column: 9, scope: !596)
!600 = !DILocation(line: 848, column: 24, scope: !595)
!601 = !DILocation(line: 848, column: 29, scope: !595)
!602 = !DILocation(line: 848, column: 6, scope: !595)
!603 = !DILocation(line: 848, column: 11, scope: !595)
!604 = !DILocation(line: 848, column: 22, scope: !595)
!605 = !DILocation(line: 849, column: 9, scope: !596)
!606 = !DILocation(line: 850, column: 4, scope: !596)
!607 = !DILocation(line: 851, column: 9, scope: !590)
!608 = !DILocation(line: 853, column: 11, scope: !572)
!609 = !DILocation(line: 853, column: 3, scope: !572)
!610 = !DILocation(line: 859, column: 2, scope: !536)
!611 = !DILocation(line: 860, column: 1, scope: !536)
!612 = distinct !DISubprogram(name: "archive_read_format_zip_streamable_read_header", scope: !3, file: !3, line: 863, type: !245, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!613 = !DILocalVariable(name: "a", arg: 1, scope: !612, file: !3, line: 863, type: !7)
!614 = !DILocation(line: 863, column: 69, scope: !612)
!615 = !DILocalVariable(name: "entry", arg: 2, scope: !612, file: !3, line: 864, type: !32)
!616 = !DILocation(line: 864, column: 27, scope: !612)
!617 = !DILocalVariable(name: "zip", scope: !612, file: !3, line: 866, type: !268)
!618 = !DILocation(line: 866, column: 14, scope: !612)
!619 = !DILocation(line: 868, column: 2, scope: !612)
!620 = !DILocation(line: 868, column: 5, scope: !612)
!621 = !DILocation(line: 868, column: 13, scope: !612)
!622 = !DILocation(line: 868, column: 28, scope: !612)
!623 = !DILocation(line: 869, column: 6, scope: !624)
!624 = distinct !DILexicalBlock(scope: !612, file: !3, line: 869, column: 6)
!625 = !DILocation(line: 869, column: 9, scope: !624)
!626 = !DILocation(line: 869, column: 17, scope: !624)
!627 = !DILocation(line: 869, column: 37, scope: !624)
!628 = !DILocation(line: 869, column: 6, scope: !612)
!629 = !DILocation(line: 870, column: 3, scope: !624)
!630 = !DILocation(line: 870, column: 6, scope: !624)
!631 = !DILocation(line: 870, column: 14, scope: !624)
!632 = !DILocation(line: 870, column: 34, scope: !624)
!633 = !DILocation(line: 872, column: 23, scope: !612)
!634 = !DILocation(line: 872, column: 26, scope: !612)
!635 = !DILocation(line: 872, column: 34, scope: !612)
!636 = !DILocation(line: 872, column: 8, scope: !612)
!637 = !DILocation(line: 872, column: 6, scope: !612)
!638 = !DILocation(line: 875, column: 6, scope: !639)
!639 = distinct !DILexicalBlock(scope: !612, file: !3, line: 875, column: 6)
!640 = !DILocation(line: 875, column: 11, scope: !639)
!641 = !DILocation(line: 875, column: 23, scope: !639)
!642 = !DILocation(line: 875, column: 6, scope: !612)
!643 = !DILocation(line: 876, column: 22, scope: !644)
!644 = distinct !DILexicalBlock(scope: !639, file: !3, line: 875, column: 32)
!645 = !DILocation(line: 876, column: 3, scope: !644)
!646 = !DILocation(line: 876, column: 8, scope: !644)
!647 = !DILocation(line: 876, column: 20, scope: !644)
!648 = !DILocation(line: 877, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !644, file: !3, line: 877, column: 7)
!650 = !DILocation(line: 877, column: 12, scope: !649)
!651 = !DILocation(line: 877, column: 24, scope: !649)
!652 = !DILocation(line: 877, column: 7, scope: !644)
!653 = !DILocation(line: 878, column: 23, scope: !654)
!654 = distinct !DILexicalBlock(scope: !649, file: !3, line: 877, column: 33)
!655 = !DILocation(line: 878, column: 26, scope: !654)
!656 = !DILocation(line: 878, column: 4, scope: !654)
!657 = !DILocation(line: 880, column: 4, scope: !654)
!658 = !DILocation(line: 882, column: 2, scope: !644)
!659 = !DILocation(line: 883, column: 15, scope: !612)
!660 = !DILocation(line: 883, column: 20, scope: !612)
!661 = !DILocation(line: 883, column: 2, scope: !612)
!662 = !DILocation(line: 883, column: 7, scope: !612)
!663 = !DILocation(line: 883, column: 13, scope: !612)
!664 = !DILocation(line: 884, column: 9, scope: !612)
!665 = !DILocation(line: 884, column: 14, scope: !612)
!666 = !DILocation(line: 884, column: 2, scope: !612)
!667 = !DILocation(line: 887, column: 19, scope: !612)
!668 = !DILocation(line: 887, column: 22, scope: !612)
!669 = !DILocation(line: 887, column: 27, scope: !612)
!670 = !DILocation(line: 887, column: 2, scope: !612)
!671 = !DILocation(line: 888, column: 2, scope: !612)
!672 = !DILocation(line: 888, column: 7, scope: !612)
!673 = !DILocation(line: 888, column: 18, scope: !612)
!674 = !DILocation(line: 889, column: 2, scope: !612)
!675 = !DILocalVariable(name: "skipped", scope: !676, file: !3, line: 890, type: !54)
!676 = distinct !DILexicalBlock(scope: !677, file: !3, line: 889, column: 11)
!677 = distinct !DILexicalBlock(scope: !678, file: !3, line: 889, column: 2)
!678 = distinct !DILexicalBlock(scope: !612, file: !3, line: 889, column: 2)
!679 = !DILocation(line: 890, column: 11, scope: !676)
!680 = !DILocalVariable(name: "p", scope: !676, file: !3, line: 891, type: !83)
!681 = !DILocation(line: 891, column: 15, scope: !676)
!682 = !DILocalVariable(name: "end", scope: !676, file: !3, line: 891, type: !83)
!683 = !DILocation(line: 891, column: 19, scope: !676)
!684 = !DILocalVariable(name: "bytes", scope: !676, file: !3, line: 892, type: !40)
!685 = !DILocation(line: 892, column: 11, scope: !676)
!686 = !DILocation(line: 894, column: 28, scope: !676)
!687 = !DILocation(line: 894, column: 7, scope: !676)
!688 = !DILocation(line: 894, column: 5, scope: !676)
!689 = !DILocation(line: 895, column: 7, scope: !690)
!690 = distinct !DILexicalBlock(scope: !676, file: !3, line: 895, column: 7)
!691 = !DILocation(line: 895, column: 9, scope: !690)
!692 = !DILocation(line: 895, column: 7, scope: !676)
!693 = !DILocation(line: 896, column: 4, scope: !690)
!694 = !DILocation(line: 897, column: 9, scope: !676)
!695 = !DILocation(line: 897, column: 13, scope: !676)
!696 = !DILocation(line: 897, column: 11, scope: !676)
!697 = !DILocation(line: 897, column: 7, scope: !676)
!698 = !DILocation(line: 899, column: 3, scope: !676)
!699 = !DILocation(line: 899, column: 10, scope: !676)
!700 = !DILocation(line: 899, column: 12, scope: !676)
!701 = !DILocation(line: 899, column: 19, scope: !676)
!702 = !DILocation(line: 899, column: 16, scope: !676)
!703 = !DILocation(line: 900, column: 8, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 900, column: 8)
!705 = distinct !DILexicalBlock(scope: !676, file: !3, line: 899, column: 24)
!706 = !DILocation(line: 900, column: 13, scope: !704)
!707 = !DILocation(line: 900, column: 20, scope: !704)
!708 = !DILocation(line: 900, column: 23, scope: !704)
!709 = !DILocation(line: 900, column: 28, scope: !704)
!710 = !DILocation(line: 900, column: 8, scope: !705)
!711 = !DILocation(line: 901, column: 9, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 901, column: 9)
!713 = distinct !DILexicalBlock(scope: !704, file: !3, line: 900, column: 36)
!714 = !DILocation(line: 901, column: 14, scope: !712)
!715 = !DILocation(line: 901, column: 24, scope: !712)
!716 = !DILocation(line: 901, column: 27, scope: !712)
!717 = !DILocation(line: 901, column: 32, scope: !712)
!718 = !DILocation(line: 901, column: 9, scope: !713)
!719 = !DILocation(line: 903, column: 6, scope: !712)
!720 = !DILocation(line: 905, column: 9, scope: !721)
!721 = distinct !DILexicalBlock(scope: !713, file: !3, line: 905, column: 9)
!722 = !DILocation(line: 905, column: 14, scope: !721)
!723 = !DILocation(line: 905, column: 24, scope: !721)
!724 = !DILocation(line: 905, column: 27, scope: !721)
!725 = !DILocation(line: 905, column: 32, scope: !721)
!726 = !DILocation(line: 905, column: 9, scope: !713)
!727 = !DILocation(line: 907, column: 23, scope: !728)
!728 = distinct !DILexicalBlock(scope: !721, file: !3, line: 905, column: 43)
!729 = !DILocation(line: 907, column: 26, scope: !728)
!730 = !DILocation(line: 907, column: 6, scope: !728)
!731 = !DILocation(line: 908, column: 40, scope: !728)
!732 = !DILocation(line: 909, column: 10, scope: !728)
!733 = !DILocation(line: 909, column: 17, scope: !728)
!734 = !DILocation(line: 908, column: 13, scope: !728)
!735 = !DILocation(line: 908, column: 6, scope: !728)
!736 = !DILocation(line: 912, column: 9, scope: !737)
!737 = distinct !DILexicalBlock(scope: !713, file: !3, line: 912, column: 9)
!738 = !DILocation(line: 912, column: 14, scope: !737)
!739 = !DILocation(line: 912, column: 24, scope: !737)
!740 = !DILocation(line: 912, column: 27, scope: !737)
!741 = !DILocation(line: 912, column: 32, scope: !737)
!742 = !DILocation(line: 912, column: 9, scope: !713)
!743 = !DILocation(line: 914, column: 6, scope: !737)
!744 = !DILocation(line: 915, column: 4, scope: !713)
!745 = !DILocation(line: 916, column: 4, scope: !705)
!746 = !DILocation(line: 917, column: 4, scope: !705)
!747 = distinct !{!747, !698, !748, !749}
!748 = !DILocation(line: 918, column: 3, scope: !676)
!749 = !{!"llvm.loop.mustprogress"}
!750 = !DILocation(line: 919, column: 20, scope: !676)
!751 = !DILocation(line: 919, column: 23, scope: !676)
!752 = !DILocation(line: 919, column: 3, scope: !676)
!753 = !DILocation(line: 889, column: 2, scope: !677)
!754 = distinct !{!754, !755, !756}
!755 = !DILocation(line: 889, column: 2, scope: !678)
!756 = !DILocation(line: 920, column: 2, scope: !678)
!757 = !DILocation(line: 921, column: 1, scope: !612)
!758 = distinct !DISubprogram(name: "archive_read_format_zip_read_data", scope: !3, file: !3, line: 1175, type: !249, scopeLine: 1177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!759 = !DILocalVariable(name: "a", arg: 1, scope: !758, file: !3, line: 1175, type: !7)
!760 = !DILocation(line: 1175, column: 56, scope: !758)
!761 = !DILocalVariable(name: "buff", arg: 2, scope: !758, file: !3, line: 1176, type: !67)
!762 = !DILocation(line: 1176, column: 18, scope: !758)
!763 = !DILocalVariable(name: "size", arg: 3, scope: !758, file: !3, line: 1176, type: !68)
!764 = !DILocation(line: 1176, column: 32, scope: !758)
!765 = !DILocalVariable(name: "offset", arg: 4, scope: !758, file: !3, line: 1176, type: !69)
!766 = !DILocation(line: 1176, column: 47, scope: !758)
!767 = !DILocalVariable(name: "r", scope: !758, file: !3, line: 1178, type: !6)
!768 = !DILocation(line: 1178, column: 6, scope: !758)
!769 = !DILocalVariable(name: "zip", scope: !758, file: !3, line: 1179, type: !268)
!770 = !DILocation(line: 1179, column: 14, scope: !758)
!771 = !DILocation(line: 1179, column: 35, scope: !758)
!772 = !DILocation(line: 1179, column: 38, scope: !758)
!773 = !DILocation(line: 1179, column: 46, scope: !758)
!774 = !DILocation(line: 1179, column: 20, scope: !758)
!775 = !DILocation(line: 1181, column: 12, scope: !758)
!776 = !DILocation(line: 1181, column: 17, scope: !758)
!777 = !DILocation(line: 1181, column: 3, scope: !758)
!778 = !DILocation(line: 1181, column: 10, scope: !758)
!779 = !DILocation(line: 1182, column: 3, scope: !758)
!780 = !DILocation(line: 1182, column: 8, scope: !758)
!781 = !DILocation(line: 1183, column: 3, scope: !758)
!782 = !DILocation(line: 1183, column: 8, scope: !758)
!783 = !DILocation(line: 1186, column: 6, scope: !784)
!784 = distinct !DILexicalBlock(scope: !758, file: !3, line: 1186, column: 6)
!785 = !DILocation(line: 1186, column: 11, scope: !784)
!786 = !DILocation(line: 1186, column: 6, scope: !758)
!787 = !DILocation(line: 1187, column: 3, scope: !784)
!788 = !DILocation(line: 1190, column: 19, scope: !789)
!789 = distinct !DILexicalBlock(scope: !758, file: !3, line: 1190, column: 6)
!790 = !DILocation(line: 1190, column: 24, scope: !789)
!791 = !DILocation(line: 1190, column: 31, scope: !789)
!792 = !DILocation(line: 1190, column: 36, scope: !789)
!793 = !DILocation(line: 1190, column: 15, scope: !789)
!794 = !DILocation(line: 1190, column: 6, scope: !758)
!795 = !DILocation(line: 1191, column: 3, scope: !789)
!796 = !DILocation(line: 1193, column: 6, scope: !797)
!797 = distinct !DILexicalBlock(scope: !758, file: !3, line: 1193, column: 6)
!798 = !DILocation(line: 1193, column: 11, scope: !797)
!799 = !DILocation(line: 1193, column: 18, scope: !797)
!800 = !DILocation(line: 1193, column: 24, scope: !797)
!801 = !DILocation(line: 1193, column: 6, scope: !758)
!802 = !DILocation(line: 1194, column: 22, scope: !803)
!803 = distinct !DILexicalBlock(scope: !797, file: !3, line: 1193, column: 66)
!804 = !DILocation(line: 1194, column: 25, scope: !803)
!805 = !DILocation(line: 1194, column: 3, scope: !803)
!806 = !DILocation(line: 1196, column: 3, scope: !803)
!807 = !DILocation(line: 1199, column: 19, scope: !758)
!808 = !DILocation(line: 1199, column: 22, scope: !758)
!809 = !DILocation(line: 1199, column: 27, scope: !758)
!810 = !DILocation(line: 1199, column: 2, scope: !758)
!811 = !DILocation(line: 1200, column: 2, scope: !758)
!812 = !DILocation(line: 1200, column: 7, scope: !758)
!813 = !DILocation(line: 1200, column: 18, scope: !758)
!814 = !DILocation(line: 1202, column: 9, scope: !758)
!815 = !DILocation(line: 1202, column: 14, scope: !758)
!816 = !DILocation(line: 1202, column: 21, scope: !758)
!817 = !DILocation(line: 1202, column: 2, scope: !758)
!818 = !DILocation(line: 1204, column: 27, scope: !819)
!819 = distinct !DILexicalBlock(scope: !758, file: !3, line: 1202, column: 34)
!820 = !DILocation(line: 1204, column: 30, scope: !819)
!821 = !DILocation(line: 1204, column: 36, scope: !819)
!822 = !DILocation(line: 1204, column: 42, scope: !819)
!823 = !DILocation(line: 1204, column: 8, scope: !819)
!824 = !DILocation(line: 1204, column: 5, scope: !819)
!825 = !DILocation(line: 1205, column: 3, scope: !819)
!826 = !DILocation(line: 1208, column: 30, scope: !819)
!827 = !DILocation(line: 1208, column: 33, scope: !819)
!828 = !DILocation(line: 1208, column: 39, scope: !819)
!829 = !DILocation(line: 1208, column: 45, scope: !819)
!830 = !DILocation(line: 1208, column: 8, scope: !819)
!831 = !DILocation(line: 1208, column: 5, scope: !819)
!832 = !DILocation(line: 1209, column: 3, scope: !819)
!833 = !DILocation(line: 1213, column: 22, scope: !819)
!834 = !DILocation(line: 1213, column: 25, scope: !819)
!835 = !DILocation(line: 1215, column: 24, scope: !819)
!836 = !DILocation(line: 1215, column: 29, scope: !819)
!837 = !DILocation(line: 1215, column: 36, scope: !819)
!838 = !DILocation(line: 1215, column: 7, scope: !819)
!839 = !DILocation(line: 1213, column: 3, scope: !819)
!840 = !DILocation(line: 1218, column: 3, scope: !819)
!841 = !DILocation(line: 1221, column: 6, scope: !842)
!842 = distinct !DILexicalBlock(scope: !758, file: !3, line: 1221, column: 6)
!843 = !DILocation(line: 1221, column: 8, scope: !842)
!844 = !DILocation(line: 1221, column: 6, scope: !758)
!845 = !DILocation(line: 1222, column: 11, scope: !842)
!846 = !DILocation(line: 1222, column: 3, scope: !842)
!847 = !DILocation(line: 1224, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !758, file: !3, line: 1224, column: 6)
!849 = !DILocation(line: 1224, column: 6, scope: !848)
!850 = !DILocation(line: 1224, column: 6, scope: !758)
!851 = !DILocation(line: 1225, column: 28, scope: !848)
!852 = !DILocation(line: 1225, column: 33, scope: !848)
!853 = !DILocation(line: 1225, column: 47, scope: !848)
!854 = !DILocation(line: 1225, column: 46, scope: !848)
!855 = !DILocation(line: 1226, column: 18, scope: !848)
!856 = !DILocation(line: 1226, column: 17, scope: !848)
!857 = !DILocation(line: 1226, column: 7, scope: !848)
!858 = !DILocation(line: 1225, column: 22, scope: !848)
!859 = !DILocation(line: 1225, column: 3, scope: !848)
!860 = !DILocation(line: 1225, column: 8, scope: !848)
!861 = !DILocation(line: 1225, column: 20, scope: !848)
!862 = !DILocation(line: 1228, column: 6, scope: !863)
!863 = distinct !DILexicalBlock(scope: !758, file: !3, line: 1228, column: 6)
!864 = !DILocation(line: 1228, column: 11, scope: !863)
!865 = !DILocation(line: 1228, column: 6, scope: !758)
!866 = !DILocation(line: 1230, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1230, column: 7)
!868 = distinct !DILexicalBlock(scope: !863, file: !3, line: 1228, column: 25)
!869 = !DILocation(line: 1230, column: 12, scope: !867)
!870 = !DILocation(line: 1230, column: 19, scope: !867)
!871 = !DILocation(line: 1231, column: 7, scope: !867)
!872 = !DILocation(line: 1231, column: 12, scope: !867)
!873 = !DILocation(line: 1230, column: 35, scope: !867)
!874 = !DILocation(line: 1230, column: 7, scope: !868)
!875 = !DILocation(line: 1232, column: 23, scope: !876)
!876 = distinct !DILexicalBlock(scope: !867, file: !3, line: 1231, column: 41)
!877 = !DILocation(line: 1232, column: 26, scope: !876)
!878 = !DILocation(line: 1235, column: 18, scope: !876)
!879 = !DILocation(line: 1235, column: 23, scope: !876)
!880 = !DILocation(line: 1236, column: 18, scope: !876)
!881 = !DILocation(line: 1236, column: 23, scope: !876)
!882 = !DILocation(line: 1236, column: 30, scope: !876)
!883 = !DILocation(line: 1232, column: 4, scope: !876)
!884 = !DILocation(line: 1237, column: 4, scope: !876)
!885 = !DILocation(line: 1241, column: 8, scope: !886)
!886 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1241, column: 7)
!887 = !DILocation(line: 1241, column: 13, scope: !886)
!888 = !DILocation(line: 1241, column: 20, scope: !886)
!889 = !DILocation(line: 1241, column: 38, scope: !886)
!890 = !DILocation(line: 1242, column: 11, scope: !886)
!891 = !DILocation(line: 1242, column: 16, scope: !886)
!892 = !DILocation(line: 1242, column: 46, scope: !886)
!893 = !DILocation(line: 1242, column: 7, scope: !886)
!894 = !DILocation(line: 1241, column: 7, scope: !868)
!895 = !DILocation(line: 1243, column: 23, scope: !896)
!896 = distinct !DILexicalBlock(scope: !886, file: !3, line: 1242, column: 61)
!897 = !DILocation(line: 1243, column: 26, scope: !896)
!898 = !DILocation(line: 1246, column: 18, scope: !896)
!899 = !DILocation(line: 1246, column: 23, scope: !896)
!900 = !DILocation(line: 1247, column: 18, scope: !896)
!901 = !DILocation(line: 1247, column: 23, scope: !896)
!902 = !DILocation(line: 1247, column: 30, scope: !896)
!903 = !DILocation(line: 1243, column: 4, scope: !896)
!904 = !DILocation(line: 1248, column: 4, scope: !896)
!905 = !DILocation(line: 1251, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1251, column: 7)
!907 = !DILocation(line: 1251, column: 12, scope: !906)
!908 = !DILocation(line: 1251, column: 19, scope: !906)
!909 = !DILocation(line: 1251, column: 28, scope: !906)
!910 = !DILocation(line: 1251, column: 33, scope: !906)
!911 = !DILocation(line: 1251, column: 25, scope: !906)
!912 = !DILocation(line: 1251, column: 7, scope: !868)
!913 = !DILocation(line: 1252, column: 23, scope: !914)
!914 = distinct !DILexicalBlock(scope: !906, file: !3, line: 1251, column: 46)
!915 = !DILocation(line: 1252, column: 26, scope: !914)
!916 = !DILocation(line: 1254, column: 23, scope: !914)
!917 = !DILocation(line: 1254, column: 28, scope: !914)
!918 = !DILocation(line: 1255, column: 23, scope: !914)
!919 = !DILocation(line: 1255, column: 28, scope: !914)
!920 = !DILocation(line: 1255, column: 35, scope: !914)
!921 = !DILocation(line: 1255, column: 8, scope: !914)
!922 = !DILocation(line: 1252, column: 4, scope: !914)
!923 = !DILocation(line: 1256, column: 4, scope: !914)
!924 = !DILocation(line: 1258, column: 2, scope: !868)
!925 = !DILocation(line: 1260, column: 2, scope: !758)
!926 = !DILocation(line: 1261, column: 1, scope: !758)
!927 = distinct !DISubprogram(name: "archive_read_format_zip_read_data_skip", scope: !3, file: !3, line: 1507, type: !253, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!928 = !DILocalVariable(name: "a", arg: 1, scope: !927, file: !3, line: 1507, type: !7)
!929 = !DILocation(line: 1507, column: 61, scope: !927)
!930 = !DILocalVariable(name: "zip", scope: !927, file: !3, line: 1509, type: !268)
!931 = !DILocation(line: 1509, column: 14, scope: !927)
!932 = !DILocation(line: 1511, column: 23, scope: !927)
!933 = !DILocation(line: 1511, column: 26, scope: !927)
!934 = !DILocation(line: 1511, column: 34, scope: !927)
!935 = !DILocation(line: 1511, column: 8, scope: !927)
!936 = !DILocation(line: 1511, column: 6, scope: !927)
!937 = !DILocation(line: 1514, column: 6, scope: !938)
!938 = distinct !DILexicalBlock(scope: !927, file: !3, line: 1514, column: 6)
!939 = !DILocation(line: 1514, column: 11, scope: !938)
!940 = !DILocation(line: 1514, column: 6, scope: !927)
!941 = !DILocation(line: 1515, column: 3, scope: !938)
!942 = !DILocation(line: 1518, column: 12, scope: !943)
!943 = distinct !DILexicalBlock(scope: !927, file: !3, line: 1518, column: 6)
!944 = !DILocation(line: 1518, column: 17, scope: !943)
!945 = !DILocation(line: 1518, column: 24, scope: !943)
!946 = !DILocation(line: 1518, column: 30, scope: !943)
!947 = !DILocation(line: 1518, column: 8, scope: !943)
!948 = !DILocation(line: 1518, column: 6, scope: !927)
!949 = !DILocalVariable(name: "bytes_skipped", scope: !950, file: !3, line: 1520, type: !54)
!950 = distinct !DILexicalBlock(scope: !943, file: !3, line: 1518, column: 52)
!951 = !DILocation(line: 1520, column: 11, scope: !950)
!952 = !DILocation(line: 1520, column: 44, scope: !950)
!953 = !DILocation(line: 1521, column: 7, scope: !950)
!954 = !DILocation(line: 1521, column: 12, scope: !950)
!955 = !DILocation(line: 1521, column: 36, scope: !950)
!956 = !DILocation(line: 1521, column: 41, scope: !950)
!957 = !DILocation(line: 1521, column: 34, scope: !950)
!958 = !DILocation(line: 1520, column: 27, scope: !950)
!959 = !DILocation(line: 1522, column: 7, scope: !960)
!960 = distinct !DILexicalBlock(scope: !950, file: !3, line: 1522, column: 7)
!961 = !DILocation(line: 1522, column: 21, scope: !960)
!962 = !DILocation(line: 1522, column: 7, scope: !950)
!963 = !DILocation(line: 1523, column: 4, scope: !960)
!964 = !DILocation(line: 1524, column: 3, scope: !950)
!965 = !DILocation(line: 1524, column: 8, scope: !950)
!966 = !DILocation(line: 1524, column: 19, scope: !950)
!967 = !DILocation(line: 1525, column: 3, scope: !950)
!968 = !DILocation(line: 1531, column: 10, scope: !927)
!969 = !DILocation(line: 1531, column: 15, scope: !927)
!970 = !DILocation(line: 1531, column: 22, scope: !927)
!971 = !DILocation(line: 1531, column: 2, scope: !927)
!972 = !DILocation(line: 1534, column: 3, scope: !973)
!973 = distinct !DILexicalBlock(scope: !927, file: !3, line: 1531, column: 35)
!974 = !DILocation(line: 1534, column: 11, scope: !973)
!975 = !DILocation(line: 1534, column: 16, scope: !973)
!976 = !DILocation(line: 1534, column: 10, scope: !973)
!977 = !DILocalVariable(name: "offset", scope: !978, file: !3, line: 1535, type: !54)
!978 = distinct !DILexicalBlock(scope: !973, file: !3, line: 1534, column: 30)
!979 = !DILocation(line: 1535, column: 12, scope: !978)
!980 = !DILocalVariable(name: "buff", scope: !978, file: !3, line: 1536, type: !45)
!981 = !DILocation(line: 1536, column: 16, scope: !978)
!982 = !DILocalVariable(name: "size", scope: !978, file: !3, line: 1537, type: !47)
!983 = !DILocation(line: 1537, column: 11, scope: !978)
!984 = !DILocalVariable(name: "r", scope: !978, file: !3, line: 1538, type: !6)
!985 = !DILocation(line: 1538, column: 8, scope: !978)
!986 = !DILocation(line: 1539, column: 31, scope: !978)
!987 = !DILocation(line: 1539, column: 9, scope: !978)
!988 = !DILocation(line: 1539, column: 6, scope: !978)
!989 = !DILocation(line: 1540, column: 8, scope: !990)
!990 = distinct !DILexicalBlock(scope: !978, file: !3, line: 1540, column: 8)
!991 = !DILocation(line: 1540, column: 10, scope: !990)
!992 = !DILocation(line: 1540, column: 8, scope: !978)
!993 = !DILocation(line: 1541, column: 13, scope: !990)
!994 = !DILocation(line: 1541, column: 5, scope: !990)
!995 = distinct !{!995, !972, !996, !749}
!996 = !DILocation(line: 1542, column: 3, scope: !973)
!997 = !DILocation(line: 1543, column: 3, scope: !973)
!998 = !DILocation(line: 1547, column: 20, scope: !973)
!999 = !DILocation(line: 1547, column: 23, scope: !973)
!1000 = !DILocation(line: 1547, column: 28, scope: !973)
!1001 = !DILocation(line: 1547, column: 3, scope: !973)
!1002 = !DILocation(line: 1548, column: 3, scope: !973)
!1003 = !DILocation(line: 1548, column: 8, scope: !973)
!1004 = !DILocation(line: 1548, column: 19, scope: !973)
!1005 = !DILocation(line: 1549, column: 3, scope: !973)
!1006 = !DILocalVariable(name: "p", scope: !1007, file: !3, line: 1550, type: !83)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1549, column: 12)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 1549, column: 3)
!1009 = distinct !DILexicalBlock(scope: !973, file: !3, line: 1549, column: 3)
!1010 = !DILocation(line: 1550, column: 16, scope: !1007)
!1011 = !DILocalVariable(name: "buff", scope: !1007, file: !3, line: 1550, type: !83)
!1012 = !DILocation(line: 1550, column: 20, scope: !1007)
!1013 = !DILocalVariable(name: "bytes_avail", scope: !1007, file: !3, line: 1551, type: !40)
!1014 = !DILocation(line: 1551, column: 12, scope: !1007)
!1015 = !DILocation(line: 1552, column: 32, scope: !1007)
!1016 = !DILocation(line: 1552, column: 11, scope: !1007)
!1017 = !DILocation(line: 1552, column: 9, scope: !1007)
!1018 = !DILocation(line: 1553, column: 8, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 1553, column: 8)
!1020 = !DILocation(line: 1553, column: 20, scope: !1019)
!1021 = !DILocation(line: 1553, column: 8, scope: !1007)
!1022 = !DILocation(line: 1554, column: 24, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 1553, column: 26)
!1024 = !DILocation(line: 1554, column: 27, scope: !1023)
!1025 = !DILocation(line: 1554, column: 5, scope: !1023)
!1026 = !DILocation(line: 1557, column: 5, scope: !1023)
!1027 = !DILocation(line: 1559, column: 8, scope: !1007)
!1028 = !DILocation(line: 1559, column: 6, scope: !1007)
!1029 = !DILocation(line: 1560, column: 4, scope: !1007)
!1030 = !DILocation(line: 1560, column: 11, scope: !1007)
!1031 = !DILocation(line: 1560, column: 16, scope: !1007)
!1032 = !DILocation(line: 1560, column: 23, scope: !1007)
!1033 = !DILocation(line: 1560, column: 21, scope: !1007)
!1034 = !DILocation(line: 1560, column: 35, scope: !1007)
!1035 = !DILocation(line: 1560, column: 13, scope: !1007)
!1036 = !DILocation(line: 1561, column: 9, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 1561, column: 9)
!1038 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 1560, column: 41)
!1039 = !DILocation(line: 1561, column: 14, scope: !1037)
!1040 = !DILocation(line: 1561, column: 9, scope: !1038)
!1041 = !DILocation(line: 1561, column: 26, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 1561, column: 22)
!1043 = !DILocation(line: 1561, column: 32, scope: !1042)
!1044 = !DILocation(line: 1562, column: 14, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 1562, column: 14)
!1046 = !DILocation(line: 1562, column: 19, scope: !1045)
!1047 = !DILocation(line: 1562, column: 14, scope: !1037)
!1048 = !DILocation(line: 1562, column: 31, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 1562, column: 27)
!1050 = !DILocation(line: 1562, column: 37, scope: !1049)
!1051 = !DILocation(line: 1563, column: 14, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 1563, column: 14)
!1053 = !DILocation(line: 1563, column: 19, scope: !1052)
!1054 = !DILocation(line: 1563, column: 14, scope: !1045)
!1055 = !DILocation(line: 1563, column: 34, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 1563, column: 30)
!1057 = !DILocation(line: 1563, column: 40, scope: !1056)
!1058 = !DILocation(line: 1564, column: 14, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 1564, column: 14)
!1060 = !DILocation(line: 1564, column: 19, scope: !1059)
!1061 = !DILocation(line: 1564, column: 29, scope: !1059)
!1062 = !DILocation(line: 1564, column: 32, scope: !1059)
!1063 = !DILocation(line: 1564, column: 37, scope: !1059)
!1064 = !DILocation(line: 1565, column: 9, scope: !1059)
!1065 = !DILocation(line: 1565, column: 12, scope: !1059)
!1066 = !DILocation(line: 1565, column: 17, scope: !1059)
!1067 = !DILocation(line: 1565, column: 24, scope: !1059)
!1068 = !DILocation(line: 1565, column: 27, scope: !1059)
!1069 = !DILocation(line: 1565, column: 32, scope: !1059)
!1070 = !DILocation(line: 1564, column: 14, scope: !1052)
!1071 = !DILocation(line: 1566, column: 23, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 1565, column: 40)
!1073 = !DILocation(line: 1566, column: 26, scope: !1072)
!1074 = !DILocation(line: 1566, column: 30, scope: !1072)
!1075 = !DILocation(line: 1566, column: 28, scope: !1072)
!1076 = !DILocation(line: 1566, column: 35, scope: !1072)
!1077 = !DILocation(line: 1566, column: 6, scope: !1072)
!1078 = !DILocation(line: 1567, column: 6, scope: !1072)
!1079 = !DILocation(line: 1568, column: 16, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 1568, column: 12)
!1081 = distinct !{!1081, !1029, !1082, !749}
!1082 = !DILocation(line: 1569, column: 4, scope: !1007)
!1083 = !DILocation(line: 1570, column: 21, scope: !1007)
!1084 = !DILocation(line: 1570, column: 24, scope: !1007)
!1085 = !DILocation(line: 1570, column: 28, scope: !1007)
!1086 = !DILocation(line: 1570, column: 26, scope: !1007)
!1087 = !DILocation(line: 1570, column: 4, scope: !1007)
!1088 = !DILocation(line: 1549, column: 3, scope: !1008)
!1089 = distinct !{!1089, !1090, !1091}
!1090 = !DILocation(line: 1549, column: 3, scope: !1009)
!1091 = !DILocation(line: 1571, column: 3, scope: !1009)
!1092 = !DILocation(line: 1573, column: 1, scope: !927)
!1093 = distinct !DISubprogram(name: "archive_read_format_zip_cleanup", scope: !3, file: !3, line: 1576, type: !253, scopeLine: 1577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1094 = !DILocalVariable(name: "a", arg: 1, scope: !1093, file: !3, line: 1576, type: !7)
!1095 = !DILocation(line: 1576, column: 54, scope: !1093)
!1096 = !DILocalVariable(name: "zip", scope: !1093, file: !3, line: 1578, type: !268)
!1097 = !DILocation(line: 1578, column: 14, scope: !1093)
!1098 = !DILocation(line: 1580, column: 23, scope: !1093)
!1099 = !DILocation(line: 1580, column: 26, scope: !1093)
!1100 = !DILocation(line: 1580, column: 34, scope: !1093)
!1101 = !DILocation(line: 1580, column: 8, scope: !1093)
!1102 = !DILocation(line: 1580, column: 6, scope: !1093)
!1103 = !DILocation(line: 1582, column: 6, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 1582, column: 6)
!1105 = !DILocation(line: 1582, column: 11, scope: !1104)
!1106 = !DILocation(line: 1582, column: 6, scope: !1093)
!1107 = !DILocation(line: 1583, column: 15, scope: !1104)
!1108 = !DILocation(line: 1583, column: 20, scope: !1104)
!1109 = !DILocation(line: 1583, column: 3, scope: !1104)
!1110 = !DILocation(line: 1585, column: 6, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 1585, column: 6)
!1112 = !DILocation(line: 1585, column: 11, scope: !1111)
!1113 = !DILocation(line: 1585, column: 23, scope: !1111)
!1114 = !DILocation(line: 1585, column: 26, scope: !1111)
!1115 = !DILocation(line: 1585, column: 31, scope: !1111)
!1116 = !DILocation(line: 1585, column: 6, scope: !1093)
!1117 = !DILocalVariable(name: "i", scope: !1118, file: !3, line: 1586, type: !16)
!1118 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 1585, column: 58)
!1119 = !DILocation(line: 1586, column: 12, scope: !1118)
!1120 = !DILocation(line: 1587, column: 10, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 1587, column: 3)
!1122 = !DILocation(line: 1587, column: 8, scope: !1121)
!1123 = !DILocation(line: 1587, column: 15, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 1587, column: 3)
!1125 = !DILocation(line: 1587, column: 19, scope: !1124)
!1126 = !DILocation(line: 1587, column: 24, scope: !1124)
!1127 = !DILocation(line: 1587, column: 17, scope: !1124)
!1128 = !DILocation(line: 1587, column: 3, scope: !1121)
!1129 = !DILocation(line: 1588, column: 26, scope: !1124)
!1130 = !DILocation(line: 1588, column: 31, scope: !1124)
!1131 = !DILocation(line: 1588, column: 43, scope: !1124)
!1132 = !DILocation(line: 1588, column: 46, scope: !1124)
!1133 = !DILocation(line: 1588, column: 4, scope: !1124)
!1134 = !DILocation(line: 1587, column: 52, scope: !1124)
!1135 = !DILocation(line: 1587, column: 3, scope: !1124)
!1136 = distinct !{!1136, !1128, !1137, !749}
!1137 = !DILocation(line: 1588, column: 55, scope: !1121)
!1138 = !DILocation(line: 1589, column: 2, scope: !1118)
!1139 = !DILocation(line: 1590, column: 7, scope: !1093)
!1140 = !DILocation(line: 1590, column: 12, scope: !1093)
!1141 = !DILocation(line: 1590, column: 2, scope: !1093)
!1142 = !DILocation(line: 1591, column: 7, scope: !1093)
!1143 = !DILocation(line: 1591, column: 12, scope: !1093)
!1144 = !DILocation(line: 1591, column: 2, scope: !1093)
!1145 = !DILocation(line: 1592, column: 24, scope: !1093)
!1146 = !DILocation(line: 1592, column: 29, scope: !1093)
!1147 = !DILocation(line: 1592, column: 2, scope: !1093)
!1148 = !DILocation(line: 1593, column: 7, scope: !1093)
!1149 = !DILocation(line: 1593, column: 2, scope: !1093)
!1150 = !DILocation(line: 1594, column: 3, scope: !1093)
!1151 = !DILocation(line: 1594, column: 6, scope: !1093)
!1152 = !DILocation(line: 1594, column: 14, scope: !1093)
!1153 = !DILocation(line: 1594, column: 20, scope: !1093)
!1154 = !DILocation(line: 1595, column: 2, scope: !1093)
!1155 = distinct !DISubprogram(name: "archive_read_support_format_zip_seekable", scope: !3, file: !3, line: 192, type: !24, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1156 = !DILocalVariable(name: "_a", arg: 1, scope: !1155, file: !3, line: 192, type: !26)
!1157 = !DILocation(line: 192, column: 58, scope: !1155)
!1158 = !DILocalVariable(name: "a", scope: !1155, file: !3, line: 194, type: !7)
!1159 = !DILocation(line: 194, column: 23, scope: !1155)
!1160 = !DILocation(line: 194, column: 50, scope: !1155)
!1161 = !DILocation(line: 194, column: 27, scope: !1155)
!1162 = !DILocalVariable(name: "zip", scope: !1155, file: !3, line: 195, type: !268)
!1163 = !DILocation(line: 195, column: 14, scope: !1155)
!1164 = !DILocalVariable(name: "r", scope: !1155, file: !3, line: 196, type: !6)
!1165 = !DILocation(line: 196, column: 6, scope: !1155)
!1166 = !DILocation(line: 198, column: 2, scope: !1155)
!1167 = !DILocalVariable(name: "magic_test", scope: !1168, file: !3, line: 198, type: !6)
!1168 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 198, column: 2)
!1169 = !DILocation(line: 198, column: 2, scope: !1168)
!1170 = !DILocation(line: 198, column: 2, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 198, column: 2)
!1172 = !DILocation(line: 201, column: 22, scope: !1155)
!1173 = !DILocation(line: 201, column: 8, scope: !1155)
!1174 = !DILocation(line: 201, column: 6, scope: !1155)
!1175 = !DILocation(line: 202, column: 6, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 202, column: 6)
!1177 = !DILocation(line: 202, column: 10, scope: !1176)
!1178 = !DILocation(line: 202, column: 6, scope: !1155)
!1179 = !DILocation(line: 203, column: 22, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 202, column: 19)
!1181 = !DILocation(line: 203, column: 25, scope: !1180)
!1182 = !DILocation(line: 203, column: 3, scope: !1180)
!1183 = !DILocation(line: 205, column: 3, scope: !1180)
!1184 = !DILocation(line: 207, column: 9, scope: !1155)
!1185 = !DILocation(line: 207, column: 2, scope: !1155)
!1186 = !DILocation(line: 209, column: 37, scope: !1155)
!1187 = !DILocation(line: 210, column: 6, scope: !1155)
!1188 = !DILocation(line: 209, column: 6, scope: !1155)
!1189 = !DILocation(line: 209, column: 4, scope: !1155)
!1190 = !DILocation(line: 220, column: 6, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 220, column: 6)
!1192 = !DILocation(line: 220, column: 8, scope: !1191)
!1193 = !DILocation(line: 220, column: 6, scope: !1155)
!1194 = !DILocation(line: 221, column: 8, scope: !1191)
!1195 = !DILocation(line: 221, column: 3, scope: !1191)
!1196 = !DILocation(line: 222, column: 2, scope: !1155)
!1197 = !DILocation(line: 223, column: 1, scope: !1155)
!1198 = distinct !DISubprogram(name: "archive_read_format_zip_seekable_bid", scope: !3, file: !3, line: 245, type: !237, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1199 = !DILocalVariable(name: "a", arg: 1, scope: !1198, file: !3, line: 245, type: !7)
!1200 = !DILocation(line: 245, column: 59, scope: !1198)
!1201 = !DILocalVariable(name: "best_bid", arg: 2, scope: !1198, file: !3, line: 245, type: !6)
!1202 = !DILocation(line: 245, column: 66, scope: !1198)
!1203 = !DILocalVariable(name: "zip", scope: !1198, file: !3, line: 247, type: !268)
!1204 = !DILocation(line: 247, column: 14, scope: !1198)
!1205 = !DILocation(line: 247, column: 34, scope: !1198)
!1206 = !DILocation(line: 247, column: 37, scope: !1198)
!1207 = !DILocation(line: 247, column: 45, scope: !1198)
!1208 = !DILocation(line: 247, column: 20, scope: !1198)
!1209 = !DILocalVariable(name: "filesize", scope: !1198, file: !3, line: 248, type: !54)
!1210 = !DILocation(line: 248, column: 10, scope: !1198)
!1211 = !DILocalVariable(name: "p", scope: !1198, file: !3, line: 249, type: !83)
!1212 = !DILocation(line: 249, column: 14, scope: !1198)
!1213 = !DILocation(line: 253, column: 6, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 253, column: 6)
!1215 = !DILocation(line: 253, column: 15, scope: !1214)
!1216 = !DILocation(line: 253, column: 6, scope: !1198)
!1217 = !DILocation(line: 254, column: 3, scope: !1214)
!1218 = !DILocation(line: 256, column: 33, scope: !1198)
!1219 = !DILocation(line: 256, column: 13, scope: !1198)
!1220 = !DILocation(line: 256, column: 11, scope: !1198)
!1221 = !DILocation(line: 258, column: 6, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 258, column: 6)
!1223 = !DILocation(line: 258, column: 15, scope: !1222)
!1224 = !DILocation(line: 258, column: 6, scope: !1198)
!1225 = !DILocation(line: 259, column: 3, scope: !1222)
!1226 = !DILocation(line: 262, column: 32, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 262, column: 6)
!1228 = !DILocation(line: 262, column: 11, scope: !1227)
!1229 = !DILocation(line: 262, column: 9, scope: !1227)
!1230 = !DILocation(line: 262, column: 46, scope: !1227)
!1231 = !DILocation(line: 262, column: 6, scope: !1198)
!1232 = !DILocation(line: 263, column: 3, scope: !1227)
!1233 = !DILocation(line: 267, column: 13, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 267, column: 6)
!1235 = !DILocation(line: 267, column: 6, scope: !1234)
!1236 = !DILocation(line: 267, column: 49, scope: !1234)
!1237 = !DILocation(line: 267, column: 6, scope: !1198)
!1238 = !DILocalVariable(name: "i", scope: !1239, file: !3, line: 268, type: !54)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 267, column: 55)
!1240 = !DILocation(line: 268, column: 11, scope: !1239)
!1241 = !DILocalVariable(name: "tail", scope: !1239, file: !3, line: 268, type: !54)
!1242 = !DILocation(line: 268, column: 14, scope: !1239)
!1243 = !DILocalVariable(name: "found", scope: !1239, file: !3, line: 269, type: !6)
!1244 = !DILocation(line: 269, column: 7, scope: !1239)
!1245 = !DILocation(line: 277, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 277, column: 7)
!1247 = !DILocation(line: 277, column: 16, scope: !1246)
!1248 = !DILocation(line: 277, column: 21, scope: !1246)
!1249 = !DILocation(line: 277, column: 7, scope: !1239)
!1250 = !DILocation(line: 278, column: 9, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 277, column: 34)
!1252 = !DILocation(line: 279, column: 35, scope: !1251)
!1253 = !DILocation(line: 279, column: 38, scope: !1251)
!1254 = !DILocation(line: 279, column: 43, scope: !1251)
!1255 = !DILocation(line: 279, column: 15, scope: !1251)
!1256 = !DILocation(line: 279, column: 13, scope: !1251)
!1257 = !DILocation(line: 280, column: 3, scope: !1251)
!1258 = !DILocation(line: 281, column: 11, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 280, column: 10)
!1260 = !DILocation(line: 281, column: 20, scope: !1259)
!1261 = !DILocation(line: 281, column: 9, scope: !1259)
!1262 = !DILocation(line: 282, column: 35, scope: !1259)
!1263 = !DILocation(line: 282, column: 15, scope: !1259)
!1264 = !DILocation(line: 282, column: 13, scope: !1259)
!1265 = !DILocation(line: 284, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 284, column: 7)
!1267 = !DILocation(line: 284, column: 16, scope: !1266)
!1268 = !DILocation(line: 284, column: 7, scope: !1239)
!1269 = !DILocation(line: 285, column: 4, scope: !1266)
!1270 = !DILocation(line: 286, column: 33, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 286, column: 7)
!1272 = !DILocation(line: 286, column: 44, scope: !1271)
!1273 = !DILocation(line: 286, column: 12, scope: !1271)
!1274 = !DILocation(line: 286, column: 10, scope: !1271)
!1275 = !DILocation(line: 286, column: 57, scope: !1271)
!1276 = !DILocation(line: 286, column: 7, scope: !1239)
!1277 = !DILocation(line: 287, column: 4, scope: !1271)
!1278 = !DILocation(line: 288, column: 14, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 288, column: 3)
!1280 = !DILocation(line: 288, column: 21, scope: !1279)
!1281 = !DILocation(line: 288, column: 8, scope: !1279)
!1282 = !DILocation(line: 288, column: 26, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 288, column: 3)
!1284 = !DILocation(line: 288, column: 32, scope: !1283)
!1285 = !DILocation(line: 288, column: 35, scope: !1283)
!1286 = !DILocation(line: 288, column: 39, scope: !1283)
!1287 = !DILocation(line: 288, column: 44, scope: !1283)
!1288 = !DILocation(line: 288, column: 37, scope: !1283)
!1289 = !DILocation(line: 0, scope: !1283)
!1290 = !DILocation(line: 288, column: 3, scope: !1279)
!1291 = !DILocation(line: 289, column: 12, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 288, column: 51)
!1293 = !DILocation(line: 289, column: 14, scope: !1292)
!1294 = !DILocation(line: 289, column: 4, scope: !1292)
!1295 = !DILocation(line: 291, column: 16, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 291, column: 9)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 289, column: 18)
!1298 = !DILocation(line: 291, column: 18, scope: !1296)
!1299 = !DILocation(line: 291, column: 17, scope: !1296)
!1300 = !DILocation(line: 291, column: 9, scope: !1296)
!1301 = !DILocation(line: 292, column: 42, scope: !1296)
!1302 = !DILocation(line: 291, column: 9, scope: !1297)
!1303 = !DILocation(line: 293, column: 11, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 292, column: 48)
!1305 = !DILocation(line: 293, column: 8, scope: !1304)
!1306 = !DILocation(line: 294, column: 18, scope: !1304)
!1307 = !DILocation(line: 295, column: 32, scope: !1304)
!1308 = !DILocation(line: 295, column: 33, scope: !1304)
!1309 = !DILocation(line: 295, column: 16, scope: !1304)
!1310 = !DILocation(line: 295, column: 14, scope: !1304)
!1311 = !DILocation(line: 295, column: 10, scope: !1304)
!1312 = !DILocation(line: 294, column: 23, scope: !1304)
!1313 = !DILocation(line: 294, column: 15, scope: !1304)
!1314 = !DILocation(line: 296, column: 12, scope: !1304)
!1315 = !DILocation(line: 297, column: 5, scope: !1304)
!1316 = !DILocation(line: 298, column: 8, scope: !1296)
!1317 = !DILocation(line: 299, column: 5, scope: !1297)
!1318 = !DILocation(line: 300, column: 16, scope: !1297)
!1319 = !DILocation(line: 300, column: 22, scope: !1297)
!1320 = !DILocation(line: 301, column: 16, scope: !1297)
!1321 = !DILocation(line: 301, column: 22, scope: !1297)
!1322 = !DILocation(line: 302, column: 16, scope: !1297)
!1323 = !DILocation(line: 302, column: 22, scope: !1297)
!1324 = !DILocation(line: 303, column: 15, scope: !1297)
!1325 = !DILocation(line: 303, column: 21, scope: !1297)
!1326 = !DILocation(line: 288, column: 3, scope: !1283)
!1327 = distinct !{!1327, !1290, !1328, !749}
!1328 = !DILocation(line: 305, column: 3, scope: !1279)
!1329 = !DILocation(line: 306, column: 8, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 306, column: 7)
!1331 = !DILocation(line: 306, column: 7, scope: !1239)
!1332 = !DILocation(line: 307, column: 4, scope: !1330)
!1333 = !DILocation(line: 308, column: 2, scope: !1239)
!1334 = !DILocation(line: 313, column: 51, scope: !1198)
!1335 = !DILocation(line: 313, column: 53, scope: !1198)
!1336 = !DILocation(line: 313, column: 35, scope: !1198)
!1337 = !DILocation(line: 313, column: 2, scope: !1198)
!1338 = !DILocation(line: 313, column: 7, scope: !1198)
!1339 = !DILocation(line: 313, column: 33, scope: !1198)
!1340 = !DILocation(line: 314, column: 48, scope: !1198)
!1341 = !DILocation(line: 314, column: 50, scope: !1198)
!1342 = !DILocation(line: 314, column: 32, scope: !1198)
!1343 = !DILocation(line: 314, column: 2, scope: !1198)
!1344 = !DILocation(line: 314, column: 7, scope: !1198)
!1345 = !DILocation(line: 314, column: 30, scope: !1198)
!1346 = !DILocation(line: 315, column: 50, scope: !1198)
!1347 = !DILocation(line: 315, column: 52, scope: !1198)
!1348 = !DILocation(line: 315, column: 34, scope: !1198)
!1349 = !DILocation(line: 315, column: 2, scope: !1198)
!1350 = !DILocation(line: 315, column: 7, scope: !1198)
!1351 = !DILocation(line: 315, column: 32, scope: !1198)
!1352 = !DILocation(line: 316, column: 41, scope: !1198)
!1353 = !DILocation(line: 316, column: 2, scope: !1198)
!1354 = !DILocation(line: 316, column: 7, scope: !1198)
!1355 = !DILocation(line: 316, column: 39, scope: !1198)
!1356 = !DILocation(line: 319, column: 6, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 319, column: 6)
!1358 = !DILocation(line: 319, column: 11, scope: !1357)
!1359 = !DILocation(line: 319, column: 56, scope: !1357)
!1360 = !DILocation(line: 319, column: 58, scope: !1357)
!1361 = !DILocation(line: 319, column: 40, scope: !1357)
!1362 = !DILocation(line: 319, column: 37, scope: !1357)
!1363 = !DILocation(line: 319, column: 6, scope: !1198)
!1364 = !DILocation(line: 320, column: 3, scope: !1357)
!1365 = !DILocation(line: 322, column: 6, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 322, column: 6)
!1367 = !DILocation(line: 322, column: 11, scope: !1366)
!1368 = !DILocation(line: 323, column: 15, scope: !1366)
!1369 = !DILocation(line: 323, column: 20, scope: !1366)
!1370 = !DILocation(line: 322, column: 36, scope: !1366)
!1371 = !DILocation(line: 323, column: 45, scope: !1366)
!1372 = !DILocation(line: 323, column: 43, scope: !1366)
!1373 = !DILocation(line: 322, column: 6, scope: !1198)
!1374 = !DILocation(line: 324, column: 3, scope: !1366)
!1375 = !DILocation(line: 329, column: 2, scope: !1198)
!1376 = !DILocation(line: 330, column: 1, scope: !1198)
!1377 = distinct !DISubprogram(name: "archive_read_format_zip_seekable_read_header", scope: !3, file: !3, line: 689, type: !245, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1378 = !DILocalVariable(name: "a", arg: 1, scope: !1377, file: !3, line: 689, type: !7)
!1379 = !DILocation(line: 689, column: 67, scope: !1377)
!1380 = !DILocalVariable(name: "entry", arg: 2, scope: !1377, file: !3, line: 690, type: !32)
!1381 = !DILocation(line: 690, column: 24, scope: !1377)
!1382 = !DILocalVariable(name: "zip", scope: !1377, file: !3, line: 692, type: !268)
!1383 = !DILocation(line: 692, column: 14, scope: !1377)
!1384 = !DILocation(line: 692, column: 34, scope: !1377)
!1385 = !DILocation(line: 692, column: 37, scope: !1377)
!1386 = !DILocation(line: 692, column: 45, scope: !1377)
!1387 = !DILocation(line: 692, column: 20, scope: !1377)
!1388 = !DILocalVariable(name: "rsrc", scope: !1377, file: !3, line: 693, type: !279)
!1389 = !DILocation(line: 693, column: 20, scope: !1377)
!1390 = !DILocalVariable(name: "r", scope: !1377, file: !3, line: 694, type: !6)
!1391 = !DILocation(line: 694, column: 6, scope: !1377)
!1392 = !DILocalVariable(name: "ret", scope: !1377, file: !3, line: 694, type: !6)
!1393 = !DILocation(line: 694, column: 9, scope: !1377)
!1394 = !DILocation(line: 696, column: 2, scope: !1377)
!1395 = !DILocation(line: 696, column: 5, scope: !1377)
!1396 = !DILocation(line: 696, column: 13, scope: !1377)
!1397 = !DILocation(line: 696, column: 28, scope: !1377)
!1398 = !DILocation(line: 697, column: 6, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 697, column: 6)
!1400 = !DILocation(line: 697, column: 9, scope: !1399)
!1401 = !DILocation(line: 697, column: 17, scope: !1399)
!1402 = !DILocation(line: 697, column: 37, scope: !1399)
!1403 = !DILocation(line: 697, column: 6, scope: !1377)
!1404 = !DILocation(line: 698, column: 3, scope: !1399)
!1405 = !DILocation(line: 698, column: 6, scope: !1399)
!1406 = !DILocation(line: 698, column: 14, scope: !1399)
!1407 = !DILocation(line: 698, column: 34, scope: !1399)
!1408 = !DILocation(line: 700, column: 6, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 700, column: 6)
!1410 = !DILocation(line: 700, column: 11, scope: !1409)
!1411 = !DILocation(line: 700, column: 23, scope: !1409)
!1412 = !DILocation(line: 700, column: 6, scope: !1377)
!1413 = !DILocation(line: 701, column: 31, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 700, column: 32)
!1415 = !DILocation(line: 701, column: 34, scope: !1414)
!1416 = !DILocation(line: 701, column: 7, scope: !1414)
!1417 = !DILocation(line: 701, column: 5, scope: !1414)
!1418 = !DILocation(line: 702, column: 28, scope: !1414)
!1419 = !DILocation(line: 702, column: 33, scope: !1414)
!1420 = !DILocation(line: 702, column: 3, scope: !1414)
!1421 = !DILocation(line: 702, column: 8, scope: !1414)
!1422 = !DILocation(line: 702, column: 26, scope: !1414)
!1423 = !DILocation(line: 703, column: 7, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 703, column: 7)
!1425 = !DILocation(line: 703, column: 9, scope: !1424)
!1426 = !DILocation(line: 703, column: 7, scope: !1414)
!1427 = !DILocation(line: 704, column: 11, scope: !1424)
!1428 = !DILocation(line: 704, column: 4, scope: !1424)
!1429 = !DILocation(line: 708, column: 27, scope: !1414)
!1430 = !DILocation(line: 708, column: 7, scope: !1414)
!1431 = !DILocation(line: 707, column: 3, scope: !1414)
!1432 = !DILocation(line: 707, column: 8, scope: !1414)
!1433 = !DILocation(line: 707, column: 14, scope: !1414)
!1434 = !DILocation(line: 709, column: 2, scope: !1414)
!1435 = !DILocation(line: 709, column: 13, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 709, column: 13)
!1437 = !DILocation(line: 709, column: 18, scope: !1436)
!1438 = !DILocation(line: 709, column: 24, scope: !1436)
!1439 = !DILocation(line: 709, column: 13, scope: !1409)
!1440 = !DILocation(line: 712, column: 8, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 709, column: 33)
!1442 = !DILocation(line: 712, column: 13, scope: !1441)
!1443 = !DILocation(line: 712, column: 20, scope: !1441)
!1444 = !DILocation(line: 712, column: 25, scope: !1441)
!1445 = !DILocation(line: 712, column: 32, scope: !1441)
!1446 = !DILocation(line: 711, column: 36, scope: !1441)
!1447 = !DILocation(line: 711, column: 16, scope: !1441)
!1448 = !DILocation(line: 711, column: 3, scope: !1441)
!1449 = !DILocation(line: 711, column: 8, scope: !1441)
!1450 = !DILocation(line: 711, column: 14, scope: !1441)
!1451 = !DILocation(line: 713, column: 2, scope: !1441)
!1452 = !DILocation(line: 715, column: 6, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 715, column: 6)
!1454 = !DILocation(line: 715, column: 11, scope: !1453)
!1455 = !DILocation(line: 715, column: 29, scope: !1453)
!1456 = !DILocation(line: 715, column: 34, scope: !1453)
!1457 = !DILocation(line: 715, column: 37, scope: !1453)
!1458 = !DILocation(line: 715, column: 42, scope: !1453)
!1459 = !DILocation(line: 715, column: 48, scope: !1453)
!1460 = !DILocation(line: 715, column: 6, scope: !1377)
!1461 = !DILocation(line: 716, column: 3, scope: !1453)
!1462 = !DILocation(line: 717, column: 4, scope: !1377)
!1463 = !DILocation(line: 717, column: 9, scope: !1377)
!1464 = !DILocation(line: 717, column: 2, scope: !1377)
!1465 = !DILocation(line: 719, column: 6, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 719, column: 6)
!1467 = !DILocation(line: 719, column: 11, scope: !1466)
!1468 = !DILocation(line: 719, column: 18, scope: !1466)
!1469 = !DILocation(line: 719, column: 27, scope: !1466)
!1470 = !DILocation(line: 719, column: 6, scope: !1377)
!1471 = !DILocation(line: 721, column: 8, scope: !1466)
!1472 = !DILocation(line: 721, column: 13, scope: !1466)
!1473 = !DILocation(line: 721, column: 24, scope: !1466)
!1474 = !DILocation(line: 721, column: 29, scope: !1466)
!1475 = !DILocation(line: 721, column: 36, scope: !1466)
!1476 = !DILocation(line: 721, column: 45, scope: !1466)
!1477 = !DILocation(line: 720, column: 30, scope: !1466)
!1478 = !DILocation(line: 720, column: 10, scope: !1466)
!1479 = !DILocation(line: 720, column: 8, scope: !1466)
!1480 = !DILocation(line: 720, column: 3, scope: !1466)
!1481 = !DILocation(line: 723, column: 8, scope: !1466)
!1482 = !DILocation(line: 728, column: 6, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 728, column: 6)
!1484 = !DILocation(line: 728, column: 11, scope: !1483)
!1485 = !DILocation(line: 728, column: 20, scope: !1483)
!1486 = !DILocation(line: 728, column: 25, scope: !1483)
!1487 = !DILocation(line: 728, column: 32, scope: !1483)
!1488 = !DILocation(line: 728, column: 18, scope: !1483)
!1489 = !DILocation(line: 728, column: 6, scope: !1377)
!1490 = !DILocation(line: 729, column: 20, scope: !1483)
!1491 = !DILocation(line: 730, column: 7, scope: !1483)
!1492 = !DILocation(line: 730, column: 12, scope: !1483)
!1493 = !DILocation(line: 730, column: 19, scope: !1483)
!1494 = !DILocation(line: 730, column: 41, scope: !1483)
!1495 = !DILocation(line: 730, column: 46, scope: !1483)
!1496 = !DILocation(line: 730, column: 39, scope: !1483)
!1497 = !DILocation(line: 729, column: 3, scope: !1483)
!1498 = !DILocation(line: 731, column: 11, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 731, column: 11)
!1500 = !DILocation(line: 731, column: 16, scope: !1499)
!1501 = !DILocation(line: 731, column: 26, scope: !1499)
!1502 = !DILocation(line: 731, column: 31, scope: !1499)
!1503 = !DILocation(line: 731, column: 38, scope: !1499)
!1504 = !DILocation(line: 731, column: 23, scope: !1499)
!1505 = !DILocation(line: 731, column: 11, scope: !1483)
!1506 = !DILocation(line: 732, column: 23, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 731, column: 59)
!1508 = !DILocation(line: 732, column: 26, scope: !1507)
!1509 = !DILocation(line: 732, column: 31, scope: !1507)
!1510 = !DILocation(line: 732, column: 38, scope: !1507)
!1511 = !DILocation(line: 732, column: 3, scope: !1507)
!1512 = !DILocation(line: 734, column: 17, scope: !1507)
!1513 = !DILocation(line: 734, column: 22, scope: !1507)
!1514 = !DILocation(line: 734, column: 29, scope: !1507)
!1515 = !DILocation(line: 734, column: 3, scope: !1507)
!1516 = !DILocation(line: 734, column: 8, scope: !1507)
!1517 = !DILocation(line: 734, column: 15, scope: !1507)
!1518 = !DILocation(line: 735, column: 2, scope: !1507)
!1519 = !DILocation(line: 736, column: 2, scope: !1377)
!1520 = !DILocation(line: 736, column: 7, scope: !1377)
!1521 = !DILocation(line: 736, column: 18, scope: !1377)
!1522 = !DILocation(line: 737, column: 33, scope: !1377)
!1523 = !DILocation(line: 737, column: 36, scope: !1377)
!1524 = !DILocation(line: 737, column: 43, scope: !1377)
!1525 = !DILocation(line: 737, column: 6, scope: !1377)
!1526 = !DILocation(line: 737, column: 4, scope: !1377)
!1527 = !DILocation(line: 738, column: 6, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 738, column: 6)
!1529 = !DILocation(line: 738, column: 8, scope: !1528)
!1530 = !DILocation(line: 738, column: 6, scope: !1377)
!1531 = !DILocation(line: 739, column: 10, scope: !1528)
!1532 = !DILocation(line: 739, column: 3, scope: !1528)
!1533 = !DILocation(line: 740, column: 7, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 740, column: 6)
!1535 = !DILocation(line: 740, column: 12, scope: !1534)
!1536 = !DILocation(line: 740, column: 19, scope: !1534)
!1537 = !DILocation(line: 740, column: 24, scope: !1534)
!1538 = !DILocation(line: 740, column: 35, scope: !1534)
!1539 = !DILocation(line: 740, column: 6, scope: !1377)
!1540 = !DILocalVariable(name: "p", scope: !1541, file: !3, line: 741, type: !45)
!1541 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 740, column: 48)
!1542 = !DILocation(line: 741, column: 15, scope: !1541)
!1543 = !DILocalVariable(name: "sconv", scope: !1541, file: !3, line: 742, type: !105)
!1544 = !DILocation(line: 742, column: 31, scope: !1541)
!1545 = !DILocalVariable(name: "linkname_length", scope: !1541, file: !3, line: 743, type: !47)
!1546 = !DILocation(line: 743, column: 10, scope: !1541)
!1547 = !DILocation(line: 743, column: 55, scope: !1541)
!1548 = !DILocation(line: 743, column: 36, scope: !1541)
!1549 = !DILocation(line: 745, column: 26, scope: !1541)
!1550 = !DILocation(line: 745, column: 3, scope: !1541)
!1551 = !DILocation(line: 746, column: 28, scope: !1541)
!1552 = !DILocation(line: 746, column: 31, scope: !1541)
!1553 = !DILocation(line: 746, column: 7, scope: !1541)
!1554 = !DILocation(line: 746, column: 5, scope: !1541)
!1555 = !DILocation(line: 747, column: 7, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 747, column: 7)
!1557 = !DILocation(line: 747, column: 9, scope: !1556)
!1558 = !DILocation(line: 747, column: 7, scope: !1541)
!1559 = !DILocation(line: 748, column: 23, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 747, column: 18)
!1561 = !DILocation(line: 748, column: 26, scope: !1560)
!1562 = !DILocation(line: 748, column: 4, scope: !1560)
!1563 = !DILocation(line: 750, column: 4, scope: !1560)
!1564 = !DILocation(line: 753, column: 11, scope: !1541)
!1565 = !DILocation(line: 753, column: 16, scope: !1541)
!1566 = !DILocation(line: 753, column: 9, scope: !1541)
!1567 = !DILocation(line: 754, column: 7, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 754, column: 7)
!1569 = !DILocation(line: 754, column: 13, scope: !1568)
!1570 = !DILocation(line: 754, column: 21, scope: !1568)
!1571 = !DILocation(line: 754, column: 25, scope: !1568)
!1572 = !DILocation(line: 754, column: 30, scope: !1568)
!1573 = !DILocation(line: 754, column: 37, scope: !1568)
!1574 = !DILocation(line: 754, column: 43, scope: !1568)
!1575 = !DILocation(line: 754, column: 7, scope: !1541)
!1576 = !DILocation(line: 755, column: 12, scope: !1568)
!1577 = !DILocation(line: 755, column: 17, scope: !1568)
!1578 = !DILocation(line: 755, column: 10, scope: !1568)
!1579 = !DILocation(line: 755, column: 4, scope: !1568)
!1580 = !DILocation(line: 756, column: 7, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 756, column: 7)
!1582 = !DILocation(line: 756, column: 13, scope: !1581)
!1583 = !DILocation(line: 756, column: 7, scope: !1541)
!1584 = !DILocation(line: 757, column: 12, scope: !1581)
!1585 = !DILocation(line: 757, column: 17, scope: !1581)
!1586 = !DILocation(line: 757, column: 10, scope: !1581)
!1587 = !DILocation(line: 757, column: 4, scope: !1581)
!1588 = !DILocation(line: 758, column: 36, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 758, column: 7)
!1590 = !DILocation(line: 758, column: 43, scope: !1589)
!1591 = !DILocation(line: 758, column: 46, scope: !1589)
!1592 = !DILocation(line: 759, column: 7, scope: !1589)
!1593 = !DILocation(line: 758, column: 7, scope: !1589)
!1594 = !DILocation(line: 759, column: 14, scope: !1589)
!1595 = !DILocation(line: 758, column: 7, scope: !1541)
!1596 = !DILocation(line: 760, column: 8, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 760, column: 8)
!1598 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 759, column: 20)
!1599 = !DILocation(line: 760, column: 14, scope: !1597)
!1600 = !DILocation(line: 760, column: 24, scope: !1597)
!1601 = !DILocation(line: 760, column: 27, scope: !1597)
!1602 = !DILocation(line: 760, column: 36, scope: !1597)
!1603 = !DILocation(line: 760, column: 41, scope: !1597)
!1604 = !DILocation(line: 760, column: 33, scope: !1597)
!1605 = !DILocation(line: 760, column: 52, scope: !1597)
!1606 = !DILocation(line: 761, column: 9, scope: !1597)
!1607 = !DILocation(line: 761, column: 14, scope: !1597)
!1608 = !DILocation(line: 761, column: 21, scope: !1597)
!1609 = !DILocation(line: 761, column: 27, scope: !1597)
!1610 = !DILocation(line: 760, column: 8, scope: !1598)
!1611 = !DILocation(line: 762, column: 37, scope: !1597)
!1612 = !DILocation(line: 762, column: 44, scope: !1597)
!1613 = !DILocation(line: 763, column: 5, scope: !1597)
!1614 = !DILocation(line: 762, column: 8, scope: !1597)
!1615 = !DILocation(line: 764, column: 8, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 764, column: 8)
!1617 = !DILocation(line: 764, column: 14, scope: !1616)
!1618 = !DILocation(line: 764, column: 8, scope: !1598)
!1619 = !DILocation(line: 765, column: 24, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 764, column: 25)
!1621 = !DILocation(line: 765, column: 27, scope: !1620)
!1622 = !DILocation(line: 765, column: 5, scope: !1620)
!1623 = !DILocation(line: 767, column: 5, scope: !1620)
!1624 = !DILocation(line: 774, column: 8, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 774, column: 8)
!1626 = !DILocation(line: 774, column: 17, scope: !1625)
!1627 = !DILocation(line: 774, column: 22, scope: !1625)
!1628 = !DILocation(line: 774, column: 14, scope: !1625)
!1629 = !DILocation(line: 774, column: 33, scope: !1625)
!1630 = !DILocation(line: 775, column: 9, scope: !1625)
!1631 = !DILocation(line: 775, column: 14, scope: !1625)
!1632 = !DILocation(line: 775, column: 21, scope: !1625)
!1633 = !DILocation(line: 775, column: 27, scope: !1625)
!1634 = !DILocation(line: 775, column: 44, scope: !1625)
!1635 = !DILocation(line: 774, column: 8, scope: !1598)
!1636 = !DILocation(line: 776, column: 24, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 775, column: 50)
!1638 = !DILocation(line: 776, column: 27, scope: !1637)
!1639 = !DILocation(line: 781, column: 6, scope: !1637)
!1640 = !DILocation(line: 780, column: 9, scope: !1637)
!1641 = !DILocation(line: 776, column: 5, scope: !1637)
!1642 = !DILocation(line: 782, column: 9, scope: !1637)
!1643 = !DILocation(line: 783, column: 4, scope: !1637)
!1644 = !DILocation(line: 784, column: 3, scope: !1598)
!1645 = !DILocation(line: 785, column: 2, scope: !1541)
!1646 = !DILocation(line: 786, column: 6, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 786, column: 6)
!1648 = !DILocation(line: 786, column: 6, scope: !1377)
!1649 = !DILocalVariable(name: "ret2", scope: !1650, file: !3, line: 787, type: !6)
!1650 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 786, column: 12)
!1651 = !DILocation(line: 787, column: 7, scope: !1650)
!1652 = !DILocation(line: 787, column: 36, scope: !1650)
!1653 = !DILocation(line: 787, column: 39, scope: !1650)
!1654 = !DILocation(line: 787, column: 46, scope: !1650)
!1655 = !DILocation(line: 787, column: 14, scope: !1650)
!1656 = !DILocation(line: 788, column: 7, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 788, column: 7)
!1658 = !DILocation(line: 788, column: 14, scope: !1657)
!1659 = !DILocation(line: 788, column: 12, scope: !1657)
!1660 = !DILocation(line: 788, column: 7, scope: !1650)
!1661 = !DILocation(line: 789, column: 10, scope: !1657)
!1662 = !DILocation(line: 789, column: 8, scope: !1657)
!1663 = !DILocation(line: 789, column: 4, scope: !1657)
!1664 = !DILocation(line: 790, column: 2, scope: !1650)
!1665 = !DILocation(line: 791, column: 10, scope: !1377)
!1666 = !DILocation(line: 791, column: 2, scope: !1377)
!1667 = !DILocation(line: 792, column: 1, scope: !1377)
!1668 = distinct !DISubprogram(name: "archive_read_support_format_zip", scope: !3, file: !3, line: 226, type: !24, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1669 = !DILocalVariable(name: "a", arg: 1, scope: !1668, file: !3, line: 226, type: !26)
!1670 = !DILocation(line: 226, column: 49, scope: !1668)
!1671 = !DILocalVariable(name: "r", scope: !1668, file: !3, line: 228, type: !6)
!1672 = !DILocation(line: 228, column: 6, scope: !1668)
!1673 = !DILocation(line: 229, column: 49, scope: !1668)
!1674 = !DILocation(line: 229, column: 6, scope: !1668)
!1675 = !DILocation(line: 229, column: 4, scope: !1668)
!1676 = !DILocation(line: 230, column: 6, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 230, column: 6)
!1678 = !DILocation(line: 230, column: 8, scope: !1677)
!1679 = !DILocation(line: 230, column: 6, scope: !1668)
!1680 = !DILocation(line: 231, column: 10, scope: !1677)
!1681 = !DILocation(line: 231, column: 3, scope: !1677)
!1682 = !DILocation(line: 232, column: 51, scope: !1668)
!1683 = !DILocation(line: 232, column: 10, scope: !1668)
!1684 = !DILocation(line: 232, column: 2, scope: !1668)
!1685 = !DILocation(line: 233, column: 1, scope: !1668)
!1686 = distinct !DISubprogram(name: "archive_le16dec", scope: !1687, file: !1687, line: 81, type: !1688, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1687 = !DIFile(filename: "/tmp/claude-1003/-home-likaixuan-static-analysis-linux-spec-sast/57221fa4-4873-46c5-94c9-3f2e9a12b8a5/scratchpad/libarchive/libarchive/archive_endian.h", directory: "", checksumkind: CSK_MD5, checksum: "9e155272eb2b08a7cc6199da2b500265")
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!312, !45}
!1690 = !DILocalVariable(name: "pp", arg: 1, scope: !1686, file: !1687, line: 81, type: !45)
!1691 = !DILocation(line: 81, column: 29, scope: !1686)
!1692 = !DILocalVariable(name: "p", scope: !1686, file: !1687, line: 83, type: !405)
!1693 = !DILocation(line: 83, column: 23, scope: !1686)
!1694 = !DILocation(line: 83, column: 50, scope: !1686)
!1695 = !DILocation(line: 85, column: 11, scope: !1686)
!1696 = !DILocation(line: 85, column: 16, scope: !1686)
!1697 = !DILocation(line: 85, column: 24, scope: !1686)
!1698 = !DILocation(line: 85, column: 22, scope: !1686)
!1699 = !DILocation(line: 85, column: 9, scope: !1686)
!1700 = !DILocation(line: 85, column: 2, scope: !1686)
!1701 = distinct !DISubprogram(name: "archive_le32dec", scope: !1687, file: !1687, line: 89, type: !1702, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!308, !45}
!1704 = !DILocalVariable(name: "pp", arg: 1, scope: !1701, file: !1687, line: 89, type: !45)
!1705 = !DILocation(line: 89, column: 29, scope: !1701)
!1706 = !DILocalVariable(name: "p", scope: !1701, file: !1687, line: 91, type: !405)
!1707 = !DILocation(line: 91, column: 23, scope: !1701)
!1708 = !DILocation(line: 91, column: 50, scope: !1701)
!1709 = !DILocation(line: 93, column: 11, scope: !1701)
!1710 = !DILocation(line: 93, column: 16, scope: !1701)
!1711 = !DILocation(line: 93, column: 26, scope: !1701)
!1712 = !DILocation(line: 93, column: 31, scope: !1701)
!1713 = !DILocation(line: 93, column: 23, scope: !1701)
!1714 = !DILocation(line: 93, column: 41, scope: !1701)
!1715 = !DILocation(line: 93, column: 46, scope: !1701)
!1716 = !DILocation(line: 93, column: 38, scope: !1701)
!1717 = !DILocation(line: 93, column: 54, scope: !1701)
!1718 = !DILocation(line: 93, column: 52, scope: !1701)
!1719 = !DILocation(line: 93, column: 2, scope: !1701)
!1720 = !DILocalVariable(name: "a", arg: 1, scope: !2, file: !3, line: 410, type: !7)
!1721 = !DILocation(line: 410, column: 46, scope: !2)
!1722 = !DILocalVariable(name: "zip", arg: 2, scope: !2, file: !3, line: 410, type: !268)
!1723 = !DILocation(line: 410, column: 61, scope: !2)
!1724 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 412, type: !16)
!1725 = !DILocation(line: 412, column: 11, scope: !2)
!1726 = !DILocalVariable(name: "correction", scope: !2, file: !3, line: 413, type: !54)
!1727 = !DILocation(line: 413, column: 10, scope: !2)
!1728 = !DILocation(line: 426, column: 15, scope: !2)
!1729 = !DILocation(line: 426, column: 20, scope: !2)
!1730 = !DILocation(line: 427, column: 7, scope: !2)
!1731 = !DILocation(line: 427, column: 12, scope: !2)
!1732 = !DILocation(line: 427, column: 39, scope: !2)
!1733 = !DILocation(line: 427, column: 44, scope: !2)
!1734 = !DILocation(line: 427, column: 37, scope: !2)
!1735 = !DILocation(line: 426, column: 52, scope: !2)
!1736 = !DILocation(line: 426, column: 13, scope: !2)
!1737 = !DILocation(line: 430, column: 35, scope: !2)
!1738 = !DILocation(line: 430, column: 2, scope: !2)
!1739 = !DILocation(line: 430, column: 7, scope: !2)
!1740 = !DILocation(line: 430, column: 32, scope: !2)
!1741 = !DILocation(line: 432, column: 22, scope: !2)
!1742 = !DILocation(line: 432, column: 25, scope: !2)
!1743 = !DILocation(line: 432, column: 30, scope: !2)
!1744 = !DILocation(line: 432, column: 2, scope: !2)
!1745 = !DILocation(line: 433, column: 16, scope: !2)
!1746 = !DILocation(line: 433, column: 21, scope: !2)
!1747 = !DILocation(line: 433, column: 2, scope: !2)
!1748 = !DILocation(line: 433, column: 7, scope: !2)
!1749 = !DILocation(line: 433, column: 14, scope: !2)
!1750 = !DILocation(line: 434, column: 26, scope: !2)
!1751 = !DILocation(line: 434, column: 31, scope: !2)
!1752 = !DILocation(line: 434, column: 2, scope: !2)
!1753 = !DILocation(line: 435, column: 26, scope: !2)
!1754 = !DILocation(line: 435, column: 31, scope: !2)
!1755 = !DILocation(line: 435, column: 2, scope: !2)
!1756 = !DILocation(line: 437, column: 28, scope: !2)
!1757 = !DILocation(line: 437, column: 33, scope: !2)
!1758 = !DILocation(line: 437, column: 21, scope: !2)
!1759 = !DILocation(line: 437, column: 2, scope: !2)
!1760 = !DILocation(line: 437, column: 7, scope: !2)
!1761 = !DILocation(line: 437, column: 19, scope: !2)
!1762 = !DILocation(line: 439, column: 9, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !2, file: !3, line: 439, column: 2)
!1764 = !DILocation(line: 439, column: 7, scope: !1763)
!1765 = !DILocation(line: 439, column: 14, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 439, column: 2)
!1767 = !DILocation(line: 439, column: 18, scope: !1766)
!1768 = !DILocation(line: 439, column: 23, scope: !1766)
!1769 = !DILocation(line: 439, column: 16, scope: !1766)
!1770 = !DILocation(line: 439, column: 2, scope: !1763)
!1771 = !DILocalVariable(name: "zip_entry", scope: !1772, file: !3, line: 440, type: !279)
!1772 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 439, column: 55)
!1773 = !DILocation(line: 440, column: 21, scope: !1772)
!1774 = !DILocation(line: 440, column: 34, scope: !1772)
!1775 = !DILocation(line: 440, column: 39, scope: !1772)
!1776 = !DILocation(line: 440, column: 51, scope: !1772)
!1777 = !DILocalVariable(name: "filename_length", scope: !1772, file: !3, line: 441, type: !47)
!1778 = !DILocation(line: 441, column: 10, scope: !1772)
!1779 = !DILocalVariable(name: "extra_length", scope: !1772, file: !3, line: 441, type: !47)
!1780 = !DILocation(line: 441, column: 27, scope: !1772)
!1781 = !DILocalVariable(name: "comment_length", scope: !1772, file: !3, line: 441, type: !47)
!1782 = !DILocation(line: 441, column: 41, scope: !1772)
!1783 = !DILocalVariable(name: "external_attributes", scope: !1772, file: !3, line: 442, type: !308)
!1784 = !DILocation(line: 442, column: 12, scope: !1772)
!1785 = !DILocalVariable(name: "name", scope: !1772, file: !3, line: 443, type: !83)
!1786 = !DILocation(line: 443, column: 15, scope: !1772)
!1787 = !DILocalVariable(name: "p", scope: !1772, file: !3, line: 443, type: !83)
!1788 = !DILocation(line: 443, column: 22, scope: !1772)
!1789 = !DILocalVariable(name: "r", scope: !1772, file: !3, line: 443, type: !83)
!1790 = !DILocation(line: 443, column: 26, scope: !1772)
!1791 = !DILocation(line: 445, column: 33, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 445, column: 7)
!1793 = !DILocation(line: 445, column: 12, scope: !1792)
!1794 = !DILocation(line: 445, column: 10, scope: !1792)
!1795 = !DILocation(line: 445, column: 47, scope: !1792)
!1796 = !DILocation(line: 445, column: 7, scope: !1772)
!1797 = !DILocation(line: 446, column: 4, scope: !1792)
!1798 = !DILocation(line: 447, column: 14, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 447, column: 7)
!1800 = !DILocation(line: 447, column: 7, scope: !1799)
!1801 = !DILocation(line: 447, column: 34, scope: !1799)
!1802 = !DILocation(line: 447, column: 7, scope: !1772)
!1803 = !DILocation(line: 448, column: 23, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 447, column: 40)
!1805 = !DILocation(line: 448, column: 26, scope: !1804)
!1806 = !DILocation(line: 448, column: 4, scope: !1804)
!1807 = !DILocation(line: 450, column: 4, scope: !1804)
!1808 = !DILocation(line: 452, column: 3, scope: !1772)
!1809 = !DILocation(line: 452, column: 8, scope: !1772)
!1810 = !DILocation(line: 452, column: 31, scope: !1772)
!1811 = !DILocation(line: 454, column: 23, scope: !1772)
!1812 = !DILocation(line: 454, column: 3, scope: !1772)
!1813 = !DILocation(line: 454, column: 14, scope: !1772)
!1814 = !DILocation(line: 454, column: 21, scope: !1772)
!1815 = !DILocation(line: 456, column: 38, scope: !1772)
!1816 = !DILocation(line: 456, column: 40, scope: !1772)
!1817 = !DILocation(line: 456, column: 22, scope: !1772)
!1818 = !DILocation(line: 456, column: 3, scope: !1772)
!1819 = !DILocation(line: 456, column: 14, scope: !1772)
!1820 = !DILocation(line: 456, column: 20, scope: !1772)
!1821 = !DILocation(line: 457, column: 50, scope: !1772)
!1822 = !DILocation(line: 457, column: 52, scope: !1772)
!1823 = !DILocation(line: 457, column: 34, scope: !1772)
!1824 = !DILocation(line: 457, column: 28, scope: !1772)
!1825 = !DILocation(line: 457, column: 3, scope: !1772)
!1826 = !DILocation(line: 457, column: 14, scope: !1772)
!1827 = !DILocation(line: 457, column: 26, scope: !1772)
!1828 = !DILocation(line: 458, column: 31, scope: !1772)
!1829 = !DILocation(line: 458, column: 33, scope: !1772)
!1830 = !DILocation(line: 458, column: 22, scope: !1772)
!1831 = !DILocation(line: 458, column: 3, scope: !1772)
!1832 = !DILocation(line: 458, column: 14, scope: !1772)
!1833 = !DILocation(line: 458, column: 20, scope: !1772)
!1834 = !DILocation(line: 459, column: 38, scope: !1772)
!1835 = !DILocation(line: 459, column: 40, scope: !1772)
!1836 = !DILocation(line: 459, column: 22, scope: !1772)
!1837 = !DILocation(line: 459, column: 3, scope: !1772)
!1838 = !DILocation(line: 459, column: 14, scope: !1772)
!1839 = !DILocation(line: 459, column: 20, scope: !1772)
!1840 = !DILocation(line: 460, column: 48, scope: !1772)
!1841 = !DILocation(line: 460, column: 50, scope: !1772)
!1842 = !DILocation(line: 460, column: 32, scope: !1772)
!1843 = !DILocation(line: 460, column: 3, scope: !1772)
!1844 = !DILocation(line: 460, column: 14, scope: !1772)
!1845 = !DILocation(line: 460, column: 30, scope: !1772)
!1846 = !DILocation(line: 461, column: 50, scope: !1772)
!1847 = !DILocation(line: 461, column: 52, scope: !1772)
!1848 = !DILocation(line: 461, column: 34, scope: !1772)
!1849 = !DILocation(line: 461, column: 3, scope: !1772)
!1850 = !DILocation(line: 461, column: 14, scope: !1772)
!1851 = !DILocation(line: 461, column: 32, scope: !1772)
!1852 = !DILocation(line: 462, column: 37, scope: !1772)
!1853 = !DILocation(line: 462, column: 39, scope: !1772)
!1854 = !DILocation(line: 462, column: 21, scope: !1772)
!1855 = !DILocation(line: 462, column: 19, scope: !1772)
!1856 = !DILocation(line: 463, column: 34, scope: !1772)
!1857 = !DILocation(line: 463, column: 36, scope: !1772)
!1858 = !DILocation(line: 463, column: 18, scope: !1772)
!1859 = !DILocation(line: 463, column: 16, scope: !1772)
!1860 = !DILocation(line: 464, column: 36, scope: !1772)
!1861 = !DILocation(line: 464, column: 38, scope: !1772)
!1862 = !DILocation(line: 464, column: 20, scope: !1772)
!1863 = !DILocation(line: 464, column: 18, scope: !1772)
!1864 = !DILocation(line: 467, column: 41, scope: !1772)
!1865 = !DILocation(line: 467, column: 43, scope: !1772)
!1866 = !DILocation(line: 467, column: 25, scope: !1772)
!1867 = !DILocation(line: 467, column: 23, scope: !1772)
!1868 = !DILocation(line: 469, column: 23, scope: !1772)
!1869 = !DILocation(line: 469, column: 25, scope: !1772)
!1870 = !DILocation(line: 469, column: 7, scope: !1772)
!1871 = !DILocation(line: 469, column: 33, scope: !1772)
!1872 = !DILocation(line: 469, column: 31, scope: !1772)
!1873 = !DILocation(line: 468, column: 3, scope: !1772)
!1874 = !DILocation(line: 468, column: 14, scope: !1772)
!1875 = !DILocation(line: 468, column: 34, scope: !1772)
!1876 = !DILocation(line: 474, column: 3, scope: !1772)
!1877 = !DILocation(line: 474, column: 14, scope: !1772)
!1878 = !DILocation(line: 474, column: 19, scope: !1772)
!1879 = !DILocation(line: 475, column: 7, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 475, column: 7)
!1881 = !DILocation(line: 475, column: 18, scope: !1880)
!1882 = !DILocation(line: 475, column: 25, scope: !1880)
!1883 = !DILocation(line: 475, column: 7, scope: !1772)
!1884 = !DILocation(line: 476, column: 22, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 475, column: 31)
!1886 = !DILocation(line: 476, column: 42, scope: !1885)
!1887 = !DILocation(line: 476, column: 4, scope: !1885)
!1888 = !DILocation(line: 476, column: 15, scope: !1885)
!1889 = !DILocation(line: 476, column: 20, scope: !1885)
!1890 = !DILocation(line: 477, column: 3, scope: !1885)
!1891 = !DILocation(line: 485, column: 33, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 485, column: 7)
!1893 = !DILocation(line: 485, column: 41, scope: !1892)
!1894 = !DILocation(line: 485, column: 39, scope: !1892)
!1895 = !DILocation(line: 485, column: 12, scope: !1892)
!1896 = !DILocation(line: 485, column: 10, scope: !1892)
!1897 = !DILocation(line: 486, column: 7, scope: !1892)
!1898 = !DILocation(line: 485, column: 7, scope: !1772)
!1899 = !DILocation(line: 487, column: 4, scope: !1892)
!1900 = !DILocation(line: 488, column: 10, scope: !1772)
!1901 = !DILocation(line: 488, column: 12, scope: !1772)
!1902 = !DILocation(line: 488, column: 8, scope: !1772)
!1903 = !DILocation(line: 489, column: 21, scope: !1772)
!1904 = !DILocation(line: 489, column: 27, scope: !1772)
!1905 = !DILocation(line: 489, column: 7, scope: !1772)
!1906 = !DILocation(line: 489, column: 5, scope: !1772)
!1907 = !DILocation(line: 490, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 490, column: 7)
!1909 = !DILocation(line: 490, column: 23, scope: !1908)
!1910 = !DILocation(line: 490, column: 28, scope: !1908)
!1911 = !DILocation(line: 491, column: 28, scope: !1908)
!1912 = !DILocation(line: 491, column: 7, scope: !1908)
!1913 = !DILocation(line: 491, column: 37, scope: !1908)
!1914 = !DILocation(line: 490, column: 7, scope: !1772)
!1915 = !DILocation(line: 495, column: 8, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 495, column: 8)
!1917 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 491, column: 43)
!1918 = !DILocation(line: 495, column: 13, scope: !1916)
!1919 = !DILocation(line: 495, column: 28, scope: !1916)
!1920 = !DILocation(line: 495, column: 32, scope: !1916)
!1921 = !DILocation(line: 495, column: 39, scope: !1916)
!1922 = !DILocation(line: 496, column: 9, scope: !1916)
!1923 = !DILocation(line: 496, column: 13, scope: !1916)
!1924 = !DILocation(line: 496, column: 11, scope: !1916)
!1925 = !DILocation(line: 496, column: 18, scope: !1916)
!1926 = !DILocation(line: 496, column: 22, scope: !1916)
!1927 = !DILocation(line: 496, column: 25, scope: !1916)
!1928 = !DILocation(line: 496, column: 30, scope: !1916)
!1929 = !DILocation(line: 496, column: 37, scope: !1916)
!1930 = !DILocation(line: 496, column: 40, scope: !1916)
!1931 = !DILocation(line: 496, column: 45, scope: !1916)
!1932 = !DILocation(line: 495, column: 8, scope: !1917)
!1933 = !DILocation(line: 497, column: 36, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 496, column: 54)
!1935 = !DILocation(line: 497, column: 41, scope: !1934)
!1936 = !DILocation(line: 498, column: 10, scope: !1934)
!1937 = !DILocation(line: 498, column: 21, scope: !1934)
!1938 = !DILocation(line: 497, column: 5, scope: !1934)
!1939 = !DILocation(line: 500, column: 24, scope: !1934)
!1940 = !DILocation(line: 500, column: 29, scope: !1934)
!1941 = !DILocation(line: 500, column: 35, scope: !1934)
!1942 = !DILocation(line: 500, column: 5, scope: !1934)
!1943 = !DILocation(line: 501, column: 4, scope: !1934)
!1944 = !DILocation(line: 504, column: 5, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 501, column: 11)
!1946 = !DILocation(line: 506, column: 36, scope: !1945)
!1947 = !DILocation(line: 506, column: 41, scope: !1945)
!1948 = !DILocation(line: 507, column: 10, scope: !1945)
!1949 = !DILocation(line: 507, column: 21, scope: !1945)
!1950 = !DILocation(line: 506, column: 5, scope: !1945)
!1951 = !DILocation(line: 509, column: 3, scope: !1917)
!1952 = !DILocation(line: 512, column: 4, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 509, column: 10)
!1954 = !DILocation(line: 513, column: 22, scope: !1953)
!1955 = !DILocation(line: 513, column: 33, scope: !1953)
!1956 = !DILocation(line: 513, column: 44, scope: !1953)
!1957 = !DILocation(line: 513, column: 50, scope: !1953)
!1958 = !DILocation(line: 513, column: 54, scope: !1953)
!1959 = !DILocation(line: 513, column: 52, scope: !1953)
!1960 = !DILocation(line: 513, column: 4, scope: !1953)
!1961 = !DILocation(line: 514, column: 21, scope: !1953)
!1962 = !DILocation(line: 514, column: 32, scope: !1953)
!1963 = !DILocation(line: 514, column: 4, scope: !1953)
!1964 = !DILocation(line: 515, column: 22, scope: !1953)
!1965 = !DILocation(line: 515, column: 33, scope: !1953)
!1966 = !DILocation(line: 516, column: 8, scope: !1953)
!1967 = !DILocation(line: 516, column: 16, scope: !1953)
!1968 = !DILocation(line: 516, column: 20, scope: !1953)
!1969 = !DILocation(line: 516, column: 18, scope: !1953)
!1970 = !DILocation(line: 516, column: 13, scope: !1953)
!1971 = !DILocation(line: 516, column: 27, scope: !1953)
!1972 = !DILocation(line: 516, column: 46, scope: !1953)
!1973 = !DILocation(line: 516, column: 50, scope: !1953)
!1974 = !DILocation(line: 516, column: 48, scope: !1953)
!1975 = !DILocation(line: 516, column: 43, scope: !1953)
!1976 = !DILocation(line: 515, column: 4, scope: !1953)
!1977 = !DILocation(line: 519, column: 35, scope: !1953)
!1978 = !DILocation(line: 519, column: 40, scope: !1953)
!1979 = !DILocation(line: 520, column: 9, scope: !1953)
!1980 = !DILocation(line: 520, column: 20, scope: !1953)
!1981 = !DILocation(line: 519, column: 4, scope: !1953)
!1982 = !DILocation(line: 531, column: 26, scope: !1772)
!1983 = !DILocation(line: 532, column: 12, scope: !1772)
!1984 = !DILocation(line: 532, column: 10, scope: !1772)
!1985 = !DILocation(line: 532, column: 30, scope: !1772)
!1986 = !DILocation(line: 532, column: 28, scope: !1772)
!1987 = !DILocation(line: 532, column: 45, scope: !1772)
!1988 = !DILocation(line: 532, column: 43, scope: !1772)
!1989 = !DILocation(line: 531, column: 3, scope: !1772)
!1990 = !DILocation(line: 533, column: 2, scope: !1772)
!1991 = !DILocation(line: 439, column: 50, scope: !1766)
!1992 = !DILocation(line: 439, column: 2, scope: !1766)
!1993 = distinct !{!1993, !1770, !1994, !749}
!1994 = !DILocation(line: 533, column: 2, scope: !1763)
!1995 = !DILocation(line: 535, column: 2, scope: !2)
!1996 = !DILocation(line: 536, column: 1, scope: !2)
!1997 = distinct !DISubprogram(name: "zip_read_consume", scope: !3, file: !3, line: 539, type: !1998, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!54, !7, !54}
!2000 = !DILocalVariable(name: "a", arg: 1, scope: !1997, file: !3, line: 539, type: !7)
!2001 = !DILocation(line: 539, column: 39, scope: !1997)
!2002 = !DILocalVariable(name: "bytes", arg: 2, scope: !1997, file: !3, line: 539, type: !54)
!2003 = !DILocation(line: 539, column: 50, scope: !1997)
!2004 = !DILocalVariable(name: "zip", scope: !1997, file: !3, line: 541, type: !268)
!2005 = !DILocation(line: 541, column: 14, scope: !1997)
!2006 = !DILocation(line: 541, column: 34, scope: !1997)
!2007 = !DILocation(line: 541, column: 37, scope: !1997)
!2008 = !DILocation(line: 541, column: 45, scope: !1997)
!2009 = !DILocation(line: 541, column: 20, scope: !1997)
!2010 = !DILocalVariable(name: "skip", scope: !1997, file: !3, line: 542, type: !54)
!2011 = !DILocation(line: 542, column: 10, scope: !1997)
!2012 = !DILocation(line: 544, column: 32, scope: !1997)
!2013 = !DILocation(line: 544, column: 35, scope: !1997)
!2014 = !DILocation(line: 544, column: 9, scope: !1997)
!2015 = !DILocation(line: 544, column: 7, scope: !1997)
!2016 = !DILocation(line: 545, column: 6, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 545, column: 6)
!2018 = !DILocation(line: 545, column: 11, scope: !2017)
!2019 = !DILocation(line: 545, column: 6, scope: !1997)
!2020 = !DILocation(line: 546, column: 18, scope: !2017)
!2021 = !DILocation(line: 546, column: 3, scope: !2017)
!2022 = !DILocation(line: 546, column: 8, scope: !2017)
!2023 = !DILocation(line: 546, column: 15, scope: !2017)
!2024 = !DILocation(line: 547, column: 10, scope: !1997)
!2025 = !DILocation(line: 547, column: 2, scope: !1997)
!2026 = distinct !DISubprogram(name: "zip_read_local_file_header", scope: !3, file: !3, line: 950, type: !2027, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!6, !7, !32, !268}
!2029 = !DILocalVariable(name: "a", arg: 1, scope: !2026, file: !3, line: 950, type: !7)
!2030 = !DILocation(line: 950, column: 49, scope: !2026)
!2031 = !DILocalVariable(name: "entry", arg: 2, scope: !2026, file: !3, line: 950, type: !32)
!2032 = !DILocation(line: 950, column: 74, scope: !2026)
!2033 = !DILocalVariable(name: "zip", arg: 3, scope: !2026, file: !3, line: 951, type: !268)
!2034 = !DILocation(line: 951, column: 17, scope: !2026)
!2035 = !DILocalVariable(name: "p", scope: !2026, file: !3, line: 953, type: !83)
!2036 = !DILocation(line: 953, column: 14, scope: !2026)
!2037 = !DILocalVariable(name: "h", scope: !2026, file: !3, line: 954, type: !45)
!2038 = !DILocation(line: 954, column: 14, scope: !2026)
!2039 = !DILocalVariable(name: "wp", scope: !2026, file: !3, line: 955, type: !2040)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2042)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !48, line: 74, baseType: !6)
!2043 = !DILocation(line: 955, column: 17, scope: !2026)
!2044 = !DILocalVariable(name: "cp", scope: !2026, file: !3, line: 956, type: !83)
!2045 = !DILocation(line: 956, column: 14, scope: !2026)
!2046 = !DILocalVariable(name: "len", scope: !2026, file: !3, line: 957, type: !47)
!2047 = !DILocation(line: 957, column: 9, scope: !2026)
!2048 = !DILocalVariable(name: "filename_length", scope: !2026, file: !3, line: 957, type: !47)
!2049 = !DILocation(line: 957, column: 14, scope: !2026)
!2050 = !DILocalVariable(name: "extra_length", scope: !2026, file: !3, line: 957, type: !47)
!2051 = !DILocation(line: 957, column: 31, scope: !2026)
!2052 = !DILocalVariable(name: "sconv", scope: !2026, file: !3, line: 958, type: !105)
!2053 = !DILocation(line: 958, column: 30, scope: !2026)
!2054 = !DILocalVariable(name: "zip_entry", scope: !2026, file: !3, line: 959, type: !279)
!2055 = !DILocation(line: 959, column: 20, scope: !2026)
!2056 = !DILocation(line: 959, column: 32, scope: !2026)
!2057 = !DILocation(line: 959, column: 37, scope: !2026)
!2058 = !DILocalVariable(name: "local_crc32", scope: !2026, file: !3, line: 960, type: !308)
!2059 = !DILocation(line: 960, column: 11, scope: !2026)
!2060 = !DILocalVariable(name: "compressed_size", scope: !2026, file: !3, line: 961, type: !54)
!2061 = !DILocation(line: 961, column: 10, scope: !2026)
!2062 = !DILocalVariable(name: "uncompressed_size", scope: !2026, file: !3, line: 961, type: !54)
!2063 = !DILocation(line: 961, column: 27, scope: !2026)
!2064 = !DILocalVariable(name: "ret", scope: !2026, file: !3, line: 962, type: !6)
!2065 = !DILocation(line: 962, column: 6, scope: !2026)
!2066 = !DILocalVariable(name: "version", scope: !2026, file: !3, line: 963, type: !85)
!2067 = !DILocation(line: 963, column: 7, scope: !2026)
!2068 = !DILocation(line: 965, column: 2, scope: !2026)
!2069 = !DILocation(line: 965, column: 7, scope: !2026)
!2070 = !DILocation(line: 965, column: 23, scope: !2026)
!2071 = !DILocation(line: 966, column: 2, scope: !2026)
!2072 = !DILocation(line: 966, column: 7, scope: !2026)
!2073 = !DILocation(line: 966, column: 20, scope: !2026)
!2074 = !DILocation(line: 967, column: 2, scope: !2026)
!2075 = !DILocation(line: 967, column: 7, scope: !2026)
!2076 = !DILocation(line: 967, column: 37, scope: !2026)
!2077 = !DILocation(line: 968, column: 2, scope: !2026)
!2078 = !DILocation(line: 968, column: 7, scope: !2026)
!2079 = !DILocation(line: 968, column: 35, scope: !2026)
!2080 = !DILocation(line: 969, column: 21, scope: !2026)
!2081 = !DILocation(line: 969, column: 2, scope: !2026)
!2082 = !DILocation(line: 969, column: 7, scope: !2026)
!2083 = !DILocation(line: 969, column: 19, scope: !2026)
!2084 = !DILocation(line: 972, column: 6, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 972, column: 6)
!2086 = !DILocation(line: 972, column: 11, scope: !2085)
!2087 = !DILocation(line: 972, column: 17, scope: !2085)
!2088 = !DILocation(line: 972, column: 25, scope: !2085)
!2089 = !DILocation(line: 972, column: 29, scope: !2085)
!2090 = !DILocation(line: 972, column: 34, scope: !2085)
!2091 = !DILocation(line: 972, column: 6, scope: !2026)
!2092 = !DILocation(line: 974, column: 52, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 972, column: 59)
!2094 = !DILocation(line: 974, column: 55, scope: !2093)
!2095 = !DILocation(line: 974, column: 7, scope: !2093)
!2096 = !DILocation(line: 973, column: 3, scope: !2093)
!2097 = !DILocation(line: 973, column: 8, scope: !2093)
!2098 = !DILocation(line: 973, column: 22, scope: !2093)
!2099 = !DILocation(line: 975, column: 3, scope: !2093)
!2100 = !DILocation(line: 975, column: 8, scope: !2093)
!2101 = !DILocation(line: 975, column: 32, scope: !2093)
!2102 = !DILocation(line: 976, column: 2, scope: !2093)
!2103 = !DILocation(line: 978, column: 32, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 978, column: 6)
!2105 = !DILocation(line: 978, column: 11, scope: !2104)
!2106 = !DILocation(line: 978, column: 9, scope: !2104)
!2107 = !DILocation(line: 978, column: 46, scope: !2104)
!2108 = !DILocation(line: 978, column: 6, scope: !2026)
!2109 = !DILocation(line: 979, column: 22, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 978, column: 55)
!2111 = !DILocation(line: 979, column: 25, scope: !2110)
!2112 = !DILocation(line: 979, column: 3, scope: !2110)
!2113 = !DILocation(line: 981, column: 3, scope: !2110)
!2114 = !DILocation(line: 984, column: 13, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 984, column: 6)
!2116 = !DILocation(line: 984, column: 6, scope: !2115)
!2117 = !DILocation(line: 984, column: 33, scope: !2115)
!2118 = !DILocation(line: 984, column: 6, scope: !2026)
!2119 = !DILocation(line: 985, column: 22, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 984, column: 39)
!2121 = !DILocation(line: 985, column: 25, scope: !2120)
!2122 = !DILocation(line: 985, column: 3, scope: !2120)
!2123 = !DILocation(line: 986, column: 3, scope: !2120)
!2124 = !DILocation(line: 988, column: 12, scope: !2026)
!2125 = !DILocation(line: 988, column: 10, scope: !2026)
!2126 = !DILocation(line: 989, column: 22, scope: !2026)
!2127 = !DILocation(line: 989, column: 2, scope: !2026)
!2128 = !DILocation(line: 989, column: 13, scope: !2026)
!2129 = !DILocation(line: 989, column: 20, scope: !2026)
!2130 = !DILocation(line: 990, column: 37, scope: !2026)
!2131 = !DILocation(line: 990, column: 39, scope: !2026)
!2132 = !DILocation(line: 990, column: 21, scope: !2026)
!2133 = !DILocation(line: 990, column: 2, scope: !2026)
!2134 = !DILocation(line: 990, column: 13, scope: !2026)
!2135 = !DILocation(line: 990, column: 19, scope: !2026)
!2136 = !DILocation(line: 991, column: 49, scope: !2026)
!2137 = !DILocation(line: 991, column: 51, scope: !2026)
!2138 = !DILocation(line: 991, column: 33, scope: !2026)
!2139 = !DILocation(line: 991, column: 27, scope: !2026)
!2140 = !DILocation(line: 991, column: 2, scope: !2026)
!2141 = !DILocation(line: 991, column: 13, scope: !2026)
!2142 = !DILocation(line: 991, column: 25, scope: !2026)
!2143 = !DILocation(line: 992, column: 30, scope: !2026)
!2144 = !DILocation(line: 992, column: 32, scope: !2026)
!2145 = !DILocation(line: 992, column: 21, scope: !2026)
!2146 = !DILocation(line: 992, column: 2, scope: !2026)
!2147 = !DILocation(line: 992, column: 13, scope: !2026)
!2148 = !DILocation(line: 992, column: 19, scope: !2026)
!2149 = !DILocation(line: 993, column: 32, scope: !2026)
!2150 = !DILocation(line: 993, column: 34, scope: !2026)
!2151 = !DILocation(line: 993, column: 16, scope: !2026)
!2152 = !DILocation(line: 993, column: 14, scope: !2026)
!2153 = !DILocation(line: 994, column: 36, scope: !2026)
!2154 = !DILocation(line: 994, column: 38, scope: !2026)
!2155 = !DILocation(line: 994, column: 20, scope: !2026)
!2156 = !DILocation(line: 994, column: 18, scope: !2026)
!2157 = !DILocation(line: 995, column: 38, scope: !2026)
!2158 = !DILocation(line: 995, column: 40, scope: !2026)
!2159 = !DILocation(line: 995, column: 22, scope: !2026)
!2160 = !DILocation(line: 995, column: 20, scope: !2026)
!2161 = !DILocation(line: 996, column: 36, scope: !2026)
!2162 = !DILocation(line: 996, column: 38, scope: !2026)
!2163 = !DILocation(line: 996, column: 20, scope: !2026)
!2164 = !DILocation(line: 996, column: 18, scope: !2026)
!2165 = !DILocation(line: 997, column: 33, scope: !2026)
!2166 = !DILocation(line: 997, column: 35, scope: !2026)
!2167 = !DILocation(line: 997, column: 17, scope: !2026)
!2168 = !DILocation(line: 997, column: 15, scope: !2026)
!2169 = !DILocation(line: 999, column: 19, scope: !2026)
!2170 = !DILocation(line: 999, column: 2, scope: !2026)
!2171 = !DILocation(line: 1001, column: 6, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1001, column: 6)
!2173 = !DILocation(line: 1001, column: 11, scope: !2172)
!2174 = !DILocation(line: 1001, column: 6, scope: !2026)
!2175 = !DILocation(line: 1004, column: 3, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 1001, column: 35)
!2177 = !DILocation(line: 1004, column: 14, scope: !2176)
!2178 = !DILocation(line: 1004, column: 20, scope: !2176)
!2179 = !DILocation(line: 1010, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 1010, column: 7)
!2181 = !DILocation(line: 1010, column: 19, scope: !2180)
!2182 = !DILocation(line: 1010, column: 24, scope: !2180)
!2183 = !DILocation(line: 1010, column: 27, scope: !2180)
!2184 = !DILocation(line: 1010, column: 42, scope: !2180)
!2185 = !DILocation(line: 1010, column: 53, scope: !2180)
!2186 = !DILocation(line: 1010, column: 39, scope: !2180)
!2187 = !DILocation(line: 1010, column: 7, scope: !2176)
!2188 = !DILocation(line: 1011, column: 23, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 1010, column: 60)
!2190 = !DILocation(line: 1011, column: 26, scope: !2189)
!2191 = !DILocation(line: 1011, column: 4, scope: !2189)
!2192 = !DILocation(line: 1014, column: 8, scope: !2189)
!2193 = !DILocation(line: 1015, column: 3, scope: !2189)
!2194 = !DILocation(line: 1016, column: 7, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 1016, column: 7)
!2196 = !DILocation(line: 1016, column: 23, scope: !2195)
!2197 = !DILocation(line: 1017, column: 7, scope: !2195)
!2198 = !DILocation(line: 1017, column: 10, scope: !2195)
!2199 = !DILocation(line: 1017, column: 29, scope: !2195)
!2200 = !DILocation(line: 1017, column: 40, scope: !2195)
!2201 = !DILocation(line: 1017, column: 26, scope: !2195)
!2202 = !DILocation(line: 1016, column: 7, scope: !2176)
!2203 = !DILocation(line: 1018, column: 23, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1017, column: 57)
!2205 = !DILocation(line: 1018, column: 26, scope: !2204)
!2206 = !DILocation(line: 1018, column: 4, scope: !2204)
!2207 = !DILocation(line: 1021, column: 8, scope: !2204)
!2208 = !DILocation(line: 1022, column: 3, scope: !2204)
!2209 = !DILocation(line: 1023, column: 7, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 1023, column: 7)
!2211 = !DILocation(line: 1023, column: 25, scope: !2210)
!2212 = !DILocation(line: 1024, column: 7, scope: !2210)
!2213 = !DILocation(line: 1024, column: 10, scope: !2210)
!2214 = !DILocation(line: 1024, column: 31, scope: !2210)
!2215 = !DILocation(line: 1024, column: 42, scope: !2210)
!2216 = !DILocation(line: 1024, column: 28, scope: !2210)
!2217 = !DILocation(line: 1023, column: 7, scope: !2176)
!2218 = !DILocation(line: 1025, column: 23, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 1024, column: 61)
!2220 = !DILocation(line: 1025, column: 26, scope: !2219)
!2221 = !DILocation(line: 1025, column: 4, scope: !2219)
!2222 = !DILocation(line: 1028, column: 8, scope: !2219)
!2223 = !DILocation(line: 1029, column: 3, scope: !2219)
!2224 = !DILocation(line: 1030, column: 2, scope: !2176)
!2225 = !DILocation(line: 1032, column: 22, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 1030, column: 9)
!2227 = !DILocation(line: 1032, column: 3, scope: !2226)
!2228 = !DILocation(line: 1032, column: 14, scope: !2226)
!2229 = !DILocation(line: 1032, column: 20, scope: !2226)
!2230 = !DILocation(line: 1033, column: 32, scope: !2226)
!2231 = !DILocation(line: 1033, column: 3, scope: !2226)
!2232 = !DILocation(line: 1033, column: 14, scope: !2226)
!2233 = !DILocation(line: 1033, column: 30, scope: !2226)
!2234 = !DILocation(line: 1034, column: 34, scope: !2226)
!2235 = !DILocation(line: 1034, column: 3, scope: !2226)
!2236 = !DILocation(line: 1034, column: 14, scope: !2226)
!2237 = !DILocation(line: 1034, column: 32, scope: !2226)
!2238 = !DILocation(line: 1038, column: 32, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1038, column: 6)
!2240 = !DILocation(line: 1038, column: 35, scope: !2239)
!2241 = !DILocation(line: 1038, column: 11, scope: !2239)
!2242 = !DILocation(line: 1038, column: 9, scope: !2239)
!2243 = !DILocation(line: 1038, column: 59, scope: !2239)
!2244 = !DILocation(line: 1038, column: 6, scope: !2026)
!2245 = !DILocation(line: 1039, column: 22, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 1038, column: 68)
!2247 = !DILocation(line: 1039, column: 25, scope: !2246)
!2248 = !DILocation(line: 1039, column: 3, scope: !2246)
!2249 = !DILocation(line: 1041, column: 3, scope: !2246)
!2250 = !DILocation(line: 1043, column: 6, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1043, column: 6)
!2252 = !DILocation(line: 1043, column: 17, scope: !2251)
!2253 = !DILocation(line: 1043, column: 23, scope: !2251)
!2254 = !DILocation(line: 1043, column: 6, scope: !2026)
!2255 = !DILocation(line: 1045, column: 7, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 1045, column: 7)
!2257 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 1043, column: 40)
!2258 = !DILocation(line: 1045, column: 12, scope: !2256)
!2259 = !DILocation(line: 1045, column: 23, scope: !2256)
!2260 = !DILocation(line: 1045, column: 7, scope: !2257)
!2261 = !DILocation(line: 1048, column: 6, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1045, column: 32)
!2263 = !DILocation(line: 1048, column: 9, scope: !2262)
!2264 = !DILocation(line: 1047, column: 8, scope: !2262)
!2265 = !DILocation(line: 1046, column: 4, scope: !2262)
!2266 = !DILocation(line: 1046, column: 9, scope: !2262)
!2267 = !DILocation(line: 1046, column: 20, scope: !2262)
!2268 = !DILocation(line: 1049, column: 8, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 1049, column: 8)
!2270 = !DILocation(line: 1049, column: 13, scope: !2269)
!2271 = !DILocation(line: 1049, column: 24, scope: !2269)
!2272 = !DILocation(line: 1049, column: 8, scope: !2262)
!2273 = !DILocation(line: 1050, column: 5, scope: !2269)
!2274 = !DILocation(line: 1051, column: 3, scope: !2262)
!2275 = !DILocation(line: 1052, column: 11, scope: !2257)
!2276 = !DILocation(line: 1052, column: 16, scope: !2257)
!2277 = !DILocation(line: 1052, column: 9, scope: !2257)
!2278 = !DILocation(line: 1053, column: 2, scope: !2257)
!2279 = !DILocation(line: 1053, column: 13, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 1053, column: 13)
!2281 = !DILocation(line: 1053, column: 18, scope: !2280)
!2282 = !DILocation(line: 1053, column: 24, scope: !2280)
!2283 = !DILocation(line: 1053, column: 13, scope: !2251)
!2284 = !DILocation(line: 1054, column: 11, scope: !2280)
!2285 = !DILocation(line: 1054, column: 16, scope: !2280)
!2286 = !DILocation(line: 1054, column: 9, scope: !2280)
!2287 = !DILocation(line: 1054, column: 3, scope: !2280)
!2288 = !DILocation(line: 1056, column: 11, scope: !2280)
!2289 = !DILocation(line: 1056, column: 16, scope: !2280)
!2290 = !DILocation(line: 1056, column: 9, scope: !2280)
!2291 = !DILocation(line: 1058, column: 36, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1058, column: 6)
!2293 = !DILocation(line: 1059, column: 6, scope: !2292)
!2294 = !DILocation(line: 1059, column: 9, scope: !2292)
!2295 = !DILocation(line: 1059, column: 26, scope: !2292)
!2296 = !DILocation(line: 1058, column: 6, scope: !2292)
!2297 = !DILocation(line: 1059, column: 33, scope: !2292)
!2298 = !DILocation(line: 1058, column: 6, scope: !2026)
!2299 = !DILocation(line: 1060, column: 7, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 1060, column: 7)
!2301 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 1059, column: 39)
!2302 = !DILocation(line: 1060, column: 13, scope: !2300)
!2303 = !DILocation(line: 1060, column: 7, scope: !2301)
!2304 = !DILocation(line: 1061, column: 23, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 1060, column: 24)
!2306 = !DILocation(line: 1061, column: 26, scope: !2305)
!2307 = !DILocation(line: 1061, column: 4, scope: !2305)
!2308 = !DILocation(line: 1063, column: 4, scope: !2305)
!2309 = !DILocation(line: 1065, column: 22, scope: !2301)
!2310 = !DILocation(line: 1065, column: 25, scope: !2301)
!2311 = !DILocation(line: 1069, column: 46, scope: !2301)
!2312 = !DILocation(line: 1069, column: 7, scope: !2301)
!2313 = !DILocation(line: 1065, column: 3, scope: !2301)
!2314 = !DILocation(line: 1070, column: 7, scope: !2301)
!2315 = !DILocation(line: 1071, column: 2, scope: !2301)
!2316 = !DILocation(line: 1072, column: 19, scope: !2026)
!2317 = !DILocation(line: 1072, column: 22, scope: !2026)
!2318 = !DILocation(line: 1072, column: 2, scope: !2026)
!2319 = !DILocation(line: 1074, column: 6, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1074, column: 6)
!2321 = !DILocation(line: 1074, column: 17, scope: !2320)
!2322 = !DILocation(line: 1074, column: 22, scope: !2320)
!2323 = !DILocation(line: 1074, column: 6, scope: !2026)
!2324 = !DILocation(line: 1078, column: 33, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 1074, column: 28)
!2326 = !DILocation(line: 1078, column: 8, scope: !2325)
!2327 = !DILocation(line: 1078, column: 6, scope: !2325)
!2328 = !DILocation(line: 1079, column: 7, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 1079, column: 7)
!2330 = !DILocation(line: 1079, column: 10, scope: !2329)
!2331 = !DILocation(line: 1079, column: 7, scope: !2325)
!2332 = !DILocation(line: 1080, column: 17, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 1079, column: 19)
!2334 = !DILocation(line: 1080, column: 10, scope: !2333)
!2335 = !DILocation(line: 1080, column: 8, scope: !2333)
!2336 = !DILocation(line: 1081, column: 8, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 1081, column: 8)
!2338 = !DILocation(line: 1081, column: 12, scope: !2337)
!2339 = !DILocation(line: 1081, column: 16, scope: !2337)
!2340 = !DILocation(line: 1081, column: 19, scope: !2337)
!2341 = !DILocation(line: 1081, column: 22, scope: !2337)
!2342 = !DILocation(line: 1081, column: 26, scope: !2337)
!2343 = !DILocation(line: 1081, column: 31, scope: !2337)
!2344 = !DILocation(line: 1081, column: 8, scope: !2333)
!2345 = !DILocation(line: 1082, column: 5, scope: !2337)
!2346 = !DILocation(line: 1082, column: 16, scope: !2337)
!2347 = !DILocation(line: 1082, column: 21, scope: !2337)
!2348 = !DILocation(line: 1084, column: 5, scope: !2337)
!2349 = !DILocation(line: 1084, column: 16, scope: !2337)
!2350 = !DILocation(line: 1084, column: 21, scope: !2337)
!2351 = !DILocation(line: 1085, column: 3, scope: !2333)
!2352 = !DILocation(line: 1086, column: 32, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 1085, column: 10)
!2354 = !DILocation(line: 1086, column: 9, scope: !2353)
!2355 = !DILocation(line: 1086, column: 7, scope: !2353)
!2356 = !DILocation(line: 1087, column: 11, scope: !2353)
!2357 = !DILocation(line: 1087, column: 14, scope: !2353)
!2358 = !DILocation(line: 1087, column: 10, scope: !2353)
!2359 = !DILocation(line: 1087, column: 30, scope: !2353)
!2360 = !DILocation(line: 1087, column: 23, scope: !2353)
!2361 = !DILocation(line: 1087, column: 8, scope: !2353)
!2362 = !DILocation(line: 1088, column: 8, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 1088, column: 8)
!2364 = !DILocation(line: 1088, column: 12, scope: !2363)
!2365 = !DILocation(line: 1088, column: 16, scope: !2363)
!2366 = !DILocation(line: 1088, column: 19, scope: !2363)
!2367 = !DILocation(line: 1088, column: 22, scope: !2363)
!2368 = !DILocation(line: 1088, column: 26, scope: !2363)
!2369 = !DILocation(line: 1088, column: 31, scope: !2363)
!2370 = !DILocation(line: 1088, column: 8, scope: !2353)
!2371 = !DILocation(line: 1089, column: 5, scope: !2363)
!2372 = !DILocation(line: 1089, column: 16, scope: !2363)
!2373 = !DILocation(line: 1089, column: 21, scope: !2363)
!2374 = !DILocation(line: 1091, column: 5, scope: !2363)
!2375 = !DILocation(line: 1091, column: 16, scope: !2363)
!2376 = !DILocation(line: 1091, column: 21, scope: !2363)
!2377 = !DILocation(line: 1093, column: 2, scope: !2325)
!2378 = !DILocation(line: 1096, column: 32, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1096, column: 6)
!2380 = !DILocation(line: 1096, column: 35, scope: !2379)
!2381 = !DILocation(line: 1096, column: 11, scope: !2379)
!2382 = !DILocation(line: 1096, column: 9, scope: !2379)
!2383 = !DILocation(line: 1096, column: 56, scope: !2379)
!2384 = !DILocation(line: 1096, column: 6, scope: !2026)
!2385 = !DILocation(line: 1097, column: 22, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 1096, column: 65)
!2387 = !DILocation(line: 1097, column: 25, scope: !2386)
!2388 = !DILocation(line: 1097, column: 3, scope: !2386)
!2389 = !DILocation(line: 1099, column: 3, scope: !2386)
!2390 = !DILocation(line: 1101, column: 16, scope: !2026)
!2391 = !DILocation(line: 1101, column: 19, scope: !2026)
!2392 = !DILocation(line: 1101, column: 33, scope: !2026)
!2393 = !DILocation(line: 1101, column: 2, scope: !2026)
!2394 = !DILocation(line: 1102, column: 19, scope: !2026)
!2395 = !DILocation(line: 1102, column: 22, scope: !2026)
!2396 = !DILocation(line: 1102, column: 2, scope: !2026)
!2397 = !DILocation(line: 1105, column: 25, scope: !2026)
!2398 = !DILocation(line: 1105, column: 32, scope: !2026)
!2399 = !DILocation(line: 1105, column: 43, scope: !2026)
!2400 = !DILocation(line: 1105, column: 2, scope: !2026)
!2401 = !DILocation(line: 1106, column: 24, scope: !2026)
!2402 = !DILocation(line: 1106, column: 31, scope: !2026)
!2403 = !DILocation(line: 1106, column: 42, scope: !2026)
!2404 = !DILocation(line: 1106, column: 2, scope: !2026)
!2405 = !DILocation(line: 1107, column: 24, scope: !2026)
!2406 = !DILocation(line: 1107, column: 31, scope: !2026)
!2407 = !DILocation(line: 1107, column: 42, scope: !2026)
!2408 = !DILocation(line: 1107, column: 2, scope: !2026)
!2409 = !DILocation(line: 1108, column: 26, scope: !2026)
!2410 = !DILocation(line: 1108, column: 33, scope: !2026)
!2411 = !DILocation(line: 1108, column: 44, scope: !2026)
!2412 = !DILocation(line: 1108, column: 2, scope: !2026)
!2413 = !DILocation(line: 1109, column: 26, scope: !2026)
!2414 = !DILocation(line: 1109, column: 33, scope: !2026)
!2415 = !DILocation(line: 1109, column: 44, scope: !2026)
!2416 = !DILocation(line: 1109, column: 2, scope: !2026)
!2417 = !DILocation(line: 1110, column: 26, scope: !2026)
!2418 = !DILocation(line: 1110, column: 33, scope: !2026)
!2419 = !DILocation(line: 1110, column: 44, scope: !2026)
!2420 = !DILocation(line: 1110, column: 2, scope: !2026)
!2421 = !DILocation(line: 1112, column: 12, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1112, column: 6)
!2423 = !DILocation(line: 1112, column: 23, scope: !2422)
!2424 = !DILocation(line: 1112, column: 29, scope: !2422)
!2425 = !DILocation(line: 1112, column: 8, scope: !2422)
!2426 = !DILocation(line: 1112, column: 6, scope: !2026)
!2427 = !DILocation(line: 1113, column: 26, scope: !2422)
!2428 = !DILocation(line: 1113, column: 33, scope: !2422)
!2429 = !DILocation(line: 1113, column: 44, scope: !2422)
!2430 = !DILocation(line: 1113, column: 3, scope: !2422)
!2431 = !DILocation(line: 1115, column: 31, scope: !2026)
!2432 = !DILocation(line: 1115, column: 42, scope: !2026)
!2433 = !DILocation(line: 1115, column: 2, scope: !2026)
!2434 = !DILocation(line: 1115, column: 7, scope: !2026)
!2435 = !DILocation(line: 1115, column: 29, scope: !2026)
!2436 = !DILocation(line: 1118, column: 12, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1118, column: 6)
!2438 = !DILocation(line: 1118, column: 23, scope: !2437)
!2439 = !DILocation(line: 1118, column: 29, scope: !2437)
!2440 = !DILocation(line: 1118, column: 8, scope: !2437)
!2441 = !DILocation(line: 1119, column: 6, scope: !2437)
!2442 = !DILocation(line: 1119, column: 9, scope: !2437)
!2443 = !DILocation(line: 1119, column: 14, scope: !2437)
!2444 = !DILocation(line: 1119, column: 36, scope: !2437)
!2445 = !DILocation(line: 1118, column: 6, scope: !2026)
!2446 = !DILocation(line: 1120, column: 3, scope: !2437)
!2447 = !DILocation(line: 1120, column: 8, scope: !2437)
!2448 = !DILocation(line: 1120, column: 21, scope: !2437)
!2449 = !DILocation(line: 1123, column: 10, scope: !2026)
!2450 = !DILocation(line: 1123, column: 15, scope: !2026)
!2451 = !DILocation(line: 1124, column: 6, scope: !2026)
!2452 = !DILocation(line: 1124, column: 14, scope: !2026)
!2453 = !DILocation(line: 1124, column: 20, scope: !2026)
!2454 = !DILocation(line: 1124, column: 28, scope: !2026)
!2455 = !DILocation(line: 1125, column: 23, scope: !2026)
!2456 = !DILocation(line: 1125, column: 28, scope: !2026)
!2457 = !DILocation(line: 1125, column: 35, scope: !2026)
!2458 = !DILocation(line: 1125, column: 6, scope: !2026)
!2459 = !DILocation(line: 1123, column: 2, scope: !2026)
!2460 = !DILocation(line: 1126, column: 35, scope: !2026)
!2461 = !DILocation(line: 1126, column: 40, scope: !2026)
!2462 = !DILocation(line: 1126, column: 2, scope: !2026)
!2463 = !DILocation(line: 1126, column: 5, scope: !2026)
!2464 = !DILocation(line: 1126, column: 13, scope: !2026)
!2465 = !DILocation(line: 1126, column: 33, scope: !2026)
!2466 = !DILocation(line: 1128, column: 10, scope: !2026)
!2467 = !DILocation(line: 1128, column: 2, scope: !2026)
!2468 = !DILocation(line: 1129, column: 1, scope: !2026)
!2469 = distinct !DISubprogram(name: "zip_read_mac_metadata", scope: !3, file: !3, line: 551, type: !2470, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!6, !7, !32, !279}
!2472 = !DILocalVariable(name: "a", arg: 1, scope: !2469, file: !3, line: 551, type: !7)
!2473 = !DILocation(line: 551, column: 44, scope: !2469)
!2474 = !DILocalVariable(name: "entry", arg: 2, scope: !2469, file: !3, line: 551, type: !32)
!2475 = !DILocation(line: 551, column: 69, scope: !2469)
!2476 = !DILocalVariable(name: "rsrc", arg: 3, scope: !2469, file: !3, line: 552, type: !279)
!2477 = !DILocation(line: 552, column: 23, scope: !2469)
!2478 = !DILocalVariable(name: "zip", scope: !2469, file: !3, line: 554, type: !268)
!2479 = !DILocation(line: 554, column: 14, scope: !2469)
!2480 = !DILocation(line: 554, column: 34, scope: !2469)
!2481 = !DILocation(line: 554, column: 37, scope: !2469)
!2482 = !DILocation(line: 554, column: 45, scope: !2469)
!2483 = !DILocation(line: 554, column: 20, scope: !2469)
!2484 = !DILocalVariable(name: "metadata", scope: !2469, file: !3, line: 555, type: !353)
!2485 = !DILocation(line: 555, column: 17, scope: !2469)
!2486 = !DILocalVariable(name: "mp", scope: !2469, file: !3, line: 555, type: !353)
!2487 = !DILocation(line: 555, column: 28, scope: !2469)
!2488 = !DILocalVariable(name: "offset", scope: !2469, file: !3, line: 556, type: !54)
!2489 = !DILocation(line: 556, column: 10, scope: !2469)
!2490 = !DILocation(line: 556, column: 19, scope: !2469)
!2491 = !DILocation(line: 556, column: 24, scope: !2469)
!2492 = !DILocalVariable(name: "remaining_bytes", scope: !2469, file: !3, line: 557, type: !47)
!2493 = !DILocation(line: 557, column: 9, scope: !2469)
!2494 = !DILocalVariable(name: "metadata_bytes", scope: !2469, file: !3, line: 557, type: !47)
!2495 = !DILocation(line: 557, column: 26, scope: !2469)
!2496 = !DILocalVariable(name: "hsize", scope: !2469, file: !3, line: 558, type: !40)
!2497 = !DILocation(line: 558, column: 10, scope: !2469)
!2498 = !DILocalVariable(name: "ret", scope: !2469, file: !3, line: 559, type: !6)
!2499 = !DILocation(line: 559, column: 6, scope: !2469)
!2500 = !DILocalVariable(name: "eof", scope: !2469, file: !3, line: 559, type: !6)
!2501 = !DILocation(line: 559, column: 24, scope: !2469)
!2502 = !DILocation(line: 561, column: 9, scope: !2469)
!2503 = !DILocation(line: 561, column: 15, scope: !2469)
!2504 = !DILocation(line: 561, column: 2, scope: !2469)
!2505 = !DILocation(line: 566, column: 3, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 561, column: 28)
!2507 = !DILocation(line: 569, column: 22, scope: !2506)
!2508 = !DILocation(line: 569, column: 25, scope: !2506)
!2509 = !DILocation(line: 571, column: 24, scope: !2506)
!2510 = !DILocation(line: 571, column: 30, scope: !2506)
!2511 = !DILocation(line: 571, column: 7, scope: !2506)
!2512 = !DILocation(line: 569, column: 3, scope: !2506)
!2513 = !DILocation(line: 574, column: 3, scope: !2506)
!2514 = !DILocation(line: 577, column: 6, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 577, column: 6)
!2516 = !DILocation(line: 577, column: 12, scope: !2515)
!2517 = !DILocation(line: 577, column: 30, scope: !2515)
!2518 = !DILocation(line: 577, column: 6, scope: !2469)
!2519 = !DILocation(line: 578, column: 22, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 577, column: 46)
!2521 = !DILocation(line: 578, column: 25, scope: !2520)
!2522 = !DILocation(line: 580, column: 17, scope: !2520)
!2523 = !DILocation(line: 580, column: 23, scope: !2520)
!2524 = !DILocation(line: 578, column: 3, scope: !2520)
!2525 = !DILocation(line: 581, column: 3, scope: !2520)
!2526 = !DILocation(line: 584, column: 28, scope: !2469)
!2527 = !DILocation(line: 584, column: 34, scope: !2469)
!2528 = !DILocation(line: 584, column: 13, scope: !2469)
!2529 = !DILocation(line: 584, column: 11, scope: !2469)
!2530 = !DILocation(line: 585, column: 6, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 585, column: 6)
!2532 = !DILocation(line: 585, column: 15, scope: !2531)
!2533 = !DILocation(line: 585, column: 6, scope: !2469)
!2534 = !DILocation(line: 586, column: 22, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 585, column: 24)
!2536 = !DILocation(line: 586, column: 25, scope: !2535)
!2537 = !DILocation(line: 586, column: 3, scope: !2535)
!2538 = !DILocation(line: 588, column: 3, scope: !2535)
!2539 = !DILocation(line: 591, column: 6, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 591, column: 6)
!2541 = !DILocation(line: 591, column: 11, scope: !2540)
!2542 = !DILocation(line: 591, column: 20, scope: !2540)
!2543 = !DILocation(line: 591, column: 26, scope: !2540)
!2544 = !DILocation(line: 591, column: 18, scope: !2540)
!2545 = !DILocation(line: 591, column: 6, scope: !2469)
!2546 = !DILocation(line: 592, column: 20, scope: !2540)
!2547 = !DILocation(line: 592, column: 23, scope: !2540)
!2548 = !DILocation(line: 592, column: 29, scope: !2540)
!2549 = !DILocation(line: 592, column: 51, scope: !2540)
!2550 = !DILocation(line: 592, column: 56, scope: !2540)
!2551 = !DILocation(line: 592, column: 49, scope: !2540)
!2552 = !DILocation(line: 592, column: 3, scope: !2540)
!2553 = !DILocation(line: 593, column: 11, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 593, column: 11)
!2555 = !DILocation(line: 593, column: 16, scope: !2554)
!2556 = !DILocation(line: 593, column: 26, scope: !2554)
!2557 = !DILocation(line: 593, column: 32, scope: !2554)
!2558 = !DILocation(line: 593, column: 23, scope: !2554)
!2559 = !DILocation(line: 593, column: 11, scope: !2540)
!2560 = !DILocation(line: 594, column: 23, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 593, column: 53)
!2562 = !DILocation(line: 594, column: 26, scope: !2561)
!2563 = !DILocation(line: 594, column: 32, scope: !2561)
!2564 = !DILocation(line: 594, column: 3, scope: !2561)
!2565 = !DILocation(line: 595, column: 17, scope: !2561)
!2566 = !DILocation(line: 595, column: 22, scope: !2561)
!2567 = !DILocation(line: 595, column: 29, scope: !2561)
!2568 = !DILocation(line: 595, column: 3, scope: !2561)
!2569 = !DILocation(line: 595, column: 8, scope: !2561)
!2570 = !DILocation(line: 595, column: 15, scope: !2561)
!2571 = !DILocation(line: 596, column: 2, scope: !2561)
!2572 = !DILocation(line: 598, column: 41, scope: !2469)
!2573 = !DILocation(line: 598, column: 10, scope: !2469)
!2574 = !DILocation(line: 598, column: 8, scope: !2469)
!2575 = !DILocation(line: 599, column: 19, scope: !2469)
!2576 = !DILocation(line: 599, column: 22, scope: !2469)
!2577 = !DILocation(line: 599, column: 2, scope: !2469)
!2578 = !DILocation(line: 601, column: 28, scope: !2469)
!2579 = !DILocation(line: 601, column: 34, scope: !2469)
!2580 = !DILocation(line: 601, column: 18, scope: !2469)
!2581 = !DILocation(line: 602, column: 27, scope: !2469)
!2582 = !DILocation(line: 602, column: 33, scope: !2469)
!2583 = !DILocation(line: 602, column: 17, scope: !2469)
!2584 = !DILocation(line: 603, column: 7, scope: !2469)
!2585 = !DILocation(line: 603, column: 5, scope: !2469)
!2586 = !DILocation(line: 604, column: 6, scope: !2469)
!2587 = !DILocation(line: 605, column: 2, scope: !2469)
!2588 = !DILocation(line: 605, column: 10, scope: !2469)
!2589 = !DILocation(line: 605, column: 14, scope: !2469)
!2590 = !DILocation(line: 605, column: 17, scope: !2469)
!2591 = !DILocation(line: 0, scope: !2469)
!2592 = !DILocalVariable(name: "p", scope: !2593, file: !3, line: 606, type: !405)
!2593 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 605, column: 34)
!2594 = !DILocation(line: 606, column: 24, scope: !2593)
!2595 = !DILocalVariable(name: "bytes_avail", scope: !2593, file: !3, line: 607, type: !40)
!2596 = !DILocation(line: 607, column: 11, scope: !2593)
!2597 = !DILocalVariable(name: "bytes_used", scope: !2593, file: !3, line: 608, type: !47)
!2598 = !DILocation(line: 608, column: 10, scope: !2593)
!2599 = !DILocation(line: 610, column: 28, scope: !2593)
!2600 = !DILocation(line: 610, column: 7, scope: !2593)
!2601 = !DILocation(line: 610, column: 5, scope: !2593)
!2602 = !DILocation(line: 611, column: 7, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 611, column: 7)
!2604 = !DILocation(line: 611, column: 9, scope: !2603)
!2605 = !DILocation(line: 611, column: 7, scope: !2593)
!2606 = !DILocation(line: 612, column: 23, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 611, column: 18)
!2608 = !DILocation(line: 612, column: 26, scope: !2607)
!2609 = !DILocation(line: 612, column: 4, scope: !2607)
!2610 = !DILocation(line: 615, column: 8, scope: !2607)
!2611 = !DILocation(line: 616, column: 4, scope: !2607)
!2612 = !DILocation(line: 618, column: 15, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 618, column: 7)
!2614 = !DILocation(line: 618, column: 29, scope: !2613)
!2615 = !DILocation(line: 618, column: 27, scope: !2613)
!2616 = !DILocation(line: 618, column: 7, scope: !2593)
!2617 = !DILocation(line: 619, column: 18, scope: !2613)
!2618 = !DILocation(line: 619, column: 16, scope: !2613)
!2619 = !DILocation(line: 619, column: 4, scope: !2613)
!2620 = !DILocation(line: 620, column: 10, scope: !2593)
!2621 = !DILocation(line: 620, column: 16, scope: !2593)
!2622 = !DILocation(line: 620, column: 3, scope: !2593)
!2623 = !DILocation(line: 622, column: 11, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 620, column: 29)
!2625 = !DILocation(line: 622, column: 15, scope: !2624)
!2626 = !DILocation(line: 622, column: 18, scope: !2624)
!2627 = !DILocation(line: 622, column: 4, scope: !2624)
!2628 = !DILocation(line: 623, column: 25, scope: !2624)
!2629 = !DILocation(line: 623, column: 15, scope: !2624)
!2630 = !DILocation(line: 624, column: 22, scope: !2624)
!2631 = !DILocation(line: 624, column: 19, scope: !2624)
!2632 = !DILocation(line: 625, column: 10, scope: !2624)
!2633 = !DILocation(line: 625, column: 7, scope: !2624)
!2634 = !DILocation(line: 626, column: 8, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 626, column: 8)
!2636 = !DILocation(line: 626, column: 23, scope: !2635)
!2637 = !DILocation(line: 626, column: 8, scope: !2624)
!2638 = !DILocation(line: 627, column: 9, scope: !2635)
!2639 = !DILocation(line: 627, column: 5, scope: !2635)
!2640 = !DILocation(line: 628, column: 4, scope: !2624)
!2641 = !DILocalVariable(name: "r", scope: !2642, file: !3, line: 632, type: !6)
!2642 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 631, column: 3)
!2643 = !DILocation(line: 632, column: 8, scope: !2642)
!2644 = !DILocation(line: 634, column: 27, scope: !2642)
!2645 = !DILocation(line: 634, column: 30, scope: !2642)
!2646 = !DILocation(line: 634, column: 10, scope: !2642)
!2647 = !DILocation(line: 634, column: 8, scope: !2642)
!2648 = !DILocation(line: 635, column: 8, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 635, column: 8)
!2650 = !DILocation(line: 635, column: 12, scope: !2649)
!2651 = !DILocation(line: 635, column: 8, scope: !2642)
!2652 = !DILocation(line: 636, column: 5, scope: !2649)
!2653 = !DILocation(line: 638, column: 42, scope: !2642)
!2654 = !DILocation(line: 638, column: 17, scope: !2642)
!2655 = !DILocation(line: 638, column: 8, scope: !2642)
!2656 = !DILocation(line: 637, column: 4, scope: !2642)
!2657 = !DILocation(line: 637, column: 9, scope: !2642)
!2658 = !DILocation(line: 637, column: 16, scope: !2642)
!2659 = !DILocation(line: 637, column: 24, scope: !2642)
!2660 = !DILocation(line: 639, column: 33, scope: !2642)
!2661 = !DILocation(line: 639, column: 27, scope: !2642)
!2662 = !DILocation(line: 639, column: 4, scope: !2642)
!2663 = !DILocation(line: 639, column: 9, scope: !2642)
!2664 = !DILocation(line: 639, column: 16, scope: !2642)
!2665 = !DILocation(line: 639, column: 25, scope: !2642)
!2666 = !DILocation(line: 640, column: 4, scope: !2642)
!2667 = !DILocation(line: 640, column: 9, scope: !2642)
!2668 = !DILocation(line: 640, column: 16, scope: !2642)
!2669 = !DILocation(line: 640, column: 25, scope: !2642)
!2670 = !DILocation(line: 641, column: 27, scope: !2642)
!2671 = !DILocation(line: 641, column: 4, scope: !2642)
!2672 = !DILocation(line: 641, column: 9, scope: !2642)
!2673 = !DILocation(line: 641, column: 16, scope: !2642)
!2674 = !DILocation(line: 641, column: 25, scope: !2642)
!2675 = !DILocation(line: 642, column: 34, scope: !2642)
!2676 = !DILocation(line: 642, column: 28, scope: !2642)
!2677 = !DILocation(line: 642, column: 4, scope: !2642)
!2678 = !DILocation(line: 642, column: 9, scope: !2642)
!2679 = !DILocation(line: 642, column: 16, scope: !2642)
!2680 = !DILocation(line: 642, column: 26, scope: !2642)
!2681 = !DILocation(line: 643, column: 4, scope: !2642)
!2682 = !DILocation(line: 643, column: 9, scope: !2642)
!2683 = !DILocation(line: 643, column: 16, scope: !2642)
!2684 = !DILocation(line: 643, column: 26, scope: !2642)
!2685 = !DILocation(line: 645, column: 17, scope: !2642)
!2686 = !DILocation(line: 645, column: 22, scope: !2642)
!2687 = !DILocation(line: 645, column: 8, scope: !2642)
!2688 = !DILocation(line: 645, column: 6, scope: !2642)
!2689 = !DILocation(line: 646, column: 12, scope: !2642)
!2690 = !DILocation(line: 646, column: 4, scope: !2642)
!2691 = !DILocation(line: 648, column: 5, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 646, column: 15)
!2693 = !DILocation(line: 650, column: 9, scope: !2692)
!2694 = !DILocation(line: 651, column: 5, scope: !2692)
!2695 = !DILocation(line: 653, column: 24, scope: !2692)
!2696 = !DILocation(line: 653, column: 27, scope: !2692)
!2697 = !DILocation(line: 653, column: 5, scope: !2692)
!2698 = !DILocation(line: 655, column: 9, scope: !2692)
!2699 = !DILocation(line: 656, column: 5, scope: !2692)
!2700 = !DILocation(line: 658, column: 24, scope: !2692)
!2701 = !DILocation(line: 658, column: 27, scope: !2692)
!2702 = !DILocation(line: 660, column: 42, scope: !2692)
!2703 = !DILocation(line: 658, column: 5, scope: !2692)
!2704 = !DILocation(line: 661, column: 9, scope: !2692)
!2705 = !DILocation(line: 662, column: 5, scope: !2692)
!2706 = !DILocation(line: 664, column: 17, scope: !2642)
!2707 = !DILocation(line: 664, column: 22, scope: !2642)
!2708 = !DILocation(line: 664, column: 29, scope: !2642)
!2709 = !DILocation(line: 664, column: 15, scope: !2642)
!2710 = !DILocation(line: 665, column: 22, scope: !2642)
!2711 = !DILocation(line: 665, column: 27, scope: !2642)
!2712 = !DILocation(line: 665, column: 34, scope: !2642)
!2713 = !DILocation(line: 665, column: 19, scope: !2642)
!2714 = !DILocation(line: 666, column: 10, scope: !2642)
!2715 = !DILocation(line: 666, column: 15, scope: !2642)
!2716 = !DILocation(line: 666, column: 22, scope: !2642)
!2717 = !DILocation(line: 666, column: 7, scope: !2642)
!2718 = !DILocation(line: 667, column: 4, scope: !2642)
!2719 = !DILocation(line: 671, column: 15, scope: !2624)
!2720 = !DILocation(line: 672, column: 4, scope: !2624)
!2721 = !DILocation(line: 674, column: 20, scope: !2593)
!2722 = !DILocation(line: 674, column: 23, scope: !2593)
!2723 = !DILocation(line: 674, column: 3, scope: !2593)
!2724 = !DILocation(line: 675, column: 22, scope: !2593)
!2725 = !DILocation(line: 675, column: 19, scope: !2593)
!2726 = distinct !{!2726, !2587, !2727, !749}
!2727 = !DILocation(line: 676, column: 2, scope: !2469)
!2728 = !DILocation(line: 677, column: 34, scope: !2469)
!2729 = !DILocation(line: 677, column: 41, scope: !2469)
!2730 = !DILocation(line: 678, column: 14, scope: !2469)
!2731 = !DILocation(line: 678, column: 20, scope: !2469)
!2732 = !DILocation(line: 678, column: 40, scope: !2469)
!2733 = !DILocation(line: 678, column: 38, scope: !2469)
!2734 = !DILocation(line: 677, column: 2, scope: !2469)
!2735 = !DILocation(line: 680, column: 22, scope: !2469)
!2736 = !DILocation(line: 680, column: 25, scope: !2469)
!2737 = !DILocation(line: 680, column: 2, scope: !2469)
!2738 = !DILocation(line: 681, column: 16, scope: !2469)
!2739 = !DILocation(line: 681, column: 2, scope: !2469)
!2740 = !DILocation(line: 681, column: 7, scope: !2469)
!2741 = !DILocation(line: 681, column: 14, scope: !2469)
!2742 = !DILabel(scope: !2469, name: "exit_mac_metadata", file: !3, line: 682)
!2743 = !DILocation(line: 682, column: 1, scope: !2469)
!2744 = !DILocation(line: 683, column: 2, scope: !2469)
!2745 = !DILocation(line: 683, column: 7, scope: !2469)
!2746 = !DILocation(line: 683, column: 23, scope: !2469)
!2747 = !DILocation(line: 684, column: 7, scope: !2469)
!2748 = !DILocation(line: 684, column: 2, scope: !2469)
!2749 = !DILocation(line: 685, column: 10, scope: !2469)
!2750 = !DILocation(line: 685, column: 2, scope: !2469)
!2751 = !DILocation(line: 686, column: 1, scope: !2469)
!2752 = distinct !DISubprogram(name: "cmp_node", scope: !3, file: !3, line: 333, type: !332, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2753 = !DILocalVariable(name: "n1", arg: 1, scope: !2752, file: !3, line: 333, type: !334)
!2754 = !DILocation(line: 333, column: 40, scope: !2752)
!2755 = !DILocalVariable(name: "n2", arg: 2, scope: !2752, file: !3, line: 333, type: !334)
!2756 = !DILocation(line: 333, column: 74, scope: !2752)
!2757 = !DILocalVariable(name: "e1", scope: !2752, file: !3, line: 335, type: !409)
!2758 = !DILocation(line: 335, column: 26, scope: !2752)
!2759 = !DILocation(line: 335, column: 57, scope: !2752)
!2760 = !DILocation(line: 335, column: 31, scope: !2752)
!2761 = !DILocalVariable(name: "e2", scope: !2752, file: !3, line: 336, type: !409)
!2762 = !DILocation(line: 336, column: 26, scope: !2752)
!2763 = !DILocation(line: 336, column: 57, scope: !2752)
!2764 = !DILocation(line: 336, column: 31, scope: !2752)
!2765 = !DILocation(line: 338, column: 16, scope: !2752)
!2766 = !DILocation(line: 338, column: 20, scope: !2752)
!2767 = !DILocation(line: 338, column: 42, scope: !2752)
!2768 = !DILocation(line: 338, column: 46, scope: !2752)
!2769 = !DILocation(line: 338, column: 40, scope: !2752)
!2770 = !DILocation(line: 338, column: 10, scope: !2752)
!2771 = !DILocation(line: 338, column: 2, scope: !2752)
!2772 = distinct !DISubprogram(name: "cmp_key", scope: !3, file: !3, line: 342, type: !340, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2773 = !DILocalVariable(name: "n", arg: 1, scope: !2772, file: !3, line: 342, type: !334)
!2774 = !DILocation(line: 342, column: 39, scope: !2772)
!2775 = !DILocalVariable(name: "key", arg: 2, scope: !2772, file: !3, line: 342, type: !45)
!2776 = !DILocation(line: 342, column: 54, scope: !2772)
!2777 = !DILocation(line: 345, column: 8, scope: !2772)
!2778 = !DILocation(line: 346, column: 8, scope: !2772)
!2779 = !DILocation(line: 347, column: 2, scope: !2772)
!2780 = distinct !DISubprogram(name: "rsrc_cmp_node", scope: !3, file: !3, line: 351, type: !332, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2781 = !DILocalVariable(name: "n1", arg: 1, scope: !2780, file: !3, line: 351, type: !334)
!2782 = !DILocation(line: 351, column: 45, scope: !2780)
!2783 = !DILocalVariable(name: "n2", arg: 2, scope: !2780, file: !3, line: 352, type: !334)
!2784 = !DILocation(line: 352, column: 35, scope: !2780)
!2785 = !DILocalVariable(name: "e1", scope: !2780, file: !3, line: 354, type: !409)
!2786 = !DILocation(line: 354, column: 26, scope: !2780)
!2787 = !DILocation(line: 354, column: 57, scope: !2780)
!2788 = !DILocation(line: 354, column: 31, scope: !2780)
!2789 = !DILocalVariable(name: "e2", scope: !2780, file: !3, line: 355, type: !409)
!2790 = !DILocation(line: 355, column: 26, scope: !2780)
!2791 = !DILocation(line: 355, column: 57, scope: !2780)
!2792 = !DILocation(line: 355, column: 31, scope: !2780)
!2793 = !DILocation(line: 357, column: 17, scope: !2780)
!2794 = !DILocation(line: 357, column: 21, scope: !2780)
!2795 = !DILocation(line: 357, column: 30, scope: !2780)
!2796 = !DILocation(line: 357, column: 33, scope: !2780)
!2797 = !DILocation(line: 357, column: 37, scope: !2780)
!2798 = !DILocation(line: 357, column: 46, scope: !2780)
!2799 = !DILocation(line: 357, column: 10, scope: !2780)
!2800 = !DILocation(line: 357, column: 2, scope: !2780)
!2801 = distinct !DISubprogram(name: "rsrc_cmp_key", scope: !3, file: !3, line: 361, type: !340, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2802 = !DILocalVariable(name: "n", arg: 1, scope: !2801, file: !3, line: 361, type: !334)
!2803 = !DILocation(line: 361, column: 44, scope: !2801)
!2804 = !DILocalVariable(name: "key", arg: 2, scope: !2801, file: !3, line: 361, type: !45)
!2805 = !DILocation(line: 361, column: 59, scope: !2801)
!2806 = !DILocalVariable(name: "e", scope: !2801, file: !3, line: 363, type: !409)
!2807 = !DILocation(line: 363, column: 26, scope: !2801)
!2808 = !DILocation(line: 363, column: 56, scope: !2801)
!2809 = !DILocation(line: 363, column: 30, scope: !2801)
!2810 = !DILocation(line: 364, column: 31, scope: !2801)
!2811 = !DILocation(line: 364, column: 36, scope: !2801)
!2812 = !DILocation(line: 364, column: 39, scope: !2801)
!2813 = !DILocation(line: 364, column: 48, scope: !2801)
!2814 = !DILocation(line: 364, column: 10, scope: !2801)
!2815 = !DILocation(line: 364, column: 2, scope: !2801)
!2816 = distinct !DISubprogram(name: "zip_time", scope: !3, file: !3, line: 1155, type: !2817, scopeLine: 1156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!302, !83}
!2819 = !DILocalVariable(name: "p", arg: 1, scope: !2816, file: !3, line: 1155, type: !83)
!2820 = !DILocation(line: 1155, column: 22, scope: !2816)
!2821 = !DILocalVariable(name: "msTime", scope: !2816, file: !3, line: 1157, type: !6)
!2822 = !DILocation(line: 1157, column: 6, scope: !2816)
!2823 = !DILocalVariable(name: "msDate", scope: !2816, file: !3, line: 1157, type: !6)
!2824 = !DILocation(line: 1157, column: 14, scope: !2816)
!2825 = !DILocalVariable(name: "ts", scope: !2816, file: !3, line: 1158, type: !2826)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !2827, line: 7, size: 448, elements: !2828)
!2827 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "", checksumkind: CSK_MD5, checksum: "9e5545b565ef031c4cd0faf90b69386f")
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !2826, file: !2827, line: 9, baseType: !6, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !2826, file: !2827, line: 10, baseType: !6, size: 32, offset: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !2826, file: !2827, line: 11, baseType: !6, size: 32, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !2826, file: !2827, line: 12, baseType: !6, size: 32, offset: 96)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !2826, file: !2827, line: 13, baseType: !6, size: 32, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !2826, file: !2827, line: 14, baseType: !6, size: 32, offset: 160)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !2826, file: !2827, line: 15, baseType: !6, size: 32, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !2826, file: !2827, line: 16, baseType: !6, size: 32, offset: 224)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !2826, file: !2827, line: 17, baseType: !6, size: 32, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !2826, file: !2827, line: 20, baseType: !44, size: 64, offset: 320)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !2826, file: !2827, line: 21, baseType: !83, size: 64, offset: 384)
!2840 = !DILocation(line: 1158, column: 12, scope: !2816)
!2841 = !DILocation(line: 1160, column: 29, scope: !2816)
!2842 = !DILocation(line: 1160, column: 19, scope: !2816)
!2843 = !DILocation(line: 1160, column: 17, scope: !2816)
!2844 = !DILocation(line: 1160, column: 61, scope: !2816)
!2845 = !DILocation(line: 1160, column: 51, scope: !2816)
!2846 = !DILocation(line: 1160, column: 49, scope: !2816)
!2847 = !DILocation(line: 1160, column: 41, scope: !2816)
!2848 = !DILocation(line: 1160, column: 35, scope: !2816)
!2849 = !DILocation(line: 1160, column: 9, scope: !2816)
!2850 = !DILocation(line: 1161, column: 29, scope: !2816)
!2851 = !DILocation(line: 1161, column: 19, scope: !2816)
!2852 = !DILocation(line: 1161, column: 17, scope: !2816)
!2853 = !DILocation(line: 1161, column: 61, scope: !2816)
!2854 = !DILocation(line: 1161, column: 51, scope: !2816)
!2855 = !DILocation(line: 1161, column: 49, scope: !2816)
!2856 = !DILocation(line: 1161, column: 41, scope: !2816)
!2857 = !DILocation(line: 1161, column: 35, scope: !2816)
!2858 = !DILocation(line: 1161, column: 9, scope: !2816)
!2859 = !DILocation(line: 1163, column: 2, scope: !2816)
!2860 = !DILocation(line: 1164, column: 17, scope: !2816)
!2861 = !DILocation(line: 1164, column: 24, scope: !2816)
!2862 = !DILocation(line: 1164, column: 30, scope: !2816)
!2863 = !DILocation(line: 1164, column: 38, scope: !2816)
!2864 = !DILocation(line: 1164, column: 5, scope: !2816)
!2865 = !DILocation(line: 1164, column: 13, scope: !2816)
!2866 = !DILocation(line: 1165, column: 16, scope: !2816)
!2867 = !DILocation(line: 1165, column: 23, scope: !2816)
!2868 = !DILocation(line: 1165, column: 29, scope: !2816)
!2869 = !DILocation(line: 1165, column: 37, scope: !2816)
!2870 = !DILocation(line: 1165, column: 5, scope: !2816)
!2871 = !DILocation(line: 1165, column: 12, scope: !2816)
!2872 = !DILocation(line: 1166, column: 15, scope: !2816)
!2873 = !DILocation(line: 1166, column: 22, scope: !2816)
!2874 = !DILocation(line: 1166, column: 5, scope: !2816)
!2875 = !DILocation(line: 1166, column: 13, scope: !2816)
!2876 = !DILocation(line: 1167, column: 16, scope: !2816)
!2877 = !DILocation(line: 1167, column: 23, scope: !2816)
!2878 = !DILocation(line: 1167, column: 30, scope: !2816)
!2879 = !DILocation(line: 1167, column: 5, scope: !2816)
!2880 = !DILocation(line: 1167, column: 13, scope: !2816)
!2881 = !DILocation(line: 1168, column: 15, scope: !2816)
!2882 = !DILocation(line: 1168, column: 22, scope: !2816)
!2883 = !DILocation(line: 1168, column: 28, scope: !2816)
!2884 = !DILocation(line: 1168, column: 5, scope: !2816)
!2885 = !DILocation(line: 1168, column: 12, scope: !2816)
!2886 = !DILocation(line: 1169, column: 15, scope: !2816)
!2887 = !DILocation(line: 1169, column: 22, scope: !2816)
!2888 = !DILocation(line: 1169, column: 28, scope: !2816)
!2889 = !DILocation(line: 1169, column: 5, scope: !2816)
!2890 = !DILocation(line: 1169, column: 12, scope: !2816)
!2891 = !DILocation(line: 1170, column: 5, scope: !2816)
!2892 = !DILocation(line: 1170, column: 14, scope: !2816)
!2893 = !DILocation(line: 1171, column: 9, scope: !2816)
!2894 = !DILocation(line: 1171, column: 2, scope: !2816)
!2895 = distinct !DISubprogram(name: "rsrc_basename", scope: !3, file: !3, line: 368, type: !2896, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!83, !83, !47}
!2898 = !DILocalVariable(name: "name", arg: 1, scope: !2895, file: !3, line: 368, type: !83)
!2899 = !DILocation(line: 368, column: 27, scope: !2895)
!2900 = !DILocalVariable(name: "name_length", arg: 2, scope: !2895, file: !3, line: 368, type: !47)
!2901 = !DILocation(line: 368, column: 40, scope: !2895)
!2902 = !DILocalVariable(name: "s", scope: !2895, file: !3, line: 370, type: !83)
!2903 = !DILocation(line: 370, column: 14, scope: !2895)
!2904 = !DILocalVariable(name: "r", scope: !2895, file: !3, line: 370, type: !83)
!2905 = !DILocation(line: 370, column: 18, scope: !2895)
!2906 = !DILocation(line: 372, column: 10, scope: !2895)
!2907 = !DILocation(line: 372, column: 8, scope: !2895)
!2908 = !DILocation(line: 372, column: 4, scope: !2895)
!2909 = !DILocation(line: 373, column: 2, scope: !2895)
!2910 = !DILocation(line: 374, column: 14, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 373, column: 11)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 373, column: 2)
!2913 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 373, column: 2)
!2914 = !DILocation(line: 374, column: 22, scope: !2911)
!2915 = !DILocation(line: 374, column: 37, scope: !2911)
!2916 = !DILocation(line: 374, column: 41, scope: !2911)
!2917 = !DILocation(line: 374, column: 39, scope: !2911)
!2918 = !DILocation(line: 374, column: 34, scope: !2911)
!2919 = !DILocation(line: 374, column: 7, scope: !2911)
!2920 = !DILocation(line: 374, column: 5, scope: !2911)
!2921 = !DILocation(line: 375, column: 7, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 375, column: 7)
!2923 = !DILocation(line: 375, column: 9, scope: !2922)
!2924 = !DILocation(line: 375, column: 7, scope: !2911)
!2925 = !DILocation(line: 376, column: 4, scope: !2922)
!2926 = !DILocation(line: 377, column: 7, scope: !2911)
!2927 = !DILocation(line: 377, column: 5, scope: !2911)
!2928 = !DILocation(line: 373, column: 2, scope: !2912)
!2929 = distinct !{!2929, !2930, !2931}
!2930 = !DILocation(line: 373, column: 2, scope: !2913)
!2931 = !DILocation(line: 378, column: 2, scope: !2913)
!2932 = !DILocation(line: 379, column: 10, scope: !2895)
!2933 = !DILocation(line: 379, column: 2, scope: !2895)
!2934 = distinct !DISubprogram(name: "expose_parent_dirs", scope: !3, file: !3, line: 383, type: !2935, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{null, !268, !83, !47}
!2937 = !DILocalVariable(name: "zip", arg: 1, scope: !2934, file: !3, line: 383, type: !268)
!2938 = !DILocation(line: 383, column: 32, scope: !2934)
!2939 = !DILocalVariable(name: "name", arg: 2, scope: !2934, file: !3, line: 383, type: !83)
!2940 = !DILocation(line: 383, column: 49, scope: !2934)
!2941 = !DILocalVariable(name: "name_length", arg: 3, scope: !2934, file: !3, line: 383, type: !47)
!2942 = !DILocation(line: 383, column: 62, scope: !2934)
!2943 = !DILocalVariable(name: "str", scope: !2934, file: !3, line: 385, type: !94)
!2944 = !DILocation(line: 385, column: 24, scope: !2934)
!2945 = !DILocalVariable(name: "dir", scope: !2934, file: !3, line: 386, type: !279)
!2946 = !DILocation(line: 386, column: 20, scope: !2934)
!2947 = !DILocalVariable(name: "s", scope: !2934, file: !3, line: 387, type: !98)
!2948 = !DILocation(line: 387, column: 8, scope: !2934)
!2949 = !DILocation(line: 389, column: 2, scope: !2934)
!2950 = !DILocation(line: 389, column: 2, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 389, column: 2)
!2952 = !DILocation(line: 390, column: 2, scope: !2934)
!2953 = !DILocation(line: 391, column: 2, scope: !2934)
!2954 = !DILocation(line: 392, column: 19, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 391, column: 11)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 391, column: 2)
!2957 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 391, column: 2)
!2958 = !DILocation(line: 392, column: 7, scope: !2955)
!2959 = !DILocation(line: 392, column: 5, scope: !2955)
!2960 = !DILocation(line: 393, column: 7, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 393, column: 7)
!2962 = !DILocation(line: 393, column: 9, scope: !2961)
!2963 = !DILocation(line: 393, column: 7, scope: !2955)
!2964 = !DILocation(line: 394, column: 4, scope: !2961)
!2965 = !DILocation(line: 395, column: 4, scope: !2955)
!2966 = !DILocation(line: 395, column: 6, scope: !2955)
!2967 = !DILocation(line: 399, column: 36, scope: !2955)
!2968 = !DILocation(line: 399, column: 41, scope: !2955)
!2969 = !DILocation(line: 399, column: 56, scope: !2955)
!2970 = !DILocation(line: 399, column: 7, scope: !2955)
!2971 = !DILocation(line: 398, column: 9, scope: !2955)
!2972 = !DILocation(line: 398, column: 7, scope: !2955)
!2973 = !DILocation(line: 400, column: 7, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 400, column: 7)
!2975 = !DILocation(line: 400, column: 11, scope: !2974)
!2976 = !DILocation(line: 400, column: 7, scope: !2955)
!2977 = !DILocation(line: 401, column: 4, scope: !2974)
!2978 = !DILocation(line: 402, column: 34, scope: !2955)
!2979 = !DILocation(line: 402, column: 39, scope: !2955)
!2980 = !DILocation(line: 402, column: 51, scope: !2955)
!2981 = !DILocation(line: 402, column: 56, scope: !2955)
!2982 = !DILocation(line: 402, column: 3, scope: !2955)
!2983 = !DILocation(line: 403, column: 24, scope: !2955)
!2984 = !DILocation(line: 403, column: 29, scope: !2955)
!2985 = !DILocation(line: 403, column: 3, scope: !2955)
!2986 = !DILocation(line: 404, column: 34, scope: !2955)
!2987 = !DILocation(line: 404, column: 39, scope: !2955)
!2988 = !DILocation(line: 404, column: 46, scope: !2955)
!2989 = !DILocation(line: 404, column: 51, scope: !2955)
!2990 = !DILocation(line: 404, column: 3, scope: !2955)
!2991 = !DILocation(line: 391, column: 2, scope: !2956)
!2992 = distinct !{!2992, !2993, !2994}
!2993 = !DILocation(line: 391, column: 2, scope: !2957)
!2994 = !DILocation(line: 405, column: 2, scope: !2957)
!2995 = !DILocation(line: 406, column: 2, scope: !2934)
!2996 = !DILocation(line: 407, column: 1, scope: !2934)
!2997 = distinct !DISubprogram(name: "process_extra", scope: !3, file: !3, line: 1604, type: !2998, scopeLine: 1605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !83, !47, !279}
!3000 = !DILocalVariable(name: "p", arg: 1, scope: !2997, file: !3, line: 1604, type: !83)
!3001 = !DILocation(line: 1604, column: 27, scope: !2997)
!3002 = !DILocalVariable(name: "extra_length", arg: 2, scope: !2997, file: !3, line: 1604, type: !47)
!3003 = !DILocation(line: 1604, column: 37, scope: !2997)
!3004 = !DILocalVariable(name: "zip_entry", arg: 3, scope: !2997, file: !3, line: 1604, type: !279)
!3005 = !DILocation(line: 1604, column: 69, scope: !2997)
!3006 = !DILocalVariable(name: "offset", scope: !2997, file: !3, line: 1606, type: !16)
!3007 = !DILocation(line: 1606, column: 11, scope: !2997)
!3008 = !DILocation(line: 1608, column: 2, scope: !2997)
!3009 = !DILocation(line: 1608, column: 9, scope: !2997)
!3010 = !DILocation(line: 1608, column: 18, scope: !2997)
!3011 = !DILocation(line: 1608, column: 31, scope: !2997)
!3012 = !DILocation(line: 1608, column: 16, scope: !2997)
!3013 = !DILocalVariable(name: "headerid", scope: !3014, file: !3, line: 1610, type: !314)
!3014 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 1609, column: 2)
!3015 = !DILocation(line: 1610, column: 18, scope: !3014)
!3016 = !DILocation(line: 1610, column: 45, scope: !3014)
!3017 = !DILocation(line: 1610, column: 49, scope: !3014)
!3018 = !DILocation(line: 1610, column: 47, scope: !3014)
!3019 = !DILocation(line: 1610, column: 29, scope: !3014)
!3020 = !DILocalVariable(name: "datasize", scope: !3014, file: !3, line: 1611, type: !314)
!3021 = !DILocation(line: 1611, column: 18, scope: !3014)
!3022 = !DILocation(line: 1611, column: 45, scope: !3014)
!3023 = !DILocation(line: 1611, column: 49, scope: !3014)
!3024 = !DILocation(line: 1611, column: 47, scope: !3014)
!3025 = !DILocation(line: 1611, column: 56, scope: !3014)
!3026 = !DILocation(line: 1611, column: 29, scope: !3014)
!3027 = !DILocation(line: 1612, column: 10, scope: !3014)
!3028 = !DILocation(line: 1613, column: 7, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 1613, column: 7)
!3030 = !DILocation(line: 1613, column: 16, scope: !3029)
!3031 = !DILocation(line: 1613, column: 14, scope: !3029)
!3032 = !DILocation(line: 1613, column: 27, scope: !3029)
!3033 = !DILocation(line: 1613, column: 25, scope: !3029)
!3034 = !DILocation(line: 1613, column: 7, scope: !3014)
!3035 = !DILocation(line: 1614, column: 4, scope: !3029)
!3036 = !DILocation(line: 1619, column: 11, scope: !3014)
!3037 = !DILocation(line: 1619, column: 3, scope: !3014)
!3038 = !DILocation(line: 1622, column: 8, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 1622, column: 8)
!3040 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 1619, column: 21)
!3041 = !DILocation(line: 1622, column: 17, scope: !3039)
!3042 = !DILocation(line: 1622, column: 8, scope: !3040)
!3043 = !DILocation(line: 1624, column: 25, scope: !3039)
!3044 = !DILocation(line: 1624, column: 29, scope: !3039)
!3045 = !DILocation(line: 1624, column: 27, scope: !3039)
!3046 = !DILocation(line: 1624, column: 9, scope: !3039)
!3047 = !DILocation(line: 1623, column: 5, scope: !3039)
!3048 = !DILocation(line: 1623, column: 16, scope: !3039)
!3049 = !DILocation(line: 1623, column: 34, scope: !3039)
!3050 = !DILocation(line: 1625, column: 8, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 1625, column: 8)
!3052 = !DILocation(line: 1625, column: 17, scope: !3051)
!3053 = !DILocation(line: 1625, column: 8, scope: !3040)
!3054 = !DILocation(line: 1627, column: 25, scope: !3051)
!3055 = !DILocation(line: 1627, column: 29, scope: !3051)
!3056 = !DILocation(line: 1627, column: 27, scope: !3051)
!3057 = !DILocation(line: 1627, column: 36, scope: !3051)
!3058 = !DILocation(line: 1627, column: 9, scope: !3051)
!3059 = !DILocation(line: 1626, column: 5, scope: !3051)
!3060 = !DILocation(line: 1626, column: 16, scope: !3051)
!3061 = !DILocation(line: 1626, column: 32, scope: !3051)
!3062 = !DILocation(line: 1628, column: 4, scope: !3040)
!3063 = !DILocalVariable(name: "flags", scope: !3064, file: !3, line: 1632, type: !6)
!3064 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 1630, column: 3)
!3065 = !DILocation(line: 1632, column: 8, scope: !3064)
!3066 = !DILocation(line: 1632, column: 16, scope: !3064)
!3067 = !DILocation(line: 1632, column: 18, scope: !3064)
!3068 = !DILocation(line: 1633, column: 10, scope: !3064)
!3069 = !DILocation(line: 1634, column: 12, scope: !3064)
!3070 = !DILocation(line: 1636, column: 8, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 1636, column: 8)
!3072 = !DILocation(line: 1636, column: 14, scope: !3071)
!3073 = !DILocation(line: 1636, column: 8, scope: !3064)
!3074 = !DILocation(line: 1643, column: 9, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 1643, column: 9)
!3076 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 1637, column: 4)
!3077 = !DILocation(line: 1643, column: 18, scope: !3075)
!3078 = !DILocation(line: 1643, column: 9, scope: !3076)
!3079 = !DILocation(line: 1644, column: 6, scope: !3075)
!3080 = !DILocation(line: 1645, column: 40, scope: !3076)
!3081 = !DILocation(line: 1645, column: 44, scope: !3076)
!3082 = !DILocation(line: 1645, column: 42, scope: !3076)
!3083 = !DILocation(line: 1645, column: 24, scope: !3076)
!3084 = !DILocation(line: 1645, column: 5, scope: !3076)
!3085 = !DILocation(line: 1645, column: 16, scope: !3076)
!3086 = !DILocation(line: 1645, column: 22, scope: !3076)
!3087 = !DILocation(line: 1646, column: 12, scope: !3076)
!3088 = !DILocation(line: 1647, column: 14, scope: !3076)
!3089 = !DILocation(line: 1648, column: 4, scope: !3076)
!3090 = !DILocation(line: 1649, column: 8, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 1649, column: 8)
!3092 = !DILocation(line: 1649, column: 14, scope: !3091)
!3093 = !DILocation(line: 1649, column: 8, scope: !3064)
!3094 = !DILocation(line: 1651, column: 9, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 1651, column: 9)
!3096 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 1650, column: 4)
!3097 = !DILocation(line: 1651, column: 18, scope: !3095)
!3098 = !DILocation(line: 1651, column: 9, scope: !3096)
!3099 = !DILocation(line: 1652, column: 6, scope: !3095)
!3100 = !DILocation(line: 1653, column: 40, scope: !3096)
!3101 = !DILocation(line: 1653, column: 44, scope: !3096)
!3102 = !DILocation(line: 1653, column: 42, scope: !3096)
!3103 = !DILocation(line: 1653, column: 24, scope: !3096)
!3104 = !DILocation(line: 1653, column: 5, scope: !3096)
!3105 = !DILocation(line: 1653, column: 16, scope: !3096)
!3106 = !DILocation(line: 1653, column: 22, scope: !3096)
!3107 = !DILocation(line: 1654, column: 12, scope: !3096)
!3108 = !DILocation(line: 1655, column: 14, scope: !3096)
!3109 = !DILocation(line: 1656, column: 4, scope: !3096)
!3110 = !DILocation(line: 1657, column: 8, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 1657, column: 8)
!3112 = !DILocation(line: 1657, column: 14, scope: !3111)
!3113 = !DILocation(line: 1657, column: 8, scope: !3064)
!3114 = !DILocation(line: 1659, column: 9, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 1659, column: 9)
!3116 = distinct !DILexicalBlock(scope: !3111, file: !3, line: 1658, column: 4)
!3117 = !DILocation(line: 1659, column: 18, scope: !3115)
!3118 = !DILocation(line: 1659, column: 9, scope: !3116)
!3119 = !DILocation(line: 1660, column: 6, scope: !3115)
!3120 = !DILocation(line: 1661, column: 40, scope: !3116)
!3121 = !DILocation(line: 1661, column: 44, scope: !3116)
!3122 = !DILocation(line: 1661, column: 42, scope: !3116)
!3123 = !DILocation(line: 1661, column: 24, scope: !3116)
!3124 = !DILocation(line: 1661, column: 5, scope: !3116)
!3125 = !DILocation(line: 1661, column: 16, scope: !3116)
!3126 = !DILocation(line: 1661, column: 22, scope: !3116)
!3127 = !DILocation(line: 1662, column: 12, scope: !3116)
!3128 = !DILocation(line: 1663, column: 14, scope: !3116)
!3129 = !DILocation(line: 1664, column: 4, scope: !3116)
!3130 = !DILocation(line: 1665, column: 4, scope: !3064)
!3131 = !DILocation(line: 1670, column: 8, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 1670, column: 8)
!3133 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 1668, column: 3)
!3134 = !DILocation(line: 1670, column: 17, scope: !3132)
!3135 = !DILocation(line: 1670, column: 8, scope: !3133)
!3136 = !DILocation(line: 1671, column: 40, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 1670, column: 23)
!3138 = !DILocation(line: 1671, column: 44, scope: !3137)
!3139 = !DILocation(line: 1671, column: 42, scope: !3137)
!3140 = !DILocation(line: 1671, column: 24, scope: !3137)
!3141 = !DILocation(line: 1671, column: 5, scope: !3137)
!3142 = !DILocation(line: 1671, column: 16, scope: !3137)
!3143 = !DILocation(line: 1671, column: 22, scope: !3137)
!3144 = !DILocation(line: 1673, column: 25, scope: !3137)
!3145 = !DILocation(line: 1673, column: 29, scope: !3137)
!3146 = !DILocation(line: 1673, column: 27, scope: !3137)
!3147 = !DILocation(line: 1673, column: 36, scope: !3137)
!3148 = !DILocation(line: 1673, column: 9, scope: !3137)
!3149 = !DILocation(line: 1672, column: 5, scope: !3137)
!3150 = !DILocation(line: 1672, column: 16, scope: !3137)
!3151 = !DILocation(line: 1672, column: 22, scope: !3137)
!3152 = !DILocation(line: 1674, column: 4, scope: !3137)
!3153 = !DILocation(line: 1675, column: 8, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 1675, column: 8)
!3155 = !DILocation(line: 1675, column: 17, scope: !3154)
!3156 = !DILocation(line: 1675, column: 8, scope: !3133)
!3157 = !DILocation(line: 1677, column: 25, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 1675, column: 24)
!3159 = !DILocation(line: 1677, column: 29, scope: !3158)
!3160 = !DILocation(line: 1677, column: 27, scope: !3158)
!3161 = !DILocation(line: 1677, column: 36, scope: !3158)
!3162 = !DILocation(line: 1677, column: 9, scope: !3158)
!3163 = !DILocation(line: 1676, column: 5, scope: !3158)
!3164 = !DILocation(line: 1676, column: 16, scope: !3158)
!3165 = !DILocation(line: 1676, column: 20, scope: !3158)
!3166 = !DILocation(line: 1679, column: 25, scope: !3158)
!3167 = !DILocation(line: 1679, column: 29, scope: !3158)
!3168 = !DILocation(line: 1679, column: 27, scope: !3158)
!3169 = !DILocation(line: 1679, column: 36, scope: !3158)
!3170 = !DILocation(line: 1679, column: 9, scope: !3158)
!3171 = !DILocation(line: 1678, column: 5, scope: !3158)
!3172 = !DILocation(line: 1678, column: 16, scope: !3158)
!3173 = !DILocation(line: 1678, column: 20, scope: !3158)
!3174 = !DILocation(line: 1680, column: 4, scope: !3158)
!3175 = !DILocation(line: 1681, column: 4, scope: !3133)
!3176 = !DILocation(line: 1690, column: 8, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 1690, column: 8)
!3178 = !DILocation(line: 1690, column: 17, scope: !3177)
!3179 = !DILocation(line: 1690, column: 8, scope: !3040)
!3180 = !DILocation(line: 1691, column: 38, scope: !3177)
!3181 = !DILocation(line: 1691, column: 42, scope: !3177)
!3182 = !DILocation(line: 1691, column: 40, scope: !3177)
!3183 = !DILocation(line: 1691, column: 22, scope: !3177)
!3184 = !DILocation(line: 1691, column: 5, scope: !3177)
!3185 = !DILocation(line: 1691, column: 16, scope: !3177)
!3186 = !DILocation(line: 1691, column: 20, scope: !3177)
!3187 = !DILocation(line: 1692, column: 8, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 1692, column: 8)
!3189 = !DILocation(line: 1692, column: 17, scope: !3188)
!3190 = !DILocation(line: 1692, column: 8, scope: !3040)
!3191 = !DILocation(line: 1694, column: 25, scope: !3188)
!3192 = !DILocation(line: 1694, column: 29, scope: !3188)
!3193 = !DILocation(line: 1694, column: 27, scope: !3188)
!3194 = !DILocation(line: 1694, column: 36, scope: !3188)
!3195 = !DILocation(line: 1694, column: 9, scope: !3188)
!3196 = !DILocation(line: 1693, column: 5, scope: !3188)
!3197 = !DILocation(line: 1693, column: 16, scope: !3188)
!3198 = !DILocation(line: 1693, column: 20, scope: !3188)
!3199 = !DILocation(line: 1695, column: 4, scope: !3040)
!3200 = !DILocalVariable(name: "uidsize", scope: !3201, file: !3, line: 1699, type: !6)
!3201 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 1697, column: 3)
!3202 = !DILocation(line: 1699, column: 8, scope: !3201)
!3203 = !DILocalVariable(name: "gidsize", scope: !3201, file: !3, line: 1699, type: !6)
!3204 = !DILocation(line: 1699, column: 21, scope: !3201)
!3205 = !DILocation(line: 1701, column: 8, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 1701, column: 8)
!3207 = !DILocation(line: 1701, column: 17, scope: !3206)
!3208 = !DILocation(line: 1701, column: 22, scope: !3206)
!3209 = !DILocation(line: 1701, column: 25, scope: !3206)
!3210 = !DILocation(line: 1701, column: 27, scope: !3206)
!3211 = !DILocation(line: 1701, column: 35, scope: !3206)
!3212 = !DILocation(line: 1701, column: 8, scope: !3201)
!3213 = !DILocation(line: 1702, column: 9, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 1702, column: 9)
!3215 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 1701, column: 41)
!3216 = !DILocation(line: 1702, column: 18, scope: !3214)
!3217 = !DILocation(line: 1702, column: 9, scope: !3215)
!3218 = !DILocation(line: 1704, column: 16, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 1702, column: 24)
!3220 = !DILocation(line: 1704, column: 18, scope: !3219)
!3221 = !DILocation(line: 1704, column: 24, scope: !3219)
!3222 = !DILocation(line: 1704, column: 14, scope: !3219)
!3223 = !DILocation(line: 1705, column: 10, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 1705, column: 10)
!3225 = !DILocation(line: 1705, column: 18, scope: !3224)
!3226 = !DILocation(line: 1705, column: 10, scope: !3219)
!3227 = !DILocation(line: 1708, column: 15, scope: !3224)
!3228 = !DILocation(line: 1708, column: 19, scope: !3224)
!3229 = !DILocation(line: 1708, column: 17, scope: !3224)
!3230 = !DILocation(line: 1708, column: 26, scope: !3224)
!3231 = !DILocation(line: 1707, column: 11, scope: !3224)
!3232 = !DILocation(line: 1706, column: 7, scope: !3224)
!3233 = !DILocation(line: 1706, column: 18, scope: !3224)
!3234 = !DILocation(line: 1706, column: 22, scope: !3224)
!3235 = !DILocation(line: 1709, column: 15, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 1709, column: 15)
!3237 = !DILocation(line: 1709, column: 23, scope: !3236)
!3238 = !DILocation(line: 1709, column: 28, scope: !3236)
!3239 = !DILocation(line: 1709, column: 31, scope: !3236)
!3240 = !DILocation(line: 1709, column: 40, scope: !3236)
!3241 = !DILocation(line: 1709, column: 15, scope: !3224)
!3242 = !DILocation(line: 1712, column: 15, scope: !3236)
!3243 = !DILocation(line: 1712, column: 19, scope: !3236)
!3244 = !DILocation(line: 1712, column: 17, scope: !3236)
!3245 = !DILocation(line: 1712, column: 26, scope: !3236)
!3246 = !DILocation(line: 1711, column: 11, scope: !3236)
!3247 = !DILocation(line: 1710, column: 7, scope: !3236)
!3248 = !DILocation(line: 1710, column: 18, scope: !3236)
!3249 = !DILocation(line: 1710, column: 22, scope: !3236)
!3250 = !DILocation(line: 1713, column: 5, scope: !3219)
!3251 = !DILocation(line: 1714, column: 9, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 1714, column: 9)
!3253 = !DILocation(line: 1714, column: 26, scope: !3252)
!3254 = !DILocation(line: 1714, column: 24, scope: !3252)
!3255 = !DILocation(line: 1714, column: 34, scope: !3252)
!3256 = !DILocation(line: 1714, column: 18, scope: !3252)
!3257 = !DILocation(line: 1714, column: 9, scope: !3215)
!3258 = !DILocation(line: 1716, column: 16, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 1714, column: 40)
!3260 = !DILocation(line: 1716, column: 18, scope: !3259)
!3261 = !DILocation(line: 1716, column: 24, scope: !3259)
!3262 = !DILocation(line: 1716, column: 27, scope: !3259)
!3263 = !DILocation(line: 1716, column: 26, scope: !3259)
!3264 = !DILocation(line: 1716, column: 14, scope: !3259)
!3265 = !DILocation(line: 1717, column: 10, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 1717, column: 10)
!3267 = !DILocation(line: 1717, column: 18, scope: !3266)
!3268 = !DILocation(line: 1717, column: 10, scope: !3259)
!3269 = !DILocation(line: 1720, column: 15, scope: !3266)
!3270 = !DILocation(line: 1720, column: 17, scope: !3266)
!3271 = !DILocation(line: 1720, column: 16, scope: !3266)
!3272 = !DILocation(line: 1720, column: 23, scope: !3266)
!3273 = !DILocation(line: 1720, column: 26, scope: !3266)
!3274 = !DILocation(line: 1720, column: 25, scope: !3266)
!3275 = !DILocation(line: 1720, column: 33, scope: !3266)
!3276 = !DILocation(line: 1719, column: 11, scope: !3266)
!3277 = !DILocation(line: 1718, column: 7, scope: !3266)
!3278 = !DILocation(line: 1718, column: 18, scope: !3266)
!3279 = !DILocation(line: 1718, column: 22, scope: !3266)
!3280 = !DILocation(line: 1721, column: 15, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 1721, column: 15)
!3282 = !DILocation(line: 1721, column: 23, scope: !3281)
!3283 = !DILocation(line: 1721, column: 28, scope: !3281)
!3284 = !DILocation(line: 1722, column: 10, scope: !3281)
!3285 = !DILocation(line: 1722, column: 27, scope: !3281)
!3286 = !DILocation(line: 1722, column: 25, scope: !3281)
!3287 = !DILocation(line: 1722, column: 35, scope: !3281)
!3288 = !DILocation(line: 1722, column: 19, scope: !3281)
!3289 = !DILocation(line: 1721, column: 15, scope: !3266)
!3290 = !DILocation(line: 1725, column: 15, scope: !3281)
!3291 = !DILocation(line: 1725, column: 17, scope: !3281)
!3292 = !DILocation(line: 1725, column: 16, scope: !3281)
!3293 = !DILocation(line: 1725, column: 23, scope: !3281)
!3294 = !DILocation(line: 1725, column: 26, scope: !3281)
!3295 = !DILocation(line: 1725, column: 25, scope: !3281)
!3296 = !DILocation(line: 1725, column: 33, scope: !3281)
!3297 = !DILocation(line: 1724, column: 11, scope: !3281)
!3298 = !DILocation(line: 1723, column: 7, scope: !3281)
!3299 = !DILocation(line: 1723, column: 18, scope: !3281)
!3300 = !DILocation(line: 1723, column: 22, scope: !3281)
!3301 = !DILocation(line: 1726, column: 5, scope: !3259)
!3302 = !DILocation(line: 1727, column: 4, scope: !3215)
!3303 = !DILocation(line: 1728, column: 4, scope: !3201)
!3304 = !DILocation(line: 1731, column: 4, scope: !3040)
!3305 = !DILocation(line: 1733, column: 13, scope: !3014)
!3306 = !DILocation(line: 1733, column: 10, scope: !3014)
!3307 = distinct !{!3307, !3008, !3308, !749}
!3308 = !DILocation(line: 1734, column: 2, scope: !2997)
!3309 = !DILocation(line: 1742, column: 1, scope: !2997)
!3310 = !DILocalVariable(name: "compression", arg: 1, scope: !420, file: !3, line: 1132, type: !6)
!3311 = !DILocation(line: 1132, column: 22, scope: !420)
!3312 = !DILocation(line: 1146, column: 11, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !420, file: !3, line: 1146, column: 6)
!3314 = !DILocation(line: 1146, column: 8, scope: !3313)
!3315 = !DILocation(line: 1146, column: 23, scope: !3313)
!3316 = !DILocation(line: 1146, column: 26, scope: !3313)
!3317 = !DILocation(line: 1146, column: 38, scope: !3313)
!3318 = !DILocation(line: 1146, column: 6, scope: !420)
!3319 = !DILocation(line: 1148, column: 28, scope: !3313)
!3320 = !DILocation(line: 1148, column: 10, scope: !3313)
!3321 = !DILocation(line: 1148, column: 3, scope: !3313)
!3322 = !DILocation(line: 1150, column: 3, scope: !3313)
!3323 = !DILocation(line: 1151, column: 1, scope: !420)
!3324 = distinct !DISubprogram(name: "archive_le64dec", scope: !1687, file: !1687, line: 97, type: !3325, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!411, !45}
!3327 = !DILocalVariable(name: "pp", arg: 1, scope: !3324, file: !1687, line: 97, type: !45)
!3328 = !DILocation(line: 97, column: 29, scope: !3324)
!3329 = !DILocalVariable(name: "p", scope: !3324, file: !1687, line: 99, type: !405)
!3330 = !DILocation(line: 99, column: 23, scope: !3324)
!3331 = !DILocation(line: 99, column: 50, scope: !3324)
!3332 = !DILocation(line: 101, column: 37, scope: !3324)
!3333 = !DILocation(line: 101, column: 39, scope: !3324)
!3334 = !DILocation(line: 101, column: 21, scope: !3324)
!3335 = !DILocation(line: 101, column: 11, scope: !3324)
!3336 = !DILocation(line: 101, column: 44, scope: !3324)
!3337 = !DILocation(line: 101, column: 69, scope: !3324)
!3338 = !DILocation(line: 101, column: 53, scope: !3324)
!3339 = !DILocation(line: 101, column: 51, scope: !3324)
!3340 = !DILocation(line: 101, column: 2, scope: !3324)
!3341 = distinct !DISubprogram(name: "zip_get_local_file_header_size", scope: !3, file: !3, line: 924, type: !3342, scopeLine: 925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!40, !7, !47}
!3344 = !DILocalVariable(name: "a", arg: 1, scope: !3341, file: !3, line: 924, type: !7)
!3345 = !DILocation(line: 924, column: 53, scope: !3341)
!3346 = !DILocalVariable(name: "extra", arg: 2, scope: !3341, file: !3, line: 924, type: !47)
!3347 = !DILocation(line: 924, column: 63, scope: !3341)
!3348 = !DILocalVariable(name: "p", scope: !3341, file: !3, line: 926, type: !83)
!3349 = !DILocation(line: 926, column: 14, scope: !3341)
!3350 = !DILocalVariable(name: "filename_length", scope: !3341, file: !3, line: 927, type: !40)
!3351 = !DILocation(line: 927, column: 10, scope: !3341)
!3352 = !DILocalVariable(name: "extra_length", scope: !3341, file: !3, line: 927, type: !40)
!3353 = !DILocation(line: 927, column: 27, scope: !3341)
!3354 = !DILocation(line: 929, column: 32, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 929, column: 6)
!3356 = !DILocation(line: 929, column: 35, scope: !3355)
!3357 = !DILocation(line: 929, column: 41, scope: !3355)
!3358 = !DILocation(line: 929, column: 11, scope: !3355)
!3359 = !DILocation(line: 929, column: 9, scope: !3355)
!3360 = !DILocation(line: 929, column: 54, scope: !3355)
!3361 = !DILocation(line: 929, column: 6, scope: !3341)
!3362 = !DILocation(line: 930, column: 22, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 929, column: 63)
!3364 = !DILocation(line: 930, column: 25, scope: !3363)
!3365 = !DILocation(line: 930, column: 3, scope: !3363)
!3366 = !DILocation(line: 932, column: 3, scope: !3363)
!3367 = !DILocation(line: 934, column: 7, scope: !3341)
!3368 = !DILocation(line: 934, column: 4, scope: !3341)
!3369 = !DILocation(line: 936, column: 13, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 936, column: 6)
!3371 = !DILocation(line: 936, column: 6, scope: !3370)
!3372 = !DILocation(line: 936, column: 33, scope: !3370)
!3373 = !DILocation(line: 936, column: 6, scope: !3341)
!3374 = !DILocation(line: 937, column: 22, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 936, column: 39)
!3376 = !DILocation(line: 937, column: 25, scope: !3375)
!3377 = !DILocation(line: 937, column: 3, scope: !3375)
!3378 = !DILocation(line: 938, column: 3, scope: !3375)
!3379 = !DILocation(line: 940, column: 36, scope: !3341)
!3380 = !DILocation(line: 940, column: 38, scope: !3341)
!3381 = !DILocation(line: 940, column: 20, scope: !3341)
!3382 = !DILocation(line: 940, column: 18, scope: !3341)
!3383 = !DILocation(line: 941, column: 33, scope: !3341)
!3384 = !DILocation(line: 941, column: 35, scope: !3341)
!3385 = !DILocation(line: 941, column: 17, scope: !3341)
!3386 = !DILocation(line: 941, column: 15, scope: !3341)
!3387 = !DILocation(line: 943, column: 15, scope: !3341)
!3388 = !DILocation(line: 943, column: 13, scope: !3341)
!3389 = !DILocation(line: 943, column: 33, scope: !3341)
!3390 = !DILocation(line: 943, column: 31, scope: !3341)
!3391 = !DILocation(line: 943, column: 2, scope: !3341)
!3392 = !DILocation(line: 944, column: 1, scope: !3341)
!3393 = distinct !DISubprogram(name: "zip_deflate_init", scope: !3, file: !3, line: 1373, type: !4, scopeLine: 1374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!3394 = !DILocalVariable(name: "a", arg: 1, scope: !3393, file: !3, line: 1373, type: !7)
!3395 = !DILocation(line: 1373, column: 39, scope: !3393)
!3396 = !DILocalVariable(name: "zip", arg: 2, scope: !3393, file: !3, line: 1373, type: !268)
!3397 = !DILocation(line: 1373, column: 54, scope: !3393)
!3398 = !DILocalVariable(name: "r", scope: !3393, file: !3, line: 1375, type: !6)
!3399 = !DILocation(line: 1375, column: 6, scope: !3393)
!3400 = !DILocation(line: 1378, column: 7, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 1378, column: 6)
!3402 = !DILocation(line: 1378, column: 12, scope: !3401)
!3403 = !DILocation(line: 1378, column: 6, scope: !3393)
!3404 = !DILocation(line: 1379, column: 7, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 1379, column: 7)
!3406 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 1378, column: 29)
!3407 = !DILocation(line: 1379, column: 12, scope: !3405)
!3408 = !DILocation(line: 1379, column: 7, scope: !3406)
!3409 = !DILocation(line: 1380, column: 22, scope: !3405)
!3410 = !DILocation(line: 1380, column: 27, scope: !3405)
!3411 = !DILocation(line: 1380, column: 8, scope: !3405)
!3412 = !DILocation(line: 1380, column: 6, scope: !3405)
!3413 = !DILocation(line: 1380, column: 4, scope: !3405)
!3414 = !DILocation(line: 1382, column: 8, scope: !3405)
!3415 = !DILocation(line: 1382, column: 6, scope: !3405)
!3416 = !DILocation(line: 1384, column: 7, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 1384, column: 7)
!3418 = !DILocation(line: 1384, column: 9, scope: !3417)
!3419 = !DILocation(line: 1384, column: 7, scope: !3406)
!3420 = !DILocation(line: 1385, column: 23, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 1384, column: 18)
!3422 = !DILocation(line: 1385, column: 26, scope: !3421)
!3423 = !DILocation(line: 1385, column: 4, scope: !3421)
!3424 = !DILocation(line: 1387, column: 4, scope: !3421)
!3425 = !DILocation(line: 1390, column: 3, scope: !3406)
!3426 = !DILocation(line: 1390, column: 8, scope: !3406)
!3427 = !DILocation(line: 1390, column: 21, scope: !3406)
!3428 = !DILocation(line: 1392, column: 3, scope: !3406)
!3429 = !DILocation(line: 1392, column: 8, scope: !3406)
!3430 = !DILocation(line: 1392, column: 24, scope: !3406)
!3431 = !DILocation(line: 1393, column: 2, scope: !3406)
!3432 = !DILocation(line: 1394, column: 2, scope: !3393)
!3433 = !DILocation(line: 1395, column: 1, scope: !3393)
!3434 = distinct !DISubprogram(name: "zip_read_data_none", scope: !3, file: !3, line: 1287, type: !249, scopeLine: 1289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!3435 = !DILocalVariable(name: "a", arg: 1, scope: !3434, file: !3, line: 1287, type: !7)
!3436 = !DILocation(line: 1287, column: 41, scope: !3434)
!3437 = !DILocalVariable(name: "_buff", arg: 2, scope: !3434, file: !3, line: 1287, type: !67)
!3438 = !DILocation(line: 1287, column: 57, scope: !3434)
!3439 = !DILocalVariable(name: "size", arg: 3, scope: !3434, file: !3, line: 1288, type: !68)
!3440 = !DILocation(line: 1288, column: 13, scope: !3434)
!3441 = !DILocalVariable(name: "offset", arg: 4, scope: !3434, file: !3, line: 1288, type: !69)
!3442 = !DILocation(line: 1288, column: 28, scope: !3434)
!3443 = !DILocalVariable(name: "zip", scope: !3434, file: !3, line: 1290, type: !268)
!3444 = !DILocation(line: 1290, column: 14, scope: !3434)
!3445 = !DILocalVariable(name: "buff", scope: !3434, file: !3, line: 1291, type: !83)
!3446 = !DILocation(line: 1291, column: 14, scope: !3434)
!3447 = !DILocalVariable(name: "bytes_avail", scope: !3434, file: !3, line: 1292, type: !40)
!3448 = !DILocation(line: 1292, column: 10, scope: !3434)
!3449 = !DILocation(line: 1294, column: 8, scope: !3434)
!3450 = !DILocation(line: 1296, column: 23, scope: !3434)
!3451 = !DILocation(line: 1296, column: 26, scope: !3434)
!3452 = !DILocation(line: 1296, column: 34, scope: !3434)
!3453 = !DILocation(line: 1296, column: 8, scope: !3434)
!3454 = !DILocation(line: 1296, column: 6, scope: !3434)
!3455 = !DILocation(line: 1298, column: 6, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 1298, column: 6)
!3457 = !DILocation(line: 1298, column: 11, scope: !3456)
!3458 = !DILocation(line: 1298, column: 18, scope: !3456)
!3459 = !DILocation(line: 1298, column: 24, scope: !3456)
!3460 = !DILocation(line: 1298, column: 6, scope: !3434)
!3461 = !DILocalVariable(name: "p", scope: !3462, file: !3, line: 1299, type: !83)
!3462 = distinct !DILexicalBlock(scope: !3456, file: !3, line: 1298, column: 45)
!3463 = !DILocation(line: 1299, column: 15, scope: !3462)
!3464 = !DILocation(line: 1302, column: 31, scope: !3462)
!3465 = !DILocation(line: 1302, column: 10, scope: !3462)
!3466 = !DILocation(line: 1302, column: 8, scope: !3462)
!3467 = !DILocation(line: 1303, column: 7, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 1303, column: 7)
!3469 = !DILocation(line: 1303, column: 19, scope: !3468)
!3470 = !DILocation(line: 1303, column: 7, scope: !3462)
!3471 = !DILocation(line: 1308, column: 23, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 1303, column: 25)
!3473 = !DILocation(line: 1308, column: 26, scope: !3472)
!3474 = !DILocation(line: 1308, column: 4, scope: !3472)
!3475 = !DILocation(line: 1311, column: 4, scope: !3472)
!3476 = !DILocation(line: 1314, column: 7, scope: !3462)
!3477 = !DILocation(line: 1314, column: 5, scope: !3462)
!3478 = !DILocation(line: 1315, column: 7, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 1315, column: 7)
!3480 = !DILocation(line: 1315, column: 12, scope: !3479)
!3481 = !DILocation(line: 1315, column: 19, scope: !3479)
!3482 = !DILocation(line: 1315, column: 22, scope: !3479)
!3483 = !DILocation(line: 1315, column: 27, scope: !3479)
!3484 = !DILocation(line: 1316, column: 7, scope: !3479)
!3485 = !DILocation(line: 1316, column: 10, scope: !3479)
!3486 = !DILocation(line: 1316, column: 15, scope: !3479)
!3487 = !DILocation(line: 1316, column: 25, scope: !3479)
!3488 = !DILocation(line: 1316, column: 28, scope: !3479)
!3489 = !DILocation(line: 1316, column: 33, scope: !3479)
!3490 = !DILocation(line: 1317, column: 7, scope: !3479)
!3491 = !DILocation(line: 1317, column: 26, scope: !3479)
!3492 = !DILocation(line: 1317, column: 28, scope: !3479)
!3493 = !DILocation(line: 1317, column: 10, scope: !3479)
!3494 = !DILocation(line: 1317, column: 36, scope: !3479)
!3495 = !DILocation(line: 1317, column: 41, scope: !3479)
!3496 = !DILocation(line: 1317, column: 33, scope: !3479)
!3497 = !DILocation(line: 1318, column: 7, scope: !3479)
!3498 = !DILocation(line: 1318, column: 26, scope: !3479)
!3499 = !DILocation(line: 1318, column: 28, scope: !3479)
!3500 = !DILocation(line: 1318, column: 10, scope: !3479)
!3501 = !DILocation(line: 1319, column: 8, scope: !3479)
!3502 = !DILocation(line: 1319, column: 13, scope: !3479)
!3503 = !DILocation(line: 1318, column: 33, scope: !3479)
!3504 = !DILocation(line: 1320, column: 7, scope: !3479)
!3505 = !DILocation(line: 1320, column: 26, scope: !3479)
!3506 = !DILocation(line: 1320, column: 28, scope: !3479)
!3507 = !DILocation(line: 1320, column: 10, scope: !3479)
!3508 = !DILocation(line: 1321, column: 8, scope: !3479)
!3509 = !DILocation(line: 1321, column: 13, scope: !3479)
!3510 = !DILocation(line: 1320, column: 34, scope: !3479)
!3511 = !DILocation(line: 1315, column: 7, scope: !3462)
!3512 = !DILocation(line: 1322, column: 40, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 1321, column: 44)
!3514 = !DILocation(line: 1322, column: 42, scope: !3513)
!3515 = !DILocation(line: 1322, column: 24, scope: !3513)
!3516 = !DILocation(line: 1322, column: 4, scope: !3513)
!3517 = !DILocation(line: 1322, column: 9, scope: !3513)
!3518 = !DILocation(line: 1322, column: 16, scope: !3513)
!3519 = !DILocation(line: 1322, column: 22, scope: !3513)
!3520 = !DILocation(line: 1323, column: 50, scope: !3513)
!3521 = !DILocation(line: 1323, column: 52, scope: !3513)
!3522 = !DILocation(line: 1323, column: 34, scope: !3513)
!3523 = !DILocation(line: 1323, column: 4, scope: !3513)
!3524 = !DILocation(line: 1323, column: 9, scope: !3513)
!3525 = !DILocation(line: 1323, column: 16, scope: !3513)
!3526 = !DILocation(line: 1323, column: 32, scope: !3513)
!3527 = !DILocation(line: 1324, column: 52, scope: !3513)
!3528 = !DILocation(line: 1324, column: 54, scope: !3513)
!3529 = !DILocation(line: 1324, column: 36, scope: !3513)
!3530 = !DILocation(line: 1324, column: 4, scope: !3513)
!3531 = !DILocation(line: 1324, column: 9, scope: !3513)
!3532 = !DILocation(line: 1324, column: 16, scope: !3513)
!3533 = !DILocation(line: 1324, column: 34, scope: !3513)
!3534 = !DILocation(line: 1325, column: 4, scope: !3513)
!3535 = !DILocation(line: 1325, column: 9, scope: !3513)
!3536 = !DILocation(line: 1325, column: 22, scope: !3513)
!3537 = !DILocation(line: 1326, column: 4, scope: !3513)
!3538 = !DILocation(line: 1326, column: 9, scope: !3513)
!3539 = !DILocation(line: 1326, column: 20, scope: !3513)
!3540 = !DILocation(line: 1327, column: 4, scope: !3513)
!3541 = !DILocation(line: 1330, column: 3, scope: !3462)
!3542 = !DILocation(line: 1336, column: 3, scope: !3462)
!3543 = !DILocation(line: 1336, column: 10, scope: !3462)
!3544 = !DILocation(line: 1336, column: 14, scope: !3462)
!3545 = !DILocation(line: 1336, column: 21, scope: !3462)
!3546 = !DILocation(line: 1336, column: 19, scope: !3462)
!3547 = !DILocation(line: 1336, column: 33, scope: !3462)
!3548 = !DILocation(line: 1336, column: 12, scope: !3462)
!3549 = !DILocation(line: 1337, column: 8, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 1337, column: 8)
!3551 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 1336, column: 38)
!3552 = !DILocation(line: 1337, column: 13, scope: !3550)
!3553 = !DILocation(line: 1337, column: 8, scope: !3551)
!3554 = !DILocation(line: 1337, column: 25, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 1337, column: 21)
!3556 = !DILocation(line: 1337, column: 31, scope: !3555)
!3557 = !DILocation(line: 1338, column: 13, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 1338, column: 13)
!3559 = !DILocation(line: 1338, column: 18, scope: !3558)
!3560 = !DILocation(line: 1338, column: 13, scope: !3550)
!3561 = !DILocation(line: 1338, column: 30, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 1338, column: 26)
!3563 = !DILocation(line: 1338, column: 36, scope: !3562)
!3564 = !DILocation(line: 1339, column: 13, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 1339, column: 13)
!3566 = !DILocation(line: 1339, column: 18, scope: !3565)
!3567 = !DILocation(line: 1339, column: 13, scope: !3558)
!3568 = !DILocation(line: 1339, column: 33, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 1339, column: 29)
!3570 = !DILocation(line: 1339, column: 39, scope: !3569)
!3571 = !DILocation(line: 1340, column: 13, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 1340, column: 13)
!3573 = !DILocation(line: 1340, column: 18, scope: !3572)
!3574 = !DILocation(line: 1340, column: 28, scope: !3572)
!3575 = !DILocation(line: 1340, column: 31, scope: !3572)
!3576 = !DILocation(line: 1340, column: 36, scope: !3572)
!3577 = !DILocation(line: 1341, column: 8, scope: !3572)
!3578 = !DILocation(line: 1341, column: 11, scope: !3572)
!3579 = !DILocation(line: 1341, column: 16, scope: !3572)
!3580 = !DILocation(line: 1341, column: 23, scope: !3572)
!3581 = !DILocation(line: 1341, column: 26, scope: !3572)
!3582 = !DILocation(line: 1341, column: 31, scope: !3572)
!3583 = !DILocation(line: 1340, column: 13, scope: !3565)
!3584 = !DILocation(line: 1342, column: 5, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 1341, column: 39)
!3586 = !DILocation(line: 1343, column: 15, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 1343, column: 11)
!3588 = distinct !{!3588, !3542, !3589, !749}
!3589 = !DILocation(line: 1344, column: 3, scope: !3462)
!3590 = !DILocation(line: 1345, column: 17, scope: !3462)
!3591 = !DILocation(line: 1345, column: 21, scope: !3462)
!3592 = !DILocation(line: 1345, column: 19, scope: !3462)
!3593 = !DILocation(line: 1345, column: 15, scope: !3462)
!3594 = !DILocation(line: 1346, column: 2, scope: !3462)
!3595 = !DILocation(line: 1347, column: 7, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 1347, column: 7)
!3597 = distinct !DILexicalBlock(scope: !3456, file: !3, line: 1346, column: 9)
!3598 = !DILocation(line: 1347, column: 12, scope: !3596)
!3599 = !DILocation(line: 1347, column: 34, scope: !3596)
!3600 = !DILocation(line: 1347, column: 7, scope: !3597)
!3601 = !DILocation(line: 1348, column: 4, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3596, file: !3, line: 1347, column: 40)
!3603 = !DILocation(line: 1348, column: 9, scope: !3602)
!3604 = !DILocation(line: 1348, column: 22, scope: !3602)
!3605 = !DILocation(line: 1349, column: 4, scope: !3602)
!3606 = !DILocation(line: 1352, column: 31, scope: !3597)
!3607 = !DILocation(line: 1352, column: 10, scope: !3597)
!3608 = !DILocation(line: 1352, column: 8, scope: !3597)
!3609 = !DILocation(line: 1353, column: 7, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 1353, column: 7)
!3611 = !DILocation(line: 1353, column: 19, scope: !3610)
!3612 = !DILocation(line: 1353, column: 7, scope: !3597)
!3613 = !DILocation(line: 1354, column: 23, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 1353, column: 25)
!3615 = !DILocation(line: 1354, column: 26, scope: !3614)
!3616 = !DILocation(line: 1354, column: 4, scope: !3614)
!3617 = !DILocation(line: 1357, column: 4, scope: !3614)
!3618 = !DILocation(line: 1359, column: 7, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 1359, column: 7)
!3620 = !DILocation(line: 1359, column: 21, scope: !3619)
!3621 = !DILocation(line: 1359, column: 26, scope: !3619)
!3622 = !DILocation(line: 1359, column: 19, scope: !3619)
!3623 = !DILocation(line: 1359, column: 7, scope: !3597)
!3624 = !DILocation(line: 1360, column: 27, scope: !3619)
!3625 = !DILocation(line: 1360, column: 32, scope: !3619)
!3626 = !DILocation(line: 1360, column: 16, scope: !3619)
!3627 = !DILocation(line: 1360, column: 4, scope: !3619)
!3628 = !DILocation(line: 1362, column: 10, scope: !3434)
!3629 = !DILocation(line: 1362, column: 3, scope: !3434)
!3630 = !DILocation(line: 1362, column: 8, scope: !3434)
!3631 = !DILocation(line: 1363, column: 32, scope: !3434)
!3632 = !DILocation(line: 1363, column: 2, scope: !3434)
!3633 = !DILocation(line: 1363, column: 7, scope: !3434)
!3634 = !DILocation(line: 1363, column: 29, scope: !3434)
!3635 = !DILocation(line: 1364, column: 40, scope: !3434)
!3636 = !DILocation(line: 1364, column: 2, scope: !3434)
!3637 = !DILocation(line: 1364, column: 7, scope: !3434)
!3638 = !DILocation(line: 1364, column: 37, scope: !3434)
!3639 = !DILocation(line: 1365, column: 38, scope: !3434)
!3640 = !DILocation(line: 1365, column: 2, scope: !3434)
!3641 = !DILocation(line: 1365, column: 7, scope: !3434)
!3642 = !DILocation(line: 1365, column: 35, scope: !3434)
!3643 = !DILocation(line: 1366, column: 21, scope: !3434)
!3644 = !DILocation(line: 1366, column: 2, scope: !3434)
!3645 = !DILocation(line: 1366, column: 7, scope: !3434)
!3646 = !DILocation(line: 1366, column: 18, scope: !3434)
!3647 = !DILocation(line: 1367, column: 11, scope: !3434)
!3648 = !DILocation(line: 1367, column: 3, scope: !3434)
!3649 = !DILocation(line: 1367, column: 9, scope: !3434)
!3650 = !DILocation(line: 1368, column: 2, scope: !3434)
!3651 = !DILocation(line: 1369, column: 1, scope: !3434)
!3652 = distinct !DISubprogram(name: "zip_read_data_deflate", scope: !3, file: !3, line: 1398, type: !249, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !402, retainedNodes: !423)
!3653 = !DILocalVariable(name: "a", arg: 1, scope: !3652, file: !3, line: 1398, type: !7)
!3654 = !DILocation(line: 1398, column: 44, scope: !3652)
!3655 = !DILocalVariable(name: "buff", arg: 2, scope: !3652, file: !3, line: 1398, type: !67)
!3656 = !DILocation(line: 1398, column: 60, scope: !3652)
!3657 = !DILocalVariable(name: "size", arg: 3, scope: !3652, file: !3, line: 1399, type: !68)
!3658 = !DILocation(line: 1399, column: 13, scope: !3652)
!3659 = !DILocalVariable(name: "offset", arg: 4, scope: !3652, file: !3, line: 1399, type: !69)
!3660 = !DILocation(line: 1399, column: 28, scope: !3652)
!3661 = !DILocalVariable(name: "zip", scope: !3652, file: !3, line: 1401, type: !268)
!3662 = !DILocation(line: 1401, column: 14, scope: !3652)
!3663 = !DILocalVariable(name: "bytes_avail", scope: !3652, file: !3, line: 1402, type: !40)
!3664 = !DILocation(line: 1402, column: 10, scope: !3652)
!3665 = !DILocalVariable(name: "compressed_buff", scope: !3652, file: !3, line: 1403, type: !45)
!3666 = !DILocation(line: 1403, column: 14, scope: !3652)
!3667 = !DILocalVariable(name: "r", scope: !3652, file: !3, line: 1404, type: !6)
!3668 = !DILocation(line: 1404, column: 6, scope: !3652)
!3669 = !DILocation(line: 1406, column: 8, scope: !3652)
!3670 = !DILocation(line: 1408, column: 23, scope: !3652)
!3671 = !DILocation(line: 1408, column: 26, scope: !3652)
!3672 = !DILocation(line: 1408, column: 34, scope: !3652)
!3673 = !DILocation(line: 1408, column: 8, scope: !3652)
!3674 = !DILocation(line: 1408, column: 6, scope: !3652)
!3675 = !DILocation(line: 1411, column: 6, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 1411, column: 6)
!3677 = !DILocation(line: 1411, column: 11, scope: !3676)
!3678 = !DILocation(line: 1411, column: 31, scope: !3676)
!3679 = !DILocation(line: 1411, column: 6, scope: !3652)
!3680 = !DILocation(line: 1412, column: 3, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 1411, column: 40)
!3682 = !DILocation(line: 1412, column: 8, scope: !3681)
!3683 = !DILocation(line: 1412, column: 33, scope: !3681)
!3684 = !DILocation(line: 1414, column: 33, scope: !3681)
!3685 = !DILocation(line: 1414, column: 38, scope: !3681)
!3686 = !DILocation(line: 1414, column: 26, scope: !3681)
!3687 = !DILocation(line: 1413, column: 3, scope: !3681)
!3688 = !DILocation(line: 1413, column: 8, scope: !3681)
!3689 = !DILocation(line: 1414, column: 7, scope: !3681)
!3690 = !DILocation(line: 1415, column: 7, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 1415, column: 7)
!3692 = !DILocation(line: 1415, column: 12, scope: !3691)
!3693 = !DILocation(line: 1415, column: 32, scope: !3691)
!3694 = !DILocation(line: 1415, column: 7, scope: !3681)
!3695 = !DILocation(line: 1416, column: 23, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 1415, column: 41)
!3697 = !DILocation(line: 1416, column: 26, scope: !3696)
!3698 = !DILocation(line: 1416, column: 4, scope: !3696)
!3699 = !DILocation(line: 1418, column: 4, scope: !3696)
!3700 = !DILocation(line: 1420, column: 2, scope: !3681)
!3701 = !DILocation(line: 1422, column: 23, scope: !3652)
!3702 = !DILocation(line: 1422, column: 26, scope: !3652)
!3703 = !DILocation(line: 1422, column: 6, scope: !3652)
!3704 = !DILocation(line: 1422, column: 4, scope: !3652)
!3705 = !DILocation(line: 1423, column: 6, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 1423, column: 6)
!3707 = !DILocation(line: 1423, column: 8, scope: !3706)
!3708 = !DILocation(line: 1423, column: 6, scope: !3652)
!3709 = !DILocation(line: 1424, column: 11, scope: !3706)
!3710 = !DILocation(line: 1424, column: 3, scope: !3706)
!3711 = !DILocation(line: 1432, column: 41, scope: !3652)
!3712 = !DILocation(line: 1432, column: 20, scope: !3652)
!3713 = !DILocation(line: 1432, column: 18, scope: !3652)
!3714 = !DILocation(line: 1433, column: 12, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 1433, column: 6)
!3716 = !DILocation(line: 1433, column: 17, scope: !3715)
!3717 = !DILocation(line: 1433, column: 24, scope: !3715)
!3718 = !DILocation(line: 1433, column: 30, scope: !3715)
!3719 = !DILocation(line: 1433, column: 8, scope: !3715)
!3720 = !DILocation(line: 1434, column: 6, scope: !3715)
!3721 = !DILocation(line: 1434, column: 9, scope: !3715)
!3722 = !DILocation(line: 1434, column: 23, scope: !3715)
!3723 = !DILocation(line: 1434, column: 28, scope: !3715)
!3724 = !DILocation(line: 1434, column: 21, scope: !3715)
!3725 = !DILocation(line: 1433, column: 6, scope: !3652)
!3726 = !DILocation(line: 1435, column: 26, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 1434, column: 51)
!3728 = !DILocation(line: 1435, column: 31, scope: !3727)
!3729 = !DILocation(line: 1435, column: 15, scope: !3727)
!3730 = !DILocation(line: 1436, column: 2, scope: !3727)
!3731 = !DILocation(line: 1437, column: 6, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 1437, column: 6)
!3733 = !DILocation(line: 1437, column: 18, scope: !3732)
!3734 = !DILocation(line: 1437, column: 6, scope: !3652)
!3735 = !DILocation(line: 1438, column: 22, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 1437, column: 24)
!3737 = !DILocation(line: 1438, column: 25, scope: !3736)
!3738 = !DILocation(line: 1438, column: 3, scope: !3736)
!3739 = !DILocation(line: 1440, column: 3, scope: !3736)
!3740 = !DILocation(line: 1449, column: 58, scope: !3652)
!3741 = !DILocation(line: 1449, column: 33, scope: !3652)
!3742 = !DILocation(line: 1449, column: 24, scope: !3652)
!3743 = !DILocation(line: 1449, column: 2, scope: !3652)
!3744 = !DILocation(line: 1449, column: 7, scope: !3652)
!3745 = !DILocation(line: 1449, column: 14, scope: !3652)
!3746 = !DILocation(line: 1449, column: 22, scope: !3652)
!3747 = !DILocation(line: 1450, column: 31, scope: !3652)
!3748 = !DILocation(line: 1450, column: 25, scope: !3652)
!3749 = !DILocation(line: 1450, column: 2, scope: !3652)
!3750 = !DILocation(line: 1450, column: 7, scope: !3652)
!3751 = !DILocation(line: 1450, column: 14, scope: !3652)
!3752 = !DILocation(line: 1450, column: 23, scope: !3652)
!3753 = !DILocation(line: 1451, column: 2, scope: !3652)
!3754 = !DILocation(line: 1451, column: 7, scope: !3652)
!3755 = !DILocation(line: 1451, column: 14, scope: !3652)
!3756 = !DILocation(line: 1451, column: 23, scope: !3652)
!3757 = !DILocation(line: 1452, column: 25, scope: !3652)
!3758 = !DILocation(line: 1452, column: 30, scope: !3652)
!3759 = !DILocation(line: 1452, column: 2, scope: !3652)
!3760 = !DILocation(line: 1452, column: 7, scope: !3652)
!3761 = !DILocation(line: 1452, column: 14, scope: !3652)
!3762 = !DILocation(line: 1452, column: 23, scope: !3652)
!3763 = !DILocation(line: 1453, column: 32, scope: !3652)
!3764 = !DILocation(line: 1453, column: 37, scope: !3652)
!3765 = !DILocation(line: 1453, column: 26, scope: !3652)
!3766 = !DILocation(line: 1453, column: 2, scope: !3652)
!3767 = !DILocation(line: 1453, column: 7, scope: !3652)
!3768 = !DILocation(line: 1453, column: 14, scope: !3652)
!3769 = !DILocation(line: 1453, column: 24, scope: !3652)
!3770 = !DILocation(line: 1454, column: 2, scope: !3652)
!3771 = !DILocation(line: 1454, column: 7, scope: !3652)
!3772 = !DILocation(line: 1454, column: 14, scope: !3652)
!3773 = !DILocation(line: 1454, column: 24, scope: !3652)
!3774 = !DILocation(line: 1456, column: 15, scope: !3652)
!3775 = !DILocation(line: 1456, column: 20, scope: !3652)
!3776 = !DILocation(line: 1456, column: 6, scope: !3652)
!3777 = !DILocation(line: 1456, column: 4, scope: !3652)
!3778 = !DILocation(line: 1457, column: 10, scope: !3652)
!3779 = !DILocation(line: 1457, column: 2, scope: !3652)
!3780 = !DILocation(line: 1459, column: 3, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 1457, column: 13)
!3782 = !DILocation(line: 1461, column: 3, scope: !3781)
!3783 = !DILocation(line: 1461, column: 8, scope: !3781)
!3784 = !DILocation(line: 1461, column: 21, scope: !3781)
!3785 = !DILocation(line: 1462, column: 3, scope: !3781)
!3786 = !DILocation(line: 1464, column: 22, scope: !3781)
!3787 = !DILocation(line: 1464, column: 25, scope: !3781)
!3788 = !DILocation(line: 1464, column: 3, scope: !3781)
!3789 = !DILocation(line: 1466, column: 3, scope: !3781)
!3790 = !DILocation(line: 1468, column: 22, scope: !3781)
!3791 = !DILocation(line: 1468, column: 25, scope: !3781)
!3792 = !DILocation(line: 1469, column: 40, scope: !3781)
!3793 = !DILocation(line: 1468, column: 3, scope: !3781)
!3794 = !DILocation(line: 1470, column: 3, scope: !3781)
!3795 = !DILocation(line: 1474, column: 16, scope: !3652)
!3796 = !DILocation(line: 1474, column: 21, scope: !3652)
!3797 = !DILocation(line: 1474, column: 28, scope: !3652)
!3798 = !DILocation(line: 1474, column: 14, scope: !3652)
!3799 = !DILocation(line: 1475, column: 19, scope: !3652)
!3800 = !DILocation(line: 1475, column: 22, scope: !3652)
!3801 = !DILocation(line: 1475, column: 2, scope: !3652)
!3802 = !DILocation(line: 1476, column: 32, scope: !3652)
!3803 = !DILocation(line: 1476, column: 2, scope: !3652)
!3804 = !DILocation(line: 1476, column: 7, scope: !3652)
!3805 = !DILocation(line: 1476, column: 29, scope: !3652)
!3806 = !DILocation(line: 1477, column: 38, scope: !3652)
!3807 = !DILocation(line: 1477, column: 2, scope: !3652)
!3808 = !DILocation(line: 1477, column: 7, scope: !3652)
!3809 = !DILocation(line: 1477, column: 35, scope: !3652)
!3810 = !DILocation(line: 1479, column: 10, scope: !3652)
!3811 = !DILocation(line: 1479, column: 15, scope: !3652)
!3812 = !DILocation(line: 1479, column: 22, scope: !3652)
!3813 = !DILocation(line: 1479, column: 3, scope: !3652)
!3814 = !DILocation(line: 1479, column: 8, scope: !3652)
!3815 = !DILocation(line: 1480, column: 40, scope: !3652)
!3816 = !DILocation(line: 1480, column: 45, scope: !3652)
!3817 = !DILocation(line: 1480, column: 52, scope: !3652)
!3818 = !DILocation(line: 1480, column: 2, scope: !3652)
!3819 = !DILocation(line: 1480, column: 7, scope: !3652)
!3820 = !DILocation(line: 1480, column: 37, scope: !3652)
!3821 = !DILocation(line: 1481, column: 10, scope: !3652)
!3822 = !DILocation(line: 1481, column: 15, scope: !3652)
!3823 = !DILocation(line: 1481, column: 3, scope: !3652)
!3824 = !DILocation(line: 1481, column: 8, scope: !3652)
!3825 = !DILocation(line: 1483, column: 6, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 1483, column: 6)
!3827 = !DILocation(line: 1483, column: 11, scope: !3826)
!3828 = !DILocation(line: 1483, column: 24, scope: !3826)
!3829 = !DILocation(line: 1483, column: 28, scope: !3826)
!3830 = !DILocation(line: 1483, column: 33, scope: !3826)
!3831 = !DILocation(line: 1483, column: 40, scope: !3826)
!3832 = !DILocation(line: 1483, column: 46, scope: !3826)
!3833 = !DILocation(line: 1483, column: 6, scope: !3652)
!3834 = !DILocalVariable(name: "p", scope: !3835, file: !3, line: 1484, type: !83)
!3835 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 1483, column: 68)
!3836 = !DILocation(line: 1484, column: 15, scope: !3835)
!3837 = !DILocation(line: 1486, column: 41, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 1486, column: 7)
!3839 = !DILocation(line: 1486, column: 20, scope: !3838)
!3840 = !DILocation(line: 1486, column: 18, scope: !3838)
!3841 = !DILocation(line: 1486, column: 12, scope: !3838)
!3842 = !DILocation(line: 1486, column: 7, scope: !3835)
!3843 = !DILocation(line: 1487, column: 23, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3838, file: !3, line: 1486, column: 56)
!3845 = !DILocation(line: 1487, column: 26, scope: !3844)
!3846 = !DILocation(line: 1487, column: 4, scope: !3844)
!3847 = !DILocation(line: 1490, column: 4, scope: !3844)
!3848 = !DILocation(line: 1493, column: 7, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 1493, column: 7)
!3850 = !DILocation(line: 1493, column: 12, scope: !3849)
!3851 = !DILocation(line: 1493, column: 19, scope: !3849)
!3852 = !DILocation(line: 1493, column: 22, scope: !3849)
!3853 = !DILocation(line: 1493, column: 27, scope: !3849)
!3854 = !DILocation(line: 1493, column: 34, scope: !3849)
!3855 = !DILocation(line: 1494, column: 7, scope: !3849)
!3856 = !DILocation(line: 1494, column: 12, scope: !3849)
!3857 = !DILocation(line: 1494, column: 22, scope: !3849)
!3858 = !DILocation(line: 1494, column: 25, scope: !3849)
!3859 = !DILocation(line: 1494, column: 30, scope: !3849)
!3860 = !DILocation(line: 1493, column: 7, scope: !3835)
!3861 = !DILocation(line: 1495, column: 40, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 1494, column: 41)
!3863 = !DILocation(line: 1495, column: 42, scope: !3862)
!3864 = !DILocation(line: 1495, column: 24, scope: !3862)
!3865 = !DILocation(line: 1495, column: 4, scope: !3862)
!3866 = !DILocation(line: 1495, column: 9, scope: !3862)
!3867 = !DILocation(line: 1495, column: 16, scope: !3862)
!3868 = !DILocation(line: 1495, column: 22, scope: !3862)
!3869 = !DILocation(line: 1496, column: 50, scope: !3862)
!3870 = !DILocation(line: 1496, column: 52, scope: !3862)
!3871 = !DILocation(line: 1496, column: 34, scope: !3862)
!3872 = !DILocation(line: 1496, column: 4, scope: !3862)
!3873 = !DILocation(line: 1496, column: 9, scope: !3862)
!3874 = !DILocation(line: 1496, column: 16, scope: !3862)
!3875 = !DILocation(line: 1496, column: 32, scope: !3862)
!3876 = !DILocation(line: 1497, column: 52, scope: !3862)
!3877 = !DILocation(line: 1497, column: 54, scope: !3862)
!3878 = !DILocation(line: 1497, column: 36, scope: !3862)
!3879 = !DILocation(line: 1497, column: 4, scope: !3862)
!3880 = !DILocation(line: 1497, column: 9, scope: !3862)
!3881 = !DILocation(line: 1497, column: 16, scope: !3862)
!3882 = !DILocation(line: 1497, column: 34, scope: !3862)
!3883 = !DILocation(line: 1498, column: 4, scope: !3862)
!3884 = !DILocation(line: 1498, column: 9, scope: !3862)
!3885 = !DILocation(line: 1498, column: 20, scope: !3862)
!3886 = !DILocation(line: 1499, column: 3, scope: !3862)
!3887 = !DILocation(line: 1500, column: 2, scope: !3835)
!3888 = !DILocation(line: 1502, column: 2, scope: !3652)
!3889 = !DILocation(line: 1503, column: 1, scope: !3652)
