.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;
.super Ljava/lang/Object;
.source "HprofInMemoryIndex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHprofInMemoryIndex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HprofInMemoryIndex.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion\n+ 2 OnHprofRecordTagListener.kt\ncom/netease/androidcrashhandler/thirdparty/shark/OnHprofRecordTagListener$Companion\n+ 3 SharkLog.kt\ncom/netease/androidcrashhandler/thirdparty/shark/SharkLog\n*L\n1#1,735:1\n34#2,9:736\n34#3,3:745\n*S KotlinDebug\n*F\n+ 1 HprofInMemoryIndex.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion\n*L\n666#1:736,9\n728#1:745,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J.\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;",
        "",
        "()V",
        "byteSizeForUnsigned",
        "",
        "maxValue",
        "",
        "indexHprof",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;",
        "reader",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/StreamingHprofReader;",
        "hprofHeader",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HprofHeader;",
        "proguardMapping",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;",
        "indexedGcRootTags",
        "",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;",
        "CrashHunterLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$byteSizeForUnsigned(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;J)I
    .locals 0

    .line 634
    invoke-direct {p0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;->byteSizeForUnsigned(J)I

    move-result p0

    return p0
.end method

.method private final byteSizeForUnsigned(J)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public final indexHprof(Lcom/netease/androidcrashhandler/thirdparty/shark/StreamingHprofReader;Lcom/netease/androidcrashhandler/thirdparty/shark/HprofHeader;Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;Ljava/util/Set;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/StreamingHprofReader;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/HprofHeader;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;",
            "Ljava/util/Set<",
            "+",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;",
            ">;)",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 654
    new-instance v12, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 655
    new-instance v13, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 656
    new-instance v14, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 657
    new-instance v15, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 658
    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 659
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 660
    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 661
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 662
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 665
    sget-object v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;->CLASS_DUMP:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;

    check-cast v2, Ljava/lang/Enum;

    sget-object v3, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;->INSTANCE_DUMP:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;

    check-cast v3, Ljava/lang/Enum;

    sget-object v4, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;->OBJECT_ARRAY_DUMP:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;

    check-cast v4, Ljava/lang/Enum;

    sget-object v5, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;->PRIMITIVE_ARRAY_DUMP:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;

    check-cast v5, Ljava/lang/Enum;

    invoke-static {v2, v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/util/Set;

    .line 666
    sget-object v2, Lcom/netease/androidcrashhandler/thirdparty/shark/OnHprofRecordTagListener;->Companion:Lcom/netease/androidcrashhandler/thirdparty/shark/OnHprofRecordTagListener$Companion;

    .line 736
    new-instance v16, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;

    move-object/from16 v2, v16

    move-object v3, v11

    move-object v4, v12

    move-object v5, v7

    move-object v0, v6

    move-object v6, v10

    move-object/from16 v17, v7

    move-object v7, v13

    move-object/from16 v18, v8

    move-object v8, v9

    move-object/from16 v19, v9

    move-object v9, v14

    move-object/from16 v20, v10

    move-object/from16 v10, v18

    move-object/from16 v21, v11

    move-object v11, v15

    invoke-direct/range {v2 .. v11}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    move-object/from16 v2, v16

    check-cast v2, Lcom/netease/androidcrashhandler/thirdparty/shark/OnHprofRecordTagListener;

    .line 664
    invoke-virtual {v1, v0, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/StreamingHprofReader;->readRecords(Ljava/util/Set;Lcom/netease/androidcrashhandler/thirdparty/shark/OnHprofRecordTagListener;)J

    move-result-wide v24

    .line 698
    iget-wide v2, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;->byteSizeForUnsigned(J)I

    move-result v30

    .line 699
    iget-wide v2, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-direct {v0, v2, v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;->byteSizeForUnsigned(J)I

    move-result v31

    .line 700
    iget-wide v2, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-direct {v0, v2, v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;->byteSizeForUnsigned(J)I

    move-result v32

    .line 701
    iget-wide v2, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-direct {v0, v2, v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;->byteSizeForUnsigned(J)I

    move-result v33

    .line 703
    new-instance v2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;

    .line 704
    invoke-virtual/range {p2 .. p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofHeader;->getIdentifierByteSize()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ne v3, v6, :cond_0

    move-object/from16 v3, v21

    const/16 v23, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v3, v21

    const/16 v23, 0x0

    .line 706
    :goto_0
    iget v6, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v7, v20

    .line 707
    iget v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v9, v19

    .line 708
    iget v10, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v11, v18

    .line 709
    iget v12, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v13, v17

    .line 714
    iget v13, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v22, v2

    move/from16 v26, v6

    move/from16 v27, v8

    move/from16 v28, v10

    move/from16 v29, v12

    move/from16 v34, v13

    .line 703
    invoke-direct/range {v22 .. v34}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;-><init>(ZJIIIIIIIII)V

    .line 718
    sget-object v6, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;->STRING_IN_UTF8:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;

    check-cast v6, Ljava/lang/Enum;

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;

    .line 719
    sget-object v10, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;->LOAD_CLASS:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;

    aput-object v10, v8, v5

    .line 720
    sget-object v5, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;->CLASS_DUMP:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;

    aput-object v5, v8, v4

    const/4 v4, 0x2

    .line 721
    sget-object v5, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;->INSTANCE_DUMP:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;

    aput-object v5, v8, v4

    const/4 v4, 0x3

    .line 722
    sget-object v5, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;->OBJECT_ARRAY_DUMP:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;

    aput-object v5, v8, v4

    const/4 v4, 0x4

    .line 723
    sget-object v5, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;->PRIMITIVE_ARRAY_DUMP:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;

    aput-object v5, v8, v4

    .line 719
    check-cast v8, [Ljava/lang/Enum;

    .line 717
    invoke-static {v6, v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 724
    sget-object v5, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;->Companion:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag$Companion;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag$Companion;->getRootTags()Ljava/util/EnumSet;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    move-object/from16 v6, p4

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 717
    invoke-static {v4, v5}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 726
    move-object v5, v2

    check-cast v5, Lcom/netease/androidcrashhandler/thirdparty/shark/OnHprofRecordTagListener;

    invoke-virtual {v1, v4, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/StreamingHprofReader;->readRecords(Ljava/util/Set;Lcom/netease/androidcrashhandler/thirdparty/shark/OnHprofRecordTagListener;)J

    .line 728
    sget-object v1, Lcom/netease/androidcrashhandler/thirdparty/shark/SharkLog;->INSTANCE:Lcom/netease/androidcrashhandler/thirdparty/shark/SharkLog;

    .line 745
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/SharkLog;->getLogger()Lcom/netease/androidcrashhandler/thirdparty/shark/SharkLog$Logger;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 728
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "classCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " instanceCount:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " objectArrayCount:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    iget v3, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 728
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " primitiveArrayCount:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    iget v3, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 728
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 746
    invoke-interface {v1, v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/SharkLog$Logger;->d(Ljava/lang/String;)V

    :goto_1
    move-object/from16 v1, p2

    move-object/from16 v3, p3

    .line 732
    invoke-virtual {v2, v3, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->buildIndex(Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;Lcom/netease/androidcrashhandler/thirdparty/shark/HprofHeader;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;

    move-result-object v1

    return-object v1
.end method
