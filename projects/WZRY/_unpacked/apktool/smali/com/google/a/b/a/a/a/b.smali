.class public abstract Lcom/google/a/b/a/a/a/b;
.super Lcom/google/a/a/b;

# interfaces
.implements Lcom/google/a/b/a/a/a/a;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/a/b/a/a/a/a;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.play.core.install.protocol.IInstallService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/a/b/a/a/a/a;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/a/b/a/a/a/a;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/a/b/a/a/a/c;

    invoke-direct {v0, p0}, Lcom/google/a/b/a/a/a/c;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method
