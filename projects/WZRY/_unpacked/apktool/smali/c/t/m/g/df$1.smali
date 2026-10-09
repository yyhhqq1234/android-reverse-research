.class final Lc/t/m/g/df$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/t/m/g/df;-><init>(Lc/t/m/g/cj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/df;


# direct methods
.method constructor <init>(Lc/t/m/g/df;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lc/t/m/g/df$1;->a:Lc/t/m/g/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const-wide/16 v0, 0x1388

    .line 70
    iget-object v2, p0, Lc/t/m/g/df$1;->a:Lc/t/m/g/df;

    invoke-static {v2}, Lc/t/m/g/df;->a(Lc/t/m/g/df;)Z

    .line 72
    iget-object v2, p0, Lc/t/m/g/df$1;->a:Lc/t/m/g/df;

    invoke-static {v2}, Lc/t/m/g/df;->b(Lc/t/m/g/df;)Lc/t/m/g/cj;

    move-result-object v2

    invoke-virtual {v2}, Lc/t/m/g/cj;->i()Lc/t/m/g/ck;

    move-result-object v2

    iget-wide v2, v2, Lc/t/m/g/ck;->m:J

    .line 74
    iget-object v4, p0, Lc/t/m/g/df$1;->a:Lc/t/m/g/df;

    invoke-static {v4}, Lc/t/m/g/df;->c(Lc/t/m/g/df;)Z

    move-result v4

    if-eqz v4, :cond_0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 80
    :goto_0
    iget-object v2, p0, Lc/t/m/g/df$1;->a:Lc/t/m/g/df;

    invoke-static {v2, v0, v1}, Lc/t/m/g/df;->a(Lc/t/m/g/df;J)V

    .line 81
    const-string v2, "TxWifiProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interval:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method
