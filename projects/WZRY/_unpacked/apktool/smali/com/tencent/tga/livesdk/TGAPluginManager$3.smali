.class final Lcom/tencent/tga/livesdk/TGAPluginManager$3;
.super Ljava/lang/Object;
.source "TGAPluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tga/livesdk/TGAPluginManager;->init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$manager:Lcom/tencent/tga/livesdk/TGAPluginManager;


# direct methods
.method constructor <init>(Lcom/tencent/tga/livesdk/TGAPluginManager;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$3;->val$manager:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$3;->val$manager:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v0}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$300(Lcom/tencent/tga/livesdk/TGAPluginManager;)V

    .line 312
    return-void
.end method
