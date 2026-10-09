.class Lcom/netease/dwrg/GameVoiceUtils$1;
.super Ljava/lang/Object;
.source "GameVoiceUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/GameVoiceUtils;->onPlayerListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$infoCode:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 346
    iput p1, p0, Lcom/netease/dwrg/GameVoiceUtils$1;->val$infoCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 349
    iget v0, p0, Lcom/netease/dwrg/GameVoiceUtils$1;->val$infoCode:I

    invoke-static {v0}, Lcom/netease/neox/NativeInterface;->NativeOnPlayStateCallback(I)V

    return-void
.end method
