.class Lcom/ryg/dynamicload/DLBasePluginActivity$1;
.super Landroid/view/OrientationEventListener;
.source "DLBasePluginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ryg/dynamicload/DLBasePluginActivity;->startOrientationChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;


# direct methods
.method constructor <init>(Lcom/ryg/dynamicload/DLBasePluginActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ryg/dynamicload/DLBasePluginActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$1;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "rotation"    # I

    .prologue
    const/16 v4, 0x13b

    const/16 v3, 0x2d

    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 147
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$1;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    iget-boolean v0, v0, Lcom/ryg/dynamicload/DLBasePluginActivity;->tgaAllowOrienPort:Z

    if-eqz v0, :cond_1

    .line 148
    if-gt p1, v4, :cond_0

    if-lez p1, :cond_1

    if-ge p1, v3, :cond_1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$1;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    invoke-static {v0}, Lcom/ryg/dynamicload/DLBasePluginActivity;->access$000(Lcom/ryg/dynamicload/DLBasePluginActivity;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$1;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    invoke-static {v0, v1}, Lcom/ryg/dynamicload/DLBasePluginActivity;->access$002(Lcom/ryg/dynamicload/DLBasePluginActivity;I)I

    .line 151
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$1;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$1;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    invoke-static {v1}, Lcom/ryg/dynamicload/DLBasePluginActivity;->access$000(Lcom/ryg/dynamicload/DLBasePluginActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ryg/dynamicload/DLBasePluginActivity;->access$100(Lcom/ryg/dynamicload/DLBasePluginActivity;I)V

    .line 155
    :cond_1
    if-le p1, v3, :cond_3

    const/16 v0, 0x87

    if-ge p1, v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$1;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    invoke-static {v0}, Lcom/ryg/dynamicload/DLBasePluginActivity;->access$000(Lcom/ryg/dynamicload/DLBasePluginActivity;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 157
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$1;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    invoke-static {v0, v2}, Lcom/ryg/dynamicload/DLBasePluginActivity;->access$002(Lcom/ryg/dynamicload/DLBasePluginActivity;I)I

    .line 158
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$1;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$1;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    invoke-static {v1}, Lcom/ryg/dynamicload/DLBasePluginActivity;->access$000(Lcom/ryg/dynamicload/DLBasePluginActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ryg/dynamicload/DLBasePluginActivity;->access$100(Lcom/ryg/dynamicload/DLBasePluginActivity;I)V

    .line 166
    :cond_2
    :goto_0
    return-void

    .line 160
    :cond_3
    const/16 v0, 0xe1

    if-le p1, v0, :cond_2

    if-ge p1, v4, :cond_2

    .line 161
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$1;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    invoke-static {v0}, Lcom/ryg/dynamicload/DLBasePluginActivity;->access$000(Lcom/ryg/dynamicload/DLBasePluginActivity;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$1;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ryg/dynamicload/DLBasePluginActivity;->access$002(Lcom/ryg/dynamicload/DLBasePluginActivity;I)I

    .line 163
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$1;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$1;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    invoke-static {v1}, Lcom/ryg/dynamicload/DLBasePluginActivity;->access$000(Lcom/ryg/dynamicload/DLBasePluginActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ryg/dynamicload/DLBasePluginActivity;->access$100(Lcom/ryg/dynamicload/DLBasePluginActivity;I)V

    goto :goto_0
.end method
