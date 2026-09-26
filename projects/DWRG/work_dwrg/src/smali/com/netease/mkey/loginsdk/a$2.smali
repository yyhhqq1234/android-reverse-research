.class final Lcom/netease/mkey/loginsdk/a$2;
.super Ljava/lang/Object;
.source "LoginHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mkey/loginsdk/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mkey/loginsdk/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/netease/mkey/loginsdk/a$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mkey/loginsdk/a$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mkey/loginsdk/a$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mkey/loginsdk/a$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 170
    invoke-static {p2}, Lcom/netease/mkey/a$a;->a(Landroid/os/IBinder;)Lcom/netease/mkey/a;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mkey/loginsdk/a;->a(Lcom/netease/mkey/a;)Lcom/netease/mkey/a;

    .line 172
    :try_start_0
    invoke-static {}, Lcom/netease/mkey/loginsdk/a;->b()Lcom/netease/mkey/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mkey/loginsdk/a$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mkey/loginsdk/a$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mkey/loginsdk/a$2;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mkey/loginsdk/a$2;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/netease/mkey/loginsdk/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {}, Lcom/netease/mkey/loginsdk/a;->a()Lcom/netease/mkey/b;

    move-result-object v2

    .line 172
    invoke-interface {v0, v1, v2}, Lcom/netease/mkey/a;->a(Ljava/lang/String;Lcom/netease/mkey/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 176
    :catch_1
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 182
    return-void
.end method
