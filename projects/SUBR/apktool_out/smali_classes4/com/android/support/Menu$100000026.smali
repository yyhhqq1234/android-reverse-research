.class Lcom/android/support/Menu$100000026;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000026"
.end annotation


# instance fields
.field isChecked:Z

.field private final this$0:Lcom/android/support/Menu;

.field private final val$collapseSub:Landroid/widget/LinearLayout;

.field private final val$expanded:Z

.field private final val$text:Ljava/lang/String;

.field private final val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/support/Menu;ZLandroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/android/support/Menu$100000026;->this$0:Lcom/android/support/Menu;

    move-object v7, v0

    move v8, v2

    iput-boolean v8, v7, Lcom/android/support/Menu$100000026;->val$expanded:Z

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/android/support/Menu$100000026;->val$collapseSub:Landroid/widget/LinearLayout;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/android/support/Menu$100000026;->val$textView:Landroid/widget/TextView;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/android/support/Menu$100000026;->val$text:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v0

    iget-boolean v8, v8, Lcom/android/support/Menu$100000026;->val$expanded:Z

    iput-boolean v8, v7, Lcom/android/support/Menu$100000026;->isChecked:Z

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000026;)Lcom/android/support/Menu;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000026;->this$0:Lcom/android/support/Menu;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 1297
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/support/Menu$100000026;->isChecked:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move v3, v5

    .line 1298
    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Lcom/android/support/Menu$100000026;->isChecked:Z

    .line 1299
    move v5, v3

    if-eqz v5, :cond_1

    .line 1300
    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000026;->val$collapseSub:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1301
    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000026;->val$textView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "\u25b3 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000026;->val$text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " \u25b3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    :goto_1
    return-void

    .line 1297
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 1304
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000026;->val$collapseSub:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1305
    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000026;->val$textView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "\u25bd "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000026;->val$text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " \u25bd"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
