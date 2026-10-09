.class public abstract Landroid/support/v4/media/session/MediaSessionCompat$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$a$d;,
        Landroid/support/v4/media/session/MediaSessionCompat$a$c;,
        Landroid/support/v4/media/session/MediaSessionCompat$a$b;,
        Landroid/support/v4/media/session/MediaSessionCompat$a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

.field final b:Ljava/lang/Object;

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/session/MediaSessionCompat$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$a$d;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$d;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$a;)V

    new-instance v1, Landroid/support/v4/media/session/i$b;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/i$b;-><init>(Landroid/support/v4/media/session/i$a;)V

    :goto_0
    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->b:Ljava/lang/Object;

    return-void

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$a$c;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$c;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$a;)V

    new-instance v1, Landroid/support/v4/media/session/h$b;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/h$b;-><init>(Landroid/support/v4/media/session/h$a;)V

    goto :goto_0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$a;)V

    new-instance v1, Landroid/support/v4/media/session/f$b;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/f$b;-><init>(Landroid/support/v4/media/session/f$a;)V

    goto :goto_0

    :cond_2
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->b:Ljava/lang/Object;

    return-void
.end method

.method private static A()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static a()V
    .locals 0

    return-void
.end method

.method private static b()V
    .locals 0

    return-void
.end method

.method private static c()V
    .locals 0

    return-void
.end method

.method private static d()V
    .locals 0

    return-void
.end method

.method private static e()V
    .locals 0

    return-void
.end method

.method private static f()V
    .locals 0

    return-void
.end method

.method private static g()V
    .locals 0

    return-void
.end method

.method private static h()V
    .locals 0

    return-void
.end method

.method private static i()V
    .locals 0

    return-void
.end method

.method private static j()V
    .locals 0

    return-void
.end method

.method private static k()V
    .locals 0

    return-void
.end method

.method private static l()V
    .locals 0

    return-void
.end method

.method private static m()V
    .locals 0

    return-void
.end method

.method private static n()V
    .locals 0

    return-void
.end method

.method private static o()V
    .locals 0

    return-void
.end method

.method private static p()V
    .locals 0

    return-void
.end method

.method private static q()V
    .locals 0

    return-void
.end method

.method private static r()V
    .locals 0

    return-void
.end method

.method private static s()V
    .locals 0

    return-void
.end method

.method private static t()V
    .locals 0

    return-void
.end method

.method private static u()V
    .locals 0

    return-void
.end method

.method private static v()V
    .locals 0

    return-void
.end method

.method private static w()V
    .locals 0

    return-void
.end method

.method private static x()V
    .locals 0

    return-void
.end method

.method private static y()V
    .locals 0

    return-void
.end method

.method private static z()V
    .locals 0

    return-void
.end method


# virtual methods
.method final a(Landroid/support/v4/media/session/MediaSessionCompat$b;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->c:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    return-void
.end method

.method final a(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Z

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->removeMessages(I)V

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$b;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1b

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$b;

    if-eqz v0, :cond_6

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$b;->h()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x4f

    if-eq v2, v3, :cond_3

    const/16 v3, 0x55

    if-eq v2, v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    const/4 v2, 0x1

    if-lez p1, :cond_4

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    invoke-virtual {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->removeMessages(I)V

    iput-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Z

    goto :goto_0

    :cond_5
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Z

    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    invoke-virtual {p1, v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p1, v0, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return v2

    :cond_6
    :goto_1
    return v1
.end method
