.class Lim/yixin/sdk/api/YXApiImplementation$1;
.super Ljava/lang/Object;
.source "YXApiImplementation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/yixin/sdk/api/YXApiImplementation;->toast(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/yixin/sdk/api/YXApiImplementation;

.field private final synthetic val$duration:I

.field private final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lim/yixin/sdk/api/YXApiImplementation;Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/yixin/sdk/api/YXApiImplementation$1;->this$0:Lim/yixin/sdk/api/YXApiImplementation;

    iput-object p2, p0, Lim/yixin/sdk/api/YXApiImplementation$1;->val$text:Ljava/lang/CharSequence;

    iput p3, p0, Lim/yixin/sdk/api/YXApiImplementation$1;->val$duration:I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lim/yixin/sdk/api/YXApiImplementation$1;->this$0:Lim/yixin/sdk/api/YXApiImplementation;

    invoke-static {v0}, Lim/yixin/sdk/api/YXApiImplementation;->access$0(Lim/yixin/sdk/api/YXApiImplementation;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lim/yixin/sdk/api/YXApiImplementation$1;->val$text:Ljava/lang/CharSequence;

    iget v2, p0, Lim/yixin/sdk/api/YXApiImplementation$1;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    return-void
.end method
