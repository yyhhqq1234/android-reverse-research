.class Lcom/unity3d/unitygar/GoogleAR$2;
.super Ljava/lang/Object;
.source "GoogleAR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/unitygar/GoogleAR;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/unitygar/GoogleAR;


# direct methods
.method constructor <init>(Lcom/unity3d/unitygar/GoogleAR;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/unitygar/GoogleAR;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/unity3d/unitygar/GoogleAR$2;->this$0:Lcom/unity3d/unitygar/GoogleAR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/unity3d/unitygar/GoogleAR$2;->this$0:Lcom/unity3d/unitygar/GoogleAR;

    iget-object v1, p0, Lcom/unity3d/unitygar/GoogleAR$2;->this$0:Lcom/unity3d/unitygar/GoogleAR;

    iget-object v1, v1, Lcom/unity3d/unitygar/GoogleAR;->m_tango:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0, v1}, Lcom/unity3d/unitygar/GoogleAR;->access$500(Lcom/unity3d/unitygar/GoogleAR;Lcom/google/atap/tangoservice/Tango;)V

    .line 78
    return-void
.end method
