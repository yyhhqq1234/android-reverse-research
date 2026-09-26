.class Lcom/netease/mpay/ma;
.super Lcom/netease/mpay/widget/aw$a;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/netease/mpay/lq;

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lcom/netease/mpay/lq;JJ)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/netease/mpay/ma;->c:Lcom/netease/mpay/lq;

    iput-wide p2, p0, Lcom/netease/mpay/ma;->a:J

    iput-wide p4, p0, Lcom/netease/mpay/ma;->b:J

    invoke-direct {p0}, Lcom/netease/mpay/widget/aw$a;-><init>()V

    iput-boolean v0, p0, Lcom/netease/mpay/ma;->d:Z

    iput-boolean v0, p0, Lcom/netease/mpay/ma;->e:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/mpay/ma;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x19

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/mpay/ma;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-wide/16 v0, 0x3

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x6

    goto :goto_0
.end method

.method protected b()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/mpay/ma;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/netease/mpay/ma;->b:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/mpay/ma;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netease/mpay/ma;->c:Lcom/netease/mpay/lq;

    invoke-static {v0}, Lcom/netease/mpay/lq;->d(Lcom/netease/mpay/lq;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/netease/mpay/ma;->e:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/ma;->c:Lcom/netease/mpay/lq;

    invoke-static {v0}, Lcom/netease/mpay/lq;->d(Lcom/netease/mpay/lq;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/netease/mpay/ma;->e:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/netease/mpay/ma;->d:Z

    goto :goto_0
.end method
