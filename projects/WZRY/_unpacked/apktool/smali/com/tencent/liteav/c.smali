.class public Lcom/tencent/liteav/c;
.super Lcom/tencent/liteav/basic/module/a;
.source "TXCCaptureAndEnc.java"

# interfaces
.implements Lcom/tencent/liteav/a$b;
.implements Lcom/tencent/liteav/audio/f;
.implements Lcom/tencent/liteav/basic/c/a;
.implements Lcom/tencent/liteav/beauty/e;
.implements Lcom/tencent/liteav/m;
.implements Lcom/tencent/liteav/videoencoder/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/c$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/tencent/liteav/a;

.field private c:Lcom/tencent/liteav/l;

.field private d:Lcom/tencent/liteav/beauty/c;

.field private e:I

.field private f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

.field private g:Lcom/tencent/liteav/videoencoder/b;

.field private h:Landroid/content/Context;

.field private i:Lcom/tencent/liteav/f;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:J

.field private p:Lcom/tencent/liteav/c$a;

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/basic/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/n;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Lcom/tencent/liteav/basic/module/a;-><init>()V

    .line 57
    iput-object v2, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    .line 58
    iput-object v2, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/liteav/c;->e:I

    .line 62
    iput-object v2, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    .line 63
    iput-object v2, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    .line 65
    iput-object v2, p0, Lcom/tencent/liteav/c;->h:Landroid/content/Context;

    .line 66
    iput-object v2, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    .line 70
    iput v3, p0, Lcom/tencent/liteav/c;->j:I

    .line 75
    iput v3, p0, Lcom/tencent/liteav/c;->k:I

    .line 81
    iput v3, p0, Lcom/tencent/liteav/c;->m:I

    .line 82
    iput v4, p0, Lcom/tencent/liteav/c;->n:I

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/c;->o:J

    .line 113
    iput-object v2, p0, Lcom/tencent/liteav/c;->p:Lcom/tencent/liteav/c$a;

    .line 496
    iput-boolean v3, p0, Lcom/tencent/liteav/c;->s:Z

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/c;->h:Landroid/content/Context;

    .line 86
    iput p2, p0, Lcom/tencent/liteav/c;->l:I

    .line 88
    new-instance v0, Lcom/tencent/liteav/f;

    invoke-direct {v0}, Lcom/tencent/liteav/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    .line 89
    new-instance v0, Lcom/tencent/liteav/beauty/c;

    iget-object v1, p0, Lcom/tencent/liteav/c;->h:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Lcom/tencent/liteav/beauty/c;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    .line 90
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/beauty/c;->a(Lcom/tencent/liteav/beauty/e;)V

    .line 92
    new-instance v0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    invoke-direct {v0}, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    .line 93
    iput-object v2, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    .line 95
    new-instance v0, Lcom/tencent/liteav/a;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/a;-><init>(Lcom/tencent/liteav/a$b;)V

    iput-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/a;

    .line 97
    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->a()Lcom/tencent/liteav/basic/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/c;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/e/b;->a(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/c;)Lcom/tencent/liteav/f;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    return-object v0
.end method

.method private a(II)V
    .locals 6

    .prologue
    .line 680
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->C:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    iget-object v1, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-object v1, v1, Lcom/tencent/liteav/f;->x:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->A:F

    iget-object v3, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v3, v3, Lcom/tencent/liteav/f;->B:F

    iget-object v4, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v4, v4, Lcom/tencent/liteav/f;->C:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/beauty/c;->a(Landroid/graphics/Bitmap;FFF)V

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 686
    iget-object v1, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-object v2, v0, Lcom/tencent/liteav/f;->x:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->y:I

    int-to-float v0, v0

    int-to-float v3, p1

    div-float v3, v0, v3

    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->z:I

    int-to-float v0, v0

    int-to-float v4, p2

    div-float v4, v0, v4

    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-object v0, v0, Lcom/tencent/liteav/f;->x:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/tencent/liteav/beauty/c;->a(Landroid/graphics/Bitmap;FFF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-object v0, v0, Lcom/tencent/liteav/f;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v5, p1

    div-float/2addr v0, v5

    goto :goto_1
.end method

.method static synthetic b(Lcom/tencent/liteav/c;)Lcom/tencent/liteav/l;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    return-object v0
.end method

.method private b(II)V
    .locals 3

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 877
    .line 878
    iget-object v2, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->j:I

    packed-switch v2, :pswitch_data_0

    .line 888
    :goto_0
    :pswitch_0
    iget v2, p0, Lcom/tencent/liteav/c;->j:I

    if-ne v2, v1, :cond_2

    .line 891
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->i:I

    .line 892
    iget-object v2, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v2, v2, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v2, v2, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/tencent/liteav/c;->e:I

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v2, v2, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->gop:I

    if-eq v2, v0, :cond_1

    .line 893
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lcom/tencent/liteav/c;->c(III)V

    .line 895
    :cond_1
    return-void

    :pswitch_1
    move v0, v1

    .line 884
    goto :goto_0

    .line 886
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 551
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 552
    const-string v1, "EVT_USERID"

    iget-wide v2, p0, Lcom/tencent/liteav/c;->o:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 553
    const-string v1, "EVT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 554
    const-string v1, "EVT_TIME"

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 555
    if-eqz p2, :cond_0

    .line 556
    const-string v1, "EVT_MSG"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/c;->q:Ljava/lang/ref/WeakReference;

    invoke-static {v1, p1, v0}, Lcom/tencent/liteav/basic/util/a;->a(Ljava/lang/ref/WeakReference;ILandroid/os/Bundle;)V

    .line 560
    return-void
.end method

.method private b(Lcom/tencent/liteav/videoencoder/b;)V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    new-instance v1, Lcom/tencent/liteav/c$5;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/c$5;-><init>(Lcom/tencent/liteav/c;Lcom/tencent/liteav/videoencoder/b;)V

    invoke-interface {v0, v1}, Lcom/tencent/liteav/l;->a(Ljava/lang/Runnable;)V

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    if-eqz p1, :cond_0

    .line 915
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videoencoder/b;->b()V

    .line 916
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 918
    :catch_0
    move-exception v0

    .line 919
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/liteav/c;)Lcom/tencent/liteav/videoencoder/b;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    return-object v0
.end method

.method private declared-synchronized c(III)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 826
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/liteav/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New encode size width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/c;->b(Lcom/tencent/liteav/videoencoder/b;)V

    .line 829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    .line 830
    iput p3, p0, Lcom/tencent/liteav/c;->e:I

    .line 831
    new-instance v0, Lcom/tencent/liteav/videoencoder/b;

    iget v1, p0, Lcom/tencent/liteav/c;->e:I

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videoencoder/b;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    .line 834
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->I:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 835
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoencoder/b;->a()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 836
    if-eqz v1, :cond_0

    .line 838
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    new-instance v2, Lcom/tencent/liteav/c$4;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/tencent/liteav/c$4;-><init>(Lcom/tencent/liteav/c;IILjavax/microedition/khronos/egl/EGLContext;)V

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/videoencoder/b;->a(Ljava/lang/Runnable;)V

    .line 854
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iput p1, v0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    .line 855
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iput p2, v0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    .line 856
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget-object v2, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->h:I

    iput v2, v0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->fps:I

    .line 857
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget-object v2, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->i:I

    iput v2, v0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->gop:I

    .line 858
    iget-object v2, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->n:Z

    if-ne v0, v6, :cond_3

    const/4 v0, 0x3

    :goto_1
    iput v0, v2, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderProfile:I

    .line 859
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    const/4 v2, 0x1

    iput v2, v0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderMode:I

    .line 860
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iput-object v1, v0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->glContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 861
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/d;)V

    .line 862
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/basic/c/a;)V

    .line 863
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    iget-object v1, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)I

    .line 864
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    iget-object v1, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v1, v1, Lcom/tencent/liteav/f;->c:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoencoder/b;->a(I)V

    .line 865
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    invoke-virtual {p0}, Lcom/tencent/liteav/c;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoencoder/b;->setID(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    monitor-exit p0

    return-void

    .line 848
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0}, Lcom/tencent/liteav/l;->e()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 849
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v0, v0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v0, v0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    if-eq v0, p1, :cond_0

    .line 850
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/a;

    iget-object v2, p0, Lcom/tencent/liteav/c;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-object v3, v3, Lcom/tencent/liteav/f;->t:Landroid/graphics/Bitmap;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/a;->a(Ljavax/microedition/khronos/egl/EGLContext;Landroid/content/Context;Landroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v6

    .line 858
    goto :goto_1
.end method

.method static synthetic d(Lcom/tencent/liteav/c;)Lcom/tencent/liteav/beauty/c;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    return-object v0
.end method

.method private d(III)V
    .locals 6

    .prologue
    .line 870
    iget v0, p0, Lcom/tencent/liteav/c;->k:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 874
    :goto_0
    return-void

    .line 872
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/tencent/liteav/c;->b(II)V

    .line 873
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v4

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/videoencoder/b;->a(IIIJ)J

    goto :goto_0
.end method

.method static synthetic e(Lcom/tencent/liteav/c;)Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/liteav/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/liteav/c;->h:Landroid/content/Context;

    return-object v0
.end method

.method private l(I)V
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0}, Lcom/tencent/liteav/l;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->k:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->K:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/liteav/c;->j:I

    if-nez v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    new-instance v1, Lcom/tencent/liteav/c$6;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/c$6;-><init>(Lcom/tencent/liteav/c;)V

    invoke-interface {v0, v1}, Lcom/tencent/liteav/l;->a(Ljava/lang/Runnable;)V

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    invoke-virtual {v0}, Lcom/tencent/liteav/f;->a()Z

    .line 968
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0}, Lcom/tencent/liteav/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    new-instance v1, Lcom/tencent/liteav/c$7;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/c$7;-><init>(Lcom/tencent/liteav/c;)V

    invoke-interface {v0, v1}, Lcom/tencent/liteav/l;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private q()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 925
    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->a()Lcom/tencent/liteav/basic/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 926
    invoke-static {v0}, Lcom/tencent/liteav/audio/b;->a(Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->I:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 928
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/b;->a(Z)V

    .line 929
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v1, v1, Lcom/tencent/liteav/f;->r:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/b;->a(I)V

    .line 930
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v1, v1, Lcom/tencent/liteav/f;->q:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/b;->b(I)V

    .line 931
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->r:I

    iput v0, p0, Lcom/tencent/liteav/c;->n:I

    .line 950
    :goto_0
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->s:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->a()Lcom/tencent/liteav/basic/e/b;

    move-result-object v0

    iget v2, p0, Lcom/tencent/liteav/c;->l:I

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/basic/e/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/tencent/liteav/audio/d;->A:I

    :goto_1
    iget-object v2, p0, Lcom/tencent/liteav/c;->h:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/liteav/audio/b;->a(ILandroid/content/Context;)V

    .line 951
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/liteav/c;->s:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/b;->c(Z)V

    .line 952
    return-void

    .line 933
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/b;->a(I)V

    .line 934
    iput v1, p0, Lcom/tencent/liteav/c;->n:I

    .line 935
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->s:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->a()Lcom/tencent/liteav/basic/e/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/liteav/c;->l:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/e/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 936
    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->a()Lcom/tencent/liteav/basic/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/b;->g()I

    move-result v0

    .line 937
    if-nez v0, :cond_1

    .line 938
    const/16 v0, 0x3e80

    .line 942
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/audio/b;->b(I)V

    .line 943
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v1, v1, Lcom/tencent/liteav/f;->q:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/b;->d(I)V

    .line 944
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->a()Lcom/tencent/liteav/basic/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/b;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/b;->b(Z)V

    .line 945
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->a()Lcom/tencent/liteav/basic/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/b;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/b;->d(Z)V

    goto :goto_0

    .line 947
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v1, v1, Lcom/tencent/liteav/f;->q:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/b;->b(I)V

    goto/16 :goto_0

    .line 950
    :cond_3
    sget v0, Lcom/tencent/liteav/audio/d;->B:I

    goto :goto_1

    :cond_4
    sget v0, Lcom/tencent/liteav/audio/d;->z:I

    goto :goto_1
.end method

.method private r()V
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-object v0, v0, Lcom/tencent/liteav/f;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    new-instance v1, Lcom/tencent/liteav/c$8;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/c$8;-><init>(Lcom/tencent/liteav/c;)V

    invoke-interface {v0, v1}, Lcom/tencent/liteav/l;->a(Ljava/lang/Runnable;)V

    .line 998
    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-object v0, v0, Lcom/tencent/liteav/f;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    new-instance v1, Lcom/tencent/liteav/c$9;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/c$9;-><init>(Lcom/tencent/liteav/c;)V

    invoke-interface {v0, v1}, Lcom/tencent/liteav/l;->a(Ljava/lang/Runnable;)V

    .line 1017
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->H:Z

    if-eqz v0, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/beauty/c;->f(I)V

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/beauty/c;->f(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/basic/f/c;)I
    .locals 4

    .prologue
    .line 697
    iget-object v0, p0, Lcom/tencent/liteav/c;->r:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/tencent/liteav/c;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/n;

    .line 699
    if-eqz v0, :cond_0

    .line 700
    iget v1, p1, Lcom/tencent/liteav/basic/f/c;->a:I

    iget v2, p1, Lcom/tencent/liteav/basic/f/c;->d:I

    iget v3, p1, Lcom/tencent/liteav/basic/f/c;->e:I

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/n;->onTextureCustomProcess(III)I

    move-result v0

    iput v0, p1, Lcom/tencent/liteav/basic/f/c;->a:I

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/l;->a(Lcom/tencent/liteav/basic/f/c;)V

    .line 706
    :cond_1
    iget v0, p1, Lcom/tencent/liteav/basic/f/c;->a:I

    return v0
.end method

.method public a([BIII)I
    .locals 8

    .prologue
    const/16 v2, 0x3c0

    const/16 v5, 0x2d0

    const/16 v1, 0x280

    const/16 v4, 0x220

    const/16 v3, 0x170

    .line 601
    .line 603
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    if-nez v0, :cond_0

    const/4 v0, -0x5

    .line 647
    :goto_0
    return v0

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->k:I

    packed-switch v0, :pswitch_data_0

    .line 630
    sget-object v0, Lcom/tencent/liteav/c;->b:Ljava/lang/String;

    const-string v1, "sendCustomYUVData: invalid video_resolution"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_0
    move v0, v1

    move v6, v3

    .line 634
    :goto_1
    if-gt v6, p3, :cond_1

    if-le v0, p4, :cond_2

    :cond_1
    const/4 v0, -0x4

    goto :goto_0

    :pswitch_1
    move v0, v2

    move v6, v4

    .line 612
    goto :goto_1

    .line 615
    :pswitch_2
    const/16 v0, 0x500

    move v6, v5

    .line 616
    goto :goto_1

    :pswitch_3
    move v0, v3

    move v6, v1

    .line 620
    goto :goto_1

    :pswitch_4
    move v0, v4

    move v6, v2

    .line 624
    goto :goto_1

    .line 626
    :pswitch_5
    const/16 v3, 0x500

    move v0, v5

    move v6, v3

    .line 628
    goto :goto_1

    .line 636
    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-boolean v1, v1, Lcom/tencent/liteav/f;->E:Z

    if-eqz v1, :cond_4

    .line 637
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    if-eqz v0, :cond_3

    .line 638
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoencoder/b;->b()V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    .line 641
    :cond_3
    const/16 v0, -0x3e8

    goto :goto_0

    .line 644
    :cond_4
    invoke-direct {p0, v6, v0}, Lcom/tencent/liteav/c;->b(II)V

    .line 646
    iget-object v1, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/liteav/videoencoder/b;->a([BIIIJ)J

    .line 647
    const/4 v0, 0x0

    goto :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a()V
    .locals 2

    .prologue
    .line 788
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/b;->g()I

    .line 789
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/b;->a(Lcom/tencent/liteav/audio/f;)V

    .line 790
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/c;->a(F)V

    .line 467
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 398
    iput p1, p0, Lcom/tencent/liteav/c;->m:I

    .line 399
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-nez v0, :cond_0

    .line 401
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/l;->b(I)V

    goto :goto_0
.end method

.method public a(III)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    new-instance v1, Lcom/tencent/liteav/c$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/tencent/liteav/c$1;-><init>(Lcom/tencent/liteav/c;III)V

    invoke-interface {v0, v1}, Lcom/tencent/liteav/l;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 673
    sget-object v0, Lcom/tencent/liteav/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordError code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    sget v0, Lcom/tencent/liteav/audio/d;->b:I

    if-ne p1, v0, :cond_0

    .line 675
    const/16 v0, -0x516

    const-string/jumbo v1, "\u6253\u5f00\u9ea6\u514b\u98ce\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/c;->b(ILjava/lang/String;)V

    .line 677
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/c;->a(Landroid/graphics/Bitmap;)V

    .line 428
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/beauty/c;->a()V

    .line 797
    :cond_0
    return-void
.end method

.method public a(Landroid/media/MediaFormat;)V
    .locals 0

    .prologue
    .line 754
    return-void
.end method

.method public a(Lcom/tencent/liteav/audio/g;)V
    .locals 1

    .prologue
    .line 597
    invoke-static {}, Lcom/tencent/liteav/audio/c;->a()Lcom/tencent/liteav/audio/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/c;->a(Lcom/tencent/liteav/audio/g;)V

    .line 598
    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/c/a;)V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/c;->q:Ljava/lang/ref/WeakReference;

    .line 164
    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/f/b;)V
    .locals 4

    .prologue
    .line 772
    iget v0, p0, Lcom/tencent/liteav/c;->k:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/c;->p:Lcom/tencent/liteav/c$a;

    .line 774
    if-eqz v0, :cond_0

    .line 775
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/tencent/liteav/basic/f/b;->h:J

    .line 776
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/tencent/liteav/basic/f/b;->g:J

    .line 777
    invoke-interface {v0, p1}, Lcom/tencent/liteav/c$a;->onEncVideo(Lcom/tencent/liteav/basic/f/b;)V

    goto :goto_0
.end method

.method public a(Lcom/tencent/liteav/basic/f/b;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 737
    if-nez p2, :cond_1

    .line 738
    iget-object v0, p0, Lcom/tencent/liteav/c;->p:Lcom/tencent/liteav/c$a;

    .line 739
    iget v1, p0, Lcom/tencent/liteav/c;->k:I

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 740
    invoke-interface {v0, p1}, Lcom/tencent/liteav/c$a;->onEncVideo(Lcom/tencent/liteav/basic/f/b;)V

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    const v0, 0x989684

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/c;->e:I

    if-ne v0, v2, :cond_0

    .line 744
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/liteav/f;->j:I

    .line 745
    const/16 v0, 0x44f

    const-string/jumbo v1, "\u786c\u7f16\u7801\u542f\u52a8\u5931\u8d25,\u91c7\u7528\u8f6f\u7f16\u7801"

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/c;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/tencent/liteav/basic/f/c;J)V
    .locals 3

    .prologue
    .line 711
    iget v0, p1, Lcom/tencent/liteav/basic/f/c;->a:I

    iget v1, p1, Lcom/tencent/liteav/basic/f/c;->d:I

    iget v2, p1, Lcom/tencent/liteav/basic/f/c;->e:I

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/liteav/c;->d(III)V

    .line 712
    return-void
.end method

.method public a(Lcom/tencent/liteav/c$a;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/tencent/liteav/c;->p:Lcom/tencent/liteav/c$a;

    .line 116
    return-void
.end method

.method public a(Lcom/tencent/liteav/f;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    iget-object v2, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v3, v2, Lcom/tencent/liteav/f;->k:I

    .line 120
    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-object v2, v2, Lcom/tencent/liteav/f;->t:Landroid/graphics/Bitmap;

    iget-object v4, p1, Lcom/tencent/liteav/f;->t:Landroid/graphics/Bitmap;

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->u:I

    iget v4, p1, Lcom/tencent/liteav/f;->u:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->v:I

    iget v4, p1, Lcom/tencent/liteav/f;->v:I

    if-eq v2, v4, :cond_6

    :cond_0
    move v2, v0

    .line 121
    :goto_0
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-object v4, v4, Lcom/tencent/liteav/f;->x:Landroid/graphics/Bitmap;

    iget-object v5, p1, Lcom/tencent/liteav/f;->x:Landroid/graphics/Bitmap;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v4, v4, Lcom/tencent/liteav/f;->y:I

    iget v5, p1, Lcom/tencent/liteav/f;->y:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v4, v4, Lcom/tencent/liteav/f;->z:I

    iget v5, p1, Lcom/tencent/liteav/f;->z:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v4, v4, Lcom/tencent/liteav/f;->C:F

    iget v5, p1, Lcom/tencent/liteav/f;->C:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v4, v4, Lcom/tencent/liteav/f;->A:F

    iget v5, p1, Lcom/tencent/liteav/f;->A:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v4, v4, Lcom/tencent/liteav/f;->B:F

    iget v5, p1, Lcom/tencent/liteav/f;->B:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    :cond_1
    move v1, v0

    .line 123
    :cond_2
    if-eqz p1, :cond_7

    .line 125
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/liteav/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/f;

    iput-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    invoke-direct {p0, v3}, Lcom/tencent/liteav/c;->l(I)V

    .line 136
    invoke-virtual {p0}, Lcom/tencent/liteav/c;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    invoke-direct {p0}, Lcom/tencent/liteav/c;->q()V

    .line 140
    invoke-direct {p0}, Lcom/tencent/liteav/c;->t()V

    .line 142
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    iget-object v3, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v3, v3, Lcom/tencent/liteav/f;->l:I

    invoke-interface {v0, v3}, Lcom/tencent/liteav/l;->c(I)V

    .line 147
    :cond_3
    if-eqz v2, :cond_4

    .line 148
    invoke-direct {p0}, Lcom/tencent/liteav/c;->r()V

    .line 151
    :cond_4
    if-eqz v1, :cond_5

    .line 152
    invoke-direct {p0}, Lcom/tencent/liteav/c;->s()V

    .line 155
    :cond_5
    return-void

    :cond_6
    move v2, v1

    .line 120
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    new-instance v4, Lcom/tencent/liteav/f;

    invoke-direct {v4}, Lcom/tencent/liteav/f;-><init>()V

    iput-object v4, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    .line 128
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_1

    .line 131
    :cond_7
    new-instance v0, Lcom/tencent/liteav/f;

    invoke-direct {v0}, Lcom/tencent/liteav/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    goto :goto_1
.end method

.method public a(Lcom/tencent/liteav/n;)V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/c;->r:Ljava/lang/ref/WeakReference;

    .line 173
    return-void
.end method

.method public a(Lcom/tencent/liteav/videoencoder/b;)V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0, p1}, Lcom/tencent/liteav/c;->b(Lcom/tencent/liteav/videoencoder/b;)V

    .line 784
    return-void
.end method

.method public a(Lcom/tencent/rtmp1/ui/TXCloudVideoView;)V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->E:Z

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lcom/tencent/liteav/c;->b:Ljava/lang/String;

    const-string v1, "enable pure audio push , so can not start preview!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->getGLSurfaceView()Lcom/tencent/liteav/renderer/d;

    move-result-object v0

    .line 331
    if-nez v0, :cond_1

    .line 332
    sget-object v0, Lcom/tencent/liteav/c;->b:Ljava/lang/String;

    const-string/jumbo v1, "surfaceView : new "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v0, Lcom/tencent/liteav/renderer/d;

    invoke-virtual {p1}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/renderer/d;-><init>(Landroid/content/Context;)V

    .line 334
    invoke-virtual {p1, v0}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->addVideoView(Lcom/tencent/liteav/renderer/d;)V

    .line 337
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/c;->j:I

    .line 338
    new-instance v0, Lcom/tencent/liteav/b;

    iget-object v1, p0, Lcom/tencent/liteav/c;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/liteav/b;-><init>(Landroid/content/Context;Lcom/tencent/liteav/f;Lcom/tencent/rtmp1/ui/TXCloudVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    .line 339
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0, p0}, Lcom/tencent/liteav/l;->a(Lcom/tencent/liteav/m;)V

    .line 340
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0, p0}, Lcom/tencent/liteav/l;->a(Lcom/tencent/liteav/basic/c/a;)V

    .line 341
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0}, Lcom/tencent/liteav/l;->a()V

    .line 342
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    iget v1, p0, Lcom/tencent/liteav/c;->m:I

    invoke-interface {v0, v1}, Lcom/tencent/liteav/l;->b(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/c;->a(Ljava/lang/String;)V

    .line 440
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0, v2}, Lcom/tencent/liteav/l;->a(Lcom/tencent/liteav/m;)V

    .line 348
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/l;->a(Z)V

    .line 349
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    new-instance v1, Lcom/tencent/liteav/c$3;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/c$3;-><init>(Lcom/tencent/liteav/c;)V

    invoke-interface {v0, v1}, Lcom/tencent/liteav/l;->a(Ljava/lang/Runnable;)V

    .line 361
    iput-object v2, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/c;->b(Lcom/tencent/liteav/videoencoder/b;)V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    .line 368
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a([B)V
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/b;->a([B)V

    .line 168
    return-void
.end method

.method public a([BIIIJ)V
    .locals 0

    .prologue
    .line 717
    return-void
.end method

.method public a([BJ)V
    .locals 0

    .prologue
    .line 656
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v0, v0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    return v0
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-nez v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/l;->a(F)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/c;->b(I)V

    .line 422
    :cond_0
    return-void
.end method

.method public b(Lcom/tencent/liteav/basic/f/c;)V
    .locals 3

    .prologue
    .line 804
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->E:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-eqz v0, :cond_2

    .line 805
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v0, v0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    iget v1, p1, Lcom/tencent/liteav/basic/f/c;->g:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v0, v0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    iget v1, p1, Lcom/tencent/liteav/basic/f/c;->f:I

    if-eq v0, v1, :cond_1

    .line 806
    :cond_0
    iget v0, p1, Lcom/tencent/liteav/basic/f/c;->f:I

    iget v1, p1, Lcom/tencent/liteav/basic/f/c;->g:I

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/c;->a(II)V

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    iget v1, p1, Lcom/tencent/liteav/basic/f/c;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/liteav/beauty/c;->a(Lcom/tencent/liteav/basic/f/c;II)I

    .line 810
    :cond_2
    return-void
.end method

.method public b([BJ)V
    .locals 6

    .prologue
    .line 665
    iget-object v0, p0, Lcom/tencent/liteav/c;->p:Lcom/tencent/liteav/c$a;

    .line 666
    if-eqz v0, :cond_0

    .line 667
    iget-object v1, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v4, v1, Lcom/tencent/liteav/f;->q:I

    iget v5, p0, Lcom/tencent/liteav/c;->n:I

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/tencent/liteav/c$a;->onEncAudio([BJII)V

    .line 669
    :cond_0
    return-void
.end method

.method public b(III)Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/c;->c(I)V

    .line 412
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0, p2}, Lcom/tencent/liteav/beauty/c;->d(I)V

    .line 413
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0, p3}, Lcom/tencent/liteav/beauty/c;->e(I)V

    .line 415
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/beauty/c;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 447
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 406
    :goto_0
    return v0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/l;->d(Z)Z

    .line 406
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v0, v0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/c;->f(I)V

    .line 434
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 498
    iput-boolean p1, p0, Lcom/tencent/liteav/c;->s:Z

    .line 499
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/b;->c(Z)V

    .line 500
    return-void
.end method

.method public c(F)Z
    .locals 1

    .prologue
    .line 585
    invoke-static {}, Lcom/tencent/liteav/audio/c;->a()Lcom/tencent/liteav/audio/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/c;->a(F)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/tencent/liteav/c;->h:Landroid/content/Context;

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->aw:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    .line 569
    invoke-static {}, Lcom/tencent/liteav/audio/c;->a()Lcom/tencent/liteav/audio/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 191
    invoke-virtual {p0}, Lcom/tencent/liteav/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/tencent/liteav/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore startPush when pushing, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/liteav/c;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, -0x2

    .line 217
    :goto_0
    return v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->initCrashReport(Landroid/content/Context;)V

    .line 198
    iput v2, p0, Lcom/tencent/liteav/c;->k:I

    .line 199
    sget-object v0, Lcom/tencent/liteav/c;->b:Ljava/lang/String;

    const-string v1, "startPusher"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/tencent/liteav/c;->q()V

    .line 203
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/audio/b;->a(Lcom/tencent/liteav/audio/f;)V

    .line 205
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->E:Z

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/tencent/liteav/c;->j:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0}, Lcom/tencent/liteav/l;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/c;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/b;->a(Landroid/content/Context;)I

    .line 213
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/tencent/liteav/c;->t()V

    .line 216
    iget-object v0, p0, Lcom/tencent/liteav/c;->h:Landroid/content/Context;

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->aF:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    .line 217
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0, v2}, Lcom/tencent/liteav/l;->e(Z)V

    goto :goto_1
.end method

.method public d(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 593
    invoke-static {}, Lcom/tencent/liteav/audio/c;->a()Lcom/tencent/liteav/audio/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/c;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/c;->g(I)V

    .line 455
    :cond_0
    return-void
.end method

.method public d(F)Z
    .locals 1

    .prologue
    .line 589
    invoke-static {}, Lcom/tencent/liteav/audio/c;->a()Lcom/tencent/liteav/audio/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/c;->b(F)Z

    move-result v0

    return v0
.end method

.method public d(Z)Z
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 531
    :goto_0
    return v0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/l;->c(Z)V

    .line 531
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/tencent/liteav/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    sget-object v0, Lcom/tencent/liteav/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore stopPush when not pushing, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/liteav/c;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void

    .line 225
    :cond_0
    sget-object v0, Lcom/tencent/liteav/c;->b:Ljava/lang/String;

    const-string v1, "stopPusher"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iput v2, p0, Lcom/tencent/liteav/c;->k:I

    .line 227
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/b;->g()I

    .line 228
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/audio/b;->a(Lcom/tencent/liteav/audio/f;)V

    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/c;->b(Lcom/tencent/liteav/videoencoder/b;)V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    .line 235
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iput-boolean v2, v0, Lcom/tencent/liteav/f;->H:Z

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/c;->h(I)V

    .line 461
    :cond_0
    return-void
.end method

.method public f()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 241
    iget v0, p0, Lcom/tencent/liteav/c;->k:I

    if-eq v0, v3, :cond_1

    .line 242
    sget-object v0, Lcom/tencent/liteav/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore pause push when is not pushing, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/liteav/c;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iput v4, p0, Lcom/tencent/liteav/c;->k:I

    .line 246
    sget-object v0, Lcom/tencent/liteav/c;->b:Ljava/lang/String;

    const-string v1, "pausePusher"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->w:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    .line 248
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->E:Z

    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/a;

    iget-object v1, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v1, v1, Lcom/tencent/liteav/f;->v:I

    iget-object v2, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->u:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/a;->a(II)V

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0}, Lcom/tencent/liteav/l;->b()V

    .line 254
    :cond_3
    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/c;->b(Lcom/tencent/liteav/videoencoder/b;)V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    .line 257
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->w:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_0

    .line 262
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/audio/b;->c(Z)V

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/c;->i(I)V

    .line 473
    :cond_0
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 267
    iget v0, p0, Lcom/tencent/liteav/c;->k:I

    if-eq v0, v3, :cond_1

    .line 268
    sget-object v0, Lcom/tencent/liteav/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore resume push when is not pause, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/liteav/c;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iput v2, p0, Lcom/tencent/liteav/c;->k:I

    .line 272
    sget-object v0, Lcom/tencent/liteav/c;->b:Ljava/lang/String;

    const-string v1, "resumePusher"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->w:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_3

    .line 275
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->E:Z

    if-nez v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/a;->a()V

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0}, Lcom/tencent/liteav/l;->a()V

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->w:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_0

    .line 283
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/liteav/c;->s:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/b;->c(Z)V

    goto :goto_0
.end method

.method public g(I)V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/c;->j(I)V

    .line 480
    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/c;->k(I)V

    .line 487
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/tencent/liteav/c;->k:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-nez v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    new-instance v1, Lcom/tencent/liteav/c$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/c$2;-><init>(Lcom/tencent/liteav/c;)V

    invoke-interface {v0, v1}, Lcom/tencent/liteav/l;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public i(I)V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/c;->l(I)V

    .line 494
    :cond_0
    return-void
.end method

.method public j()V
    .locals 3

    .prologue
    .line 372
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 374
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 375
    const-string v1, "EVT_MSG"

    const-string/jumbo v2, "\u5f55\u5c4f\u5931\u8d25,\u4e0d\u652f\u6301\u7684Android\u7cfb\u7edf\u7248\u672c,\u9700\u89815.0\u4ee5\u4e0a\u7684\u7cfb\u7edf"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/16 v1, -0x51d

    invoke-virtual {p0, v1, v0}, Lcom/tencent/liteav/c;->onNotifyEvent(ILandroid/os/Bundle;)V

    .line 377
    sget-object v0, Lcom/tencent/liteav/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen capture need running on Android Lollipop or higher version, current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/rtmp1/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :goto_0
    return-void

    .line 380
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/c;->j:I

    .line 381
    new-instance v0, Lcom/tencent/liteav/i;

    iget-object v1, p0, Lcom/tencent/liteav/c;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/liteav/c;->i:Lcom/tencent/liteav/f;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/i;-><init>(Landroid/content/Context;Lcom/tencent/liteav/f;)V

    iput-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    .line 382
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0, p0}, Lcom/tencent/liteav/l;->a(Lcom/tencent/liteav/basic/c/a;)V

    .line 383
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0, p0}, Lcom/tencent/liteav/l;->a(Lcom/tencent/liteav/m;)V

    .line 384
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0}, Lcom/tencent/liteav/l;->a()V

    .line 385
    iget-object v0, p0, Lcom/tencent/liteav/c;->h:Landroid/content/Context;

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->aC:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public j(I)Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 520
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/l;->a(I)Z

    move-result v0

    goto :goto_0
.end method

.method public k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 389
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-nez v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    .line 391
    invoke-direct {p0, v0}, Lcom/tencent/liteav/c;->b(Lcom/tencent/liteav/videoencoder/b;)V

    .line 392
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/liteav/l;->a(Z)V

    .line 393
    iput-object v2, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    .line 394
    iput-object v2, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    goto :goto_0
.end method

.method public k(I)V
    .locals 2

    .prologue
    .line 546
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/b;->c(I)V

    .line 547
    iget-object v0, p0, Lcom/tencent/liteav/c;->h:Landroid/content/Context;

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->av:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    .line 548
    return-void
.end method

.method public l()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 509
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Lcom/tencent/liteav/l;

    invoke-interface {v0}, Lcom/tencent/liteav/l;->d()I

    move-result v0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 573
    invoke-static {}, Lcom/tencent/liteav/audio/c;->a()Lcom/tencent/liteav/audio/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/c;->b()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 577
    invoke-static {}, Lcom/tencent/liteav/audio/c;->a()Lcom/tencent/liteav/audio/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/c;->c()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 581
    invoke-static {}, Lcom/tencent/liteav/audio/c;->a()Lcom/tencent/liteav/audio/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/c;->d()Z

    move-result v0

    return v0
.end method

.method public onNotifyEvent(ILandroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 761
    if-eqz p2, :cond_0

    .line 762
    const-string v0, "EVT_USERID"

    iget-wide v2, p0, Lcom/tencent/liteav/c;->o:J

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->q:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/basic/util/a;->a(Ljava/lang/ref/WeakReference;ILandroid/os/Bundle;)V

    .line 765
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/liteav/beauty/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/beauty/c;->a()V

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->r:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/tencent/liteav/c;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/n;

    .line 819
    if-eqz v0, :cond_1

    .line 820
    invoke-interface {v0}, Lcom/tencent/liteav/n;->onTextureDestoryed()V

    .line 823
    :cond_1
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/tencent/liteav/basic/module/a;->setID(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/videoencoder/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoencoder/b;->setID(Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method
