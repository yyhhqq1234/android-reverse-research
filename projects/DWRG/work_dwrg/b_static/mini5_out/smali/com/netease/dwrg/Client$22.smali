.class Lcom/netease/dwrg/Client$22;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Client;->setBrightness(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/Client;

.field final synthetic val$b:F


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Client;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2181
    iput-object p1, p0, Lcom/netease/dwrg/Client$22;->this$0:Lcom/netease/dwrg/Client;

    iput p2, p0, Lcom/netease/dwrg/Client$22;->val$b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2185
    iget v0, p0, Lcom/netease/dwrg/Client$22;->val$b:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "%f"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "setBrightness"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    iget v0, p0, Lcom/netease/dwrg/Client$22;->val$b:F

    const/4 v2, 0x0

    const-string v4, "screen_brightness_mode"

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 2188
    iget-object v0, p0, Lcom/netease/dwrg/Client$22;->this$0:Lcom/netease/dwrg/Client;

    invoke-virtual {v0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2192
    iget-object v0, p0, Lcom/netease/dwrg/Client$22;->this$0:Lcom/netease/dwrg/Client;

    invoke-virtual {v0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/netease/dwrg/Client$22;->val$b:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2196
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Client$22;->this$0:Lcom/netease/dwrg/Client;

    invoke-virtual {v0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method
