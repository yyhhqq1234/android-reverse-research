.class public Loicq/wlogin_sdk/request/WtloginHelper;
.super Loicq/wlogin_sdk/request/WtloginListener;
.source "WtloginHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginRequestCode;,
        Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;,
        Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;,
        Loicq/wlogin_sdk/request/WtloginHelper$A1SRC;,
        Loicq/wlogin_sdk/request/WtloginHelper$RegTLVType;,
        Loicq/wlogin_sdk/request/WtloginHelper$SigType;
    }
.end annotation


# static fields
.field static final __sync_top:Ljava/lang/Object;

.field static __top:I


# instance fields
.field private isForLocal:Z

.field private mAysncSeq:J

.field private mContext:Landroid/content/Context;

.field private mG:Loicq/wlogin_sdk/request/u;

.field private mHelperHandler:Landroid/os/Handler;

.field private mListener:Loicq/wlogin_sdk/request/WtloginListener;

.field private mMainSigMap:I

.field private mMiscBitmap:I

.field private mOpenAppid:J

.field private mRegStatus:Loicq/wlogin_sdk/a/j;

.field private mSubSigMap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput v0, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Loicq/wlogin_sdk/request/WtloginHelper;->__sync_top:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginListener;-><init>()V

    .line 67
    new-instance v0, Loicq/wlogin_sdk/request/u;

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    .line 68
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->newHelperHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    .line 70
    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    .line 71
    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    .line 72
    new-instance v0, Loicq/wlogin_sdk/a/j;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/j;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    .line 74
    const v0, 0xff32f2

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    .line 75
    const v0, 0x10400

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    .line 76
    const v0, 0x37ff7c

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    .line 84
    const-wide/32 v0, 0x2a9e5427

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mOpenAppid:J

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    .line 88
    iput-boolean v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    .line 168
    iput-boolean v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    .line 169
    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    .line 170
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->a(Landroid/content/Context;)V

    .line 171
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestInit()I

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginListener;-><init>()V

    .line 67
    new-instance v0, Loicq/wlogin_sdk/request/u;

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    .line 68
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->newHelperHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    .line 70
    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    .line 71
    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    .line 72
    new-instance v0, Loicq/wlogin_sdk/a/j;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/j;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    .line 74
    const v0, 0xff32f2

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    .line 75
    const v0, 0x10400

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    .line 76
    const v0, 0x37ff7c

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    .line 84
    const-wide/32 v0, 0x2a9e5427

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mOpenAppid:J

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    .line 183
    sput-object p2, Loicq/wlogin_sdk/request/WtloginMsfListener;->TicketMgr:Ljava/lang/Object;

    .line 184
    iget-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    invoke-direct {p0, p1, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->localInit(Landroid/content/Context;Z)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginListener;-><init>()V

    .line 67
    new-instance v0, Loicq/wlogin_sdk/request/u;

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    .line 68
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->newHelperHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    .line 70
    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    .line 71
    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    .line 72
    new-instance v0, Loicq/wlogin_sdk/a/j;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/j;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    .line 74
    const v0, 0xff32f2

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    .line 75
    const v0, 0x10400

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    .line 76
    const v0, 0x37ff7c

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    .line 84
    const-wide/32 v0, 0x2a9e5427

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mOpenAppid:J

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    .line 180
    invoke-direct {p0, p1, p2}, Loicq/wlogin_sdk/request/WtloginHelper;->localInit(Landroid/content/Context;Z)V

    .line 181
    return-void
.end method

.method private AsyncGenRSAKey()V
    .locals 2

    .prologue
    .line 3460
    iget-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    if-eqz v0, :cond_0

    .line 3468
    :goto_0
    return-void

    .line 3462
    :cond_0
    new-instance v0, Loicq/wlogin_sdk/request/WtloginHelper$2;

    const-string v1, "AsyncGenRSAKey"

    invoke-direct {v0, p0, v1}, Loicq/wlogin_sdk/request/WtloginHelper$2;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;)V

    .line 3467
    invoke-virtual {v0}, Loicq/wlogin_sdk/request/WtloginHelper$2;->start()V

    goto :goto_0
.end method

.method private CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I
    .locals 28

    .prologue
    .line 2407
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2408
    :cond_0
    const/16 v8, -0x3f9

    .line 2631
    :goto_0
    return v8

    .line 2412
    :cond_1
    if-nez p5, :cond_2

    .line 2413
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v10, "CheckPictureAndGetSt"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v10}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BLjava/lang/String;)V

    const/4 v3, 0x2

    .line 2415
    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 2416
    const/16 v8, -0x3e9

    goto :goto_0

    .line 2421
    :cond_2
    const/4 v8, 0x0

    .line 2424
    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 2425
    move-object/from16 v0, p0

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    move-object/from16 v0, p3

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2427
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p3

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v26

    .line 2428
    move-object/from16 v0, v26

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p3

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2429
    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v27

    .line 2431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CheckPictureAndGetSt Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 2435
    new-instance v2, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    move-object/from16 v0, v27

    iput-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 2437
    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2439
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 2440
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4

    .line 2441
    const/4 v8, 0x1

    .line 2448
    :cond_4
    :goto_1
    const/4 v4, 0x1

    if-ne v8, v4, :cond_5

    .line 2449
    move-object/from16 v0, v26

    iput-wide v2, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 2450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    .line 2455
    :cond_5
    new-instance v2, Loicq/wlogin_sdk/request/o;

    move-object/from16 v0, v26

    invoke-direct {v2, v0}, Loicq/wlogin_sdk/request/o;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v27

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Loicq/wlogin_sdk/request/o;->a([BII[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v3

    .line 2458
    const/16 v2, 0xcc

    if-ne v3, v2, :cond_6

    .line 2459
    new-instance v2, Loicq/wlogin_sdk/request/q;

    move-object/from16 v0, v26

    invoke-direct {v2, v0}, Loicq/wlogin_sdk/request/q;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v27

    iget-object v5, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Loicq/wlogin_sdk/request/q;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v3

    .line 2463
    :cond_6
    if-eqz v3, :cond_c

    const/16 v2, 0xa0

    if-eq v3, v2, :cond_c

    move v8, v3

    .line 2602
    :cond_7
    :goto_2
    const/16 v2, 0x80

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v2

    .line 2603
    if-nez v2, :cond_8

    .line 2604
    new-instance v2, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v2}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    .line 2606
    :cond_8
    sget-object v3, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v26

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v26

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 2607
    invoke-static {v8}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v7

    .line 2606
    invoke-virtual/range {v3 .. v8}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    .line 2608
    if-nez v8, :cond_1c

    .line 2609
    iget-object v3, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v3, :cond_9

    iget-object v3, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v3, v3

    if-eqz v3, :cond_9

    .line 2610
    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v26

    iget-wide v14, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v27

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    .line 2618
    :cond_9
    :goto_3
    move-object/from16 v0, v26

    iget-object v3, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    if-eqz v3, :cond_a

    move-object/from16 v0, v26

    iget-object v3, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    invoke-virtual {v3}, Loicq/wlogin_sdk/b/au;->a()I

    move-result v3

    if-eqz v3, :cond_a

    .line 2619
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v26

    iget-object v4, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    iput-object v4, v3, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    .line 2620
    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v26

    iget-wide v14, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v27

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    .line 2625
    :cond_a
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    .line 2628
    invoke-virtual/range {v26 .. v26}, Loicq/wlogin_sdk/request/u;->h()V

    .line 2629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CheckPictureAndGetSt Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2444
    :cond_b
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2445
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 2468
    :cond_c
    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2470
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 2471
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1d

    .line 2472
    const/4 v2, 0x1

    .line 2479
    :goto_4
    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_e

    if-nez v2, :cond_e

    .line 2480
    const/16 v8, -0x3eb

    .line 2481
    goto/16 :goto_2

    .line 2475
    :cond_d
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2476
    const/4 v2, 0x1

    goto :goto_4

    .line 2484
    :cond_e
    move-object/from16 v0, v26

    iput-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 2485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    .line 2487
    const/16 v2, 0xa0

    if-ne v3, v2, :cond_f

    move v8, v3

    goto/16 :goto_2

    .line 2489
    :cond_f
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v2, :cond_11

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v2, v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_11

    .line 2490
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v2

    move-object/from16 v0, v26

    iput v2, v0, Loicq/wlogin_sdk/request/u;->i:I

    .line 2491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSF SSO SEQ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    iget v3, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    :goto_5
    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v2, v3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    .line 2496
    if-eqz v2, :cond_13

    .line 2498
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 2501
    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_12

    if-eqz p4, :cond_12

    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p4

    array-length v3, v0

    if-ne v2, v3, :cond_12

    .line 2503
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_12

    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    if-ge v3, v2, :cond_12

    .line 2505
    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    aget-wide v6, v2, v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v6, v7}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v6

    .line 2506
    if-eqz v6, :cond_10

    .line 2507
    mul-int/lit8 v7, v3, 0x2

    iget-object v2, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v7

    .line 2508
    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v7, v2, 0x1

    iget-object v2, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v7

    .line 2503
    :cond_10
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    .line 2493
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, v26

    iput v2, v0, Loicq/wlogin_sdk/request/u;->i:I

    goto :goto_5

    .line 2513
    :cond_12
    const/4 v8, 0x0

    .line 2514
    goto/16 :goto_2

    .line 2519
    :cond_13
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    if-eqz v2, :cond_16

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    array-length v2, v2

    if-lez v2, :cond_16

    .line 2521
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object/from16 v24, v2

    .line 2528
    :goto_7
    move-object/from16 v0, v27

    iget v2, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    if-eqz v2, :cond_17

    .line 2529
    new-instance v3, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v3, v0, v2}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;Landroid/content/Context;)V

    .line 2530
    invoke-virtual {v3}, Loicq/wlogin_sdk/request/l;->g()V

    .line 2531
    move-object/from16 v0, v27

    iget-wide v4, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move-object/from16 v0, v26

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    const/4 v10, 0x0

    sget-object v11, Loicq/wlogin_sdk/request/u;->ad:[B

    move-object/from16 v0, v27

    iget-object v12, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v15, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v27

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v16, v0

    move-object/from16 v0, v27

    iget v0, v0, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    move/from16 v17, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move-wide/from16 v18, v0

    sget v20, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v25, p3

    invoke-virtual/range {v3 .. v25}, Loicq/wlogin_sdk/request/l;->a(JJJI[B[B[BII[JIJIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v8

    .line 2559
    :goto_8
    const/16 v2, 0xcc

    if-ne v8, v2, :cond_14

    .line 2560
    new-instance v2, Loicq/wlogin_sdk/request/q;

    move-object/from16 v0, v26

    invoke-direct {v2, v0}, Loicq/wlogin_sdk/request/q;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v27

    iget-object v5, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Loicq/wlogin_sdk/request/q;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v8

    .line 2565
    :cond_14
    if-eqz v8, :cond_15

    const/16 v2, 0xa0

    if-ne v8, v2, :cond_7

    .line 2569
    :cond_15
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 2570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    .line 2572
    const/16 v2, 0xa0

    if-eq v8, v2, :cond_7

    .line 2574
    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v2, v3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    .line 2575
    if-nez v2, :cond_19

    .line 2576
    const/16 v8, -0x3ec

    .line 2577
    goto/16 :goto_2

    .line 2525
    :cond_16
    sget-object v24, Loicq/wlogin_sdk/request/u;->aa:[B

    goto/16 :goto_7

    .line 2543
    :cond_17
    const/4 v2, 0x4

    new-array v11, v2, [B

    .line 2544
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sget-wide v6, Loicq/wlogin_sdk/request/u;->ac:J

    add-long/2addr v4, v6

    invoke-static {v11, v2, v4, v5}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 2545
    move-object/from16 v0, v27

    iget-boolean v2, v0, Loicq/wlogin_sdk/request/async_context;->_isSmslogin:Z

    if-eqz v2, :cond_18

    const/4 v13, 0x3

    .line 2546
    :goto_9
    new-instance v2, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v2, v0, v3}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;Landroid/content/Context;)V

    .line 2547
    invoke-virtual {v2}, Loicq/wlogin_sdk/request/l;->g()V

    .line 2548
    move-object/from16 v0, v27

    iget-wide v3, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, v27

    iget-wide v5, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move-object/from16 v0, v26

    iget-wide v7, v0, Loicq/wlogin_sdk/request/u;->f:J

    const/4 v9, 0x0

    sget-object v10, Loicq/wlogin_sdk/request/u;->ad:[B

    move-object/from16 v0, v27

    iget-object v12, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    move-object/from16 v0, p0

    iget v14, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v15, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v27

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v16, v0

    move-object/from16 v0, v27

    iget v0, v0, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    move/from16 v17, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move-wide/from16 v18, v0

    sget v20, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v25, p3

    invoke-virtual/range {v2 .. v25}, Loicq/wlogin_sdk/request/l;->a(JJJI[B[B[BIII[JIJIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v8

    goto/16 :goto_8

    .line 2545
    :cond_18
    const/4 v13, 0x1

    goto :goto_9

    .line 2580
    :cond_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 2583
    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_1b

    if-eqz p4, :cond_1b

    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p4

    array-length v3, v0

    if-ne v2, v3, :cond_1b

    .line 2585
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_1b

    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    if-ge v3, v2, :cond_1b

    .line 2587
    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    aget-wide v6, v2, v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v6, v7}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v6

    .line 2588
    if-eqz v6, :cond_1a

    .line 2589
    mul-int/lit8 v7, v3, 0x2

    iget-object v2, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v7

    .line 2590
    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v7, v2, 0x1

    iget-object v2, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v7

    .line 2585
    :cond_1a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_a

    .line 2595
    :cond_1b
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2614
    :cond_1c
    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v26

    iget-wide v14, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v27

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_3

    :cond_1d
    move v2, v8

    goto/16 :goto_4
.end method

.method private CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I
    .locals 21

    .prologue
    .line 2745
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2746
    :cond_0
    const/16 v8, -0x3f9

    .line 2860
    :goto_0
    return v8

    .line 2750
    :cond_1
    if-nez p5, :cond_2

    .line 2751
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v10, "CheckSMSAndGetSt"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v10}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BLjava/lang/String;)V

    const/4 v3, 0x4

    .line 2753
    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 2754
    const/16 v8, -0x3e9

    goto :goto_0

    .line 2761
    :cond_2
    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 2762
    move-object/from16 v0, p0

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    move-object/from16 v0, p3

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2764
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p3

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v19

    .line 2765
    move-object/from16 v0, v19

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p3

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2766
    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v20

    .line 2768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CheckSMSAndGetSt Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 2772
    const-wide/16 v2, 0x0

    move-object/from16 v0, v19

    iput-wide v2, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 2773
    new-instance v2, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    move-object/from16 v0, v20

    iput-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 2774
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v2, :cond_7

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v2, v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_7

    .line 2775
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Loicq/wlogin_sdk/request/u;->i:I

    .line 2776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSF SSO SEQ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget v3, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    :goto_1
    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2785
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 2786
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_e

    .line 2787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " have not found uin record."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    const/16 v8, -0x3eb

    .line 2830
    :goto_2
    const/16 v2, 0x80

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v2

    .line 2831
    if-nez v2, :cond_4

    .line 2832
    new-instance v2, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v2}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    .line 2834
    :cond_4
    sget-object v3, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v19

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v19

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 2835
    invoke-static {v8}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v7

    .line 2834
    invoke-virtual/range {v3 .. v8}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    .line 2836
    if-nez v8, :cond_d

    .line 2837
    iget-object v3, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v3, :cond_5

    iget-object v3, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v3, v3

    if-eqz v3, :cond_5

    .line 2838
    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v19

    iget-wide v14, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v20

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    .line 2846
    :cond_5
    :goto_3
    move-object/from16 v0, v19

    iget-object v3, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    if-eqz v3, :cond_6

    move-object/from16 v0, v19

    iget-object v3, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    invoke-virtual {v3}, Loicq/wlogin_sdk/b/au;->a()I

    move-result v3

    if-eqz v3, :cond_6

    .line 2847
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v19

    iget-object v4, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    iput-object v4, v3, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    .line 2848
    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v19

    iget-wide v14, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v20

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    .line 2853
    :cond_6
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    .line 2856
    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/request/u;->h()V

    .line 2857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CheckSMSAndGetSt Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2778
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput v2, v0, Loicq/wlogin_sdk/request/u;->i:I

    goto/16 :goto_1

    .line 2793
    :cond_8
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v8, v2

    .line 2795
    :goto_4
    move-object/from16 v0, v19

    iput-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 2796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    .line 2799
    new-instance v2, Loicq/wlogin_sdk/request/p;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Loicq/wlogin_sdk/request/p;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v20

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Loicq/wlogin_sdk/request/p;->a([BII[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    .line 2802
    if-eqz v2, :cond_9

    move v8, v2

    .line 2803
    goto/16 :goto_2

    .line 2806
    :cond_9
    move-object/from16 v0, v20

    iget-wide v2, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9, v2, v3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    .line 2807
    if-nez v2, :cond_a

    .line 2808
    const/16 v8, -0x3ec

    .line 2809
    goto/16 :goto_2

    .line 2812
    :cond_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 2815
    move-object/from16 v0, v20

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_c

    if-eqz p4, :cond_c

    move-object/from16 v0, v20

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p4

    array-length v3, v0

    if-ne v2, v3, :cond_c

    .line 2816
    const/4 v2, 0x0

    move v3, v2

    :goto_5
    move-object/from16 v0, v20

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_c

    move-object/from16 v0, v20

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    if-ge v3, v2, :cond_c

    .line 2817
    move-object/from16 v0, v20

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    aget-wide v4, v2, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9, v4, v5}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 2818
    if-eqz v4, :cond_b

    .line 2819
    mul-int/lit8 v5, v3, 0x2

    iget-object v2, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v5

    .line 2820
    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v5, v2, 0x1

    iget-object v2, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v5

    .line 2816
    :cond_b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    .line 2825
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2842
    :cond_d
    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v19

    iget-wide v14, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v20

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_3

    :cond_e
    move-wide v8, v2

    goto/16 :goto_4
.end method

.method private CheckSMSVerifyLoginAccount(JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 17

    .prologue
    .line 3096
    const/4 v2, 0x0

    sput-boolean v2, Loicq/wlogin_sdk/a/j;->x:Z

    .line 3097
    const-wide/16 v2, 0x0

    sput-wide v2, Loicq/wlogin_sdk/a/j;->y:J

    .line 3099
    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 3100
    :cond_0
    const/16 v2, -0x3f9

    .line 3135
    :goto_0
    return v2

    .line 3103
    :cond_1
    if-nez p7, :cond_2

    .line 3104
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v12, "CheckSMSVerifyLoginAccount"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v2 .. v12}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/16 v3, 0xc

    .line 3107
    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 3108
    const/16 v2, -0x3e9

    goto :goto_0

    .line 3113
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v15

    .line 3114
    iget-wide v2, v15, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p6

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 3115
    iget-wide v2, v15, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    .line 3116
    iget-wide v2, v15, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v2

    .line 3118
    move-object/from16 v0, p5

    iput-object v0, v15, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 3120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v15, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CheckSMSVerifyLoginAccount ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3124
    move-object/from16 v0, p6

    iget v3, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_login_bitmap:I

    iput v3, v2, Loicq/wlogin_sdk/request/async_context;->_login_bitmap:I

    .line 3125
    new-instance v3, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v3}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v3, v2, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 3127
    new-instance v3, Loicq/wlogin_sdk/request/w;

    invoke-direct {v3, v15}, Loicq/wlogin_sdk/request/w;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    sget-object v9, Loicq/wlogin_sdk/request/u;->aa:[B

    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v12, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    const/4 v13, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v10, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v3 .. v14}, Loicq/wlogin_sdk/request/w;->a(JJI[BLjava/lang/String;II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    .line 3129
    const/16 v3, 0xd0

    if-ne v2, v3, :cond_3

    .line 3130
    const/4 v2, 0x0

    .line 3133
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v15, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CheckSMSVerifyLoginAccount ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-lez v2, :cond_4

    .line 3134
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3133
    move-object/from16 v0, p5

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3134
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1
.end method

.method private FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;
    .locals 1

    .prologue
    .line 3474
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1, p2, p3, p4}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v0

    .line 3475
    return-object v0
.end method

.method private GetA1ByAccount(Ljava/lang/String;J)[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 534
    if-nez p1, :cond_0

    move-object v0, v2

    .line 566
    :goto_0
    return-object v0

    .line 540
    :cond_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 541
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 542
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_4

    move-object v0, v2

    .line 557
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    if-eqz v1, :cond_2

    iget-object v1, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    array-length v1, v1

    if-gtz v1, :cond_5

    .line 558
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dwAppid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GetA1ByAccount return: null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 560
    goto :goto_0

    .line 547
    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 551
    :cond_4
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v3, v0, v1, p2, p3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v0

    .line 552
    if-nez v0, :cond_1

    goto :goto_1

    .line 563
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userAccount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dwAppid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GetA1ByAccount return: not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v0, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto/16 :goto_0
.end method

.method private GetA1WithA1(Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;I)I
    .locals 32

    .prologue
    .line 1399
    if-eqz p1, :cond_0

    if-eqz p7, :cond_0

    if-eqz p14, :cond_0

    if-eqz p15, :cond_0

    if-eqz p16, :cond_0

    if-nez p17, :cond_1

    .line 1400
    :cond_0
    const/16 v10, -0x3f9

    .line 1541
    :goto_0
    return v10

    .line 1404
    :cond_1
    move/from16 v0, p6

    or-int/lit16 v14, v0, 0xc0

    .line 1407
    if-nez p18, :cond_2

    .line 1408
    new-instance v5, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v8, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v26, "GetA1WithA1"

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object/from16 v15, p7

    move-wide/from16 v16, p8

    move-wide/from16 v18, p10

    move-wide/from16 v20, p12

    move-object/from16 v22, p14

    move-object/from16 v23, p15

    move-object/from16 v24, p16

    move-object/from16 v25, p17

    invoke-direct/range {v5 .. v26}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;Ljava/lang/String;)V

    const/4 v4, 0x6

    .line 1412
    invoke-virtual {v5, v4}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 1413
    const/16 v10, -0x3e9

    goto :goto_0

    .line 1416
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v30

    .line 1417
    move-object/from16 v0, v30

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p16

    iput-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 1418
    move-object/from16 v0, v30

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v4

    .line 1425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wtlogin login with GetA1WithA1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dwSrcAppid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dwMainSigMap:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dwSubSrcAppid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dstAppName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dwDstAppid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p10

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dwSubDstAppid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p12

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Seq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v5

    .line 1433
    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->get_network_type(Landroid/content/Context;)I

    move-result v6

    sput v6, Loicq/wlogin_sdk/request/u;->D:I

    .line 1434
    sget v6, Loicq/wlogin_sdk/request/u;->D:I

    if-eq v5, v6, :cond_3

    .line 1436
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    sget v6, Loicq/wlogin_sdk/request/u;->D:I

    invoke-static {v5, v6}, Loicq/wlogin_sdk/tools/util;->save_network_type(Landroid/content/Context;I)V

    .line 1439
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->get_apn_string(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    sput-object v5, Loicq/wlogin_sdk/request/u;->F:[B

    .line 1441
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 1442
    const-wide/16 v6, 0x0

    move-object/from16 v0, v30

    iput-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 1443
    move-wide/from16 v0, p2

    iput-wide v0, v4, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    .line 1444
    move-wide/from16 v0, p2

    iput-wide v0, v4, Loicq/wlogin_sdk/request/async_context;->_appid:J

    .line 1445
    move-wide/from16 v0, p4

    iput-wide v0, v4, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    .line 1446
    iput v14, v4, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    .line 1447
    new-instance v5, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v5}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v5, v4, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 1452
    sget-object v4, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    new-instance v15, Loicq/wlogin_sdk/report/report_t2;

    const-string v16, "login"

    new-instance v17, Ljava/lang/String;

    sget-object v5, Loicq/wlogin_sdk/request/u;->C:[B

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const/16 v24, 0x0

    move-wide/from16 v20, p10

    move-wide/from16 v22, p12

    invoke-direct/range {v15 .. v24}, Loicq/wlogin_sdk/report/report_t2;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ[J)V

    invoke-virtual {v4, v15}, Loicq/wlogin_sdk/report/report_t1;->add_t2(Loicq/wlogin_sdk/report/report_t2;)V

    .line 1456
    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1458
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v7

    .line 1459
    const-wide/16 v4, 0x0

    cmp-long v4, v7, v4

    if-nez v4, :cond_9

    .line 1460
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " have not found uin record."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const/16 v10, -0x3eb

    .line 1505
    :cond_4
    :goto_1
    const/16 v4, 0x80

    move-object/from16 v0, p16

    invoke-static {v0, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    .line 1506
    if-nez v4, :cond_5

    .line 1507
    new-instance v4, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v4}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    .line 1509
    :cond_5
    sget-object v5, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v30

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v30

    iget-object v8, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 1510
    invoke-static {v10}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v9

    .line 1509
    invoke-virtual/range {v5 .. v10}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    .line 1511
    if-nez v10, :cond_d

    .line 1513
    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_6

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v5, v5

    if-eqz v5, :cond_6

    .line 1514
    const/16 v17, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v18, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v20, v0

    move-object/from16 v16, p0

    move-wide/from16 v22, p2

    invoke-direct/range {v16 .. v23}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    .line 1522
    :cond_6
    :goto_2
    move-object/from16 v0, v30

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    if-eqz v5, :cond_7

    move-object/from16 v0, v30

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    invoke-virtual {v5}, Loicq/wlogin_sdk/b/au;->a()I

    move-result v5

    if-eqz v5, :cond_7

    .line 1523
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v30

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    iput-object v6, v5, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    .line 1524
    const/16 v17, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v18, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v20, v0

    const/16 v24, 0x1

    move-object/from16 v16, p0

    move-wide/from16 v22, p2

    invoke-direct/range {v16 .. v24}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    .line 1529
    :cond_7
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    .line 1532
    invoke-virtual/range {v30 .. v30}, Loicq/wlogin_sdk/request/u;->h()V

    .line 1533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wtlogin login with GetA1WithA1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSrcAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwMainSigMap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubSrcAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dstAppName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p10

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p12

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1465
    :cond_8
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1467
    :cond_9
    move-object/from16 v0, v30

    iput-wide v7, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 1469
    invoke-virtual/range {v30 .. v30}, Loicq/wlogin_sdk/request/u;->j()V

    .line 1471
    invoke-direct/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetA1ByAccount(Ljava/lang/String;J)[B

    move-result-object v15

    .line 1472
    invoke-direct/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetNoPicSigByAccount(Ljava/lang/String;J)[B

    move-result-object v16

    .line 1473
    if-eqz v15, :cond_a

    array-length v4, v15

    if-gtz v4, :cond_b

    .line 1474
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " have no a1 or pic_sig."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const/16 v10, -0x3f8

    .line 1476
    goto/16 :goto_1

    .line 1479
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " login with A1 exchange A1."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    new-instance v6, Loicq/wlogin_sdk/request/m;

    move-object/from16 v0, v30

    invoke-direct {v6, v0}, Loicq/wlogin_sdk/request/m;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-object/from16 v20, p7

    move-wide/from16 v21, p8

    move-wide/from16 v23, p10

    move-wide/from16 v25, p12

    move-object/from16 v27, p14

    move-object/from16 v28, p15

    move-object/from16 v29, p16

    invoke-virtual/range {v6 .. v29}, Loicq/wlogin_sdk/request/m;->a(JJJII[B[BII[J[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    .line 1487
    if-nez v10, :cond_4

    .line 1491
    move-object/from16 v0, v30

    move-wide/from16 v1, p2

    invoke-virtual {v0, v7, v8, v1, v2}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 1492
    if-nez v4, :cond_c

    .line 1493
    const/16 v10, -0x3ec

    .line 1494
    goto/16 :goto_1

    .line 1496
    :cond_c
    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 1498
    move-object/from16 v0, v30

    iget-object v4, v0, Loicq/wlogin_sdk/request/u;->j:Loicq/wlogin_sdk/request/WFastLoginInfo;

    .line 1499
    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/WFastLoginInfo;->get_clone(Loicq/wlogin_sdk/request/WFastLoginInfo;)V

    goto/16 :goto_1

    .line 1518
    :cond_d
    const/16 v17, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v18, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v20, v0

    const/16 v24, 0x0

    move-object/from16 v16, p0

    move-wide/from16 v22, p2

    invoke-direct/range {v16 .. v24}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_2
.end method

.method private GetFastLoginInfo([BLoicq/wlogin_sdk/request/async_context;)I
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v0, -0x3f9

    .line 1782
    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v7, :cond_0

    if-nez p2, :cond_1

    .line 1836
    :cond_0
    :goto_0
    return v0

    .line 1789
    :cond_1
    new-instance v1, Loicq/wlogin_sdk/b/i;

    invoke-direct {v1}, Loicq/wlogin_sdk/b/i;-><init>()V

    .line 1790
    new-instance v2, Loicq/wlogin_sdk/b/o;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/o;-><init>()V

    .line 1791
    new-instance v3, Loicq/wlogin_sdk/b/bd;

    invoke-direct {v3}, Loicq/wlogin_sdk/b/bd;-><init>()V

    .line 1792
    new-instance v4, Loicq/wlogin_sdk/b/ap;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ap;-><init>()V

    .line 1795
    array-length v5, p1

    .line 1798
    invoke-virtual {v1, p1, v7, v5}, Loicq/wlogin_sdk/b/i;->c([BII)I

    move-result v6

    .line 1799
    if-gez v6, :cond_2

    .line 1800
    const-string v1, "fast login info no tgtgt data"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1804
    :cond_2
    invoke-virtual {v2, p1, v7, v5}, Loicq/wlogin_sdk/b/o;->c([BII)I

    move-result v6

    .line 1805
    if-gez v6, :cond_3

    .line 1806
    const-string v1, "fast login info no gtkey data"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1810
    :cond_3
    invoke-virtual {v3, p1, v7, v5}, Loicq/wlogin_sdk/b/bd;->c([BII)I

    move-result v6

    .line 1811
    if-gez v6, :cond_4

    .line 1812
    const-string v1, "fast login info no nopicsig data"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1816
    :cond_4
    invoke-virtual {v4, p1, v7, v5}, Loicq/wlogin_sdk/b/ap;->c([BII)I

    move-result v0

    .line 1817
    if-lez v0, :cond_5

    .line 1818
    invoke-virtual {v4}, Loicq/wlogin_sdk/b/ap;->c()[B

    move-result-object v4

    .line 1819
    sget-object v0, Loicq/wlogin_sdk/request/u;->A:[B

    .line 1821
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new imei:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " old imei:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1822
    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1821
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;)V

    .line 1824
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1825
    const-string v0, "fast login info imei not equal"

    const-string v5, ""

    invoke-static {v0, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0, v4}, Loicq/wlogin_sdk/tools/util;->save_file_imei(Landroid/content/Context;[B)V

    .line 1828
    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->A:[B

    .line 1829
    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->B:[B

    .line 1833
    :cond_5
    invoke-virtual {v1}, Loicq/wlogin_sdk/b/i;->c()[B

    move-result-object v0

    invoke-virtual {v2}, Loicq/wlogin_sdk/b/o;->c()[B

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/oicq_request;->b([B[B)[B

    move-result-object v0

    iput-object v0, p2, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    .line 1834
    invoke-virtual {v3}, Loicq/wlogin_sdk/b/bd;->c()[B

    move-result-object v0

    iput-object v0, p2, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    .line 1836
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static GetFastLoginUrl(Ljava/lang/String;J)Loicq/wlogin_sdk/request/WFastLoginInfo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3381
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 3406
    :goto_0
    return-object v0

    .line 3384
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " uin:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3386
    const-string v0, "http://imgcache.qq.com/wtlogin"

    .line 3388
    const-wide/32 v2, 0x64ace75a

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 3389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/test"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3393
    :goto_1
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3394
    const/4 v0, 0x0

    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 3395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3394
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3391
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/app"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3399
    :cond_3
    new-instance v0, Loicq/wlogin_sdk/request/WFastLoginInfo;

    invoke-direct {v0}, Loicq/wlogin_sdk/request/WFastLoginInfo;-><init>()V

    .line 3400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/icon.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Loicq/wlogin_sdk/request/WFastLoginInfo;->iconUrl:Ljava/lang/String;

    .line 3401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ad_img.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Loicq/wlogin_sdk/request/WFastLoginInfo;->adUrl:Ljava/lang/String;

    .line 3402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/profile.js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Loicq/wlogin_sdk/request/WFastLoginInfo;->profileUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3405
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 3406
    goto/16 :goto_0
.end method

.method private GetNoPicSigByAccount(Ljava/lang/String;J)[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 580
    if-nez p1, :cond_0

    move-object v0, v2

    .line 611
    :goto_0
    return-object v0

    .line 586
    :cond_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 587
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 588
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_4

    move-object v0, v2

    .line 602
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    if-eqz v1, :cond_2

    iget-object v1, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    array-length v1, v1

    if-gtz v1, :cond_5

    .line 603
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dwAppid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GetNoPicSigByAccount return: null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 605
    goto :goto_0

    .line 593
    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 596
    :cond_4
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v3, v0, v1, p2, p3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v0

    .line 597
    if-nez v0, :cond_1

    goto :goto_1

    .line 608
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userAccount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dwAppid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GetNoPicSigByAccount return: not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto/16 :goto_0
.end method

.method private GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I
    .locals 38

    .prologue
    .line 1841
    if-eqz p1, :cond_0

    if-nez p10, :cond_1

    .line 1842
    :cond_0
    const/16 v10, -0x3f9

    .line 2133
    :goto_0
    return v10

    .line 1846
    :cond_1
    move/from16 v0, p4

    or-int/lit16 v11, v0, 0xc0

    .line 1849
    if-nez p13, :cond_2

    .line 1850
    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v20, "GetStWithPasswd"

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    move-object/from16 v18, p11

    move/from16 v19, p12

    invoke-direct/range {v4 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZLjava/lang/String;)V

    const/4 v5, 0x0

    .line 1852
    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 1853
    const/16 v10, -0x3e9

    goto :goto_0

    .line 1857
    :cond_2
    const/4 v8, 0x1

    .line 1862
    if-eqz p12, :cond_d

    sget-boolean v4, Loicq/wlogin_sdk/a/j;->x:Z

    if-nez v4, :cond_d

    .line 1863
    move-object/from16 v0, p10

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1864
    move-object/from16 v0, p0

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    move-object/from16 v0, p10

    iput-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 1866
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p10

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v4, v6, v7}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v4

    .line 1867
    iget-wide v6, v4, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p10

    iput-wide v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    move-object/from16 v36, v4

    .line 1874
    :goto_1
    move-object/from16 v0, v36

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v37

    .line 1876
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start GetStWithPasswd:user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwMainSigMap:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1877
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1876
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    move/from16 v0, p12

    move-object/from16 v1, v37

    iput-boolean v0, v1, Loicq/wlogin_sdk/request/async_context;->_isSmslogin:Z

    .line 1883
    if-eqz p12, :cond_4

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 1884
    move-object/from16 v0, v37

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_mpasswd:Ljava/lang/String;

    move-object/from16 p9, v0

    .line 1886
    :cond_4
    const/4 v4, 0x0

    sput-boolean v4, Loicq/wlogin_sdk/a/j;->x:Z

    .line 1887
    const-string v4, ""

    sput-object v4, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    .line 1890
    if-eqz p9, :cond_5

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-le v4, v5, :cond_5

    .line 1891
    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p9

    .line 1895
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v4

    .line 1896
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->get_network_type(Landroid/content/Context;)I

    move-result v5

    sput v5, Loicq/wlogin_sdk/request/u;->D:I

    .line 1897
    sget v5, Loicq/wlogin_sdk/request/u;->D:I

    if-eq v4, v5, :cond_6

    .line 1898
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    .line 1899
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    sget v5, Loicq/wlogin_sdk/request/u;->D:I

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->save_network_type(Landroid/content/Context;I)V

    .line 1901
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_apn_string(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sput-object v4, Loicq/wlogin_sdk/request/u;->F:[B

    .line 1903
    move-object/from16 v0, p1

    move-object/from16 v1, v36

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 1904
    const-wide/16 v4, 0x0

    move-object/from16 v0, v36

    iput-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 1905
    move-wide/from16 v0, p2

    move-object/from16 v2, v37

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    .line 1906
    move-wide/from16 v0, p2

    move-object/from16 v2, v37

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_appid:J

    .line 1907
    const/4 v4, 0x0

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    .line 1908
    move-wide/from16 v0, p5

    move-object/from16 v2, v37

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    .line 1909
    move-object/from16 v0, v37

    iput v11, v0, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    .line 1910
    move-object/from16 v0, p10

    iget v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_login_bitmap:I

    move-object/from16 v0, v37

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_login_bitmap:I

    .line 1911
    new-instance v4, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v4}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 1912
    if-eqz p7, :cond_7

    .line 1913
    invoke-virtual/range {p7 .. p7}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    .line 1915
    :cond_7
    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v4, :cond_e

    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v4, v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_e

    .line 1916
    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v4

    move-object/from16 v0, v36

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    .line 1917
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSF SSO SEQ:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v5, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    :goto_2
    sget-object v4, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    new-instance v13, Loicq/wlogin_sdk/report/report_t2;

    const-string v14, "login"

    new-instance v15, Ljava/lang/String;

    sget-object v5, Loicq/wlogin_sdk/request/u;->C:[B

    invoke-direct {v15, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v18, p2

    move-wide/from16 v20, p5

    move-object/from16 v22, p7

    invoke-direct/range {v13 .. v22}, Loicq/wlogin_sdk/report/report_t2;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ[J)V

    invoke-virtual {v4, v13}, Loicq/wlogin_sdk/report/report_t1;->add_t2(Loicq/wlogin_sdk/report/report_t2;)V

    .line 1930
    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1932
    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v6

    .line 1933
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-nez v4, :cond_8

    .line 1934
    const/4 v8, 0x0

    .line 1940
    :cond_8
    :goto_3
    if-eqz p9, :cond_11

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_11

    .line 1941
    if-eqz p8, :cond_10

    .line 1943
    :try_start_0
    const-string v4, "ISO-8859-1"

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1952
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, v37

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    move-wide v4, v6

    .line 1987
    :goto_5
    if-nez v8, :cond_18

    .line 1988
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Loicq/wlogin_sdk/tools/util;->MAX_NAME_LEN:I

    if-le v4, v5, :cond_17

    .line 1989
    const/16 v10, -0x3f0

    .line 2102
    :cond_9
    :goto_6
    const/16 v4, 0x80

    move-object/from16 v0, p10

    invoke-static {v0, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    .line 2103
    if-nez v4, :cond_a

    .line 2104
    new-instance v4, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v4}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    .line 2106
    :cond_a
    sget-object v5, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v36

    iget-object v8, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 2107
    invoke-static {v10}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v9

    .line 2106
    invoke-virtual/range {v5 .. v10}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    .line 2108
    if-nez v10, :cond_22

    .line 2109
    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_b

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v5, v5

    if-eqz v5, :cond_b

    .line 2110
    const/4 v13, 0x0

    iget-object v14, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v15, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v18, v0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v19}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    .line 2118
    :cond_b
    :goto_7
    move-object/from16 v0, v36

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    if-eqz v5, :cond_c

    move-object/from16 v0, v36

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    invoke-virtual {v5}, Loicq/wlogin_sdk/b/au;->a()I

    move-result v5

    if-eqz v5, :cond_c

    .line 2119
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v36

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    iput-object v6, v5, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    .line 2120
    const/4 v13, 0x0

    iget-object v14, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v15, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    .line 2125
    :cond_c
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    .line 2128
    invoke-virtual/range {v36 .. v36}, Loicq/wlogin_sdk/request/u;->h()V

    .line 2129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end GetStWithPasswd:user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwMainSigMap:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2130
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2129
    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1869
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v4

    .line 1870
    iget-wide v6, v4, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p10

    iput-wide v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 1871
    iget-wide v6, v4, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    move-object/from16 v36, v4

    goto/16 :goto_1

    .line 1920
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    goto/16 :goto_2

    .line 1937
    :cond_f
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto/16 :goto_3

    .line 1944
    :catch_0
    move-exception v4

    .line 1945
    const/16 v10, -0x3f5

    .line 1946
    goto/16 :goto_6

    .line 1949
    :cond_10
    invoke-static/range {p9 .. p9}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    goto/16 :goto_4

    .line 1954
    :cond_11
    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    if-eqz v4, :cond_14

    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    array-length v4, v4

    if-lez v4, :cond_14

    .line 1955
    const-string v4, "GetFastLoginInfo ..."

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v4, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetFastLoginInfo([BLoicq/wlogin_sdk/request/async_context;)I

    move-result v4

    if-gez v4, :cond_12

    .line 1957
    const-string v4, "GetFastLoginInfo failed"

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    const/16 v10, -0x3f9

    .line 1959
    goto/16 :goto_6

    .line 1962
    :cond_12
    const-string v4, "([0-9]{5,10})@qq\\.com"

    .line 1963
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1964
    const-string v5, "$1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1965
    const/4 v6, 0x1

    .line 1966
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;)V

    move v8, v6

    :goto_8
    move-wide v6, v4

    .line 1978
    :goto_9
    move-object/from16 v0, v37

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    if-eqz v4, :cond_13

    move-object/from16 v0, v37

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    array-length v4, v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_16

    .line 1979
    :cond_13
    const/16 v10, -0x3f8

    .line 1980
    goto/16 :goto_6

    .line 1968
    :cond_14
    sget-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    if-eqz v4, :cond_15

    sget-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    array-length v4, v4

    if-lez v4, :cond_15

    .line 1969
    sget-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    .line 1970
    sget-object v4, Loicq/wlogin_sdk/code2d/c;->r:[B

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    .line 1971
    const/4 v4, 0x0

    sput-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    .line 1972
    const/4 v4, 0x0

    sput-object v4, Loicq/wlogin_sdk/code2d/c;->r:[B

    goto :goto_9

    .line 1974
    :cond_15
    invoke-direct/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetA1ByAccount(Ljava/lang/String;J)[B

    move-result-object v4

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    .line 1975
    invoke-direct/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetNoPicSigByAccount(Ljava/lang/String;J)[B

    move-result-object v4

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    goto :goto_9

    .line 1983
    :cond_16
    const/4 v4, 0x1

    move-object/from16 v0, v37

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    move-wide v4, v6

    goto/16 :goto_5

    .line 1993
    :cond_17
    new-instance v5, Loicq/wlogin_sdk/request/t;

    move-object/from16 v0, v36

    invoke-direct {v5, v0}, Loicq/wlogin_sdk/request/t;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v10, 0x1

    .line 1995
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    sget v13, Loicq/wlogin_sdk/request/u;->y:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v18, v0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p5

    move-object/from16 v19, p7

    move-object/from16 v20, p10

    .line 1993
    invoke-virtual/range {v5 .. v20}, Loicq/wlogin_sdk/request/t;->a(JJII[BIIIIII[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    .line 2000
    if-nez v10, :cond_9

    .line 2005
    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 2006
    move-object/from16 v0, v37

    iget-wide v6, v0, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_18

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_18

    .line 2007
    const/16 v10, -0x3eb

    .line 2008
    goto/16 :goto_6

    :cond_18
    move-wide v6, v4

    .line 2013
    sget-wide v4, Loicq/wlogin_sdk/a/j;->y:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_19

    .line 2014
    sget-wide v4, Loicq/wlogin_sdk/a/j;->y:J

    move-object/from16 v0, v37

    iput-wide v4, v0, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    .line 2015
    const-wide/16 v4, 0x0

    sput-wide v4, Loicq/wlogin_sdk/a/j;->y:J

    .line 2018
    :cond_19
    move-object/from16 v0, v36

    iput-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 2019
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p10

    iput-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    .line 2022
    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    if-eqz v4, :cond_1d

    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    array-length v4, v4

    if-lez v4, :cond_1d

    .line 2023
    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object/from16 v34, v4

    .line 2028
    :goto_a
    move-object/from16 v0, v37

    iget v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    if-eqz v4, :cond_1e

    .line 2029
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " login with saved A1."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    new-instance v13, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    invoke-direct {v13, v0, v4}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;Landroid/content/Context;)V

    .line 2031
    invoke-virtual {v13}, Loicq/wlogin_sdk/request/l;->g()V

    .line 2032
    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    sget-object v21, Loicq/wlogin_sdk/request/u;->ad:[B

    move-object/from16 v0, v37

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v25, v0

    sget v30, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    move-wide/from16 v14, p2

    move-wide/from16 v16, p5

    move-object/from16 v26, p7

    move/from16 v27, v11

    move-wide/from16 v28, p5

    move-object/from16 v35, p10

    invoke-virtual/range {v13 .. v35}, Loicq/wlogin_sdk/request/l;->a(JJJI[B[B[BII[JIJIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    .line 2059
    :goto_b
    const/16 v4, 0xcc

    if-ne v10, v4, :cond_1a

    .line 2060
    new-instance v4, Loicq/wlogin_sdk/request/q;

    move-object/from16 v0, v36

    invoke-direct {v4, v0}, Loicq/wlogin_sdk/request/q;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, p7

    move-object/from16 v1, p10

    invoke-virtual {v4, v5, v8, v0, v1}, Loicq/wlogin_sdk/request/q;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    .line 2065
    :cond_1a
    if-eqz v10, :cond_1b

    const/16 v4, 0xa0

    if-ne v10, v4, :cond_9

    .line 2069
    :cond_1b
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-nez v4, :cond_1c

    .line 2070
    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v6

    .line 2071
    move-object/from16 v0, v36

    iput-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 2072
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p10

    iput-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    .line 2075
    :cond_1c
    const/16 v4, 0xa0

    if-eq v10, v4, :cond_9

    .line 2077
    move-object/from16 v0, v36

    move-wide/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 2078
    if-nez v4, :cond_20

    .line 2079
    const/16 v10, -0x3ec

    .line 2080
    goto/16 :goto_6

    .line 2025
    :cond_1d
    sget-object v34, Loicq/wlogin_sdk/request/u;->aa:[B

    goto/16 :goto_a

    .line 2043
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " login with input password."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    const/4 v4, 0x4

    new-array v0, v4, [B

    move-object/from16 v21, v0

    .line 2045
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    sget-wide v12, Loicq/wlogin_sdk/request/u;->ac:J

    add-long/2addr v8, v12

    move-object/from16 v0, v21

    invoke-static {v0, v4, v8, v9}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 2046
    if-eqz p12, :cond_1f

    const/16 v23, 0x3

    .line 2047
    :goto_c
    new-instance v12, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    invoke-direct {v12, v0, v4}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;Landroid/content/Context;)V

    .line 2048
    invoke-virtual {v12}, Loicq/wlogin_sdk/request/l;->g()V

    .line 2049
    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v17, v0

    const/16 v19, 0x0

    sget-object v20, Loicq/wlogin_sdk/request/u;->ad:[B

    move-object/from16 v0, v37

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v25, v0

    sget v30, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p5

    move-object/from16 v26, p7

    move/from16 v27, v11

    move-wide/from16 v28, p5

    move-object/from16 v35, p10

    invoke-virtual/range {v12 .. v35}, Loicq/wlogin_sdk/request/l;->a(JJJI[B[B[BIII[JIJIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    goto/16 :goto_b

    .line 2046
    :cond_1f
    const/16 v23, 0x1

    goto :goto_c

    .line 2084
    :cond_20
    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 2087
    if-eqz p7, :cond_9

    if-eqz p11, :cond_9

    move-object/from16 v0, p7

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p11

    array-length v5, v0

    if-ne v4, v5, :cond_9

    .line 2089
    const/4 v4, 0x0

    move v5, v4

    :goto_d
    if-eqz p7, :cond_9

    move-object/from16 v0, p7

    array-length v4, v0

    if-ge v5, v4, :cond_9

    .line 2091
    aget-wide v8, p7, v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7, v8, v9}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v8

    .line 2092
    if-eqz v8, :cond_21

    .line 2093
    mul-int/lit8 v9, v5, 0x2

    iget-object v4, v8, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, p11, v9

    .line 2094
    mul-int/lit8 v4, v5, 0x2

    add-int/lit8 v9, v4, 0x1

    iget-object v4, v8, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, p11, v9

    .line 2089
    :cond_21
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_d

    .line 2113
    :cond_22
    const/4 v5, 0x2

    if-eq v10, v5, :cond_b

    const/16 v5, 0xa0

    if-eq v10, v5, :cond_b

    .line 2114
    const/4 v13, 0x0

    iget-object v14, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v15, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_7

    :cond_23
    move-wide v4, v6

    goto/16 :goto_8
.end method

.method private GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I
    .locals 46

    .prologue
    .line 761
    if-eqz p1, :cond_0

    if-nez p12, :cond_1

    .line 762
    :cond_0
    const/16 v10, -0x3f9

    .line 1000
    :goto_0
    return v10

    .line 766
    :cond_1
    move/from16 v0, p8

    or-int/lit16 v0, v0, 0xc0

    move/from16 v16, v0

    .line 767
    const-wide/16 v4, 0x2

    cmp-long v4, v4, p9

    if-nez v4, :cond_2

    .line 771
    const v4, -0x2000001

    and-int v16, v16, v4

    .line 775
    :cond_2
    if-nez p15, :cond_3

    .line 776
    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v23, "GetStWithoutPasswd"

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p16

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    move-wide/from16 v17, p9

    move-object/from16 v19, p11

    move-object/from16 v20, p12

    move-object/from16 v21, p13

    move-object/from16 v22, p14

    invoke-direct/range {v4 .. v23}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Loicq/wlogin_sdk/request/WtTicketPromise;Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BLjava/lang/String;)V

    const/4 v5, 0x5

    .line 778
    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 779
    const/16 v10, -0x3e9

    goto :goto_0

    .line 786
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v43

    .line 787
    move-object/from16 v0, v43

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p12

    iput-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 788
    move-object/from16 v0, v43

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v44

    .line 790
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start GetStWithoutPasswd:user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSrcAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwDstAppPri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwMainSigMap:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 793
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p9

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 790
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v4

    .line 798
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->get_network_type(Landroid/content/Context;)I

    move-result v5

    sput v5, Loicq/wlogin_sdk/request/u;->D:I

    .line 799
    sget v5, Loicq/wlogin_sdk/request/u;->D:I

    if-eq v4, v5, :cond_4

    .line 801
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    .line 802
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    sget v5, Loicq/wlogin_sdk/request/u;->D:I

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->save_network_type(Landroid/content/Context;I)V

    .line 804
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_apn_string(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sput-object v4, Loicq/wlogin_sdk/request/u;->F:[B

    .line 806
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 807
    const-wide/16 v4, 0x0

    move-object/from16 v0, v43

    iput-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 809
    move-wide/from16 v0, p2

    move-object/from16 v2, v44

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    .line 810
    move-wide/from16 v0, p4

    move-object/from16 v2, v44

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_appid:J

    .line 811
    move-wide/from16 v0, p9

    move-object/from16 v2, v44

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    .line 812
    move/from16 v0, v16

    move-object/from16 v1, v44

    iput v0, v1, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    .line 813
    new-instance v4, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v4}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    move-object/from16 v0, v44

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 814
    if-eqz p11, :cond_5

    .line 815
    invoke-virtual/range {p11 .. p11}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    move-object/from16 v0, v44

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    .line 817
    :cond_5
    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v4, :cond_9

    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v4, v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_9

    .line 818
    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    .line 819
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSF SSO SEQ:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    iget v5, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :goto_1
    sget-object v4, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    new-instance v5, Loicq/wlogin_sdk/report/report_t2;

    const-string v6, "exchg"

    new-instance v7, Ljava/lang/String;

    sget-object v8, Loicq/wlogin_sdk/request/u;->C:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide/from16 v10, p4

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-direct/range {v5 .. v14}, Loicq/wlogin_sdk/report/report_t2;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ[J)V

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/report/report_t1;->add_t2(Loicq/wlogin_sdk/report/report_t2;)V

    .line 831
    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a

    .line 833
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v9

    .line 834
    const-wide/16 v4, 0x0

    cmp-long v4, v9, v4

    if-nez v4, :cond_b

    .line 835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " have not found uin record."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const/16 v10, -0x3eb

    .line 967
    :goto_2
    const/16 v4, 0x80

    move-object/from16 v0, p12

    invoke-static {v0, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    .line 968
    if-nez v4, :cond_6

    .line 969
    new-instance v4, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v4}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    .line 971
    :cond_6
    sget-object v5, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v43

    iget-object v8, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 972
    invoke-static {v10}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v9

    .line 971
    invoke-virtual/range {v5 .. v10}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    .line 973
    if-nez v10, :cond_1a

    .line 974
    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_7

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v5, v5

    if-eqz v5, :cond_7

    .line 975
    const/16 v19, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v20, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v24, v0

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v25}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    .line 983
    :cond_7
    :goto_3
    move-object/from16 v0, v43

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    if-eqz v5, :cond_8

    move-object/from16 v0, v43

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    invoke-virtual {v5}, Loicq/wlogin_sdk/b/au;->a()I

    move-result v5

    if-eqz v5, :cond_8

    .line 984
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v43

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    iput-object v6, v5, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    .line 985
    const/16 v19, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v20, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v24, v0

    const/16 v26, 0x1

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v26}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    .line 990
    :cond_8
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    .line 993
    invoke-virtual/range {v43 .. v43}, Loicq/wlogin_sdk/request/u;->h()V

    .line 994
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end GetStWithoutPasswd:user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSrcAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwDstAppPri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwMainSigMap:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 997
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p9

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 994
    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 821
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, v43

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    goto/16 :goto_1

    .line 841
    :cond_a
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 843
    :cond_b
    move-object/from16 v0, v43

    iput-wide v9, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 844
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p12

    iput-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    .line 846
    if-eqz p14, :cond_e

    move-object/from16 v0, p14

    array-length v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_e

    const/4 v4, 0x0

    aget-object v4, p14, v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    aget-object v4, p14, v4

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    const/4 v4, 0x0

    aget-object v4, p14, v4

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    .line 849
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exchange A2 from A2/D2/KEY."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const/4 v4, 0x1

    aget-object v4, p14, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    aget-object v4, p14, v4

    array-length v4, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x2

    aget-object v4, p14, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x2

    aget-object v4, p14, v4

    array-length v4, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x3

    aget-object v4, p14, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x3

    aget-object v4, p14, v4

    array-length v4, v4

    if-nez v4, :cond_d

    .line 853
    :cond_c
    const/16 v10, -0x3ec

    .line 854
    goto/16 :goto_2

    .line 857
    :cond_d
    const/4 v4, 0x3

    aget-object v4, p14, v4

    invoke-static {v4}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v4

    move-object/from16 v0, v43

    iput-object v4, v0, Loicq/wlogin_sdk/request/u;->b:[B

    .line 858
    new-instance v8, Loicq/wlogin_sdk/request/n;

    move-object/from16 v0, v43

    invoke-direct {v8, v0}, Loicq/wlogin_sdk/request/n;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v15, 0x1

    const/4 v4, 0x1

    aget-object v17, p14, v4

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v19, v0

    const/4 v4, 0x2

    aget-object v21, p14, v4

    move-wide/from16 v11, p4

    move-wide/from16 v13, p9

    move-object/from16 v20, p11

    move-object/from16 v22, p12

    invoke-virtual/range {v8 .. v22}, Loicq/wlogin_sdk/request/n;->a(JJJII[BII[J[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v6

    .line 943
    :goto_4
    if-nez v6, :cond_1b

    .line 945
    move-object/from16 v0, v43

    move-wide/from16 v1, p4

    invoke-virtual {v0, v9, v10, v1, v2}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 946
    if-nez v4, :cond_18

    .line 947
    const/16 v10, -0x3ec

    goto/16 :goto_2

    .line 862
    :cond_e
    if-eqz p14, :cond_11

    move-object/from16 v0, p14

    array-length v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_11

    const/4 v4, 0x0

    aget-object v4, p14, v4

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    aget-object v4, p14, v4

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    const/4 v4, 0x0

    aget-object v4, p14, v4

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    .line 865
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exchange A2 from A2/A2KEY."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const/4 v4, 0x1

    aget-object v4, p14, v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    aget-object v4, p14, v4

    array-length v4, v4

    if-eqz v4, :cond_f

    const/4 v4, 0x2

    aget-object v4, p14, v4

    if-eqz v4, :cond_f

    const/4 v4, 0x2

    aget-object v4, p14, v4

    array-length v4, v4

    if-nez v4, :cond_10

    .line 868
    :cond_f
    const/16 v10, -0x3ec

    .line 869
    goto/16 :goto_2

    .line 872
    :cond_10
    const/4 v4, 0x2

    aget-object v4, p14, v4

    move-object/from16 v0, v43

    iput-object v4, v0, Loicq/wlogin_sdk/request/u;->b:[B

    .line 873
    new-instance v8, Loicq/wlogin_sdk/request/n;

    move-object/from16 v0, v43

    invoke-direct {v8, v0}, Loicq/wlogin_sdk/request/n;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v15, 0x1

    const/4 v4, 0x1

    aget-object v17, p14, v4

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v19, v0

    const/16 v21, 0x0

    move-wide/from16 v11, p4

    move-wide/from16 v13, p9

    move-object/from16 v20, p11

    move-object/from16 v22, p12

    invoke-virtual/range {v8 .. v22}, Loicq/wlogin_sdk/request/n;->a(JJJII[BII[J[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v6

    goto/16 :goto_4

    .line 879
    :cond_11
    invoke-virtual/range {v43 .. v43}, Loicq/wlogin_sdk/request/u;->j()V

    .line 881
    move-object/from16 v0, v43

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetA1ByAccount(Ljava/lang/String;J)[B

    move-result-object v26

    .line 882
    move-object/from16 v0, v43

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetNoPicSigByAccount(Ljava/lang/String;J)[B

    move-result-object v27

    .line 884
    if-eqz v26, :cond_15

    move-object/from16 v0, v26

    array-length v4, v0

    if-lez v4, :cond_15

    if-eqz v27, :cond_15

    move-object/from16 v0, v27

    array-length v4, v0

    if-lez v4, :cond_15

    .line 885
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exchange A2 from A1."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    move-object/from16 v0, v26

    move-object/from16 v1, v44

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    .line 887
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    .line 889
    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    if-eqz v4, :cond_14

    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    array-length v4, v4

    if-lez v4, :cond_14

    .line 891
    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object/from16 v39, v4

    .line 898
    :goto_5
    new-instance v18, Loicq/wlogin_sdk/request/z;

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/z;-><init>(Loicq/wlogin_sdk/request/u;)V

    .line 899
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v9, v10, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 900
    if-eqz v4, :cond_12

    .line 902
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/z;->a(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 904
    :cond_12
    const/16 v21, 0x1

    move-object/from16 v0, v43

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v22, v0

    const/16 v24, 0x0

    sget-object v25, Loicq/wlogin_sdk/request/u;->ad:[B

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v29, v0

    const/16 v34, 0x1

    sget v35, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x1

    move-wide/from16 v19, p4

    move-object/from16 v30, p11

    move/from16 v31, v16

    move-wide/from16 v32, p9

    move-wide/from16 v40, p2

    move-object/from16 v42, p12

    invoke-virtual/range {v18 .. v42}, Loicq/wlogin_sdk/request/z;->a(JIJI[B[B[BII[JIJIIIII[BJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    .line 916
    const/16 v5, 0xcc

    if-ne v4, v5, :cond_13

    .line 917
    new-instance v4, Loicq/wlogin_sdk/request/q;

    move-object/from16 v0, v43

    invoke-direct {v4, v0}, Loicq/wlogin_sdk/request/q;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, p11

    move-object/from16 v1, p12

    invoke-virtual {v4, v5, v6, v0, v1}, Loicq/wlogin_sdk/request/q;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    :cond_13
    move v6, v4

    .line 921
    goto/16 :goto_4

    .line 895
    :cond_14
    sget-object v39, Loicq/wlogin_sdk/request/u;->aa:[B

    goto :goto_5

    .line 924
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exchange A2 from A2."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    move-object/from16 v0, v43

    move-wide/from16 v1, p2

    invoke-virtual {v0, v9, v10, v1, v2}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 926
    if-eqz v4, :cond_16

    iget-object v5, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    if-eqz v5, :cond_16

    iget-object v5, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    array-length v5, v5

    if-eqz v5, :cond_16

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->iSExpireA2(J)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 928
    :cond_16
    const/16 v10, -0x3ec

    .line 929
    goto/16 :goto_2

    .line 933
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exchange A2 from A2 without Priority."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    iget-wide v12, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->printTicket(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 935
    iget-object v5, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGTKey:[B

    move-object/from16 v0, v43

    iput-object v5, v0, Loicq/wlogin_sdk/request/u;->b:[B

    .line 936
    new-instance v8, Loicq/wlogin_sdk/request/n;

    move-object/from16 v0, v43

    invoke-direct {v8, v0}, Loicq/wlogin_sdk/request/n;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v15, 0x1

    iget-object v0, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v19, v0

    const/16 v21, 0x0

    move-wide/from16 v11, p4

    move-wide/from16 v13, p9

    move-object/from16 v20, p11

    move-object/from16 v22, p12

    invoke-virtual/range {v8 .. v22}, Loicq/wlogin_sdk/request/n;->a(JJJII[BII[J[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v6

    goto/16 :goto_4

    .line 950
    :cond_18
    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 953
    if-eqz p11, :cond_1b

    if-eqz p13, :cond_1b

    move-object/from16 v0, p11

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p13

    array-length v5, v0

    if-ne v4, v5, :cond_1b

    .line 954
    const/4 v4, 0x0

    move v5, v4

    :goto_6
    move-object/from16 v0, p11

    array-length v4, v0

    if-ge v5, v4, :cond_1b

    .line 955
    aget-wide v12, p11, v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v9, v10, v12, v13}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v7

    .line 956
    if-eqz v7, :cond_19

    .line 957
    mul-int/lit8 v8, v5, 0x2

    iget-object v4, v7, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, p13, v8

    .line 958
    mul-int/lit8 v4, v5, 0x2

    add-int/lit8 v8, v4, 0x1

    iget-object v4, v7, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, p13, v8

    .line 954
    :cond_19
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_6

    .line 979
    :cond_1a
    const/16 v19, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v20, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v26}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_3

    :cond_1b
    move v10, v6

    goto/16 :goto_2
.end method

.method private GetStWithoutPasswd(Ljava/lang/String;JJJILoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WtTicketPromise;)I
    .locals 18

    .prologue
    .line 721
    const-wide/16 v6, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    check-cast v13, [[B

    const/4 v14, 0x0

    check-cast v14, [[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p8

    move-wide/from16 v9, p6

    move-object/from16 v12, p9

    move-object/from16 v16, p10

    invoke-direct/range {v0 .. v16}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v0

    return v0
.end method

.method public static GetTicketSig(Loicq/wlogin_sdk/request/WUserSigInfo;I)[B
    .locals 1

    .prologue
    .line 1292
    invoke-static {p0, p1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    .line 1293
    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, v0, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    .line 1296
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static GetTicketSigKey(Loicq/wlogin_sdk/request/WUserSigInfo;I)[B
    .locals 1

    .prologue
    .line 1310
    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_0

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4000

    if-eq p1, v0, :cond_0

    const v0, 0x8000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x1000000

    if-eq p1, v0, :cond_0

    .line 1313
    const/4 v0, 0x0

    throw v0

    .line 1316
    :cond_0
    invoke-static {p0, p1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    .line 1317
    if-eqz v0, :cond_1

    .line 1318
    iget-object v0, v0, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    .line 1320
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/high16 v8, 0x4000000

    const/high16 v1, 0x400000

    const/4 v3, 0x0

    .line 1247
    if-ne p1, v1, :cond_0

    .line 1248
    const-string v0, "get lhsig"

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    sget-object v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_LHSig:[B

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v4

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    .line 1281
    :goto_0
    return-object v0

    .line 1251
    :cond_0
    if-ne p1, v8, :cond_1

    .line 1252
    const-string v0, "get qrpushsig"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    sget-object v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_QRPUSHSig:[B

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v4

    move v1, v8

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    goto :goto_0

    .line 1256
    :cond_1
    if-nez p0, :cond_2

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userInfo is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 1258
    goto :goto_0

    .line 1259
    :cond_2
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    if-nez v0, :cond_3

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tickets is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 1261
    goto :goto_0

    .line 1264
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetUserSigInfoTicket ticket type:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1268
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1269
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/request/Ticket;

    .line 1270
    iget v2, v0, Loicq/wlogin_sdk/request/Ticket;->_type:I

    if-ne v2, p1, :cond_4

    .line 1271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetUserSigInfoTicket type:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    .line 1272
    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    .line 1273
    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " create time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Loicq/wlogin_sdk/request/Ticket;->_create_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expire time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Loicq/wlogin_sdk/request/Ticket;->_expire_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 1271
    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1268
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    move-object v0, v3

    .line 1281
    goto/16 :goto_0
.end method

.method private OnDeviceLockRequest(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 10

    .prologue
    .line 4233
    sget-object v2, Loicq/wlogin_sdk/devicelock/DevlockBase;->rst:Loicq/wlogin_sdk/devicelock/DevlockRst;

    .line 4234
    new-instance v3, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    invoke-direct {v3}, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;-><init>()V

    iput-object v3, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->commRsp:Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    .line 4236
    new-instance v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-direct {v3}, Loicq/wlogin_sdk/devicelock/DevlockInfo;-><init>()V

    .line 4237
    new-instance v4, Loicq/wlogin_sdk/tools/ErrMsg;

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    invoke-direct {v4, v5, v6, v7, v8}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4239
    if-eqz p8, :cond_0

    .line 4240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnDeviceLockRequest ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4242
    invoke-static/range {p8 .. p8}, Loicq/wlogin_sdk/tools/util;->get_error_msg(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/tools/ErrMsg;->setMessage(Ljava/lang/String;)V

    .line 4243
    sget-object v5, Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;->MSG_5:Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/InternationMsg;->a(Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/tools/ErrMsg;->setTitle(Ljava/lang/String;)V

    .line 4246
    :cond_0
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 4364
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 4248
    :pswitch_1
    if-nez p8, :cond_5

    .line 4249
    new-instance v5, Loicq/wlogin_sdk/devicelock/a;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/a;-><init>()V

    .line 4250
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Loicq/wlogin_sdk/devicelock/a;->parse_rsp([B)I

    move-result p8

    .line 4251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDevLockStatus ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4253
    const/16 v5, -0x3f1

    move/from16 v0, p8

    if-eq v0, v5, :cond_5

    .line 4254
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->commRsp:Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    invoke-direct {p0, v5, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->tlvCommRsp2ErrMsg(Loicq/wlogin_sdk/devicelock/TLV_CommRsp;Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 4255
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    if-eqz v5, :cond_2

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/i;->get_data_len()I

    move-result v5

    if-lez v5, :cond_2

    .line 4256
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/i;->a:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->DevSetup:I

    .line 4257
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/i;->b:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->AllowSet:I

    .line 4258
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devGuideInfo:Loicq/wlogin_sdk/devicelock/h;

    if-eqz v5, :cond_6

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devGuideInfo:Loicq/wlogin_sdk/devicelock/h;

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/h;->get_data_len()I

    move-result v5

    if-lez v5, :cond_6

    .line 4259
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devGuideInfo:Loicq/wlogin_sdk/devicelock/h;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/h;->a:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->ProtectIntro:Ljava/lang/String;

    .line 4263
    :goto_1
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/i;->g:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->WarningInfo:Ljava/lang/String;

    .line 4264
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/i;->e:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->WarningTitle:Ljava/lang/String;

    .line 4265
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/i;->f:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->WarningMsg:Ljava/lang/String;

    .line 4266
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/i;->c:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->WarningInfoType:I

    .line 4268
    :cond_2
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    if-eqz v5, :cond_3

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/k;->get_data_len()I

    move-result v5

    if-lez v5, :cond_3

    .line 4269
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/k;->a:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->CountryCode:Ljava/lang/String;

    .line 4270
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/k;->b:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->Mobile:Ljava/lang/String;

    .line 4271
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/k;->c:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbItemSmsCodeStatus:I

    .line 4272
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/k;->d:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->AvailableMsgCount:I

    .line 4273
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/k;->e:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->TimeLimit:I

    .line 4275
    :cond_3
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    if-eqz v5, :cond_4

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/j;->get_data_len()I

    move-result v5

    if-lez v5, :cond_4

    .line 4276
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/j;->c:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideType:I

    .line 4277
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/j;->d:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideInfoType:I

    .line 4278
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/j;->b:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideInfo:Ljava/lang/String;

    .line 4279
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/j;->a:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideMsg:Ljava/lang/String;

    .line 4281
    :cond_4
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->transferInfo:Loicq/wlogin_sdk/devicelock/e;

    if-eqz v5, :cond_5

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->transferInfo:Loicq/wlogin_sdk/devicelock/e;

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/e;->get_data_len()I

    move-result v5

    if-lez v5, :cond_5

    .line 4282
    iget-object v2, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->transferInfo:Loicq/wlogin_sdk/devicelock/e;

    invoke-virtual {v2}, Loicq/wlogin_sdk/devicelock/e;->get_data()[B

    move-result-object v2

    iput-object v2, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->TransferInfo:[B

    .line 4286
    :cond_5
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_1

    .line 4287
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v3, v1, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnCheckDevLockStatus(Loicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/devicelock/DevlockInfo;ILoicq/wlogin_sdk/tools/ErrMsg;)V

    goto/16 :goto_0

    .line 4261
    :cond_6
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/i;->d:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->ProtectIntro:Ljava/lang/String;

    goto/16 :goto_1

    .line 4291
    :pswitch_2
    if-nez p8, :cond_9

    .line 4292
    new-instance v3, Loicq/wlogin_sdk/devicelock/b;

    invoke-direct {v3}, Loicq/wlogin_sdk/devicelock/b;-><init>()V

    .line 4293
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Loicq/wlogin_sdk/devicelock/b;->parse_rsp([B)I

    move-result p8

    .line 4294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CloseDevLock ret:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4296
    const/16 v3, -0x3f1

    move/from16 v0, p8

    if-eq v0, v3, :cond_9

    .line 4297
    iget-object v2, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->commRsp:Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    invoke-direct {p0, v2, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->tlvCommRsp2ErrMsg(Loicq/wlogin_sdk/devicelock/TLV_CommRsp;Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 4302
    :try_start_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    .line 4303
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v2, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 4306
    :goto_2
    iget-object v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v5, v2, v3, p2, p3}, Loicq/wlogin_sdk/request/u;->b(JJ)I

    .line 4308
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    move-object/from16 v0, p7

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_9

    .line 4309
    move-object/from16 v0, p7

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loicq/wlogin_sdk/request/Ticket;

    .line 4311
    iget v2, v2, Loicq/wlogin_sdk/request/Ticket;->_type:I

    const/high16 v5, 0x2000000

    if-ne v2, v5, :cond_7

    .line 4312
    move-object/from16 v0, p7

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4308
    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 4305
    :cond_8
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_2

    .line 4315
    :catch_0
    move-exception v2

    .line 4316
    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;)V

    .line 4321
    :cond_9
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_1

    .line 4322
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnCloseDevLock(Loicq/wlogin_sdk/request/WUserSigInfo;ILoicq/wlogin_sdk/tools/ErrMsg;)V

    goto/16 :goto_0

    .line 4326
    :pswitch_3
    if-nez p8, :cond_a

    .line 4327
    new-instance v5, Loicq/wlogin_sdk/devicelock/d;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/d;-><init>()V

    .line 4328
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Loicq/wlogin_sdk/devicelock/d;->parse_rsp([B)I

    move-result p8

    .line 4329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AskDevLockSms ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4332
    const/16 v5, -0x3f1

    move/from16 v0, p8

    if-eq v0, v5, :cond_a

    .line 4333
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->commRsp:Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    invoke-direct {p0, v5, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->tlvCommRsp2ErrMsg(Loicq/wlogin_sdk/devicelock/TLV_CommRsp;Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 4335
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->smsInfo:Loicq/wlogin_sdk/devicelock/m;

    if-eqz v5, :cond_a

    .line 4336
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->smsInfo:Loicq/wlogin_sdk/devicelock/m;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/m;->a:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->AvailableMsgCount:I

    .line 4337
    iget-object v2, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->smsInfo:Loicq/wlogin_sdk/devicelock/m;

    iget v2, v2, Loicq/wlogin_sdk/devicelock/m;->b:I

    iput v2, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->TimeLimit:I

    .line 4342
    :cond_a
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_1

    .line 4343
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v3, v1, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnAskDevLockSms(Loicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/devicelock/DevlockInfo;ILoicq/wlogin_sdk/tools/ErrMsg;)V

    goto/16 :goto_0

    .line 4347
    :pswitch_4
    if-nez p8, :cond_b

    .line 4348
    new-instance v3, Loicq/wlogin_sdk/devicelock/f;

    invoke-direct {v3}, Loicq/wlogin_sdk/devicelock/f;-><init>()V

    .line 4349
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Loicq/wlogin_sdk/devicelock/f;->parse_rsp([B)I

    move-result p8

    .line 4350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckDevLockSms ret:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4352
    const/16 v3, -0x3f1

    move/from16 v0, p8

    if-eq v0, v3, :cond_b

    .line 4353
    iget-object v2, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->commRsp:Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    invoke-direct {p0, v2, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->tlvCommRsp2ErrMsg(Loicq/wlogin_sdk/devicelock/TLV_CommRsp;Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 4357
    :cond_b
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_1

    .line 4358
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnCheckDevLockSms(Loicq/wlogin_sdk/request/WUserSigInfo;ILoicq/wlogin_sdk/tools/ErrMsg;)V

    goto/16 :goto_0

    .line 4246
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private OnRequestCode2d(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 12

    .prologue
    .line 4145
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-nez v2, :cond_0

    .line 4214
    :goto_0
    return-void

    .line 4148
    :cond_0
    sget-object v11, Loicq/wlogin_sdk/code2d/b;->_status:Loicq/wlogin_sdk/code2d/c;

    .line 4150
    if-eqz p8, :cond_1

    .line 4151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnRequestCode2d ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4154
    :cond_1
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v2

    .line 4155
    sparse-switch v2, :sswitch_data_0

    .line 4210
    const-string v2, "OnRequestName unhandle cmd"

    const-string v3, ""

    invoke-static {v2, v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4211
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    new-instance v3, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v3}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    const/16 v4, 0x9

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v4, v0}, Loicq/wlogin_sdk/request/WtloginListener;->OnException(Loicq/wlogin_sdk/tools/ErrMsg;ILoicq/wlogin_sdk/request/WUserSigInfo;)V

    goto :goto_0

    .line 4157
    :sswitch_0
    if-eqz p8, :cond_2

    .line 4158
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v5, v11, Loicq/wlogin_sdk/code2d/c;->d:[B

    iget-wide v6, v11, Loicq/wlogin_sdk/code2d/c;->c:J

    iget-object v8, v11, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    iget-object v10, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    move-object v4, p1

    move-object/from16 v9, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Loicq/wlogin_sdk/request/WtloginListener;->OnVerifyCode(Ljava/lang/String;[BJLjava/util/List;Loicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto :goto_0

    .line 4161
    :cond_2
    new-instance v2, Loicq/wlogin_sdk/code2d/e;

    invoke-direct {v2}, Loicq/wlogin_sdk/code2d/e;-><init>()V

    .line 4162
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/code2d/e;->a([B)I

    move-result v2

    iput v2, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    .line 4163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VerifyCode ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4164
    iget v2, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    if-nez v2, :cond_3

    iget-object v2, v11, Loicq/wlogin_sdk/code2d/c;->g:[B

    if-eqz v2, :cond_3

    iget-object v2, v11, Loicq/wlogin_sdk/code2d/c;->g:[B

    array-length v2, v2

    if-lez v2, :cond_3

    .line 4167
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v11, Loicq/wlogin_sdk/code2d/c;->a:J

    iget-object v8, v11, Loicq/wlogin_sdk/code2d/c;->g:[B

    move-wide v6, p2

    invoke-virtual/range {v3 .. v8}, Loicq/wlogin_sdk/request/u;->a(JJ[B)I

    .line 4170
    :cond_3
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v5, v11, Loicq/wlogin_sdk/code2d/c;->d:[B

    iget-wide v6, v11, Loicq/wlogin_sdk/code2d/c;->c:J

    iget-object v8, v11, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    iget-object v10, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    iget v11, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    move-object v4, p1

    move-object/from16 v9, p7

    invoke-virtual/range {v3 .. v11}, Loicq/wlogin_sdk/request/WtloginListener;->OnVerifyCode(Ljava/lang/String;[BJLjava/util/List;Loicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto/16 :goto_0

    .line 4174
    :sswitch_1
    if-eqz p8, :cond_4

    .line 4175
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v5, v11, Loicq/wlogin_sdk/code2d/c;->d:[B

    iget-wide v6, v11, Loicq/wlogin_sdk/code2d/c;->c:J

    iget-object v9, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    move-object v4, p1

    move-object/from16 v8, p7

    move/from16 v10, p8

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnCloseCode(Ljava/lang/String;[BJLoicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto/16 :goto_0

    .line 4178
    :cond_4
    new-instance v2, Loicq/wlogin_sdk/code2d/a;

    invoke-direct {v2}, Loicq/wlogin_sdk/code2d/a;-><init>()V

    .line 4179
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    sget-object v4, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-virtual {v2, v3, p2, p3, v4}, Loicq/wlogin_sdk/code2d/a;->a([BJLandroid/content/Context;)I

    move-result v2

    iput v2, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    .line 4180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloseCode ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4182
    const/4 v2, 0x0

    sput-boolean v2, Loicq/wlogin_sdk/code2d/c;->s:Z

    .line 4183
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v5, v11, Loicq/wlogin_sdk/code2d/c;->d:[B

    iget-wide v6, v11, Loicq/wlogin_sdk/code2d/c;->c:J

    iget-object v9, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    iget v10, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    move-object v4, p1

    move-object/from16 v8, p7

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnCloseCode(Ljava/lang/String;[BJLoicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto/16 :goto_0

    .line 4188
    :sswitch_2
    if-nez p8, :cond_6

    .line 4189
    new-instance v2, Loicq/wlogin_sdk/code2d/fetch_code;

    invoke-direct {v2}, Loicq/wlogin_sdk/code2d/fetch_code;-><init>()V

    .line 4190
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/code2d/fetch_code;->get_response([B)I

    move-result v10

    .line 4191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchCodeSig ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4194
    :goto_1
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v3, v11, Loicq/wlogin_sdk/code2d/c;->j:[B

    iget-wide v4, v11, Loicq/wlogin_sdk/code2d/c;->k:J

    iget v6, v11, Loicq/wlogin_sdk/code2d/c;->l:I

    int-to-long v6, v6

    iget-object v9, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnFetchCodeSig([BJJLoicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto/16 :goto_0

    .line 4199
    :sswitch_3
    if-nez p8, :cond_5

    .line 4200
    new-instance v2, Loicq/wlogin_sdk/code2d/d;

    invoke-direct {v2}, Loicq/wlogin_sdk/code2d/d;-><init>()V

    .line 4201
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/code2d/d;->a([B)I

    move-result v10

    .line 4202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryCodeResult ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4205
    :goto_2
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-wide v3, v11, Loicq/wlogin_sdk/code2d/c;->a:J

    iget-object v5, v11, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    iget-wide v6, v11, Loicq/wlogin_sdk/code2d/c;->c:J

    iget-object v9, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnQueryCodeResult(JLjava/util/List;JLoicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto/16 :goto_0

    :cond_5
    move/from16 v10, p8

    goto :goto_2

    :cond_6
    move/from16 v10, p8

    goto :goto_1

    .line 4155
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_3
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x31 -> :sswitch_2
    .end sparse-switch
.end method

.method private OnRequestRegister(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 11

    .prologue
    .line 3715
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-nez v2, :cond_1

    .line 3921
    :cond_0
    :goto_0
    return-void

    .line 3718
    :cond_1
    sget-object v2, Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;->MSG_3:Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/InternationMsg;->a(Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;)Ljava/lang/String;

    move-result-object v2

    .line 3719
    if-eqz p8, :cond_2

    .line 3720
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v3, :cond_0

    .line 3721
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v3, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto :goto_0

    .line 3726
    :cond_2
    iget-object v10, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    .line 3728
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3916
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnRequestRegister unhandle cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3917
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v3, :cond_0

    .line 3918
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    const/16 v4, -0x3f2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v3, v0, v4, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto :goto_0

    .line 3730
    :pswitch_1
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->a([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    .line 3731
    if-eqz v3, :cond_3

    .line 3732
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    .line 3733
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto :goto_0

    .line 3738
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3741
    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    if-nez v2, :cond_4

    .line 3742
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3743
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->m:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->n:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckDownloadMsg(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3745
    :cond_4
    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 3746
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3747
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    new-instance v3, Ljava/lang/String;

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->q:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckUploadMsg(Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3749
    :cond_5
    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 3750
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3751
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->r:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckValidUrl(Loicq/wlogin_sdk/request/WUserSigInfo;[B)V

    goto/16 :goto_0

    .line 3753
    :cond_6
    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_7

    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_9

    .line 3754
    :cond_7
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_8

    .line 3755
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    new-instance v3, Ljava/lang/String;

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->r:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/String;

    iget-object v5, v10, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckWebSig(Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 3756
    :cond_8
    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, v10, Loicq/wlogin_sdk/a/j;->r:[B

    goto/16 :goto_0

    .line 3758
    :cond_9
    const-string v2, "OnRequestRegister 0xa return code:"

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3759
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3760
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3765
    :pswitch_2
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->a([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    .line 3766
    if-eqz v3, :cond_a

    .line 3767
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    .line 3768
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3773
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3775
    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    if-eqz v2, :cond_b

    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_b

    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_b

    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/16 v3, 0x76

    if-ne v2, v3, :cond_c

    .line 3779
    :cond_b
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v4, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget v5, v10, Loicq/wlogin_sdk/a/j;->s:I

    iget v6, v10, Loicq/wlogin_sdk/a/j;->t:I

    new-instance v7, Ljava/lang/String;

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v3, p7

    invoke-virtual/range {v2 .. v7}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegQueryClientSentMsgStatus(Loicq/wlogin_sdk/request/WUserSigInfo;IIILjava/lang/String;)V

    goto/16 :goto_0

    .line 3780
    :cond_c
    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    .line 3781
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3782
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->r:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckValidUrl(Loicq/wlogin_sdk/request/WUserSigInfo;[B)V

    goto/16 :goto_0

    .line 3785
    :cond_d
    const-string v2, "OnRequestRegister 0x3 return code:"

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3786
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3787
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3793
    :pswitch_3
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->a([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    .line 3794
    if-eqz v3, :cond_e

    .line 3795
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    .line 3796
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3801
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3803
    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    if-nez v2, :cond_f

    .line 3804
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3805
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget v4, v10, Loicq/wlogin_sdk/a/j;->s:I

    iget v5, v10, Loicq/wlogin_sdk/a/j;->t:I

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4, v5}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegRequestServerResendMsg(Loicq/wlogin_sdk/request/WUserSigInfo;III)V

    goto/16 :goto_0

    .line 3807
    :cond_f
    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    .line 3808
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3809
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->r:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckValidUrl(Loicq/wlogin_sdk/request/WUserSigInfo;[B)V

    goto/16 :goto_0

    .line 3811
    :cond_10
    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_11

    .line 3812
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3813
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget v4, v10, Loicq/wlogin_sdk/a/j;->s:I

    iget v5, v10, Loicq/wlogin_sdk/a/j;->t:I

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4, v5}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegRequestServerResendMsg(Loicq/wlogin_sdk/request/WUserSigInfo;III)V

    goto/16 :goto_0

    .line 3816
    :cond_11
    const-string v2, "OnRequestRegister 0x4 return code:"

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3817
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3818
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3824
    :pswitch_4
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->b([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    .line 3825
    if-eqz v3, :cond_12

    .line 3826
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    .line 3827
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3832
    :cond_12
    iget-object v2, v10, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    move-object/from16 v0, p7

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->regTLVMap:Ljava/util/Map;

    .line 3833
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v10, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    .line 3834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3835
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3836
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegSubmitMsgChk(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3841
    :pswitch_5
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->c([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    .line 3842
    if-eqz v3, :cond_13

    .line 3843
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    .line 3844
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3849
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3851
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3852
    iget-object v2, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_14

    .line 3853
    iget-object v2, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3854
    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3855
    const-string v4, "86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3856
    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    .line 3861
    :cond_14
    :goto_1
    iget-object v2, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    .line 3862
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/u;->d(Ljava/lang/String;)V

    .line 3863
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    iget-wide v4, v10, Loicq/wlogin_sdk/a/j;->u:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3865
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg userAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v10, Loicq/wlogin_sdk/a/j;->u:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3867
    sget-object v2, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    .line 3868
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v5, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-wide v6, v10, Loicq/wlogin_sdk/a/j;->u:J

    iget-object v8, v10, Loicq/wlogin_sdk/a/j;->v:[B

    iget-object v9, v10, Loicq/wlogin_sdk/a/j;->w:[B

    iget-object v10, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v4, p7

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegGetSMSVerifyLoginAccount(Loicq/wlogin_sdk/request/WUserSigInfo;IJ[B[B[B)V

    goto/16 :goto_0

    .line 3858
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    goto/16 :goto_1

    .line 3870
    :cond_17
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v5, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-wide v6, v10, Loicq/wlogin_sdk/a/j;->u:J

    iget-object v8, v10, Loicq/wlogin_sdk/a/j;->v:[B

    iget-object v9, v10, Loicq/wlogin_sdk/a/j;->w:[B

    iget-object v10, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v4, p7

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegGetAccount(Loicq/wlogin_sdk/request/WUserSigInfo;IJ[B[B[B)V

    goto/16 :goto_0

    .line 3876
    :pswitch_6
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->d([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    .line 3877
    if-eqz v3, :cond_18

    .line 3878
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    .line 3879
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3884
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3886
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    .line 3887
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegQueryAccount(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3892
    :pswitch_7
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->e([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    .line 3893
    if-eqz v3, :cond_19

    .line 3894
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_19

    .line 3895
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    .line 3898
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3899
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnQuickRegisterCheckAccount(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3903
    :pswitch_8
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->f([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    .line 3904
    if-eqz v3, :cond_1a

    .line 3905
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_1a

    .line 3906
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    .line 3909
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3910
    iget-object v2, v10, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    move-object/from16 v0, p7

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->regTLVMap:Ljava/util/Map;

    .line 3911
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v10, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    .line 3912
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnQuickRegisterGetAccount(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    .line 3728
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private PrepareQloginIntent(JJLjava/lang/String;)Landroid/content/Intent;
    .locals 7

    .prologue
    .line 4746
    const-string v0, "com.tencent.mobileqq"

    .line 4747
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->CheckMayFastLogin(Landroid/content/Context;)Z

    move-result v1

    .line 4748
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->CheckQQMiniHD(Landroid/content/Context;)Z

    move-result v2

    .line 4749
    if-nez v1, :cond_0

    .line 4750
    if-eqz v2, :cond_3

    .line 4751
    const-string v0, "com.tencent.minihd.qq"

    .line 4756
    :cond_0
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->get_rsa_pubkey(Landroid/content/Context;)[B

    move-result-object v1

    .line 4757
    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_2

    .line 4758
    :cond_1
    const-string v1, "30818902818100daaa2a418b271f3dfcf8f0a9120326d47f07618593d8d71d61a4fe987cc47740e491105bf8e68bd479bf51dfe19d3b06e12017df6d87a0f43bb82b57f59bd4220f2a3d8d68904a6ddb51197989e6e82512d8d8fa6c41b755a8ca962595d3e1e1be7ea01677249be4794cd7c6682d611c1bd81f0a16231fb83517515b94d13e5d0203010001"

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B

    move-result-object v1

    .line 4760
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4763
    const-string v3, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4765
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4766
    const-string v3, "dstSsoVer"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4767
    const-string v3, "dstAppid"

    invoke-virtual {v0, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4768
    const-string/jumbo v3, "subDstAppid"

    invoke-virtual {v0, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4769
    const-string v3, "dstAppVer"

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4770
    const-string v3, "publickey"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4771
    const-string v1, "key_params"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4772
    const-string v0, "key_action"

    const-string v1, "action_quick_login"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v2

    .line 4774
    :goto_0
    return-object v0

    .line 4753
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private RefreshPictureData(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 2292
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2293
    :cond_0
    const/16 v0, -0x3f9

    .line 2348
    :goto_0
    return v0

    .line 2297
    :cond_1
    if-nez p3, :cond_2

    .line 2298
    new-instance v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v6, "RefreshPictureData"

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    .line 2299
    invoke-virtual {v0, v7}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 2300
    const/16 v0, -0x3e9

    goto :goto_0

    .line 2307
    :cond_2
    iget-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_3

    .line 2308
    iget-wide v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    iput-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2310
    :cond_3
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v1, v2, v3}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v4

    .line 2311
    iget-wide v2, v4, Loicq/wlogin_sdk/request/u;->h:J

    iput-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2312
    iget-wide v2, v4, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v5

    .line 2314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v4, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RefreshPictureData ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    iput-object p1, v4, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 2319
    new-instance v1, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v1}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v1, v5, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 2321
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2323
    invoke-virtual {v4, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 2324
    cmp-long v1, v2, v8

    if-eqz v1, :cond_7

    move v1, v7

    .line 2332
    :goto_1
    if-ne v1, v7, :cond_4

    .line 2333
    iput-wide v2, v4, Loicq/wlogin_sdk/request/u;->f:J

    .line 2337
    :cond_4
    new-instance v1, Loicq/wlogin_sdk/request/r;

    invoke-direct {v1, v4}, Loicq/wlogin_sdk/request/r;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    iget v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    iget-object v5, v5, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    invoke-virtual {v1, v2, v3, v5, p2}, Loicq/wlogin_sdk/request/r;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v1

    .line 2339
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 2345
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v4, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RefreshPictureData ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2328
    :cond_5
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move v1, v7

    .line 2329
    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v1, v0

    goto :goto_1
.end method

.method private RefreshSMSData(Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 2659
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 2660
    :cond_0
    const/16 v0, -0x3f9

    .line 2715
    :goto_0
    return v0

    .line 2664
    :cond_1
    if-nez p5, :cond_2

    .line 2665
    new-instance v1, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v9, "RefreshSMSData"

    move-object v2, p0

    move-object v3, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 2667
    invoke-virtual {v1, v0}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 2668
    const/16 v0, -0x3e9

    goto :goto_0

    .line 2675
    :cond_2
    iget-wide v4, p4, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    .line 2676
    iget-wide v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    iput-wide v4, p4, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2678
    :cond_3
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-wide v4, p4, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v1, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v8

    .line 2679
    iget-wide v4, v8, Loicq/wlogin_sdk/request/u;->h:J

    iput-wide v4, p4, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 2680
    iget-wide v4, v8, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v3

    .line 2682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " smsAppid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Seq:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v8, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " RefreshSMSData ..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    iput-object p1, v8, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 2686
    new-instance v1, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v1}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v1, v3, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 2688
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2690
    invoke-virtual {v8, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 2691
    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    move v1, v2

    .line 2699
    :goto_1
    if-ne v1, v2, :cond_4

    .line 2700
    iput-wide v4, v8, Loicq/wlogin_sdk/request/u;->f:J

    .line 2704
    :cond_4
    new-instance v1, Loicq/wlogin_sdk/request/s;

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/request/s;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    iget v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    iget-object v6, v3, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-wide v2, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Loicq/wlogin_sdk/request/s;->a(JII[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v1

    .line 2707
    const/16 v2, 0xa0

    if-ne v1, v2, :cond_6

    .line 2713
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " smsAppid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v8, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RefreshSMSData ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2695
    :cond_5
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move v1, v2

    .line 2696
    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v1, v0

    goto :goto_1
.end method

.method private RefreshSMSVerifyLoginCode(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 7

    .prologue
    .line 3150
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3151
    :cond_0
    const/16 v0, -0x3f9

    .line 3182
    :goto_0
    return v0

    .line 3154
    :cond_1
    if-nez p3, :cond_2

    .line 3155
    new-instance v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v6, "RefreshSMSVerifyLoginCode"

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/16 v1, 0xe

    .line 3157
    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 3158
    const/16 v0, -0x3e9

    goto :goto_0

    .line 3163
    :cond_2
    iget-wide v0, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 3164
    iget-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    iput-wide v0, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 3166
    :cond_3
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v0, v2, v3}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v0

    .line 3167
    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    iput-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 3168
    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    .line 3169
    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v1

    .line 3171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RefreshSMSVerifyLoginCode ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3175
    iput-object p1, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 3176
    new-instance v2, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v2, v1, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 3178
    new-instance v1, Loicq/wlogin_sdk/request/x;

    invoke-direct {v1, v0}, Loicq/wlogin_sdk/request/x;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    iget v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p2}, Loicq/wlogin_sdk/request/x;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v1

    .line 3180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " RefreshSMSVerifyLoginCode ret="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez v1, :cond_4

    .line 3181
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3180
    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3182
    goto/16 :goto_0

    .line 3181
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method private RegSubmitMobile([B[B[B[BIIIJJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 26

    .prologue
    .line 3961
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v4, v0

    if-lez v4, :cond_0

    if-nez p4, :cond_1

    .line 3962
    :cond_0
    const/16 v4, -0x3f9

    .line 3997
    :goto_0
    return v4

    .line 3964
    :cond_1
    if-nez p1, :cond_3

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 v24, v0

    .line 3966
    :goto_1
    sget-object v7, Loicq/wlogin_sdk/request/u;->E:[B

    .line 3968
    const-wide/16 v20, 0x0

    .line 3969
    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 v22, v0

    .line 3970
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLastLoginInfo()Loicq/wlogin_sdk/request/WloginLastLoginInfo;

    move-result-object v4

    .line 3971
    if-eqz v4, :cond_2

    .line 3972
    iget-wide v0, v4, Loicq/wlogin_sdk/request/WloginLastLoginInfo;->mUin:J

    move-wide/from16 v20, v0

    .line 3973
    iget-object v4, v4, Loicq/wlogin_sdk/request/WloginLastLoginInfo;->mAccount:Ljava/lang/String;

    const/16 v5, 0x40

    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    invoke-virtual {v0, v4, v1, v2, v5}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    .line 3974
    if-eqz v4, :cond_2

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_2

    .line 3975
    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v22, v0

    .line 3978
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "has uin? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", a2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 3979
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegSubmitMobile mobile ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appname: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3981
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Loicq/wlogin_sdk/a/j;->c:Ljava/lang/String;

    .line 3983
    new-instance v5, Loicq/wlogin_sdk/a/h;

    invoke-direct {v5}, Loicq/wlogin_sdk/a/h;-><init>()V

    .line 3984
    new-instance v25, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v25 .. v25}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 3985
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    .line 3987
    move-object/from16 v0, p2

    iput-object v0, v4, Loicq/wlogin_sdk/a/j;->k:[B

    .line 3988
    move-wide/from16 v0, p8

    iput-wide v0, v4, Loicq/wlogin_sdk/a/j;->g:J

    .line 3989
    move-wide/from16 v0, p10

    iput-wide v0, v4, Loicq/wlogin_sdk/a/j;->h:J

    .line 3990
    invoke-virtual/range {v25 .. v25}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 3991
    invoke-virtual {v5}, Loicq/wlogin_sdk/a/h;->a()I

    move-result v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 3992
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    .line 3994
    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->get_IMEI(Landroid/content/Context;)[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->get_IMSI(Landroid/content/Context;)[B

    move-result-object v18

    sget-object v19, Loicq/wlogin_sdk/request/u;->aa:[B

    .line 3995
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetGuid()[B

    move-result-object v23

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    .line 3992
    invoke-virtual/range {v5 .. v24}, Loicq/wlogin_sdk/a/h;->a([B[B[BIIIJJ[B[B[B[BJ[B[B[B)[B

    move-result-object v5

    move-object/from16 v0, v25

    iput-object v5, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 3997
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    iget v4, v4, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move-object/from16 v12, v25

    move-object/from16 v13, p12

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0

    :cond_3
    move-object/from16 v24, p1

    goto/16 :goto_1
.end method

.method private RequestInit()I
    .locals 5

    .prologue
    .line 3413
    .line 3414
    monitor-enter p0

    .line 3418
    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v0

    .line 3421
    invoke-static {}, Loicq/wlogin_sdk/request/u;->d()V

    .line 3424
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->ShareKeyInit()I

    move-result v1

    .line 3427
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->AsyncGenRSAKey()V

    .line 3429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init ok  ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " os ver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Loicq/wlogin_sdk/request/u;->J:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " saved_network_type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " network_type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Loicq/wlogin_sdk/request/u;->D:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " svn "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x7b3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3435
    invoke-static {}, Loicq/wlogin_sdk/request/u;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 3429
    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3438
    monitor-exit p0

    .line 3440
    return v1

    .line 3438
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private RequestReport(I[B[BJJ)I
    .locals 14

    .prologue
    .line 3508
    if-nez p1, :cond_0

    .line 3509
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v12, "RequestReport"

    move-object v3, p0

    move-object v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v2 .. v12}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;[B[BJJLjava/lang/String;)V

    const/4 v3, 0x7

    .line 3510
    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 3511
    const/16 v2, -0x3e9

    .line 3532
    :goto_0
    return v2

    .line 3514
    :cond_0
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v11

    .line 3515
    move-wide/from16 v0, p4

    iput-wide v0, v11, Loicq/wlogin_sdk/request/u;->f:J

    .line 3517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v11, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RequestReport..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3523
    new-instance v2, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v2, v11}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v5, 0x0

    new-instance v10, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v10}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    move-wide/from16 v3, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v10}, Loicq/wlogin_sdk/request/aa;->a(J[B[B[BJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    .line 3528
    invoke-virtual {v11}, Loicq/wlogin_sdk/request/u;->i()V

    .line 3530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v11, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RequestReport ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private RequestReportError(I[B[BJJI)I
    .locals 14

    .prologue
    .line 3480
    if-nez p1, :cond_0

    .line 3481
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v13, "RequestReportError"

    move-object v3, p0

    move-object v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    invoke-direct/range {v2 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;[B[BJJILjava/lang/String;)V

    const/16 v3, 0x8

    .line 3482
    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 3483
    const/16 v2, -0x3e9

    .line 3502
    :goto_0
    return v2

    .line 3486
    :cond_0
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v11

    .line 3487
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-object v2, v2, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    iput-object v2, v11, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    .line 3488
    move-wide/from16 v0, p4

    iput-wide v0, v11, Loicq/wlogin_sdk/request/u;->f:J

    .line 3490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v11, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RequestReportError..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3496
    new-instance v2, Loicq/wlogin_sdk/request/v;

    invoke-direct {v2, v11}, Loicq/wlogin_sdk/request/v;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v5, 0x0

    move-wide/from16 v3, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Loicq/wlogin_sdk/request/v;->a(J[B[B[BJI)I

    move-result v2

    .line 3500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v11, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RequestReportError ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private ResolveQloginIntentReserved(Landroid/content/Intent;)Loicq/wlogin_sdk/request/WUserSigInfo;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4834
    if-nez p1, :cond_1

    .line 4853
    :cond_0
    :goto_0
    return-object v0

    .line 4836
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "quicklogin_ret"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 4837
    if-nez v1, :cond_0

    .line 4839
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "quicklogin_uin"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4840
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "quicklogin_buff"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 4841
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 4844
    new-instance v1, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v1}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    .line 4845
    new-instance v4, Loicq/wlogin_sdk/tools/RSACrypt;

    iget-object v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Loicq/wlogin_sdk/tools/RSACrypt;-><init>(Landroid/content/Context;)V

    .line 4846
    invoke-virtual {v4, v0, v3}, Loicq/wlogin_sdk/tools/RSACrypt;->DecryptData([B[B)[B

    move-result-object v3

    iput-object v3, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    .line 4847
    iget-object v3, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    if-nez v3, :cond_2

    .line 4848
    const-string v1, "rsa decrypt failed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4851
    :cond_2
    iput-object v2, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    move-object v0, v1

    .line 4853
    goto :goto_0
.end method

.method private ShareKeyInit()I
    .locals 4

    .prologue
    .line 3444
    const-string v0, "start ShareKeyInit"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3445
    new-instance v1, Loicq/wlogin_sdk/tools/EcdhCrypt;

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Loicq/wlogin_sdk/tools/EcdhCrypt;-><init>(Landroid/content/Context;)V

    .line 3446
    iget-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    if-eqz v0, :cond_0

    .line 3447
    invoke-virtual {v1}, Loicq/wlogin_sdk/tools/EcdhCrypt;->initShareKeyByDefault()I

    move-result v0

    .line 3453
    :goto_0
    return v0

    .line 3449
    :cond_0
    invoke-virtual {v1}, Loicq/wlogin_sdk/tools/EcdhCrypt;->initShareKey()I

    move-result v0

    .line 3450
    const-string v2, "end ShareKeyInit"

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1}, Loicq/wlogin_sdk/tools/EcdhCrypt;->get_c_pub_key()[B

    move-result-object v3

    iput-object v3, v2, Loicq/wlogin_sdk/request/u;->n:[B

    .line 3452
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1}, Loicq/wlogin_sdk/tools/EcdhCrypt;->get_g_share_key()[B

    move-result-object v1

    iput-object v1, v2, Loicq/wlogin_sdk/request/u;->p:[B

    goto :goto_0
.end method

.method private VerifySMSVerifyLoginCode(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 8

    .prologue
    .line 3197
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 3198
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3199
    :cond_0
    const/16 v0, -0x3f9

    .line 3232
    :goto_0
    return v0

    .line 3202
    :cond_1
    if-nez p4, :cond_2

    .line 3203
    new-instance v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v7, "VerifySMSVerifyLoginCode"

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/16 v1, 0xd

    .line 3205
    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 3206
    const/16 v0, -0x3e9

    goto :goto_0

    .line 3211
    :cond_2
    iget-wide v0, p3, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 3212
    iget-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    iput-wide v0, p3, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 3214
    :cond_3
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-wide v2, p3, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v0, v2, v3}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v6

    .line 3215
    iget-wide v0, v6, Loicq/wlogin_sdk/request/u;->h:J

    iput-wide v0, p3, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 3216
    iget-wide v0, v6, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    .line 3218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v6, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " VerifySMSVerifyLoginCode ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3222
    iput-object p1, v6, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 3223
    new-instance v1, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v1}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v1, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 3225
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_mpasswd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Loicq/wlogin_sdk/request/async_context;->_mpasswd:Ljava/lang/String;

    .line 3228
    new-instance v0, Loicq/wlogin_sdk/request/y;

    invoke-direct {v0, v6}, Loicq/wlogin_sdk/request/y;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    iget v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    const/4 v4, 0x0

    move-object v1, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Loicq/wlogin_sdk/request/y;->a(Ljava/lang/String;II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v1

    .line 3230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " code:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Seq:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v6, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " VerifySMSVerifyLoginAccount ret="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez v1, :cond_4

    .line 3231
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3230
    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3232
    goto/16 :goto_0

    .line 3231
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic access$000(Loicq/wlogin_sdk/request/WtloginHelper;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Loicq/wlogin_sdk/request/WtloginHelper;)Loicq/wlogin_sdk/request/WtloginListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    return-object v0
.end method

.method static synthetic access$1000(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I
    .locals 2

    .prologue
    .line 64
    invoke-direct/range {p0 .. p16}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Loicq/wlogin_sdk/request/WtloginHelper;)J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mOpenAppid:J

    return-wide v0
.end method

.method static synthetic access$1200(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;I)I
    .locals 2

    .prologue
    .line 64
    invoke-direct/range {p0 .. p18}, Loicq/wlogin_sdk/request/WtloginHelper;->GetA1WithA1(Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Loicq/wlogin_sdk/request/WtloginHelper;I[B[BJJ)I
    .locals 2

    .prologue
    .line 64
    invoke-direct/range {p0 .. p7}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p8}, Loicq/wlogin_sdk/request/WtloginHelper;->OnRequestRegister(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V

    return-void
.end method

.method static synthetic access$1500(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p8}, Loicq/wlogin_sdk/request/WtloginHelper;->OnRequestCode2d(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V

    return-void
.end method

.method static synthetic access$1600(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p8}, Loicq/wlogin_sdk/request/WtloginHelper;->OnDeviceLockRequest(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V

    return-void
.end method

.method static synthetic access$1700(Loicq/wlogin_sdk/request/WtloginHelper;JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 1

    .prologue
    .line 64
    invoke-direct/range {p0 .. p7}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckSMSVerifyLoginAccount(JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Loicq/wlogin_sdk/request/WtloginHelper;->VerifySMSVerifyLoginCode(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshSMSVerifyLoginCode(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Loicq/wlogin_sdk/request/WtloginHelper;)Loicq/wlogin_sdk/request/u;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    return-object v0
.end method

.method static synthetic access$2000(Loicq/wlogin_sdk/request/WtloginHelper;I[B[BJJI)I
    .locals 2

    .prologue
    .line 64
    invoke-direct/range {p0 .. p8}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithQQSig(Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithPtSig(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 2

    .prologue
    .line 64
    invoke-direct/range {p0 .. p8}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithQrSig(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Loicq/wlogin_sdk/request/WtloginHelper;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->newHelperHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I
    .locals 1

    .prologue
    .line 64
    invoke-direct/range {p0 .. p13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshPictureData(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I
    .locals 1

    .prologue
    .line 64
    invoke-direct/range {p0 .. p5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 2

    .prologue
    .line 64
    invoke-direct/range {p0 .. p5}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshSMSData(Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I
    .locals 1

    .prologue
    .line 64
    invoke-direct/range {p0 .. p5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public static getRegTlvValue(Loicq/wlogin_sdk/request/WUserSigInfo;I)[B
    .locals 2

    .prologue
    .line 5577
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 5578
    iget-object v1, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->regTLVMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/b/b;

    .line 5579
    if-eqz v0, :cond_0

    .line 5580
    invoke-virtual {v0}, Loicq/wlogin_sdk/b/b;->c()[B

    move-result-object v0

    .line 5582
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStWithPtSig(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I
    .locals 1

    .prologue
    .line 5711
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithPtSig(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I

    move-result v0

    return v0
.end method

.method private getStWithPtSig(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I
    .locals 28

    .prologue
    .line 5716
    if-nez p4, :cond_0

    .line 5717
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v9, "getStWithPtSig"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 5718
    const/16 v2, -0x3e9

    .line 5794
    :goto_0
    return v2

    .line 5723
    :cond_0
    move-object/from16 v0, p3

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    move-object/from16 v26, v0

    .line 5724
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    .line 5727
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v27

    .line 5728
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, v27

    iput-wide v2, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 5730
    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, v26

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 5731
    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v13

    .line 5733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStWithPtSig seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 5735
    new-instance v2, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v2, v13, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 5738
    move-object/from16 v0, p3

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    or-int/lit16 v2, v2, 0xc0

    move-object/from16 v0, p3

    iput v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    .line 5740
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_mpasswd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Loicq/wlogin_sdk/request/async_context;->_mpasswd:Ljava/lang/String;

    .line 5741
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->constructSalt()J

    move-result-wide v2

    iput-wide v2, v13, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    .line 5742
    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    iput-wide v2, v13, Loicq/wlogin_sdk/request/async_context;->_appid:J

    .line 5743
    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->subAppid:J

    iput-wide v2, v13, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    .line 5744
    move-object/from16 v0, p3

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    iput v2, v13, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    .line 5745
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    iput-object v2, v13, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    .line 5748
    new-instance v2, Loicq/wlogin_sdk/request/c;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Loicq/wlogin_sdk/request/c;-><init>(Loicq/wlogin_sdk/request/u;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v4, v0}, Loicq/wlogin_sdk/request/c;->a(IILoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    .line 5749
    if-eqz v2, :cond_1

    .line 5750
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VerifyPTSig seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5756
    :cond_1
    iget-object v2, v13, Loicq/wlogin_sdk/request/async_context;->_mpasswd:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v2

    iput-object v2, v13, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    .line 5757
    new-instance v3, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-direct {v3, v0, v2}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;Landroid/content/Context;)V

    .line 5758
    invoke-virtual {v3}, Loicq/wlogin_sdk/request/l;->g()V

    .line 5759
    move-object/from16 v0, p3

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    move-object/from16 v0, p3

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->subAppid:J

    move-object/from16 v0, v27

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    const/4 v10, 0x0

    sget-object v11, Loicq/wlogin_sdk/request/u;->ad:[B

    .line 5762
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->getRequestInitTime()[B

    move-result-object v12

    iget-object v13, v13, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget v15, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->subAppid:J

    move-wide/from16 v19, v0

    sget v21, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    sget-object v25, Loicq/wlogin_sdk/request/u;->aa:[B

    .line 5759
    invoke-virtual/range {v3 .. v26}, Loicq/wlogin_sdk/request/l;->a(JJJI[B[B[BIII[JIJIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    .line 5768
    if-eqz v4, :cond_2

    .line 5769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStWithPtSig seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 5770
    goto/16 :goto_0

    .line 5773
    :cond_2
    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, p3

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3, v6, v7}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    .line 5774
    if-nez v2, :cond_3

    .line 5775
    const/16 v2, -0x3ec

    goto/16 :goto_0

    .line 5779
    :cond_3
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 5782
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    if-eqz v2, :cond_5

    .line 5783
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [[B

    move-object/from16 v0, v26

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->stList:[[B

    .line 5784
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    array-length v2, v2

    if-ge v3, v2, :cond_5

    .line 5785
    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    aget-wide v8, v2, v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v7, v8, v9}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v5

    .line 5786
    if-eqz v5, :cond_4

    .line 5787
    move-object/from16 v0, v26

    iget-object v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->stList:[[B

    mul-int/lit8 v7, v3, 0x2

    iget-object v2, v5, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v6, v7

    .line 5788
    move-object/from16 v0, v26

    iget-object v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->stList:[[B

    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v7, v2, 0x1

    iget-object v2, v5, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v6, v7

    .line 5784
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 5793
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request_TGTGT seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 5794
    goto/16 :goto_0
.end method

.method private getStWithQQSig(Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I
    .locals 1

    .prologue
    .line 5602
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithQQSig(Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I

    move-result v0

    return v0
.end method

.method private getStWithQQSig(Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I
    .locals 28

    .prologue
    .line 5606
    if-nez p3, :cond_0

    .line 5607
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v8, "getStWithQQSig"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;Ljava/lang/String;)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 5608
    const/16 v2, -0x3e9

    .line 5706
    :goto_0
    return v2

    .line 5613
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    move-object/from16 v26, v0

    .line 5614
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    .line 5618
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v27

    .line 5619
    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, v26

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 5620
    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    .line 5622
    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v11

    .line 5624
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v2

    .line 5625
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Loicq/wlogin_sdk/tools/util;->get_network_type(Landroid/content/Context;)I

    move-result v3

    sput v3, Loicq/wlogin_sdk/request/u;->D:I

    .line 5626
    sget v3, Loicq/wlogin_sdk/request/u;->D:I

    if-eq v2, v3, :cond_1

    .line 5627
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    .line 5628
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    sget v3, Loicq/wlogin_sdk/request/u;->D:I

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->save_network_type(Landroid/content/Context;I)V

    .line 5630
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->get_apn_string(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sput-object v2, Loicq/wlogin_sdk/request/u;->F:[B

    .line 5633
    move-object/from16 v0, p2

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    or-int/lit16 v2, v2, 0xc0

    move-object/from16 v0, p2

    iput v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    .line 5635
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 5636
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, v27

    iput-wide v2, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 5637
    move-object/from16 v0, p2

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    iput-wide v2, v11, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    .line 5638
    move-object/from16 v0, p2

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    iput-wide v2, v11, Loicq/wlogin_sdk/request/async_context;->_appid:J

    .line 5639
    move-object/from16 v0, p2

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->subAppid:J

    iput-wide v2, v11, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    .line 5640
    move-object/from16 v0, p2

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    iput v2, v11, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    .line 5641
    move-object/from16 v0, v26

    iget v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_login_bitmap:I

    iput v2, v11, Loicq/wlogin_sdk/request/async_context;->_login_bitmap:I

    .line 5642
    new-instance v2, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v2, v11, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 5643
    move-object/from16 v0, p2

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    if-eqz v2, :cond_3

    .line 5644
    move-object/from16 v0, p2

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v11, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    .line 5649
    :goto_1
    move-object/from16 v0, v26

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v2, :cond_4

    move-object/from16 v0, v26

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v2, v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_4

    .line 5650
    move-object/from16 v0, v26

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v2

    move-object/from16 v0, v27

    iput v2, v0, Loicq/wlogin_sdk/request/u;->i:I

    .line 5651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSF SSO SEQ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget v3, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 5656
    :goto_2
    move-object/from16 v0, v26

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    if-eqz v2, :cond_2

    move-object/from16 v0, v26

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    array-length v2, v2

    if-nez v2, :cond_5

    .line 5657
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fast login buff is null seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget v3, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 5658
    const/16 v2, -0x3f9

    goto/16 :goto_0

    .line 5646
    :cond_3
    const/4 v2, 0x0

    iput-object v2, v11, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    goto :goto_1

    .line 5653
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v27

    iput v2, v0, Loicq/wlogin_sdk/request/u;->i:I

    goto :goto_2

    .line 5661
    :cond_5
    move-object/from16 v0, v26

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Loicq/wlogin_sdk/request/WtloginHelper;->GetFastLoginInfo([BLoicq/wlogin_sdk/request/async_context;)I

    move-result v2

    if-gez v2, :cond_6

    .line 5662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetFastLoginInfo fast login buff is failed seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget v3, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 5663
    const/16 v2, -0x3f9

    goto/16 :goto_0

    .line 5667
    :cond_6
    new-instance v2, Loicq/wlogin_sdk/request/z;

    move-object/from16 v0, v27

    invoke-direct {v2, v0}, Loicq/wlogin_sdk/request/z;-><init>(Loicq/wlogin_sdk/request/u;)V

    .line 5668
    invoke-virtual {v2}, Loicq/wlogin_sdk/request/z;->g()V

    .line 5669
    move-object/from16 v0, p2

    iget-wide v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    const/4 v5, 0x1

    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    const/4 v8, 0x0

    sget-object v9, Loicq/wlogin_sdk/request/u;->ad:[B

    iget-object v10, v11, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    iget-object v11, v11, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    move-object/from16 v0, p0

    iget v12, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v13, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, p2

    iget-object v14, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    move-object/from16 v0, p2

    iget v15, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->subAppid:J

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    sget v19, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    sget-object v23, Loicq/wlogin_sdk/request/u;->aa:[B

    move-object/from16 v0, p2

    iget-wide v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v2 .. v26}, Loicq/wlogin_sdk/request/z;->a(JIJI[B[B[BII[JIJIIIII[BJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    .line 5680
    if-eqz v4, :cond_7

    .line 5681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStWithQQSig seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 5682
    goto/16 :goto_0

    .line 5685
    :cond_7
    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3, v6, v7}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    .line 5686
    if-nez v2, :cond_8

    .line 5687
    const/16 v2, -0x3ec

    goto/16 :goto_0

    .line 5691
    :cond_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 5694
    move-object/from16 v0, p2

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    if-eqz v2, :cond_a

    .line 5695
    move-object/from16 v0, p2

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [[B

    move-object/from16 v0, v26

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->stList:[[B

    .line 5696
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    move-object/from16 v0, p2

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    array-length v2, v2

    if-ge v3, v2, :cond_a

    .line 5697
    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, p2

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    aget-wide v8, v2, v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v7, v8, v9}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v5

    .line 5698
    if-eqz v5, :cond_9

    .line 5699
    move-object/from16 v0, v26

    iget-object v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->stList:[[B

    mul-int/lit8 v7, v3, 0x2

    iget-object v2, v5, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v6, v7

    .line 5700
    move-object/from16 v0, v26

    iget-object v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->stList:[[B

    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v7, v2, 0x1

    iget-object v2, v5, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v6, v7

    .line 5696
    :cond_9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 5705
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStWithQQSig seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 5706
    goto/16 :goto_0
.end method

.method private getStWithQrSig(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 38

    .prologue
    .line 1559
    if-eqz p1, :cond_0

    if-nez p7, :cond_1

    .line 1560
    :cond_0
    const/16 v10, -0x3f9

    .line 1713
    :goto_0
    return v10

    .line 1564
    :cond_1
    move/from16 v0, p6

    or-int/lit16 v11, v0, 0xc0

    .line 1567
    if-nez p8, :cond_2

    .line 1568
    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v15, "getStWithQrSig"

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v12, p4

    move-object/from16 v14, p7

    invoke-direct/range {v4 .. v15}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JIJLoicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 1569
    const/16 v10, -0x3e9

    goto :goto_0

    .line 1572
    :cond_2
    const/4 v10, 0x0

    .line 1578
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v36

    .line 1579
    move-object/from16 v0, v36

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p7

    iput-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    .line 1580
    move-object/from16 v0, v36

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    .line 1581
    const-string v4, ""

    sput-object v4, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    .line 1583
    move-object/from16 v0, v36

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v37

    .line 1585
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start getStWithQrSig:user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sigMap:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v4

    .line 1589
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->get_network_type(Landroid/content/Context;)I

    move-result v5

    sput v5, Loicq/wlogin_sdk/request/u;->D:I

    .line 1590
    sget v5, Loicq/wlogin_sdk/request/u;->D:I

    if-eq v4, v5, :cond_3

    .line 1591
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    sget v5, Loicq/wlogin_sdk/request/u;->D:I

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->save_network_type(Landroid/content/Context;I)V

    .line 1594
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_apn_string(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sput-object v4, Loicq/wlogin_sdk/request/u;->F:[B

    .line 1597
    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1598
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userAccount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isn\'t valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    const/16 v10, -0x3f9

    goto/16 :goto_0

    .line 1601
    :cond_4
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1604
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    iput-object v0, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    .line 1606
    move-object/from16 v0, p1

    move-object/from16 v1, v36

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 1607
    move-object/from16 v0, v36

    iput-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    .line 1608
    move-wide/from16 v0, p2

    move-object/from16 v2, v37

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    .line 1609
    move-wide/from16 v0, p2

    move-object/from16 v2, v37

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_appid:J

    .line 1610
    const/4 v4, 0x0

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    .line 1611
    move-wide/from16 v0, p4

    move-object/from16 v2, v37

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    .line 1612
    move-object/from16 v0, v37

    iput v11, v0, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    .line 1613
    move-object/from16 v0, p7

    iget v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_login_bitmap:I

    move-object/from16 v0, v37

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_login_bitmap:I

    .line 1614
    new-instance v4, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v4}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 1616
    move-object/from16 v0, p7

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v4, :cond_b

    move-object/from16 v0, p7

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v4, v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_b

    .line 1617
    move-object/from16 v0, p7

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v4

    move-object/from16 v0, v36

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    .line 1618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSF SSO SEQ:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v5, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    :goto_1
    sget-object v4, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    new-instance v13, Loicq/wlogin_sdk/report/report_t2;

    const-string v14, "login"

    new-instance v15, Ljava/lang/String;

    sget-object v5, Loicq/wlogin_sdk/request/u;->C:[B

    invoke-direct {v15, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/16 v22, 0x0

    move-wide/from16 v18, p2

    move-wide/from16 v20, p4

    invoke-direct/range {v13 .. v22}, Loicq/wlogin_sdk/report/report_t2;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ[J)V

    invoke-virtual {v4, v13}, Loicq/wlogin_sdk/report/report_t1;->add_t2(Loicq/wlogin_sdk/report/report_t2;)V

    .line 1630
    sget-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    if-eqz v4, :cond_5

    sget-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    array-length v4, v4

    if-lez v4, :cond_5

    .line 1631
    sget-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    .line 1632
    sget-object v4, Loicq/wlogin_sdk/code2d/c;->r:[B

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    .line 1633
    const/4 v4, 0x0

    sput-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    .line 1634
    const/4 v4, 0x0

    sput-object v4, Loicq/wlogin_sdk/code2d/c;->r:[B

    .line 1637
    :cond_5
    move-object/from16 v0, v37

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    if-eqz v4, :cond_6

    move-object/from16 v0, v37

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    array-length v4, v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_c

    .line 1638
    :cond_6
    const/16 v10, -0x3f8

    .line 1683
    :cond_7
    :goto_2
    const/16 v4, 0x80

    move-object/from16 v0, p7

    invoke-static {v0, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    .line 1684
    if-nez v4, :cond_8

    .line 1685
    new-instance v4, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v4}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    .line 1687
    :cond_8
    sget-object v5, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v36

    iget-object v8, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 1688
    invoke-static {v10}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v9

    .line 1687
    invoke-virtual/range {v5 .. v10}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    .line 1689
    if-nez v10, :cond_11

    .line 1690
    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_9

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v5, v5

    if-eqz v5, :cond_9

    .line 1691
    const/4 v13, 0x0

    iget-object v14, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v15, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v18, v0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v19}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    .line 1699
    :cond_9
    :goto_3
    move-object/from16 v0, v36

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    if-eqz v5, :cond_a

    move-object/from16 v0, v36

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    invoke-virtual {v5}, Loicq/wlogin_sdk/b/au;->a()I

    move-result v5

    if-eqz v5, :cond_a

    .line 1700
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v36

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    iput-object v6, v5, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    .line 1701
    const/4 v13, 0x0

    iget-object v14, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v15, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    .line 1706
    :cond_a
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    .line 1709
    invoke-virtual/range {v36 .. v36}, Loicq/wlogin_sdk/request/u;->h()V

    .line 1710
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end getStWithQrSig user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sigMap:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1711
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1710
    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1620
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    goto/16 :goto_1

    .line 1642
    :cond_c
    const/4 v4, 0x1

    move-object/from16 v0, v37

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    .line 1646
    move-object/from16 v0, p7

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    if-eqz v4, :cond_f

    move-object/from16 v0, p7

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    array-length v4, v4

    if-lez v4, :cond_f

    .line 1647
    move-object/from16 v0, p7

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object/from16 v34, v4

    .line 1652
    :goto_4
    move-object/from16 v0, v37

    iget v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    if-eqz v4, :cond_d

    .line 1653
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " login with qrsig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    new-instance v13, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    invoke-direct {v13, v0, v4}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;Landroid/content/Context;)V

    .line 1655
    invoke-virtual {v13}, Loicq/wlogin_sdk/request/l;->g()V

    .line 1656
    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    sget-object v21, Loicq/wlogin_sdk/request/u;->ad:[B

    move-object/from16 v0, v37

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v25, v0

    const/16 v26, 0x0

    sget v30, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move/from16 v27, v11

    move-wide/from16 v28, p4

    move-object/from16 v35, p7

    invoke-virtual/range {v13 .. v35}, Loicq/wlogin_sdk/request/l;->a(JJJI[B[B[BII[JIJIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    .line 1668
    :cond_d
    if-eqz v10, :cond_e

    const/16 v4, 0xa0

    if-ne v10, v4, :cond_7

    .line 1672
    :cond_e
    move-object/from16 v0, v36

    move-wide/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 1673
    if-nez v4, :cond_10

    .line 1674
    const/16 v10, -0x3ec

    .line 1675
    goto/16 :goto_2

    .line 1649
    :cond_f
    sget-object v34, Loicq/wlogin_sdk/request/u;->aa:[B

    goto/16 :goto_4

    .line 1679
    :cond_10
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    goto/16 :goto_2

    .line 1694
    :cond_11
    const/4 v5, 0x2

    if-eq v10, v5, :cond_9

    const/16 v5, 0xa0

    if-eq v10, v5, :cond_9

    .line 1695
    const/4 v13, 0x0

    iget-object v14, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v15, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_3
.end method

.method private isPskeyExpired(I[Ljava/lang/String;Loicq/wlogin_sdk/request/Ticket;JI)I
    .locals 14

    .prologue
    .line 1198
    const/high16 v2, 0x100000

    if-ne p1, v2, :cond_d

    if-eqz p2, :cond_d

    move-object/from16 v0, p2

    array-length v2, v0

    if-lez v2, :cond_d

    .line 1199
    const/4 v3, 0x0

    .line 1200
    move-object/from16 v0, p2

    array-length v11, v0

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, v11, :cond_9

    aget-object v9, p2, v10

    .line 1201
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1200
    :cond_0
    :goto_1
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    .line 1204
    :cond_1
    const/16 v2, 0x28

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1205
    const/16 v2, 0x29

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1206
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1207
    if-nez v5, :cond_f

    if-lez v6, :cond_f

    .line 1208
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v9, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1209
    const/high16 v4, 0x100000

    and-int/2addr v4, v2

    if-lez v4, :cond_5

    const/4 v4, 0x1

    .line 1210
    :goto_2
    const/high16 v5, 0x8000000

    and-int/2addr v2, v5

    if-lez v2, :cond_6

    const/4 v2, 0x1

    .line 1211
    :goto_3
    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move v6, v2

    move v7, v4

    move-object v8, v5

    .line 1215
    :goto_4
    if-eqz v7, :cond_7

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_pskey_map:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_pskey_expire:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/Ticket;->isPskeyExpired(J)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    const/4 v2, 0x1

    move v5, v2

    .line 1216
    :goto_5
    if-eqz v6, :cond_8

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_pt4token_map:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_pt4token_expire:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Loicq/wlogin_sdk/request/Ticket;->isPskeyExpired(J)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    const/4 v2, 0x1

    move v4, v2

    .line 1217
    :goto_6
    if-nez v5, :cond_4

    if-eqz v4, :cond_e

    .line 1218
    :cond_4
    add-int/lit8 v2, v3, 0x1

    aput-object v9, p2, v3

    .line 1219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPskeyExpired refresh "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " need refresh pskey:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and pt4token:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPskeyExpired domain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " get pskey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " get pt4token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    goto/16 :goto_1

    .line 1209
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1210
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1215
    :cond_7
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_5

    .line 1216
    :cond_8
    const/4 v2, 0x0

    move v4, v2

    goto :goto_6

    .line 1223
    :cond_9
    if-nez v3, :cond_a

    .line 1224
    const/4 v2, 0x3

    .line 1236
    :goto_8
    return v2

    .line 1225
    :cond_a
    :goto_9
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v3, v2, :cond_b

    .line 1226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPskeyExpired domain "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, p2, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " cleared"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const/4 v2, 0x0

    aput-object v2, p2, v3

    .line 1225
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1229
    :cond_b
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_c

    .line 1230
    const/4 v2, 0x1

    goto :goto_8

    .line 1232
    :cond_c
    invoke-virtual {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshMemorySig()V

    .line 1233
    const/4 v2, 0x2

    goto :goto_8

    .line 1236
    :cond_d
    const/4 v2, 0x0

    goto :goto_8

    :cond_e
    move v2, v3

    goto :goto_7

    :cond_f
    move v6, v2

    move v7, v4

    move-object v8, v9

    goto/16 :goto_4
.end method

.method private localInit(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 187
    iput-boolean p2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    .line 189
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->a(Landroid/content/Context;)V

    .line 195
    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestInit()I

    .line 196
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    .line 192
    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printThrowable(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private newHelperHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 200
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 206
    :goto_0
    return-object v0

    .line 203
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private printTicket(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V
    .locals 2

    .prologue
    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pskey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "superkey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_superKey:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "d2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "d2key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2Key:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method public static setExtraLoginTlvValue(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V
    .locals 3

    .prologue
    .line 5594
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 5595
    new-instance v1, Loicq/wlogin_sdk/b/b;

    invoke-direct {v1, p1}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    .line 5596
    array-length v2, p2

    invoke-virtual {v1, p2, v2}, Loicq/wlogin_sdk/b/b;->b([BI)V

    .line 5597
    iget-object v2, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->extraLoginTLVMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5598
    return-void
.end method

.method public static setLoadEncryptSo(Z)V
    .locals 0

    .prologue
    .line 4861
    sput-boolean p0, Loicq/wlogin_sdk/tools/util;->loadEncryptSo:Z

    .line 4862
    return-void
.end method

.method public static setLoadSoFlg(Z)V
    .locals 0

    .prologue
    .line 248
    sput-boolean p0, Loicq/wlogin_sdk/request/u;->aq:Z

    .line 249
    return-void
.end method

.method private tlvCommRsp2ErrMsg(Loicq/wlogin_sdk/devicelock/TLV_CommRsp;Loicq/wlogin_sdk/tools/ErrMsg;)V
    .locals 2

    .prologue
    .line 4217
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->get_data_len()I

    move-result v0

    if-nez v0, :cond_1

    .line 4225
    :cond_0
    :goto_0
    return-void

    .line 4221
    :cond_1
    iget v0, p1, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrInfoType:I

    invoke-virtual {p2, v0}, Loicq/wlogin_sdk/tools/ErrMsg;->setType(I)V

    .line 4222
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrInfo:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0}, Loicq/wlogin_sdk/tools/ErrMsg;->setOtherinfo(Ljava/lang/String;)V

    .line 4223
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrTitle:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0}, Loicq/wlogin_sdk/tools/ErrMsg;->setTitle(Ljava/lang/String;)V

    .line 4224
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrMsg:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0}, Loicq/wlogin_sdk/tools/ErrMsg;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public AskDevLockSms(Ljava/lang/String;JJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 10

    .prologue
    .line 4665
    if-nez p1, :cond_0

    .line 4666
    const/16 v0, -0x3f9

    .line 4686
    :goto_0
    return v0

    .line 4669
    :cond_0
    new-instance v0, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v0}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 4670
    invoke-virtual {p0, p1, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4671
    const/16 v0, -0x3eb

    goto :goto_0

    .line 4673
    :cond_1
    iget-wide v2, v0, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    .line 4675
    const-string v0, "AskDevLockSms ..."

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4677
    new-instance v1, Loicq/wlogin_sdk/devicelock/d;

    invoke-direct {v1}, Loicq/wlogin_sdk/devicelock/d;-><init>()V

    .line 4678
    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 4680
    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_devlock_req()V

    .line 4681
    invoke-virtual {v1}, Loicq/wlogin_sdk/devicelock/d;->get_msgType()I

    move-result v0

    invoke-virtual {v8, v0}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    move-wide v4, p2

    move-wide v6, p4

    .line 4682
    invoke-virtual/range {v1 .. v7}, Loicq/wlogin_sdk/devicelock/d;->a(JJJ)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4683
    iget-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-eqz v0, :cond_2

    iget-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    array-length v0, v0

    if-nez v0, :cond_3

    .line 4684
    :cond_2
    const/16 v0, -0x3f9

    goto :goto_0

    .line 4686
    :cond_3
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, v1, Loicq/wlogin_sdk/devicelock/d;->Role:I

    int-to-long v6, v0

    move-object v0, p0

    move v1, v3

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public CancelRequest()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x1

    iput v1, v0, Loicq/wlogin_sdk/request/u;->s:I

    .line 216
    return-void
.end method

.method public CheckDevLockSms(Ljava/lang/String;JJLjava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    .prologue
    .line 4700
    if-nez p1, :cond_0

    .line 4701
    const/16 v4, -0x3f9

    .line 4735
    :goto_0
    return v4

    .line 4704
    :cond_0
    new-instance v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 4705
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4706
    const/16 v4, -0x3eb

    goto :goto_0

    .line 4708
    :cond_1
    iget-wide v6, v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    .line 4710
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v8

    .line 4711
    if-nez v8, :cond_2

    .line 4712
    const/16 v4, -0x3ec

    goto :goto_0

    .line 4714
    :cond_2
    if-eqz p7, :cond_3

    move-object/from16 v0, p7

    array-length v4, v0

    if-lez v4, :cond_3

    .line 4715
    sget-object v4, Loicq/wlogin_sdk/devicelock/DevlockBase;->rst:Loicq/wlogin_sdk/devicelock/DevlockRst;

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Loicq/wlogin_sdk/devicelock/DevlockRst;->setSppKey([B)V

    .line 4717
    :cond_3
    const-string v4, "CheckDevLockSms ..."

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4719
    new-instance v5, Loicq/wlogin_sdk/devicelock/f;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/f;-><init>()V

    .line 4720
    new-instance v19, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v19 .. v19}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 4722
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 4723
    if-nez v4, :cond_4

    .line 4724
    const-string v4, ""

    .line 4726
    :cond_4
    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/request/TransReqContext;->set_devlock_req()V

    .line 4727
    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/f;->get_msgType()I

    move-result v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 4728
    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/request/TransReqContext;->setSTEncryptMethod()V

    .line 4729
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Loicq/wlogin_sdk/request/TransReqContext;->setWtST(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 4730
    iget-object v12, v8, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    sget-object v13, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v14, Loicq/wlogin_sdk/request/u;->E:[B

    const-string v8, "6.0.0.1971"

    .line 4731
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const-string v8, "android"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    if-nez p6, :cond_6

    const/16 v18, 0x0

    :goto_1
    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 4730
    invoke-virtual/range {v5 .. v18}, Loicq/wlogin_sdk/devicelock/f;->a(JJJ[B[B[B[B[B[B[B)[B

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4732
    move-object/from16 v0, v19

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-eqz v4, :cond_5

    move-object/from16 v0, v19

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    array-length v4, v4

    if-nez v4, :cond_7

    .line 4733
    :cond_5
    const/16 v4, -0x3f9

    goto/16 :goto_0

    .line 4731
    :cond_6
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    goto :goto_1

    .line 4735
    :cond_7
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, v5, Loicq/wlogin_sdk/devicelock/f;->Role:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v12, v19

    move-object/from16 v13, p8

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public CheckDevLockStatus(Ljava/lang/String;JJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    .prologue
    .line 4580
    if-nez p1, :cond_0

    .line 4581
    const/16 v4, -0x3f9

    .line 4609
    :goto_0
    return v4

    .line 4584
    :cond_0
    new-instance v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 4585
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4586
    const/16 v4, -0x3eb

    goto :goto_0

    .line 4588
    :cond_1
    iget-wide v6, v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    .line 4590
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 4591
    if-nez v4, :cond_2

    .line 4592
    const/16 v4, -0x3ec

    goto :goto_0

    .line 4594
    :cond_2
    const-string v5, "CheckDevLockStatus ..."

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4596
    new-instance v5, Loicq/wlogin_sdk/devicelock/DevlockRst;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/DevlockRst;-><init>()V

    sput-object v5, Loicq/wlogin_sdk/devicelock/DevlockBase;->rst:Loicq/wlogin_sdk/devicelock/DevlockRst;

    .line 4597
    new-instance v5, Loicq/wlogin_sdk/devicelock/a;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/a;-><init>()V

    .line 4598
    new-instance v18, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 4600
    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;->set_devlock_req()V

    .line 4601
    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/a;->get_msgType()I

    move-result v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 4602
    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;->setSTEncryptMethod()V

    .line 4603
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/TransReqContext;->setWtST(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 4604
    iget-object v12, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    sget-object v13, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v14, Loicq/wlogin_sdk/request/u;->E:[B

    const-string v4, "6.0.0.1971"

    .line 4605
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    sget-object v16, Loicq/wlogin_sdk/request/u;->K:[B

    sget-object v17, Loicq/wlogin_sdk/request/u;->J:[B

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 4604
    invoke-virtual/range {v5 .. v17}, Loicq/wlogin_sdk/devicelock/a;->a(JJJ[B[B[B[B[B[B)[B

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4606
    move-object/from16 v0, v18

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-eqz v4, :cond_3

    move-object/from16 v0, v18

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    array-length v4, v4

    if-nez v4, :cond_4

    .line 4607
    :cond_3
    const/16 v4, -0x3f9

    goto :goto_0

    .line 4609
    :cond_4
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, v5, Loicq/wlogin_sdk/devicelock/a;->Role:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v12, v18

    move-object/from16 v13, p6

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2387
    sput-boolean v5, Loicq/wlogin_sdk/request/o;->I:Z

    .line 2388
    const/4 v4, 0x0

    check-cast v4, [[B

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[B)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2401
    sput-boolean v5, Loicq/wlogin_sdk/request/o;->I:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2402
    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 6

    .prologue
    .line 2727
    const/4 v4, 0x0

    check-cast v4, [[B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[B)I
    .locals 6

    .prologue
    .line 2740
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public CheckSMSVerifyLoginAccount(JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 9

    .prologue
    .line 3092
    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckSMSVerifyLoginAccount(JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method public CheckWebsigAndGetSt(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 6

    .prologue
    .line 2360
    const/4 v0, 0x1

    sput-boolean v0, Loicq/wlogin_sdk/request/o;->I:Z

    .line 2361
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x0

    check-cast v4, [[B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public CheckWebsigAndGetSt(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[B)I
    .locals 6

    .prologue
    .line 2374
    const/4 v0, 0x1

    sput-boolean v0, Loicq/wlogin_sdk/request/o;->I:Z

    .line 2375
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public ClearPSkey(Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 3282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ClearPSkey ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3301
    :cond_0
    :goto_0
    return-void

    .line 3287
    :cond_1
    const/4 v0, 0x1

    .line 3288
    monitor-enter p0

    .line 3290
    :try_start_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3291
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 3292
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 3293
    const/4 v0, 0x0

    .line 3298
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 3299
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, v2, v3, p2, p3}, Loicq/wlogin_sdk/request/u;->c(JJ)V

    .line 3300
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3295
    :cond_4
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_1
.end method

.method public ClearUserLoginData(Ljava/lang/String;J)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " appid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ClearUserLoginData ..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3245
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3246
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3273
    :goto_0
    return-object v0

    .line 3251
    :cond_1
    monitor-enter p0

    .line 3253
    :try_start_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3255
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 3256
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    move v0, v1

    .line 3265
    :goto_1
    if-ne v0, v2, :cond_2

    .line 3266
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, v4, v5, p2, p3}, Loicq/wlogin_sdk/request/u;->d(JJ)V

    .line 3268
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3270
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_QRPUSHSig:[B

    .line 3271
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_LHSig:[B

    .line 3273
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 3259
    :cond_3
    :try_start_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->d(Ljava/lang/String;)V

    move v0, v2

    goto :goto_1

    .line 3262
    :cond_4
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move v0, v2

    goto :goto_1

    .line 3268
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public CloseCode(Ljava/lang/String;J[BILjava/util/List;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[BI",
            "Ljava/util/List",
            "<[B>;",
            "Loicq/wlogin_sdk/request/WUserSigInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 4495
    new-instance v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 4496
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4497
    const/16 v4, -0x3eb

    .line 4518
    :goto_0
    return v4

    .line 4499
    :cond_0
    iget-wide v6, v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    .line 4500
    const-wide/16 v10, 0x1

    .line 4502
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v4}, Loicq/wlogin_sdk/request/u;->j()V

    .line 4503
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    .line 4504
    if-nez v4, :cond_1

    .line 4505
    const/16 v4, -0x3ec

    goto :goto_0

    .line 4507
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "user:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " CloseCode ..."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4509
    new-instance v5, Loicq/wlogin_sdk/code2d/a;

    invoke-direct {v5}, Loicq/wlogin_sdk/code2d/a;-><init>()V

    .line 4510
    new-instance v23, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v23 .. v23}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 4512
    invoke-virtual/range {v23 .. v23}, Loicq/wlogin_sdk/request/TransReqContext;->set_code2d_func_req()V

    .line 4513
    invoke-virtual {v5}, Loicq/wlogin_sdk/code2d/a;->get_cmd()I

    move-result v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 4514
    invoke-virtual/range {v23 .. v23}, Loicq/wlogin_sdk/request/TransReqContext;->setSTEncryptMethod()V

    .line 4515
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/TransReqContext;->setWtST(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 4516
    iget-object v13, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    sget-object v14, Loicq/wlogin_sdk/request/u;->A:[B

    iget-object v0, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    move-object/from16 v17, v0

    iget-object v0, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    int-to-long v0, v4

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    move-wide/from16 v8, p2

    move-object/from16 v12, p4

    move/from16 v15, p5

    move-object/from16 v16, p6

    invoke-virtual/range {v5 .. v22}, Loicq/wlogin_sdk/code2d/a;->a(JJJ[B[B[BILjava/util/List;[B[BJJ)[B

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4518
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, v5, Loicq/wlogin_sdk/code2d/a;->_role:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v12, v23

    move-object/from16 v13, p7

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public CloseDevLock(Ljava/lang/String;JJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    .prologue
    .line 4621
    if-nez p1, :cond_0

    .line 4622
    const/16 v4, -0x3f9

    .line 4653
    :goto_0
    return v4

    .line 4625
    :cond_0
    new-instance v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 4626
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4627
    const/16 v4, -0x3eb

    goto :goto_0

    .line 4629
    :cond_1
    iget-wide v6, v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    .line 4631
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v8

    .line 4632
    if-nez v8, :cond_2

    .line 4633
    const/16 v4, -0x3ec

    goto :goto_0

    .line 4635
    :cond_2
    const-string v4, "CloseDevLock ..."

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4637
    new-instance v5, Loicq/wlogin_sdk/devicelock/b;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/b;-><init>()V

    .line 4638
    new-instance v18, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 4640
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 4641
    if-nez v4, :cond_3

    .line 4642
    const-string v4, ""

    .line 4644
    :cond_3
    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;->set_devlock_req()V

    .line 4645
    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/b;->get_msgType()I

    move-result v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 4646
    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;->setSTEncryptMethod()V

    .line 4647
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Loicq/wlogin_sdk/request/TransReqContext;->setWtST(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 4648
    iget-object v12, v8, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    sget-object v13, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v14, Loicq/wlogin_sdk/request/u;->E:[B

    const-string v8, "6.0.0.1971"

    .line 4649
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const-string v8, "android"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 4648
    invoke-virtual/range {v5 .. v17}, Loicq/wlogin_sdk/devicelock/b;->a(JJJ[B[B[B[B[B[B)[B

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4650
    move-object/from16 v0, v18

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-eqz v4, :cond_4

    move-object/from16 v0, v18

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    array-length v4, v4

    if-nez v4, :cond_5

    .line 4651
    :cond_4
    const/16 v4, -0x3f9

    goto/16 :goto_0

    .line 4653
    :cond_5
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, v5, Loicq/wlogin_sdk/devicelock/b;->Role:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v12, v18

    move-object/from16 v13, p6

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public FetchCodeSig(JJLoicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 19

    .prologue
    .line 4530
    const-string v2, " FetchCodeSig ..."

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4532
    new-instance v3, Loicq/wlogin_sdk/code2d/fetch_code;

    invoke-direct {v3}, Loicq/wlogin_sdk/code2d/fetch_code;-><init>()V

    .line 4533
    new-instance v17, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v17 .. v17}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 4535
    invoke-virtual/range {v17 .. v17}, Loicq/wlogin_sdk/request/TransReqContext;->set_code2d_func_req()V

    .line 4536
    invoke-virtual {v3}, Loicq/wlogin_sdk/code2d/fetch_code;->get_cmd()I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 4537
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    new-array v10, v2, [B

    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    int-to-long v12, v2

    const-wide/16 v14, 0x0

    sget-object v16, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_QRPUSHSig:[B

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v11, p5

    invoke-virtual/range {v3 .. v16}, Loicq/wlogin_sdk/code2d/fetch_code;->get_request(JJJ[BLoicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;JJ[B)[B

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4539
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v2, v3, Loicq/wlogin_sdk/code2d/fetch_code;->_role:I

    int-to-long v8, v2

    move-object/from16 v2, p0

    move v3, v6

    move-wide/from16 v6, p1

    move-object/from16 v10, v17

    move-object/from16 v11, p6

    invoke-virtual/range {v2 .. v11}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    return v2
.end method

.method public GetA1WithA1(Ljava/lang/String;JJ[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;)I
    .locals 21

    .prologue
    .line 1392
    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    const/16 v20, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    invoke-direct/range {v2 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper;->GetA1WithA1(Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;I)I

    move-result v2

    return v2
.end method

.method public GetA2A2KeyBuf(Ljava/lang/String;J)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 1332
    .line 1335
    const/16 v1, 0x40

    invoke-virtual {p0, p1, p2, p3, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v1

    .line 1337
    if-eqz v1, :cond_0

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v2, :cond_0

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    if-eqz v2, :cond_0

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v2, v2

    if-gtz v2, :cond_1

    .line 1370
    :cond_0
    :goto_0
    return-object v0

    .line 1342
    :cond_1
    sget-object v2, Loicq/wlogin_sdk/request/u;->B:[B

    if-eqz v2, :cond_0

    sget-object v2, Loicq/wlogin_sdk/request/u;->B:[B

    array-length v2, v2

    if-lez v2, :cond_0

    .line 1347
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v2, v2

    add-int/2addr v0, v2

    .line 1349
    new-array v0, v0, [B

    .line 1351
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v5, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 1352
    const/4 v2, 0x2

    .line 1353
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1354
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    .line 1353
    invoke-static {v3, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1355
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    .line 1357
    invoke-static {v0, v2, p2, p3}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    .line 1358
    add-int/lit8 v2, v2, 0x8

    .line 1360
    iget-object v3, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v3, v3

    invoke-static {v0, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 1361
    add-int/lit8 v2, v2, 0x2

    .line 1362
    iget-object v3, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v4, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v4, v4

    invoke-static {v3, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1363
    iget-object v3, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v3, v3

    add-int/2addr v2, v3

    .line 1365
    iget-object v3, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v3, v3

    invoke-static {v0, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 1366
    add-int/lit8 v2, v2, 0x2

    .line 1367
    iget-object v3, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    iget-object v4, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v4, v4

    invoke-static {v3, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1368
    iget-object v1, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v1, v1

    add-int/2addr v1, v2

    .line 1370
    array-length v1, v0

    sget-object v2, Loicq/wlogin_sdk/request/u;->B:[B

    invoke-static {v0, v5, v1, v2}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public GetAllLoginInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Loicq/wlogin_sdk/sharemem/WloginLoginInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/u;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public GetAppidFromUrl(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 4414
    if-nez p1, :cond_0

    move-wide v0, v2

    .line 4432
    :goto_0
    return-wide v0

    .line 4416
    :cond_0
    const-string v0, "f="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4417
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_2

    :cond_1
    move-wide v0, v2

    .line 4418
    goto :goto_0

    .line 4419
    :cond_2
    add-int/lit8 v1, v0, 0x2

    .line 4421
    const-string v0, ""

    .line 4422
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 4423
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x26

    if-ne v4, v5, :cond_4

    .line 4430
    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 4425
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4426
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4431
    :catch_0
    move-exception v0

    move-wide v0, v2

    .line 4432
    goto :goto_0
.end method

.method public GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;
    .locals 13

    .prologue
    const/4 v0, 0x1

    const/4 v11, 0x0

    .line 3313
    .line 3316
    if-nez p1, :cond_0

    .line 3317
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3354
    :goto_0
    return-object v0

    .line 3321
    :cond_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3323
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 3324
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    move v12, v11

    .line 3331
    :goto_1
    if-ne v12, v0, :cond_3

    .line 3332
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1, v2, v3}, Loicq/wlogin_sdk/request/u;->d(J)Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    move-result-object v10

    .line 3333
    if-nez v10, :cond_2

    move v1, v11

    .line 3349
    :goto_2
    if-ne v1, v0, :cond_4

    .line 3354
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 3327
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move v12, v0

    goto :goto_1

    .line 3340
    :cond_2
    if-eqz p2, :cond_3

    .line 3341
    new-instance v1, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    iget-wide v2, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iget-object v4, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_face:[B

    iget-object v5, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_age:[B

    iget-object v6, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_gender:[B

    iget-object v7, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_nick:[B

    iget-object v8, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_img_type:[B

    iget-object v9, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_img_format:[B

    iget-object v10, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_img_url:[B

    invoke-direct/range {v1 .. v10}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>(J[B[B[B[B[B[B[B)V

    invoke-virtual {p2, v1}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)V

    :cond_3
    move v1, v12

    goto :goto_2

    :cond_4
    move v0, v11

    .line 3352
    goto :goto_3

    :cond_5
    move v12, v0

    goto :goto_1
.end method

.method public GetDevLockInfo(Ljava/lang/String;)Loicq/wlogin_sdk/devicelock/DevlockInfo;
    .locals 2

    .prologue
    .line 2258
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetDevLockInfo(Ljava/lang/String;J)Loicq/wlogin_sdk/devicelock/DevlockInfo;

    move-result-object v0

    return-object v0
.end method

.method public GetDevLockInfo(Ljava/lang/String;J)Loicq/wlogin_sdk/devicelock/DevlockInfo;
    .locals 2

    .prologue
    .line 2269
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 2270
    iget-wide p2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    .line 2272
    :cond_0
    invoke-static {p2, p3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    .line 2273
    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    return-object v0
.end method

.method public GetGuid()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3363
    const/4 v0, 0x0

    .line 3364
    sget-object v1, Loicq/wlogin_sdk/request/u;->A:[B

    if-eqz v1, :cond_0

    sget-object v1, Loicq/wlogin_sdk/request/u;->A:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 3365
    sget-object v0, Loicq/wlogin_sdk/request/u;->A:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 3366
    sget-object v1, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v2, Loicq/wlogin_sdk/request/u;->A:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3369
    :cond_0
    return-object v0
.end method

.method public GetLastLoginInfo()Loicq/wlogin_sdk/request/WloginLastLoginInfo;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 455
    .line 456
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/u;->k()Ljava/util/List;

    move-result-object v0

    .line 457
    if-nez v0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-object v2

    .line 459
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    .line 460
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;

    .line 462
    if-nez v1, :cond_2

    move-object v1, v0

    .line 464
    goto :goto_1

    .line 466
    :cond_2
    iget-wide v4, v0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mCreateTime:J

    iget-wide v6, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mCreateTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    :goto_2
    move-object v1, v0

    .line 468
    goto :goto_1

    .line 470
    :cond_3
    if-eqz v1, :cond_0

    .line 472
    iget-object v0, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mAccount:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mAccount:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 473
    new-instance v2, Loicq/wlogin_sdk/request/WloginLastLoginInfo;

    iget-object v0, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mAccount:Ljava/lang/String;

    iget-wide v4, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mUin:J

    invoke-direct {v2, v0, v4, v5}, Loicq/wlogin_sdk/request/WloginLastLoginInfo;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    .line 475
    :cond_4
    new-instance v2, Loicq/wlogin_sdk/request/WloginLastLoginInfo;

    iget-wide v4, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mUin:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v4, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mUin:J

    invoke-direct {v2, v0, v4, v5}, Loicq/wlogin_sdk/request/WloginLastLoginInfo;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public GetLocalSig(Ljava/lang/String;J)Loicq/wlogin_sdk/request/WUserSigInfo;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1018
    .line 1022
    if-nez p1, :cond_1

    .line 1023
    const-string/jumbo v0, "userAccount null"

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :cond_0
    :goto_0
    return-object v1

    .line 1028
    :cond_1
    :try_start_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1030
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 1031
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 1037
    :goto_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, v2, v3, p2, p3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    .line 1038
    if-eqz v2, :cond_3

    .line 1039
    new-instance v0, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v0}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    :try_start_1
    iput-object p1, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    .line 1041
    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v1, v0

    .line 1048
    goto :goto_0

    .line 1034
    :cond_2
    :try_start_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v2

    goto :goto_1

    .line 1044
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 1045
    :goto_3
    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2

    .line 1044
    :catch_1
    move-exception v1

    move-object v2, v1

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;
    .locals 2

    .prologue
    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetLocalTicket appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    if-nez p1, :cond_0

    .line 1062
    const-string/jumbo v0, "userAccount null"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const/4 v0, 0x0

    .line 1069
    :goto_0
    return-object v0

    .line 1066
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalSig(Ljava/lang/String;J)Loicq/wlogin_sdk/request/WUserSigInfo;

    move-result-object v0

    .line 1067
    invoke-static {v0, p4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    goto :goto_0
.end method

.method public GetOpenKeyWithoutPasswd(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    .prologue
    .line 625
    move-object/from16 v0, p0

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mOpenAppid:J

    const-wide/16 v8, -0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    check-cast v15, [[B

    const/16 v16, 0x0

    check-cast v16, [[B

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v10, p6

    move-wide/from16 v11, p4

    move-object/from16 v14, p7

    invoke-direct/range {v2 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v2

    return v2
.end method

.method public GetPictureData(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 2142
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetPictureData(Ljava/lang/String;J)[B

    move-result-object v0

    return-object v0
.end method

.method public GetPictureData(Ljava/lang/String;J)[B
    .locals 2

    .prologue
    .line 2153
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 2154
    iget-wide p2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    .line 2156
    :cond_0
    invoke-static {p2, p3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    .line 2157
    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_t105:Loicq/wlogin_sdk/b/h;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/h;->a()[B

    move-result-object v0

    .line 2159
    return-object v0
.end method

.method public GetPicturePrompt(Ljava/lang/String;)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2172
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetPicturePrompt(Ljava/lang/String;J)[B

    move-result-object v0

    return-object v0
.end method

.method public GetPicturePrompt(Ljava/lang/String;J)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2242
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 2243
    iget-wide p2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    .line 2245
    :cond_0
    invoke-static {p2, p3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    .line 2246
    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_t165:Loicq/wlogin_sdk/b/az;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/az;->c()[B

    move-result-object v0

    .line 2248
    return-object v0
.end method

.method public GetPicturePromptValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2181
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetPicturePromptValue(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetPicturePromptValue(Ljava/lang/String;J)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 2190
    invoke-virtual {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetPicturePrompt(Ljava/lang/String;J)[B

    move-result-object v4

    .line 2191
    const-string v0, ""

    .line 2192
    if-eqz v4, :cond_0

    array-length v2, v4

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 2194
    invoke-static {v4, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v5

    .line 2195
    const/4 v3, 0x4

    move v2, v1

    .line 2196
    :goto_0
    if-ge v2, v5, :cond_0

    .line 2197
    array-length v1, v4

    add-int/lit8 v6, v3, 0x1

    if-ge v1, v6, :cond_1

    .line 2228
    :cond_0
    :goto_1
    return-object v0

    .line 2201
    :cond_1
    invoke-static {v4, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v1

    .line 2202
    add-int/lit8 v3, v3, 0x1

    .line 2204
    array-length v6, v4

    add-int v7, v3, v1

    if-lt v6, v7, :cond_0

    .line 2207
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 2208
    add-int/2addr v1, v3

    .line 2210
    array-length v3, v4

    add-int/lit8 v7, v1, 0x2

    if-lt v3, v7, :cond_0

    .line 2213
    invoke-static {v4, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v3

    .line 2214
    add-int/lit8 v7, v1, 0x4

    .line 2216
    array-length v1, v4

    add-int v8, v7, v3

    if-lt v1, v8, :cond_0

    .line 2219
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4, v7, v3}, Ljava/lang/String;-><init>([BII)V

    .line 2220
    add-int/2addr v3, v7

    .line 2222
    const-string v7, "pic_reason"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, v1

    .line 2224
    goto :goto_1

    .line 2196
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public GetPskey(Ljava/lang/String;J[Ljava/lang/String;Loicq/wlogin_sdk/request/WtTicketPromise;)Loicq/wlogin_sdk/request/Ticket;
    .locals 8

    .prologue
    .line 1081
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1082
    const-string v0, "domains"

    invoke-virtual {v6, v0, p4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1083
    const-string v1, ""

    .line 1084
    const/4 v0, 0x0

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_0

    .line 1085
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p4, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1084
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1087
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetPskey appid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " domains "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const/high16 v4, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Loicq/wlogin_sdk/request/WtloginHelper;->GetTicket(Ljava/lang/String;JILoicq/wlogin_sdk/request/WtTicketPromise;Landroid/os/Bundle;)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    return-object v0
.end method

.method public GetSkey(Ljava/lang/String;JLoicq/wlogin_sdk/request/WtTicketPromise;)Loicq/wlogin_sdk/request/Ticket;
    .locals 8

    .prologue
    .line 1099
    const/16 v4, 0x1000

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Loicq/wlogin_sdk/request/WtloginHelper;->GetTicket(Ljava/lang/String;JILoicq/wlogin_sdk/request/WtTicketPromise;Landroid/os/Bundle;)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    return-object v0
.end method

.method public GetStViaSMSVerifyLogin(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14

    .prologue
    .line 3048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GetStViaSMSVerifyLogin ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    sget-boolean v0, Loicq/wlogin_sdk/a/j;->x:Z

    if-eqz v0, :cond_0

    sget-object v9, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    .line 3052
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    check-cast v11, [[B

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p6

    move-wide/from16 v5, p4

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0

    .line 3050
    :cond_0
    const-string v9, ""

    goto :goto_0
.end method

.method public GetStViaSMSVerifyLogin(Ljava/lang/String;JJ[JILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 16

    .prologue
    .line 3068
    const/4 v1, 0x0

    check-cast v1, [[B

    .line 3069
    if-eqz p6, :cond_1

    move-object/from16 v0, p6

    array-length v2, v0

    if-lez v2, :cond_1

    .line 3070
    move-object/from16 v0, p6

    array-length v1, v0

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    move-object v12, v1

    .line 3073
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GetStViaSMSVerifyLogin ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    sget-boolean v1, Loicq/wlogin_sdk/a/j;->x:Z

    if-eqz v1, :cond_0

    sget-object v10, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    .line 3077
    :goto_1
    const/4 v9, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p7

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v14}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v1

    return v1

    .line 3075
    :cond_0
    const-string v10, ""

    goto :goto_1

    :cond_1
    move-object v12, v1

    goto :goto_0
.end method

.method public GetStWithPasswdMd5(Ljava/lang/String;JJILjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14

    .prologue
    .line 1743
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    check-cast v11, [[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p6

    move-wide/from16 v5, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method public GetStWithPasswdMd5(Ljava/lang/String;JLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1753
    iget v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    check-cast v11, [[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method public GetStWithPasswdReserved(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[B)I
    .locals 14

    .prologue
    .line 1771
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method public GetStWithPasswdReserved(Ljava/lang/String;JJILjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14

    .prologue
    .line 1728
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    check-cast v11, [[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p6

    move-wide/from16 v5, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method public GetStWithPasswdReserved(Ljava/lang/String;JLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1748
    iget v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    check-cast v11, [[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method public GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[B)I
    .locals 18

    .prologue
    .line 745
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v0 .. v16}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v0

    return v0
.end method

.method public GetStWithoutPasswd(Ljava/lang/String;JJJILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 18

    .prologue
    .line 716
    const-wide/16 v6, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    check-cast v13, [[B

    const/4 v14, 0x0

    check-cast v14, [[B

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p8

    move-wide/from16 v9, p6

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v16}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v0

    return v0
.end method

.method public GetStWithoutPasswd(Ljava/lang/String;JJJI[B[B[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 18

    .prologue
    .line 694
    const/4 v0, 0x4

    new-array v14, v0, [[B

    .line 695
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-object v1, v14, v0

    .line 696
    const/4 v0, 0x0

    aget-object v0, v14, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 697
    const/4 v0, 0x1

    aput-object p9, v14, v0

    .line 698
    const/4 v0, 0x2

    aput-object p10, v14, v0

    .line 699
    const/4 v0, 0x3

    aput-object p11, v14, v0

    .line 701
    const-wide/16 v6, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    check-cast v13, [[B

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p8

    move-wide/from16 v9, p6

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v16}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v0

    return v0
.end method

.method public GetStWithoutPasswd(Ljava/lang/String;JJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 726
    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    iget v10, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    const-wide/16 v11, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    check-cast v15, [[B

    const/16 v16, 0x0

    check-cast v16, [[B

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v14, p6

    invoke-direct/range {v2 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v2

    return v2
.end method

.method public GetStWithoutPasswd([BJILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    .prologue
    .line 638
    const-string v2, ""

    .line 641
    const/4 v2, 0x0

    .line 645
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v3, v0

    if-gtz v3, :cond_1

    .line 647
    :cond_0
    const/16 v2, -0x3f9

    .line 676
    :goto_0
    return v2

    .line 649
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    sget-object v5, Loicq/wlogin_sdk/request/u;->B:[B

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v5}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v6

    .line 650
    if-eqz v6, :cond_2

    array-length v3, v6

    if-gtz v3, :cond_3

    :cond_2
    const/16 v2, -0x3f9

    goto :goto_0

    .line 652
    :cond_3
    const/4 v3, 0x2

    array-length v4, v6

    if-le v3, v4, :cond_4

    const/16 v2, -0x3f9

    goto :goto_0

    .line 653
    :cond_4
    invoke-static {v6, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    const/4 v4, 0x2

    .line 654
    if-lez v2, :cond_5

    add-int/lit8 v3, v2, 0x2

    array-length v5, v6

    if-le v3, v5, :cond_6

    :cond_5
    const/16 v2, -0x3f9

    goto :goto_0

    .line 655
    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6, v4, v2}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v2, v2, 0x2

    .line 657
    add-int/lit8 v4, v2, 0x8

    array-length v5, v6

    if-le v4, v5, :cond_7

    const/16 v2, -0x3f9

    goto :goto_0

    .line 658
    :cond_7
    invoke-static {v6, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int64([BI)J

    move-result-wide v4

    add-int/lit8 v2, v2, 0x8

    .line 660
    add-int/lit8 v7, v2, 0x2

    array-length v8, v6

    if-le v7, v8, :cond_8

    const/16 v2, -0x3f9

    goto :goto_0

    .line 661
    :cond_8
    invoke-static {v6, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v7

    add-int/lit8 v2, v2, 0x2

    .line 662
    if-lez v7, :cond_9

    add-int v8, v2, v7

    array-length v9, v6

    if-le v8, v9, :cond_a

    :cond_9
    const/16 v2, -0x3f9

    goto :goto_0

    .line 663
    :cond_a
    new-array v8, v7, [B

    const/4 v9, 0x0

    array-length v10, v8

    invoke-static {v6, v2, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v7

    .line 665
    add-int/lit8 v7, v2, 0x2

    array-length v9, v6

    if-le v7, v9, :cond_b

    const/16 v2, -0x3f9

    goto :goto_0

    .line 666
    :cond_b
    invoke-static {v6, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v7

    add-int/lit8 v2, v2, 0x2

    .line 667
    if-lez v7, :cond_c

    add-int v9, v2, v7

    array-length v10, v6

    if-le v9, v10, :cond_d

    :cond_c
    const/16 v2, -0x3f9

    goto :goto_0

    .line 668
    :cond_d
    new-array v9, v7, [B

    const/4 v10, 0x0

    array-length v11, v9

    invoke-static {v6, v2, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v7

    .line 670
    const/4 v2, 0x3

    new-array v0, v2, [[B

    move-object/from16 v16, v0

    .line 671
    const/4 v2, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [B

    aput-object v6, v16, v2

    .line 672
    const/4 v2, 0x0

    aget-object v2, v16, v2

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput-byte v7, v2, v6

    .line 673
    const/4 v2, 0x1

    aput-object v8, v16, v2

    .line 674
    const/4 v2, 0x2

    aput-object v9, v16, v2

    .line 676
    const-wide/16 v8, -0x1

    const-wide/16 v11, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    check-cast v15, [[B

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p2

    move/from16 v10, p4

    move-object/from16 v14, p5

    invoke-direct/range {v2 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v2

    goto/16 :goto_0
.end method

.method public GetTicket(Ljava/lang/String;JILoicq/wlogin_sdk/request/WtTicketPromise;Landroid/os/Bundle;)Loicq/wlogin_sdk/request/Ticket;
    .locals 16

    .prologue
    .line 1112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetTicket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sig "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p6, :cond_4

    const-string v2, "null"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const/4 v4, 0x0

    .line 1118
    const/4 v8, 0x2

    .line 1120
    :cond_0
    invoke-virtual/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalSig(Ljava/lang/String;J)Loicq/wlogin_sdk/request/WUserSigInfo;

    move-result-object v2

    .line 1121
    if-nez v2, :cond_6

    .line 1122
    const/4 v2, 0x1

    if-ne v8, v2, :cond_5

    .line 1156
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->IsNeedLoginWithPasswd(Ljava/lang/String;J)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1157
    new-instance v2, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    .line 1158
    const/16 v3, -0x3ec

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/tools/ErrMsg;->setType(I)V

    .line 1159
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Loicq/wlogin_sdk/request/WtTicketPromise;->Failed(Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 1193
    :cond_2
    :goto_2
    const/4 v5, 0x0

    :cond_3
    return-object v5

    .line 1112
    :cond_4
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 1123
    :cond_5
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshMemorySig()V

    .line 1124
    add-int/lit8 v8, v8, -0x1

    .line 1153
    :goto_3
    if-gtz v8, :cond_0

    goto :goto_1

    .line 1128
    :cond_6
    move/from16 v0, p4

    invoke-static {v2, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v5

    .line 1129
    if-eqz v5, :cond_7

    iget-object v2, v5, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v2, :cond_7

    iget-object v2, v5, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v2, v2

    if-nez v2, :cond_8

    .line 1130
    :cond_7
    const/4 v2, 0x1

    if-eq v8, v2, :cond_1

    .line 1131
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshMemorySig()V

    .line 1132
    add-int/lit8 v8, v8, -0x1

    .line 1133
    goto :goto_3

    .line 1136
    :cond_8
    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v6

    .line 1138
    if-eqz p6, :cond_9

    const/high16 v2, 0x100000

    move/from16 v0, p4

    if-ne v0, v2, :cond_9

    .line 1139
    const-string v2, "domains"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :cond_9
    move-object/from16 v2, p0

    move/from16 v3, p4

    .line 1140
    invoke-direct/range {v2 .. v8}, Loicq/wlogin_sdk/request/WtloginHelper;->isPskeyExpired(I[Ljava/lang/String;Loicq/wlogin_sdk/request/Ticket;JI)I

    move-result v2

    .line 1141
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 1142
    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 1143
    :cond_a
    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 1145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetTicket sigType:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expires in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v10, v5, Loicq/wlogin_sdk/request/Ticket;->_expire_time:J

    sub-long/2addr v10, v6

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    iget-wide v2, v5, Loicq/wlogin_sdk/request/Ticket;->_expire_time:J

    cmp-long v2, v6, v2

    if-ltz v2, :cond_3

    .line 1147
    const/4 v2, 0x1

    if-eq v8, v2, :cond_1

    .line 1148
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshMemorySig()V

    .line 1149
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_3

    .line 1161
    :cond_b
    const/4 v2, 0x1

    .line 1162
    new-instance v13, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v13}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    .line 1163
    if-eqz p6, :cond_e

    .line 1164
    const-string/jumbo v2, "subappid"

    const/4 v3, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v3, v2

    .line 1167
    :goto_4
    if-eqz v4, :cond_d

    .line 1168
    const/4 v2, 0x0

    const/16 v5, 0x14

    array-length v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_5
    if-ge v2, v5, :cond_d

    .line 1169
    aget-object v6, v4, v2

    .line 1170
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c

    .line 1171
    iget-object v7, v13, Loicq/wlogin_sdk/request/WUserSigInfo;->_domains:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1175
    :cond_d
    int-to-long v10, v3

    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper$1;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtTicketPromise;Ljava/lang/String;JILandroid/os/Bundle;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p2

    move/from16 v12, p4

    move-object v14, v2

    invoke-direct/range {v4 .. v14}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJILoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WtTicketPromise;)I

    goto/16 :goto_2

    :cond_e
    move v3, v2

    goto :goto_4
.end method

.method public GetTimeDifference()J
    .locals 2

    .prologue
    .line 326
    sget-wide v0, Loicq/wlogin_sdk/request/u;->ab:J

    return-wide v0
.end method

.method public IsNeedLoginWithPasswd(Ljava/lang/String;J)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 396
    .line 399
    if-nez p1, :cond_0

    .line 400
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 437
    :goto_0
    return-object v0

    .line 403
    :cond_0
    monitor-enter p0

    .line 406
    :try_start_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 408
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    move v0, v1

    move v3, v1

    .line 435
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " need password:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 414
    :cond_1
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 419
    :cond_2
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, v4, v5, p2, p3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_3

    iget-object v3, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    if-eqz v3, :cond_3

    iget-object v3, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    array-length v3, v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    if-eqz v3, :cond_3

    iget-object v3, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    array-length v3, v3

    if-eqz v3, :cond_3

    .line 422
    const/4 v0, 0x2

    move v3, v2

    .line 424
    goto :goto_1

    .line 428
    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    if-eqz v3, :cond_4

    iget-object v3, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    array-length v3, v3

    if-eqz v3, :cond_4

    .line 429
    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->iSExpireA2(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 430
    :cond_4
    const/4 v0, 0x3

    move v3, v1

    .line 431
    goto :goto_1

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v0, v2

    move v3, v2

    goto :goto_1
.end method

.method public IsUserHaveA1(Ljava/lang/String;J)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 489
    if-nez p1, :cond_0

    .line 490
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 520
    :goto_0
    return-object v0

    .line 495
    :cond_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 496
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 497
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 498
    const/4 v0, 0x0

    .line 512
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    if-eqz v1, :cond_2

    iget-object v0, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    array-length v0, v0

    if-gtz v0, :cond_5

    .line 513
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dwAppid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IsUserHaveA1 return: null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 502
    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 506
    :cond_4
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v2, v0, v1, p2, p3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v0

    .line 507
    if-nez v0, :cond_1

    goto :goto_1

    .line 518
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dwAppid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IsUserHaveA1 return: not null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public IsWtLoginUrl(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4391
    if-nez p1, :cond_1

    .line 4404
    :cond_0
    :goto_0
    return v0

    .line 4394
    :cond_1
    const-string v1, "?k="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 4395
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x3

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 4397
    add-int/lit8 v1, v1, 0x3

    .line 4399
    add-int/lit8 v2, v1, 0x20

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4400
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v1}, Loicq/wlogin_sdk/tools/util;->base64_decode_url([BI)[B

    move-result-object v1

    .line 4401
    if-eqz v1, :cond_0

    .line 4404
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public PickupQRCode(Ljava/lang/String;)[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4372
    if-nez p1, :cond_1

    .line 4381
    :cond_0
    :goto_0
    return-object v0

    .line 4376
    :cond_1
    const-string v1, ".*[?&]k=([^&$]+).*"

    .line 4377
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4380
    const-string v0, "$1"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4381
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->base64_decode_url([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public PrepareQloginResult(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WFastLoginInfo;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 4812
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4813
    const-string v0, "quicklogin_uin"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4815
    iget-object v0, p7, Loicq/wlogin_sdk/request/WFastLoginInfo;->_outA1:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 4816
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 4817
    new-instance v2, Loicq/wlogin_sdk/tools/RSACrypt;

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Loicq/wlogin_sdk/tools/RSACrypt;-><init>(Landroid/content/Context;)V

    .line 4818
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, p2, p3, p4, p5}, Loicq/wlogin_sdk/tools/util;->get_cp_pubkey(Landroid/content/Context;JJ)[B

    move-result-object v3

    .line 4819
    invoke-virtual {v2, v3, v0}, Loicq/wlogin_sdk/tools/RSACrypt;->EncryptData([B[B)[B

    move-result-object v0

    .line 4821
    const-string v2, "quicklogin_buff"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4823
    :cond_0
    const-string v0, "quicklogin_ret"

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4825
    return-object v1
.end method

.method public PrepareSilenceLoginIntent(JJLjava/lang/String;)Landroid/content/Intent;
    .locals 7

    .prologue
    .line 4785
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_rsa_pubkey(Landroid/content/Context;)[B

    move-result-object v0

    .line 4786
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 4787
    :cond_0
    const-string v0, "30818902818100daaa2a418b271f3dfcf8f0a9120326d47f07618593d8d71d61a4fe987cc47740e491105bf8e68bd479bf51dfe19d3b06e12017df6d87a0f43bb82b57f59bd4220f2a3d8d68904a6ddb51197989e6e82512d8d8fa6c41b755a8ca962595d3e1e1be7ea01677249be4794cd7c6682d611c1bd81f0a16231fb83517515b94d13e5d0203010001"

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B

    move-result-object v0

    .line 4789
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4791
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4792
    const-string v3, "dstSsoVer"

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4793
    const-string v3, "dstAppid"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4794
    const-string/jumbo v3, "subDstAppid"

    invoke-virtual {v2, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4795
    const-string v3, "dstAppVer"

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4796
    const-string v3, "publickey"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4797
    const-string v0, "key_params"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4798
    const-string v0, "key_action"

    const-string v2, "action_quick_login"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4800
    return-object v1
.end method

.method public QueryCodeResult(JLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 4549
    const-string v0, " QueryCodeResult ..."

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4551
    new-instance v1, Loicq/wlogin_sdk/code2d/d;

    invoke-direct {v1}, Loicq/wlogin_sdk/code2d/d;-><init>()V

    .line 4552
    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 4554
    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_code2d_func_req()V

    .line 4555
    invoke-virtual {v1}, Loicq/wlogin_sdk/code2d/d;->get_cmd()I

    move-result v0

    invoke-virtual {v8, v0}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 4556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qrsig "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Loicq/wlogin_sdk/code2d/c;->i:[B

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 4557
    const-wide/16 v2, 0x0

    sget-object v6, Loicq/wlogin_sdk/code2d/c;->i:[B

    new-array v7, v9, [B

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Loicq/wlogin_sdk/code2d/d;->a(JJ[B[B)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4559
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, v1, Loicq/wlogin_sdk/code2d/d;->_role:I

    int-to-long v6, v0

    move-object v0, p0

    move v1, v9

    move-wide v4, p1

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0
.end method

.method public RefreshMemorySig()V
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/u;->j()V

    .line 1008
    return-void
.end method

.method public RefreshPictureData(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 1

    .prologue
    .line 2284
    if-nez p2, :cond_0

    .line 2285
    new-instance p2, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {p2}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    .line 2287
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshPictureData(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method public RefreshSMSData(Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 6

    .prologue
    .line 2651
    if-nez p4, :cond_0

    .line 2652
    new-instance v4, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    .line 2654
    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshSMSData(Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0

    :cond_0
    move-object v4, p4

    goto :goto_0
.end method

.method public RefreshSMSVerifyLoginCode(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 1

    .prologue
    .line 3146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshSMSVerifyLoginCode(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method public RegGetAccount([B[B[B[BILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 18

    .prologue
    .line 4079
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v2, v0

    if-gtz v2, :cond_1

    .line 4080
    :cond_0
    const/16 v2, -0x3f9

    .line 4104
    :goto_0
    return v2

    .line 4083
    :cond_1
    const-string v2, "RegGetAccount ..."

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4085
    new-instance v2, Loicq/wlogin_sdk/a/d;

    invoke-direct {v2}, Loicq/wlogin_sdk/a/d;-><init>()V

    .line 4086
    new-instance v16, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v16 .. v16}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 4087
    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    move-object/from16 v17, v0

    .line 4088
    if-eqz p1, :cond_3

    .line 4089
    invoke-virtual/range {p1 .. p1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object/from16 v0, v17

    iput-object v3, v0, Loicq/wlogin_sdk/a/j;->j:[B

    .line 4095
    :goto_1
    const/4 v3, 0x4

    move/from16 v0, p5

    if-ne v0, v3, :cond_2

    .line 4096
    const-string v3, ""

    move-object/from16 v0, v17

    iput-object v3, v0, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    .line 4098
    :cond_2
    invoke-virtual/range {v16 .. v16}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 4099
    invoke-virtual {v2}, Loicq/wlogin_sdk/a/d;->a()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 4100
    move-object/from16 v0, v17

    iget-object v3, v0, Loicq/wlogin_sdk/a/j;->e:[B

    move-object/from16 v0, v17

    iget-object v4, v0, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    .line 4101
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    sget-object v14, Loicq/wlogin_sdk/request/u;->E:[B

    sget v15, Loicq/wlogin_sdk/request/u;->z:I

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p2

    .line 4100
    invoke-virtual/range {v2 .. v15}, Loicq/wlogin_sdk/a/d;->a([B[B[B[BI[B[BZ[BJ[BI)[B

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4104
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    iget v2, v0, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v8, v2

    move-object/from16 v2, p0

    move-object/from16 v10, v16

    move-object/from16 v11, p6

    invoke-virtual/range {v2 .. v11}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto :goto_0

    .line 4092
    :cond_3
    const/4 v3, 0x0

    new-array v3, v3, [B

    move-object/from16 v0, v17

    iput-object v3, v0, Loicq/wlogin_sdk/a/j;->j:[B

    goto :goto_1
.end method

.method public RegGetSMSVerifyLoginAccount([B[B[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 18

    .prologue
    .line 2908
    const-string v2, "RegGetSMSVerifyLoginAccount ..."

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    new-instance v2, Loicq/wlogin_sdk/a/d;

    invoke-direct {v2}, Loicq/wlogin_sdk/a/d;-><init>()V

    .line 2911
    new-instance v16, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v16 .. v16}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 2912
    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    move-object/from16 v17, v0

    .line 2913
    if-eqz p1, :cond_0

    .line 2914
    invoke-virtual/range {p1 .. p1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, v17

    iput-object v3, v0, Loicq/wlogin_sdk/a/j;->j:[B

    .line 2919
    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Loicq/wlogin_sdk/a/j;->x:Z

    .line 2920
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_mpasswd()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    .line 2922
    invoke-virtual/range {v16 .. v16}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 2923
    invoke-virtual {v2}, Loicq/wlogin_sdk/a/d;->a()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 2924
    move-object/from16 v0, v17

    iget-object v3, v0, Loicq/wlogin_sdk/a/j;->e:[B

    sget-object v4, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    .line 2925
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, v17

    iget-object v4, v0, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v10, 0x1

    .line 2926
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetGuid()[B

    move-result-object v11

    move-object/from16 v0, v17

    iget-wide v12, v0, Loicq/wlogin_sdk/a/j;->h:J

    sget-object v14, Loicq/wlogin_sdk/request/u;->E:[B

    sget v15, Loicq/wlogin_sdk/request/u;->z:I

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v9, p2

    .line 2924
    invoke-virtual/range {v2 .. v15}, Loicq/wlogin_sdk/a/d;->a([B[B[B[BI[B[BZ[BJ[BI)[B

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 2929
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    iget v2, v0, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v8, v2

    move-object/from16 v2, p0

    move-object/from16 v10, v16

    move-object/from16 v11, p4

    invoke-virtual/range {v2 .. v11}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    return v2

    .line 2916
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [B

    move-object/from16 v0, v17

    iput-object v3, v0, Loicq/wlogin_sdk/a/j;->j:[B

    goto :goto_0
.end method

.method public RegQueryAccount(I[BJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 4118
    if-nez p2, :cond_0

    .line 4119
    new-array p2, v1, [B

    .line 4122
    :cond_0
    const-string v0, "RegQueryAccount ..."

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4124
    new-instance v0, Loicq/wlogin_sdk/a/j;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/j;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    .line 4125
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v0, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    .line 4127
    new-instance v0, Loicq/wlogin_sdk/a/e;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/e;-><init>()V

    .line 4128
    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 4129
    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    .line 4131
    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 4132
    invoke-virtual {v0}, Loicq/wlogin_sdk/a/e;->a()I

    move-result v2

    invoke-virtual {v8, v2}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 4133
    invoke-virtual {v0, p1, p2, p3, p4}, Loicq/wlogin_sdk/a/e;->a(I[BJ)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4135
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget v0, v6, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v6, v0

    move-object v0, p0

    move-object/from16 v9, p5

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0
.end method

.method public RegQueryClientSentMsgStatus(Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 10

    .prologue
    .line 4007
    const-string v0, "RegQueryClientSentMsgStatus ..."

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4009
    new-instance v0, Loicq/wlogin_sdk/a/f;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/f;-><init>()V

    .line 4010
    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 4011
    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    .line 4013
    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 4014
    invoke-virtual {v0}, Loicq/wlogin_sdk/a/f;->a()I

    move-result v1

    invoke-virtual {v8, v1}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 4015
    iget-object v1, v6, Loicq/wlogin_sdk/a/j;->e:[B

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    iget-object v2, v2, Loicq/wlogin_sdk/a/j;->p:[B

    invoke-virtual {v0, v1, v2}, Loicq/wlogin_sdk/a/f;->b([B[B)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4017
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget v0, v6, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v6, v0

    move-object v0, p0

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0
.end method

.method public RegRequestServerResendMsg(Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 4027
    const-string v0, "RegRequestServerResendMsg ..."

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4029
    new-instance v0, Loicq/wlogin_sdk/a/g;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/g;-><init>()V

    .line 4030
    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 4031
    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    .line 4033
    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 4034
    invoke-virtual {v0}, Loicq/wlogin_sdk/a/g;->a()I

    move-result v1

    invoke-virtual {v8, v1}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 4035
    iget-object v1, v6, Loicq/wlogin_sdk/a/j;->e:[B

    invoke-virtual {v0, v1, v3}, Loicq/wlogin_sdk/a/g;->b([B[B)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4037
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    iget v0, v6, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v6, v0

    move-object v0, p0

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0
.end method

.method public RegSubmitMobile(Ljava/lang/String;[B[BIIIJJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 13

    .prologue
    .line 3949
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [B

    :goto_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Loicq/wlogin_sdk/request/WtloginHelper;->RegSubmitMobile([B[B[B[BIIIJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public RegSubmitMobile([B[B[BIIIJJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 13

    .prologue
    .line 3956
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Loicq/wlogin_sdk/request/WtloginHelper;->RegSubmitMobile([B[B[B[BIIIJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0
.end method

.method public RegSubmitMsgChk([BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 10

    .prologue
    .line 4048
    if-nez p1, :cond_0

    .line 4049
    const/16 v0, -0x3f9

    .line 4062
    :goto_0
    return v0

    .line 4052
    :cond_0
    const-string v0, "RegSubmitMsgChk ..."

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4054
    new-instance v0, Loicq/wlogin_sdk/a/i;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/i;-><init>()V

    .line 4055
    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 4056
    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    .line 4058
    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 4059
    invoke-virtual {v0}, Loicq/wlogin_sdk/a/i;->a()I

    move-result v1

    invoke-virtual {v8, v1}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 4060
    iget-object v1, v6, Loicq/wlogin_sdk/a/j;->e:[B

    invoke-virtual {v0, v1, p1}, Loicq/wlogin_sdk/a/i;->b([B[B)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4062
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget v0, v6, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v6, v0

    move-object v0, p0

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 16

    .prologue
    .line 3550
    if-nez p1, :cond_0

    .line 3551
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v14, "RequestTransport"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v2 .. v14}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;ILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/16 v3, 0x9

    .line 3553
    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 3554
    const/16 v2, -0x3e9

    .line 3613
    :goto_0
    return v2

    .line 3557
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v13

    .line 3559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " encrypt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " role:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v13, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RequestTransport..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3563
    move-object/from16 v0, p3

    iput-object v0, v13, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 3569
    if-eqz p2, :cond_5

    .line 3570
    if-nez p3, :cond_1

    .line 3571
    const/4 v2, 0x0

    iput v2, v13, Loicq/wlogin_sdk/request/u;->m:I

    .line 3572
    new-instance v2, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v2, v13}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p8

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p9

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    .line 3607
    :goto_1
    invoke-virtual {v13}, Loicq/wlogin_sdk/request/u;->i()V

    .line 3609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " encrypt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " role:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v13, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RequestTransport ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3578
    :cond_1
    new-instance v3, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v3}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 3579
    if-eqz p3, :cond_2

    .line 3580
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3581
    :cond_2
    const/16 v2, -0x3eb

    .line 3582
    goto :goto_1

    .line 3585
    :cond_3
    iget-wide v4, v3, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    move-wide/from16 v0, p4

    invoke-virtual {v13, v4, v5, v0, v1}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v5

    .line 3586
    if-nez v5, :cond_4

    .line 3587
    const/16 v2, -0x3ec

    .line 3588
    goto :goto_1

    .line 3591
    :cond_4
    iget-wide v6, v3, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iput-wide v6, v13, Loicq/wlogin_sdk/request/u;->f:J

    .line 3592
    new-instance v2, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v2, v13}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget-wide v3, v3, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iget-object v6, v5, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    iget-object v7, v5, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    move-object/from16 v5, p8

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p9

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto/16 :goto_1

    .line 3598
    :cond_5
    const-wide/16 v2, 0x0

    iput-wide v2, v13, Loicq/wlogin_sdk/request/u;->f:J

    .line 3599
    new-instance v2, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v2, v13}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget-wide v3, v13, Loicq/wlogin_sdk/request/u;->f:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p8

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p9

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto/16 :goto_1
.end method

.method public RequestTransportMsf(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;)I
    .locals 16

    .prologue
    .line 3630
    if-nez p1, :cond_0

    .line 3631
    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v13, "RequestTransportMsf"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;ILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Ljava/lang/String;)V

    const/16 v3, 0xa

    .line 3633
    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    .line 3634
    const/16 v2, -0x3e9

    .line 3705
    :goto_0
    return v2

    .line 3637
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v15

    .line 3639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " encrypt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " role:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v15, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RequestTransportMsf..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    move-object/from16 v0, p3

    iput-object v0, v15, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 3650
    if-eqz p2, :cond_4

    .line 3651
    new-instance v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v2}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 3652
    if-eqz p3, :cond_1

    .line 3653
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3654
    :cond_1
    const/16 v2, -0x3eb

    .line 3699
    :goto_1
    invoke-virtual {v15}, Loicq/wlogin_sdk/request/u;->i()V

    .line 3701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " encrypt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " role:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v15, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RequestTransportMsf ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3658
    :cond_2
    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    move-wide/from16 v0, p4

    invoke-virtual {v15, v4, v5, v0, v1}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v6

    .line 3659
    if-nez v6, :cond_3

    .line 3660
    const/16 v2, -0x3ec

    .line 3661
    goto :goto_1

    .line 3664
    :cond_3
    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iput-wide v4, v15, Loicq/wlogin_sdk/request/u;->f:J

    .line 3665
    new-instance v3, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v3, v15}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iget-object v7, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    iget-object v8, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    iget-object v9, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    new-instance v14, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v14}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    move-object/from16 v6, p8

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    invoke-virtual/range {v3 .. v14}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto/16 :goto_1

    .line 3670
    :cond_4
    invoke-static/range {p3 .. p3}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3671
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 3672
    const-wide/16 v2, 0x0

    iput-wide v2, v15, Loicq/wlogin_sdk/request/u;->f:J

    .line 3673
    new-instance v3, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v3, v15}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    new-array v9, v2, [B

    new-instance v14, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v14}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    move-object/from16 v6, p8

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    invoke-virtual/range {v3 .. v14}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto/16 :goto_1

    .line 3676
    :cond_5
    new-instance v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v2}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 3677
    if-eqz p3, :cond_6

    .line 3678
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3679
    :cond_6
    const/16 v2, -0x3eb

    .line 3680
    goto/16 :goto_1

    .line 3683
    :cond_7
    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    move-wide/from16 v0, p4

    invoke-virtual {v15, v4, v5, v0, v1}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v6

    .line 3684
    if-nez v6, :cond_8

    .line 3685
    const/16 v2, -0x3ec

    .line 3686
    goto/16 :goto_1

    .line 3689
    :cond_8
    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iput-wide v4, v15, Loicq/wlogin_sdk/request/u;->f:J

    .line 3690
    new-instance v3, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v3, v15}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    new-instance v14, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v14}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    move-object/from16 v6, p8

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    invoke-virtual/range {v3 .. v14}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto/16 :goto_1
.end method

.method public SetAppClientVersion(I)V
    .locals 0

    .prologue
    .line 258
    sput p1, Loicq/wlogin_sdk/request/u;->w:I

    .line 259
    return-void
.end method

.method public SetCanWebVerify(Z)V
    .locals 0

    .prologue
    .line 356
    sput-boolean p1, Loicq/wlogin_sdk/request/l;->I:Z

    .line 357
    return-void
.end method

.method public SetDevlockMobileType(I)V
    .locals 0

    .prologue
    .line 2639
    sput p1, Loicq/wlogin_sdk/request/s;->I:I

    .line 2640
    return-void
.end method

.method public SetImgType(I)V
    .locals 1

    .prologue
    .line 294
    sput p1, Loicq/wlogin_sdk/request/u;->x:I

    .line 295
    iget v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    .line 296
    return-void
.end method

.method public SetListener(Loicq/wlogin_sdk/request/WtloginListener;)Loicq/wlogin_sdk/request/WtloginListener;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    .line 225
    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    .line 226
    return-object v0
.end method

.method public SetLocalId(I)V
    .locals 0

    .prologue
    .line 317
    sput p1, Loicq/wlogin_sdk/request/u;->u:I

    .line 318
    return-void
.end method

.method public SetMsfTransportFlag(I)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iput p1, v0, Loicq/wlogin_sdk/request/u;->k:I

    .line 267
    if-eqz p1, :cond_0

    .line 268
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->ad:[B

    .line 269
    const-wide/16 v0, 0x0

    sput-wide v0, Loicq/wlogin_sdk/request/u;->ac:J

    .line 270
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const v1, 0xafc8

    iput v1, v0, Loicq/wlogin_sdk/request/u;->l:I

    .line 272
    :cond_0
    return-void
.end method

.method public SetNeedForPayToken(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 2

    .prologue
    .line 367
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 368
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/l;->J:[B

    .line 372
    if-eqz p3, :cond_0

    .line 373
    sput-object p3, Loicq/wlogin_sdk/request/l;->L:[B

    .line 375
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 376
    :cond_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->getChannelId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 377
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/l;->K:[B

    .line 379
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 380
    :cond_3
    const/4 v0, -0x2

    .line 382
    :goto_0
    return v0

    .line 370
    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    .line 382
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetPicType(I)V
    .locals 0

    .prologue
    .line 306
    sput p1, Loicq/wlogin_sdk/request/u;->y:I

    .line 307
    return-void
.end method

.method public SetRegDevLockFlag(I)V
    .locals 0

    .prologue
    .line 3929
    sput p1, Loicq/wlogin_sdk/request/u;->z:I

    .line 3930
    return-void
.end method

.method public SetSigMap(I)V
    .locals 1

    .prologue
    .line 281
    or-int/lit16 v0, p1, 0xc0

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    .line 282
    return-void
.end method

.method public SetTestHost(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    invoke-static {p1, p2}, Loicq/wlogin_sdk/request/oicq_request;->a(ILjava/lang/String;)V

    .line 237
    return-void
.end method

.method public SetTimeOut(I)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iput p1, v0, Loicq/wlogin_sdk/request/u;->l:I

    .line 337
    return-void
.end method

.method public VerifyCode(Ljava/lang/String;JZ[B[IILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    .prologue
    .line 4449
    new-instance v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    .line 4450
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4451
    const/16 v4, -0x3eb

    .line 4480
    :goto_0
    return v4

    .line 4453
    :cond_0
    iget-wide v6, v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    .line 4455
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v15

    .line 4456
    if-nez v15, :cond_1

    .line 4457
    const/16 v4, -0x3ec

    goto :goto_0

    .line 4460
    :cond_1
    new-instance v4, Loicq/wlogin_sdk/b/cl;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cl;-><init>()V

    .line 4461
    const/4 v5, 0x0

    new-array v0, v5, [B

    move-object/from16 v17, v0

    .line 4462
    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    if-eqz v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    array-length v5, v5

    if-lez v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    if-eqz v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    array-length v5, v5

    if-lez v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    if-eqz v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    array-length v5, v5

    if-lez v5, :cond_2

    .line 4465
    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    sget-object v8, Loicq/wlogin_sdk/request/u;->A:[B

    iget-object v9, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    const-wide/16 v12, 0x1

    iget-object v14, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    move-wide/from16 v10, p2

    invoke-virtual/range {v4 .. v14}, Loicq/wlogin_sdk/b/cl;->a([BJ[B[BJJ[B)[B

    .line 4467
    invoke-virtual {v4}, Loicq/wlogin_sdk/b/cl;->c()[B

    move-result-object v17

    .line 4470
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " VerifyCode ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4472
    new-instance v5, Loicq/wlogin_sdk/code2d/e;

    invoke-direct {v5}, Loicq/wlogin_sdk/code2d/e;-><init>()V

    .line 4473
    new-instance v18, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 4475
    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;->set_code2d_func_req()V

    .line 4476
    invoke-virtual {v5}, Loicq/wlogin_sdk/code2d/e;->get_cmd()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 4477
    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;->setSTEncryptMethod()V

    .line 4478
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Loicq/wlogin_sdk/request/TransReqContext;->setWtST(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 4479
    iget-object v13, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    sget-object v14, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v15, Loicq/wlogin_sdk/request/u;->E:[B

    move-wide/from16 v8, p2

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v16, p7

    invoke-virtual/range {v5 .. v17}, Loicq/wlogin_sdk/code2d/e;->a(JJZ[B[I[B[B[BI[B)[B

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 4480
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, v5, Loicq/wlogin_sdk/code2d/e;->_role:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v12, v18

    move-object/from16 v13, p8

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public VerifySMSVerifyLoginCode(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 1

    .prologue
    .line 3193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->VerifySMSVerifyLoginCode(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method public getHasPassword(J)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2880
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1, p1, p2}, Loicq/wlogin_sdk/request/u;->e(J)Ljava/lang/String;

    move-result-object v1

    .line 2881
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHasPasswd ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    if-nez v1, :cond_1

    .line 2893
    :cond_0
    :goto_0
    return v0

    .line 2885
    :cond_1
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v2, v1}, Loicq/wlogin_sdk/request/u;->c(Ljava/lang/String;)Loicq/wlogin_sdk/request/UinInfo;

    move-result-object v2

    .line 2886
    if-eqz v2, :cond_0

    .line 2889
    invoke-virtual {v2}, Loicq/wlogin_sdk/request/UinInfo;->getHasPassword()Z

    move-result v0

    .line 2891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHasPasswd userAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasPasswd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStWithQrSig(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 10

    .prologue
    .line 1555
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithQrSig(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method public onQuickLoginActivityResultData(Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;Landroid/content/Intent;)I
    .locals 4

    .prologue
    const/16 v0, -0x3f9

    .line 5843
    if-nez p2, :cond_0

    .line 5844
    const-string v1, "onActivityResultData data is null"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 5866
    :goto_0
    return v0

    .line 5848
    :cond_0
    if-nez p1, :cond_1

    .line 5849
    const-string v1, "onActivityResultData quickLoginParam is null"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5853
    :cond_1
    const-string v1, "isRetFromWeb"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 5854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQuickLoginActivityResultData isRetFromWeb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 5855
    if-nez v1, :cond_3

    .line 5856
    invoke-direct {p0, p2}, Loicq/wlogin_sdk/request/WtloginHelper;->ResolveQloginIntentReserved(Landroid/content/Intent;)Loicq/wlogin_sdk/request/WUserSigInfo;

    move-result-object v1

    .line 5857
    if-nez v1, :cond_2

    .line 5858
    const-string v1, "onActivityResultData ResolveQloginIntent failed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5862
    :cond_2
    iget-object v0, p1, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iget-object v2, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    .line 5863
    iget-object v0, p1, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iget-object v2, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    .line 5864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithQQSig(Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I

    move-result v0

    goto :goto_0

    .line 5866
    :cond_3
    const-string/jumbo v0, "uin"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sig"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithPtSig(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I

    move-result v0

    goto :goto_0
.end method

.method public quickLogin(Landroid/app/Activity;JJLjava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I
    .locals 8

    .prologue
    .line 5807
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Loicq/wlogin_sdk/quicklogin/a;->a(Landroid/content/Context;Landroid/app/Activity;JJLjava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I

    move-result v0

    return v0
.end method

.method public quickRegisterCheckAccount(JJII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 21

    .prologue
    .line 2940
    if-eqz p7, :cond_0

    if-nez p8, :cond_1

    .line 2941
    :cond_0
    const/16 v4, -0x3f9

    .line 2978
    :goto_0
    return v4

    .line 2944
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quickRegisterCheckAccount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2, v5}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    .line 2947
    if-nez v4, :cond_2

    .line 2948
    const-string v4, "quickRegisterCheckAccount no key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    const/16 v4, -0x3ec

    goto :goto_0

    .line 2952
    :cond_2
    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_3

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v5, v5

    if-nez v5, :cond_4

    .line 2953
    :cond_3
    const-string v4, "quickRegisterCheckAccount no key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    const/16 v4, -0x3ec

    goto/16 :goto_0

    .line 2957
    :cond_4
    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    if-eqz v5, :cond_5

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v5, v5

    if-nez v5, :cond_6

    .line 2958
    :cond_5
    const-string v4, "quickRegisterCheckAccount no key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2959
    const/16 v4, -0x3ec

    goto/16 :goto_0

    .line 2962
    :cond_6
    new-instance v5, Loicq/wlogin_sdk/a/a;

    invoke-direct {v5}, Loicq/wlogin_sdk/a/a;-><init>()V

    .line 2963
    new-instance v19, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v19 .. v19}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 2964
    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    iget-object v7, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    iput-object v7, v6, Loicq/wlogin_sdk/a/j;->l:[B

    .line 2965
    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    move-object/from16 v20, v0

    .line 2966
    move-wide/from16 v0, p3

    move-object/from16 v2, v20

    iput-wide v0, v2, Loicq/wlogin_sdk/a/j;->g:J

    .line 2967
    move/from16 v0, p6

    int-to-long v6, v0

    move-object/from16 v0, v20

    iput-wide v6, v0, Loicq/wlogin_sdk/a/j;->h:J

    .line 2968
    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 2969
    invoke-virtual {v5}, Loicq/wlogin_sdk/a/a;->a()I

    move-result v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 2970
    invoke-direct/range {p0 .. p4}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v6

    .line 2971
    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/request/TransReqContext;->setSTEncryptMethod()V

    .line 2972
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Loicq/wlogin_sdk/request/TransReqContext;->setWtST(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 2973
    move-wide/from16 v0, p3

    long-to-int v8, v0

    const/16 v9, 0x8

    iget-object v10, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v11, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move/from16 v0, p5

    int-to-byte v12, v0

    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetGuid()[B

    move-result-object v13

    sget-object v15, Loicq/wlogin_sdk/request/u;->E:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_IMEI(Landroid/content/Context;)[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_IMSI(Landroid/content/Context;)[B

    move-result-object v18

    move-wide/from16 v6, p1

    move/from16 v14, p6

    move-object/from16 v16, p7

    invoke-virtual/range {v5 .. v18}, Loicq/wlogin_sdk/a/a;->a(JIB[B[BB[BI[B[B[B[B)[B

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 2974
    move-object/from16 v0, v19

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-nez v4, :cond_7

    .line 2975
    const-string v4, "req_con._body is null"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2976
    const/16 v4, -0x3f9

    goto/16 :goto_0

    .line 2978
    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, v20

    iget v4, v0, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move-object/from16 v12, v19

    move-object/from16 v13, p8

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public quickRegisterGetAccount(JJII[B[BLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 25

    .prologue
    .line 2991
    if-eqz p8, :cond_0

    if-eqz p7, :cond_0

    if-eqz p9, :cond_0

    if-nez p10, :cond_1

    .line 2992
    :cond_0
    const/16 v4, -0x3f9

    .line 3033
    :goto_0
    return v4

    .line 2995
    :cond_1
    const/4 v4, 0x6

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 2997
    const/16 v4, -0x3f9

    goto :goto_0

    .line 3000
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quickRegisterGetAccount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3002
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2, v5}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    .line 3003
    if-nez v4, :cond_3

    .line 3004
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quickRegisterCheckAccount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3005
    const/16 v4, -0x3ec

    goto/16 :goto_0

    .line 3007
    :cond_3
    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_4

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v5, v5

    if-nez v5, :cond_5

    .line 3008
    :cond_4
    const-string v4, "quickRegisterCheckAccount no key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3009
    const/16 v4, -0x3ec

    goto/16 :goto_0

    .line 3012
    :cond_5
    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    if-eqz v5, :cond_6

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v5, v5

    if-nez v5, :cond_7

    .line 3013
    :cond_6
    const-string v4, "quickRegisterCheckAccount no key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    const/16 v4, -0x3ec

    goto/16 :goto_0

    .line 3017
    :cond_7
    new-instance v5, Loicq/wlogin_sdk/a/b;

    invoke-direct {v5}, Loicq/wlogin_sdk/a/b;-><init>()V

    .line 3018
    new-instance v22, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v22 .. v22}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    .line 3019
    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    iget-object v7, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    iput-object v7, v6, Loicq/wlogin_sdk/a/j;->l:[B

    .line 3020
    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    move-object/from16 v23, v0

    .line 3021
    move-wide/from16 v0, p3

    move-object/from16 v2, v23

    iput-wide v0, v2, Loicq/wlogin_sdk/a/j;->g:J

    .line 3022
    move/from16 v0, p6

    int-to-long v6, v0

    move-object/from16 v0, v23

    iput-wide v6, v0, Loicq/wlogin_sdk/a/j;->h:J

    .line 3023
    invoke-virtual/range {v22 .. v22}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    .line 3024
    invoke-virtual {v5}, Loicq/wlogin_sdk/a/b;->a()I

    move-result v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    .line 3025
    invoke-direct/range {p0 .. p4}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v6

    .line 3026
    invoke-virtual/range {v22 .. v22}, Loicq/wlogin_sdk/request/TransReqContext;->setSTEncryptMethod()V

    .line 3027
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Loicq/wlogin_sdk/request/TransReqContext;->setWtST(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    .line 3028
    move-wide/from16 v0, p3

    long-to-int v8, v0

    const/16 v9, 0x8

    iget-object v10, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v11, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move/from16 v0, p5

    int-to-byte v12, v0

    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetGuid()[B

    move-result-object v14

    sget-object v16, Loicq/wlogin_sdk/request/u;->E:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_IMEI(Landroid/content/Context;)[B

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_IMSI(Landroid/content/Context;)[B

    move-result-object v19

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    iget-object v0, v4, Loicq/wlogin_sdk/a/j;->e:[B

    move-object/from16 v21, v0

    move-wide/from16 v6, p1

    move-object/from16 v13, p8

    move/from16 v15, p6

    move-object/from16 v17, p7

    invoke-virtual/range {v5 .. v21}, Loicq/wlogin_sdk/a/b;->a(JIB[B[BB[B[BI[B[B[B[B[B[B)[B

    move-result-object v4

    move-object/from16 v0, v22

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 3029
    move-object/from16 v0, v22

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-nez v4, :cond_8

    .line 3030
    const-string v4, "req_con._body is null"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    const/16 v4, -0x3f9

    goto/16 :goto_0

    .line 3033
    :cond_8
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, v23

    iget v4, v0, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move-object/from16 v12, v22

    move-object/from16 v13, p10

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public setBabyQFlg(Z)V
    .locals 0

    .prologue
    .line 348
    sput-boolean p1, Loicq/wlogin_sdk/request/u;->ag:Z

    .line 349
    return-void
.end method

.method public setCallSource(I)V
    .locals 0

    .prologue
    .line 344
    sput p1, Loicq/wlogin_sdk/request/u;->af:I

    .line 345
    return-void
.end method

.method public setForQCall()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    sput-boolean v0, Loicq/wlogin_sdk/request/u;->ap:Z

    .line 244
    const-string v0, "com.tencent.lightalk.msf.core.auth.WtProvider"

    sput-object v0, Loicq/wlogin_sdk/request/WtloginMsfListener;->CLIENT_CLASSNAME:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setHasPassword(JZ)V
    .locals 3

    .prologue
    .line 2867
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1, p2}, Loicq/wlogin_sdk/request/u;->e(J)Ljava/lang/String;

    move-result-object v0

    .line 2868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasPasswd ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2869
    if-nez v0, :cond_0

    .line 2874
    :goto_0
    return-void

    .line 2872
    :cond_0
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p3}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 2873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasPasswd userAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hasPassword:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMsgType(III)V
    .locals 0

    .prologue
    .line 4566
    sput p1, Loicq/wlogin_sdk/devicelock/DevlockBase$a;->a:I

    .line 4567
    sput p2, Loicq/wlogin_sdk/devicelock/DevlockBase$a;->b:I

    .line 4568
    sput p3, Loicq/wlogin_sdk/devicelock/DevlockBase$a;->c:I

    .line 4569
    return-void
.end method
