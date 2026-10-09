.class Lcom/android/support/Menu$100000023$100000021;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Menu$100000023;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000021"
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Menu$100000023;

.field private final val$button:Landroid/widget/Button;

.field private final val$editText:Landroid/widget/EditText;

.field private final val$featName:Ljava/lang/String;

.field private final val$featNum:I


# direct methods
.method constructor <init>(Lcom/android/support/Menu$100000023;Landroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;I)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/android/support/Menu$100000023$100000021;->this$0:Lcom/android/support/Menu$100000023;

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/android/support/Menu$100000023$100000021;->val$editText:Landroid/widget/EditText;

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/android/support/Menu$100000023$100000021;->val$button:Landroid/widget/Button;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/android/support/Menu$100000023$100000021;->val$featName:Ljava/lang/String;

    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/android/support/Menu$100000023$100000021;->val$featNum:I

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000023$100000021;)Lcom/android/support/Menu$100000023;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000023$100000021;->this$0:Lcom/android/support/Menu$100000023;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1171
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v6, v0

    iget-object v6, v6, Lcom/android/support/Menu$100000023$100000021;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 1172
    move-object v6, v0

    iget-object v6, v6, Lcom/android/support/Menu$100000023$100000021;->val$button:Landroid/widget/Button;

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v0

    iget-object v12, v12, Lcom/android/support/Menu$100000023$100000021;->val$featName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ": <font color=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/android/support/Menu$100000023$100000021;->this$0:Lcom/android/support/Menu$100000023;

    invoke-static {v11}, Lcom/android/support/Menu$100000023;->access$0(Lcom/android/support/Menu$100000023;)Lcom/android/support/Menu;

    move-result-object v11

    iget-object v11, v11, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\'>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "</font>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    move-object v6, v0

    iget-object v6, v6, Lcom/android/support/Menu$100000023$100000021;->val$featName:Ljava/lang/String;

    move-object v7, v0

    iget v7, v7, Lcom/android/support/Menu$100000023$100000021;->val$featNum:I

    move-object v8, v4

    invoke-static {v6, v7, v8}, Lcom/android/support/Preferences;->changeFeatureString(Ljava/lang/String;ILjava/lang/String;)V

    .line 1174
    move-object v6, v0

    iget-object v6, v6, Lcom/android/support/Menu$100000023$100000021;->val$editText:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    return-void
.end method
