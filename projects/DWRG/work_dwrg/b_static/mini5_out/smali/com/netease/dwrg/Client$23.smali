.class Lcom/netease/dwrg/Client$23;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Client;->getBrightness()F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/Client;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Client;)V
    .locals 0

    .line 2211
    iput-object p1, p0, Lcom/netease/dwrg/Client$23;->this$0:Lcom/netease/dwrg/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Float;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2216
    iget-object v0, p0, Lcom/netease/dwrg/Client$23;->this$0:Lcom/netease/dwrg/Client;

    invoke-virtual {v0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 2218
    iget-object v0, p0, Lcom/netease/dwrg/Client$23;->this$0:Lcom/netease/dwrg/Client;

    invoke-virtual {v0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2222
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Client$23;->this$0:Lcom/netease/dwrg/Client;

    invoke-virtual {v0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0xff

    const-string v4, "screen_brightness"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2223
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 2224
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2211
    invoke-virtual {p0}, Lcom/netease/dwrg/Client$23;->call()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
