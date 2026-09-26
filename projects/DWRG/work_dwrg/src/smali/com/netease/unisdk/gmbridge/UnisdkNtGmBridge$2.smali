.class final Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$2;
.super Ljava/lang/Object;
.source "UnisdkNtGmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntInit(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$windowGravity:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$2;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$2;->val$windowGravity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$2;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$2;->val$windowGravity:I

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->initGmFloatWindow(Landroid/content/Context;I)V

    .line 110
    return-void
.end method
