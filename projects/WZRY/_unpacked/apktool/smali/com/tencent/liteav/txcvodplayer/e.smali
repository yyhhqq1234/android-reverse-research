.class public Lcom/tencent/liteav/txcvodplayer/e;
.super Landroid/widget/FrameLayout;
.source "TXCVodVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/txcvodplayer/e$a;
    }
.end annotation


# instance fields
.field private A:Lcom/tencent/liteav/txcvodplayer/a/a;

.field private B:Lcom/tencent/liteav/txcvodplayer/a/b;

.field private C:I

.field private D:J

.field private E:Z

.field private F:I

.field private G:J

.field private H:J

.field private I:Z

.field private J:I

.field private K:Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private L:Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private M:I

.field private N:Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private O:Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private P:Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private Q:Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field private R:Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;

.field private S:I

.field private T:Lcom/tencent/liteav/txcvodplayer/f;

.field private U:Landroid/os/Handler;

.field private V:Z

.field protected a:Z

.field protected b:I

.field c:Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field d:Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field e:Lcom/tencent/liteav/txcvodplayer/a$a;

.field private f:Ljava/lang/String;

.field private g:Landroid/net/Uri;

.field private h:I

.field private i:I

.field private j:Lcom/tencent/liteav/txcvodplayer/a$b;

.field private k:Lcom/tencent/ijk/media/player/IMediaPlayer;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/content/Context;

.field private u:Lcom/tencent/liteav/txcvodplayer/d;

.field private v:Lcom/tencent/liteav/txcvodplayer/a;

.field private w:I

.field private x:I

.field private y:Ljava/lang/String;

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    const-string v0, "TXCVodVideoView"

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->f:Ljava/lang/String;

    .line 79
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->h:I

    .line 80
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->i:I

    .line 83
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->j:Lcom/tencent/liteav/txcvodplayer/a$b;

    .line 84
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    .line 100
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->z:F

    .line 102
    invoke-static {}, Lcom/tencent/liteav/txcvodplayer/a/b;->a()Lcom/tencent/liteav/txcvodplayer/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->B:Lcom/tencent/liteav/txcvodplayer/a/b;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->a:Z

    .line 112
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->b:I

    .line 114
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->G:J

    .line 117
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->I:Z

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->J:I

    .line 438
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/e$6;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/e$6;-><init>(Lcom/tencent/liteav/txcvodplayer/e;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->c:Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 480
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/e$7;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/e$7;-><init>(Lcom/tencent/liteav/txcvodplayer/e;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->d:Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 521
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/e$8;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/e$8;-><init>(Lcom/tencent/liteav/txcvodplayer/e;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->K:Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 542
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/e$9;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/e$9;-><init>(Lcom/tencent/liteav/txcvodplayer/e;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->L:Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 628
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/e$10;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/e$10;-><init>(Lcom/tencent/liteav/txcvodplayer/e;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->N:Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 658
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/e$11;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/e$11;-><init>(Lcom/tencent/liteav/txcvodplayer/e;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->O:Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 665
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/e$12;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/e$12;-><init>(Lcom/tencent/liteav/txcvodplayer/e;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->P:Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 678
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/e$2;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/e$2;-><init>(Lcom/tencent/liteav/txcvodplayer/e;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->Q:Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 685
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/e$3;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/e$3;-><init>(Lcom/tencent/liteav/txcvodplayer/e;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->R:Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;

    .line 712
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/e$4;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/e$4;-><init>(Lcom/tencent/liteav/txcvodplayer/e;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->e:Lcom/tencent/liteav/txcvodplayer/a$a;

    .line 991
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->S:I

    .line 122
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/e;->a(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method static synthetic A(Lcom/tencent/liteav/txcvodplayer/e;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->F:I

    return v0
.end method

.method static synthetic B(Lcom/tencent/liteav/txcvodplayer/e;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/e;->g()V

    return-void
.end method

.method static synthetic C(Lcom/tencent/liteav/txcvodplayer/e;)J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->G:J

    return-wide v0
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/e;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->l:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/e;J)J
    .locals 1

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->H:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/e;Lcom/tencent/liteav/txcvodplayer/a$b;)Lcom/tencent/liteav/txcvodplayer/a$b;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->j:Lcom/tencent/liteav/txcvodplayer/a$b;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->y:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 1232
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1233
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1234
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1235
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1236
    const-string v2, "description"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1238
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->U:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1239
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->U:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSimpleEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->t:Landroid/content/Context;

    .line 144
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/d;

    invoke-direct {v0}, Lcom/tencent/liteav/txcvodplayer/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->u:Lcom/tencent/liteav/txcvodplayer/d;

    .line 147
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/e;->i()V

    .line 149
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->l:I

    .line 150
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->m:I

    .line 151
    invoke-virtual {p0, v2}, Lcom/tencent/liteav/txcvodplayer/e;->setFocusable(Z)V

    .line 152
    invoke-virtual {p0, v2}, Lcom/tencent/liteav/txcvodplayer/e;->setFocusableInTouchMode(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->requestFocus()Z

    .line 154
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->h:I

    .line 155
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->i:I

    .line 158
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/e$a;

    invoke-direct {v1, p0, v0}, Lcom/tencent/liteav/txcvodplayer/e$a;-><init>(Lcom/tencent/liteav/txcvodplayer/e;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->U:Landroid/os/Handler;

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->U:Landroid/os/Handler;

    goto :goto_0
.end method

.method private a(Lcom/tencent/ijk/media/player/IMediaPlayer;Lcom/tencent/liteav/txcvodplayer/a$b;)V
    .locals 1

    .prologue
    .line 701
    if-nez p1, :cond_0

    .line 710
    :goto_0
    return-void

    .line 704
    :cond_0
    if-nez p2, :cond_1

    .line 705
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 709
    :cond_1
    invoke-interface {p2, p1}, Lcom/tencent/liteav/txcvodplayer/a$b;->a(Lcom/tencent/ijk/media/player/IMediaPlayer;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/e;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/e;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/e;Lcom/tencent/ijk/media/player/IMediaPlayer;Lcom/tencent/liteav/txcvodplayer/a$b;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/ijk/media/player/IMediaPlayer;Lcom/tencent/liteav/txcvodplayer/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/e;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->V:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/txcvodplayer/e;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->m:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/liteav/txcvodplayer/e;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->m:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/txcvodplayer/e;J)J
    .locals 1

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->D:J

    return-wide p1
.end method

.method static synthetic b(Lcom/tencent/liteav/txcvodplayer/e;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->I:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/liteav/txcvodplayer/e;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->l:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/liteav/txcvodplayer/e;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->w:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/liteav/txcvodplayer/e;J)J
    .locals 1

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->G:J

    return-wide p1
.end method

.method static synthetic d(Lcom/tencent/liteav/txcvodplayer/e;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->x:I

    return p1
.end method

.method static synthetic d(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/a/a;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->A:Lcom/tencent/liteav/txcvodplayer/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/liteav/txcvodplayer/e;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->w:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/liteav/txcvodplayer/e;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->h:I

    return p1
.end method

.method static synthetic f(Lcom/tencent/liteav/txcvodplayer/e;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->x:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/liteav/txcvodplayer/e;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->i:I

    return p1
.end method

.method private f()Z
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    .line 302
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->g:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->j:Lcom/tencent/liteav/txcvodplayer/a$b;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 435
    :goto_0
    return v0

    .line 308
    :cond_1
    invoke-virtual {p0, v2}, Lcom/tencent/liteav/txcvodplayer/e;->a(Z)V

    .line 310
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->t:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 311
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 317
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->b:I

    packed-switch v0, :pswitch_data_0

    .line 332
    const/4 v4, 0x0

    .line 333
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->g:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 335
    new-instance v4, Lcom/tencent/ijk/media/player/IjkMediaPlayer;

    new-instance v0, Lcom/tencent/liteav/txcvodplayer/e$5;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/e$5;-><init>(Lcom/tencent/liteav/txcvodplayer/e;)V

    invoke-direct {v4, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;-><init>(Lcom/tencent/ijk/media/player/IjkLibLoader;)V

    .line 341
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    .line 342
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->R:Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;

    invoke-virtual {v4, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOnNativeInvokeListener(Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;)V

    .line 343
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->u:Lcom/tencent/liteav/txcvodplayer/d;

    iget-boolean v0, v0, Lcom/tencent/liteav/txcvodplayer/d;->d:Z

    if-eqz v0, :cond_3

    .line 344
    const/4 v0, 0x4

    const-string v5, "mediacodec"

    const-wide/16 v8, 0x1

    invoke-virtual {v4, v0, v5, v8, v9}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 348
    :goto_1
    const/4 v0, 0x4

    const-string v5, "mediacodec-auto-rotate"

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v0, v5, v8, v9}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 349
    const/4 v0, 0x4

    const-string v5, "mediacodec-handle-resolution-change"

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v0, v5, v8, v9}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 350
    const/4 v0, 0x4

    const-string v5, "opensles"

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v0, v5, v8, v9}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 351
    const/4 v0, 0x4

    const-string v5, "overlay-format"

    const-wide/32 v8, 0x32335652

    invoke-virtual {v4, v0, v5, v8, v9}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 352
    const/4 v0, 0x4

    const-string v5, "framedrop"

    const-wide/16 v8, 0x1

    invoke-virtual {v4, v0, v5, v8, v9}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 353
    const/4 v0, 0x4

    const-string v5, "start-on-prepared"

    iget-boolean v8, p0, Lcom/tencent/liteav/txcvodplayer/e;->a:Z

    if-eqz v8, :cond_2

    const-wide/16 v6, 0x1

    :cond_2
    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 354
    const/4 v0, 0x1

    const-string v5, "http-detect-range-support"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 355
    const/4 v0, 0x2

    const-string v5, "skip_loop_filter"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 356
    const/4 v0, 0x2

    const-string v5, "skip_frame"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 357
    const/4 v0, 0x1

    const-string/jumbo v5, "timeout"

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/e;->u:Lcom/tencent/liteav/txcvodplayer/d;

    iget v6, v6, Lcom/tencent/liteav/txcvodplayer/d;->c:F

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 358
    const/4 v0, 0x1

    const-string v5, "reconnect"

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 359
    const/4 v0, 0x1

    const-string v5, "analyzeduration"

    const-wide/32 v6, 0x55d4a80

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 360
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->u:Lcom/tencent/liteav/txcvodplayer/d;

    iget-object v0, v0, Lcom/tencent/liteav/txcvodplayer/d;->h:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 361
    const/4 v0, 0x0

    .line 362
    iget-object v5, p0, Lcom/tencent/liteav/txcvodplayer/e;->u:Lcom/tencent/liteav/txcvodplayer/d;

    iget-object v5, v5, Lcom/tencent/liteav/txcvodplayer/d;->h:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    if-nez v5, :cond_4

    .line 364
    const-string v5, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/tencent/liteav/txcvodplayer/e;->u:Lcom/tencent/liteav/txcvodplayer/d;

    iget-object v9, v9, Lcom/tencent/liteav/txcvodplayer/d;->h:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v5, v0

    .line 368
    goto :goto_2

    .line 319
    :pswitch_0
    new-instance v4, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->t:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;-><init>(Landroid/content/Context;)V

    .line 321
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->f:Ljava/lang/String;

    const-string v5, "exo media player"

    invoke-static {v0, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 402
    :goto_4
    new-instance v3, Lcom/tencent/ijk/media/player/TextureMediaPlayer;

    invoke-direct {v3, v4}, Lcom/tencent/ijk/media/player/TextureMediaPlayer;-><init>(Lcom/tencent/ijk/media/player/IMediaPlayer;)V

    iput-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    .line 403
    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v3, v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->d:Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0, v3}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 408
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->c:Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v0, v3}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 409
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->K:Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v0, v3}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 410
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->N:Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v0, v3}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnErrorListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 411
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->L:Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v0, v3}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnInfoListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 412
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->O:Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, v3}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 413
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->P:Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, v3}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 414
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->Q:Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-interface {v0, v3}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnTimedTextListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    .line 415
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->q:I

    .line 417
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->j:Lcom/tencent/liteav/txcvodplayer/a$b;

    invoke-direct {p0, v0, v3}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/ijk/media/player/IMediaPlayer;Lcom/tencent/liteav/txcvodplayer/a$b;)V

    .line 418
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 419
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 420
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 424
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->h:I

    :goto_5
    move v0, v1

    .line 435
    goto/16 :goto_0

    .line 325
    :pswitch_1
    new-instance v4, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {v4}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;-><init>()V

    .line 327
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->f:Ljava/lang/String;

    const-string v5, "android media player"

    invoke-static {v0, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 329
    goto :goto_4

    .line 346
    :cond_3
    const/4 v0, 0x4

    const-string v5, "mediacodec"

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v0, v5, v8, v9}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 425
    :catch_0
    move-exception v0

    .line 426
    iput v11, p0, Lcom/tencent/liteav/txcvodplayer/e;->h:I

    .line 427
    iput v11, p0, Lcom/tencent/liteav/txcvodplayer/e;->i:I

    .line 428
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->N:Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    const/16 v3, -0x3ec

    const/16 v4, -0xbbb

    invoke-interface {v0, v2, v3, v4}, Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Lcom/tencent/ijk/media/player/IMediaPlayer;II)Z

    goto :goto_5

    .line 366
    :cond_4
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/tencent/liteav/txcvodplayer/e;->u:Lcom/tencent/liteav/txcvodplayer/d;

    iget-object v10, v10, Lcom/tencent/liteav/txcvodplayer/d;->h:Ljava/util/Map;

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 369
    :cond_5
    const/4 v0, 0x1

    const-string v6, "headers"

    invoke-virtual {v4, v0, v6, v5}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_6
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    .line 373
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->u:Lcom/tencent/liteav/txcvodplayer/d;

    iget-object v0, v0, Lcom/tencent/liteav/txcvodplayer/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->B:Lcom/tencent/liteav/txcvodplayer/a/b;

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/txcvodplayer/a/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 374
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->B:Lcom/tencent/liteav/txcvodplayer/a/b;

    iget-object v5, p0, Lcom/tencent/liteav/txcvodplayer/e;->u:Lcom/tencent/liteav/txcvodplayer/d;

    iget-object v5, v5, Lcom/tencent/liteav/txcvodplayer/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/tencent/liteav/txcvodplayer/a/b;->a(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->B:Lcom/tencent/liteav/txcvodplayer/a/b;

    iget-object v5, p0, Lcom/tencent/liteav/txcvodplayer/e;->u:Lcom/tencent/liteav/txcvodplayer/d;

    iget v5, v5, Lcom/tencent/liteav/txcvodplayer/d;->f:I

    invoke-virtual {v0, v5}, Lcom/tencent/liteav/txcvodplayer/a/b;->a(I)V

    .line 376
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->B:Lcom/tencent/liteav/txcvodplayer/a/b;

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/txcvodplayer/a/b;->b(Ljava/lang/String;)Lcom/tencent/liteav/txcvodplayer/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->A:Lcom/tencent/liteav/txcvodplayer/a/a;

    .line 378
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->A:Lcom/tencent/liteav/txcvodplayer/a/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v5, "mp4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 379
    const/4 v0, 0x1

    const-string v3, "cache_file_path"

    iget-object v5, p0, Lcom/tencent/liteav/txcvodplayer/e;->A:Lcom/tencent/liteav/txcvodplayer/a/a;

    invoke-virtual {v5}, Lcom/tencent/liteav/txcvodplayer/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v3, v5}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ijkio:cache:ffio:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->g:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 396
    :goto_6
    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->f:Ljava/lang/String;

    const-string v5, "ijk media player"

    invoke-static {v3, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 429
    :catch_1
    move-exception v0

    .line 430
    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iput v11, p0, Lcom/tencent/liteav/txcvodplayer/e;->h:I

    .line 432
    iput v11, p0, Lcom/tencent/liteav/txcvodplayer/e;->i:I

    .line 433
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->N:Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v3, v1, v2}, Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Lcom/tencent/ijk/media/player/IMediaPlayer;II)Z

    goto/16 :goto_5

    .line 381
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->A:Lcom/tencent/liteav/txcvodplayer/a/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v5, "m3u8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 382
    const/4 v0, 0x1

    const-string v5, "cache_file_path"

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/e;->A:Lcom/tencent/liteav/txcvodplayer/a/a;

    invoke-virtual {v6}, Lcom/tencent/liteav/txcvodplayer/a/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x1

    const-string v5, "scheme_proxy"

    const-string v6, "ijkhttpcache"

    invoke-virtual {v4, v0, v5, v6}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 384
    const/4 v0, 0x1

    const-string v5, "protocol_whitelist"

    const-string/jumbo v6, "tls,file,crypto,tcp,http,https,ijkhttpcache"

    invoke-virtual {v4, v0, v5, v6}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/liteav/txcvodplayer/e;->A:Lcom/tencent/liteav/txcvodplayer/a/a;

    invoke-virtual {v5}, Lcom/tencent/liteav/txcvodplayer/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 388
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->A:Lcom/tencent/liteav/txcvodplayer/a/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->b()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    move-object v0, v3

    goto :goto_6

    :cond_8
    move-object v0, v3

    goto :goto_6

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic g(Lcom/tencent/liteav/txcvodplayer/e;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->M:I

    return p1
.end method

.method static synthetic g(Lcom/tencent/liteav/txcvodplayer/e;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->U:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 825
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->b:I

    if-nez v0, :cond_2

    .line 826
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->r:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->r:I

    .line 828
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->s:I

    .line 830
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/e;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 831
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/e;->a(Z)V

    .line 836
    :cond_1
    :goto_0
    return-void

    .line 833
    :cond_2
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 834
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/e;->j()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/tencent/liteav/txcvodplayer/e;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->r:I

    return v0
.end method

.method static synthetic h(Lcom/tencent/liteav/txcvodplayer/e;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->q:I

    return p1
.end method

.method private h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 978
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->h:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->h:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/tencent/liteav/txcvodplayer/e;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->n:I

    return v0
.end method

.method static synthetic i(Lcom/tencent/liteav/txcvodplayer/e;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->r:I

    return p1
.end method

.method private i()V
    .locals 1

    .prologue
    .line 1042
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/e;->setRender(I)V

    .line 1043
    return-void
.end method

.method static synthetic j(Lcom/tencent/liteav/txcvodplayer/e;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->o:I

    return v0
.end method

.method static synthetic j(Lcom/tencent/liteav/txcvodplayer/e;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->n:I

    return p1
.end method

.method private j()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1209
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->getUnwrappedMediaPlayer()Lcom/tencent/ijk/media/player/IMediaPlayer;

    move-result-object v0

    check-cast v0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;

    .line 1210
    instance-of v1, v0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;

    if-nez v1, :cond_0

    .line 1224
    :goto_0
    return-void

    .line 1215
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->g:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->buildMediaSource(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v1

    .line 1216
    invoke-virtual {v0}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    .line 1217
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->y:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1218
    invoke-virtual {v0}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 1222
    :goto_1
    iput-boolean v4, p0, Lcom/tencent/liteav/txcvodplayer/e;->V:Z

    .line 1223
    iput v3, p0, Lcom/tencent/liteav/txcvodplayer/e;->r:I

    goto :goto_0

    .line 1220
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_1
.end method

.method static synthetic k(Lcom/tencent/liteav/txcvodplayer/e;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->i:I

    return v0
.end method

.method static synthetic k(Lcom/tencent/liteav/txcvodplayer/e;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->o:I

    return p1
.end method

.method static synthetic l(Lcom/tencent/liteav/txcvodplayer/e;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->C:I

    return p1
.end method

.method static synthetic l(Lcom/tencent/liteav/txcvodplayer/e;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->g:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/liteav/txcvodplayer/e;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->F:I

    return p1
.end method

.method static synthetic m(Lcom/tencent/liteav/txcvodplayer/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/liteav/txcvodplayer/e;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->s:I

    return p1
.end method

.method static synthetic n(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->N:Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/liteav/txcvodplayer/e;)F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->z:F

    return v0
.end method

.method static synthetic p(Lcom/tencent/liteav/txcvodplayer/e;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->V:Z

    return v0
.end method

.method static synthetic q(Lcom/tencent/liteav/txcvodplayer/e;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->p:I

    return v0
.end method

.method static synthetic r(Lcom/tencent/liteav/txcvodplayer/e;)J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->H:J

    return-wide v0
.end method

.method static synthetic s(Lcom/tencent/liteav/txcvodplayer/e;)I
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->M:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->M:I

    return v0
.end method

.method static synthetic t(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/d;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->u:Lcom/tencent/liteav/txcvodplayer/d;

    return-object v0
.end method

.method static synthetic u(Lcom/tencent/liteav/txcvodplayer/e;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->J:I

    return v0
.end method

.method static synthetic v(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/ijk/media/player/IMediaPlayer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method static synthetic w(Lcom/tencent/liteav/txcvodplayer/e;)Z
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/e;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic x(Lcom/tencent/liteav/txcvodplayer/e;)Lcom/tencent/liteav/txcvodplayer/f;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->T:Lcom/tencent/liteav/txcvodplayer/f;

    return-object v0
.end method

.method static synthetic y(Lcom/tencent/liteav/txcvodplayer/e;)J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->D:J

    return-wide v0
.end method

.method static synthetic z(Lcom/tencent/liteav/txcvodplayer/e;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->C:I

    return v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 765
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 794
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->b:I

    .line 800
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->b()V

    .line 801
    return-void
.end method

.method a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 771
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->reset()V

    .line 773
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->release()V

    .line 774
    iput-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    .line 775
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->h:I

    .line 776
    if-eqz p1, :cond_0

    .line 777
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->i:I

    .line 778
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->l:I

    .line 779
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->m:I

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->t:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 782
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 784
    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 807
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/e;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->b:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->E:Z

    if-nez v0, :cond_0

    .line 809
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->E:Z

    .line 810
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->a:Z

    if-nez v0, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->d()V

    .line 822
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->start()V

    .line 816
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->h:I

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->I:Z

    if-nez v0, :cond_1

    .line 817
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->h:I

    .line 818
    const/16 v0, 0xbb9

    const-string/jumbo v1, "\u64ad\u653e\u5f00\u59cb"

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->a(ILjava/lang/String;)V

    .line 821
    :cond_1
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->i:I

    goto :goto_0
.end method

.method public b(I)V
    .locals 4

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->getUrlPathExtention()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 919
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->getDuration()I

    move-result v0

    add-int/lit16 v0, v0, -0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 921
    :goto_0
    if-gez v0, :cond_1

    .line 940
    :cond_0
    :goto_1
    return-void

    .line 923
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/e;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 924
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->getDuration()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 925
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->getDuration()I

    move-result v0

    .line 927
    :cond_2
    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->I:Z

    if-eqz v1, :cond_3

    .line 928
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->J:I

    .line 934
    :goto_2
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->b:I

    if-nez v0, :cond_0

    .line 935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->I:Z

    goto :goto_1

    .line 930
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->J:I

    .line 931
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/tencent/ijk/media/player/IMediaPlayer;->seekTo(J)V

    goto :goto_2

    .line 938
    :cond_4
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->r:I

    goto :goto_1

    :cond_5
    move v0, p1

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 842
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->stop()V

    .line 844
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->release()V

    .line 845
    iput-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    .line 846
    iput-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->g:Landroid/net/Uri;

    .line 847
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->l:I

    .line 848
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->m:I

    .line 849
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->z:F

    .line 850
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->I:Z

    .line 851
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->J:I

    .line 852
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->h:I

    .line 853
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->i:I

    .line 854
    iput-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->A:Lcom/tencent/liteav/txcvodplayer/a/a;

    .line 855
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->t:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 856
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 858
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 864
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->i:I

    .line 865
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->pause()V

    .line 868
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->h:I

    .line 871
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 953
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferDuration()I
    .locals 3

    .prologue
    .line 961
    const/4 v0, 0x0

    .line 962
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_2

    .line 963
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 964
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->getUnwrappedMediaPlayer()Lcom/tencent/ijk/media/player/IMediaPlayer;

    move-result-object v0

    check-cast v0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;

    invoke-virtual {v0}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->getBufferedPercentage()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->q:I

    .line 966
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->q:I

    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->getDuration()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 967
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->getCurrentPosition()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 968
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->getCurrentPosition()I

    move-result v0

    .line 970
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->getDuration()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_2

    .line 971
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->getDuration()I

    move-result v0

    .line 974
    :cond_2
    return v0
.end method

.method public getCurrentPosition()I
    .locals 4

    .prologue
    .line 901
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->r:I

    if-eqz v0, :cond_0

    .line 902
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->r:I

    .line 910
    :goto_0
    return v0

    .line 904
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->I:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->J:I

    if-ltz v0, :cond_1

    .line 905
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->J:I

    goto :goto_0

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_2

    .line 908
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 910
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 886
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->s:I

    if-eqz v0, :cond_0

    .line 887
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->s:I

    .line 893
    :goto_0
    return v0

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 893
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPlayerType()I
    .locals 1

    .prologue
    .line 1285
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->b:I

    return v0
.end method

.method public getServerIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getUnwrappedMediaPlayer()Lcom/tencent/ijk/media/player/IMediaPlayer;
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    instance-of v0, v0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    check-cast v0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;

    invoke-virtual {v0}, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->getBackEndMediaPlayer()Lcom/tencent/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 1300
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    goto :goto_0
.end method

.method getUrlPathExtention()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->g:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1292
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1294
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 1266
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->m:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 1258
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->l:I

    return v0
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .prologue
    .line 1062
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->a:Z

    .line 1063
    return-void
.end method

.method public setConfig(Lcom/tencent/liteav/txcvodplayer/d;)V
    .locals 0

    .prologue
    .line 985
    if-eqz p1, :cond_0

    .line 986
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->u:Lcom/tencent/liteav/txcvodplayer/d;

    .line 987
    :cond_0
    return-void
.end method

.method public setListener(Lcom/tencent/liteav/txcvodplayer/f;)V
    .locals 0

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->T:Lcom/tencent/liteav/txcvodplayer/f;

    .line 1251
    return-void
.end method

.method public setMute(Z)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 943
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    if-nez v0, :cond_0

    .line 950
    :goto_0
    return-void

    .line 945
    :cond_0
    if-eqz p1, :cond_1

    .line 946
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v1, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v2, v2}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public setRate(F)V
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setRate(F)V

    .line 1073
    :cond_0
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->z:F

    .line 1074
    return-void
.end method

.method public setRender(I)V
    .locals 6

    .prologue
    .line 208
    packed-switch p1, :pswitch_data_0

    .line 229
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->f:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "invalid render %d\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 210
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/e;->setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V

    goto :goto_0

    .line 213
    :pswitch_1
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/g;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/txcvodplayer/g;-><init>(Landroid/content/Context;)V

    .line 214
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/g;->getSurfaceHolder()Lcom/tencent/liteav/txcvodplayer/a$b;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v2}, Lcom/tencent/liteav/txcvodplayer/a$b;->a(Lcom/tencent/ijk/media/player/IMediaPlayer;)V

    .line 216
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/g;->a(II)V

    .line 217
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/g;->b(II)V

    .line 218
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->S:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/g;->setAspectRatio(I)V

    .line 220
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/e;->setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V

    goto :goto_0

    .line 224
    :pswitch_2
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/c;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/txcvodplayer/c;-><init>(Landroid/content/Context;)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/e;->setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setRenderMode(I)V
    .locals 2

    .prologue
    .line 999
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->S:I

    .line 1000
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->S:I

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/a;->setAspectRatio(I)V

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->p:I

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoRotation(I)V

    .line 1006
    :cond_1
    return-void
.end method

.method public setRenderSurface(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/e$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/txcvodplayer/e$1;-><init>(Lcom/tencent/liteav/txcvodplayer/e;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->j:Lcom/tencent/liteav/txcvodplayer/a$b;

    .line 266
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->j:Lcom/tencent/liteav/txcvodplayer/a$b;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/txcvodplayer/e;->a(Lcom/tencent/ijk/media/player/IMediaPlayer;Lcom/tencent/liteav/txcvodplayer/a$b;)V

    .line 269
    :cond_0
    return-void
.end method

.method public setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 171
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v4}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    invoke-interface {v0}, Lcom/tencent/liteav/txcvodplayer/a;->getView()Landroid/view/View;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/e;->e:Lcom/tencent/liteav/txcvodplayer/a$a;

    invoke-interface {v1, v2}, Lcom/tencent/liteav/txcvodplayer/a;->b(Lcom/tencent/liteav/txcvodplayer/a$a;)V

    .line 177
    iput-object v4, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    .line 178
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 179
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/e;->removeView(Landroid/view/View;)V

    .line 183
    :cond_1
    if-nez p1, :cond_2

    .line 205
    :goto_0
    return-void

    .line 186
    :cond_2
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    .line 187
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->S:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/a;->setAspectRatio(I)V

    .line 188
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->l:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->m:I

    if-lez v0, :cond_3

    .line 189
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->l:I

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->m:I

    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/a;->a(II)V

    .line 190
    :cond_3
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->w:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->x:I

    if-lez v0, :cond_4

    .line 191
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->w:I

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->x:I

    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/a;->b(II)V

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    invoke-interface {v0}, Lcom/tencent/liteav/txcvodplayer/a;->getView()Landroid/view/View;

    move-result-object v0

    .line 194
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_5

    .line 200
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/e;->addView(Landroid/view/View;)V

    .line 203
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->e:Lcom/tencent/liteav/txcvodplayer/a$a;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/a;->a(Lcom/tencent/liteav/txcvodplayer/a$a;)V

    .line 204
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->p:I

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoRotation(I)V

    goto :goto_0
.end method

.method public setTextureRenderView(Lcom/tencent/liteav/txcvodplayer/g;)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/g;->getSurfaceHolder()Lcom/tencent/liteav/txcvodplayer/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/a$b;->a(Lcom/tencent/ijk/media/player/IMediaPlayer;)V

    .line 237
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/g;->a(II)V

    .line 238
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->k:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/g;->b(II)V

    .line 239
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->S:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcvodplayer/g;->setAspectRatio(I)V

    .line 241
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/e;->setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V

    .line 242
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 277
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/e;->setVideoURI(Landroid/net/Uri;)V

    .line 278
    return-void
.end method

.method public setVideoRotationDegree(I)V
    .locals 3

    .prologue
    .line 1013
    sparse-switch p1, :sswitch_data_0

    .line 1022
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support degree "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1015
    :sswitch_0
    const/4 p1, 0x0

    .line 1025
    :sswitch_1
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->p:I

    .line 1026
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz v0, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->p:I

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoRotation(I)V

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->v:Lcom/tencent/liteav/txcvodplayer/a;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->S:I

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/a;->setAspectRatio(I)V

    goto :goto_0

    .line 1013
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_1
        0x168 -> :sswitch_0
    .end sparse-switch
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 286
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/e;->g:Landroid/net/Uri;

    .line 287
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->r:I

    .line 288
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->s:I

    .line 289
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->M:I

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/e;->y:Ljava/lang/String;

    .line 291
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/e;->V:Z

    .line 293
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/e;->f()Z

    .line 294
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->requestLayout()V

    .line 295
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/e;->invalidate()V

    .line 296
    return-void
.end method
