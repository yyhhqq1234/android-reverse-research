.class Lcom/android/support/Menu$100000016$100000014;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Menu$100000016;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000014"
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Menu$100000016;

.field private final val$button:Landroid/widget/Button;

.field private final val$editText:Landroid/widget/EditText;

.field private final val$featName:Ljava/lang/String;

.field private final val$featNum:I

.field private final val$maxValue:I


# direct methods
.method constructor <init>(Lcom/android/support/Menu$100000016;Landroid/widget/EditText;ILandroid/widget/Button;Ljava/lang/String;I)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/android/support/Menu$100000016$100000014;->this$0:Lcom/android/support/Menu$100000016;

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/android/support/Menu$100000016$100000014;->val$editText:Landroid/widget/EditText;

    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/android/support/Menu$100000016$100000014;->val$maxValue:I

    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lcom/android/support/Menu$100000016$100000014;->val$button:Landroid/widget/Button;

    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/android/support/Menu$100000016$100000014;->val$featName:Ljava/lang/String;

    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/android/support/Menu$100000016$100000014;->val$featNum:I

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000016$100000014;)Lcom/android/support/Menu$100000016;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000016$100000014;->this$0:Lcom/android/support/Menu$100000016;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 999
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/android/support/Menu$100000016$100000014;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1002
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "0"

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v4, v7

    .line 1003
    move-object v7, v0

    iget v7, v7, Lcom/android/support/Menu$100000016$100000014;->val$maxValue:I

    const/4 v8, 0x0

    if-eq v7, v8, :cond_0

    move v7, v4

    move-object v8, v0

    iget v8, v8, Lcom/android/support/Menu$100000016$100000014;->val$maxValue:I

    if-lt v7, v8, :cond_0

    .line 1004
    move-object v7, v0

    iget v7, v7, Lcom/android/support/Menu$100000016$100000014;->val$maxValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v7

    .line 1012
    :cond_0
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Lcom/android/support/Menu$100000016$100000014;->val$button:Landroid/widget/Button;

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object v13, v0

    iget-object v13, v13, Lcom/android/support/Menu$100000016$100000014;->val$featName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, ": <font color=\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lcom/android/support/Menu$100000016$100000014;->this$0:Lcom/android/support/Menu$100000016;

    invoke-static {v12}, Lcom/android/support/Menu$100000016;->access$0(Lcom/android/support/Menu$100000016;)Lcom/android/support/Menu;

    move-result-object v12

    iget-object v12, v12, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\'>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "</font>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    move-object v7, v0

    iget-object v7, v7, Lcom/android/support/Menu$100000016$100000014;->val$featName:Ljava/lang/String;

    move-object v8, v0

    iget v8, v8, Lcom/android/support/Menu$100000016$100000014;->val$featNum:I

    move v9, v4

    invoke-static {v7, v8, v9}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    .line 1014
    move-object v7, v0

    iget-object v7, v7, Lcom/android/support/Menu$100000016$100000014;->val$editText:Landroid/widget/EditText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    return-void

    .line 1002
    :cond_1
    move-object v7, v5

    goto/16 :goto_0

    .line 1004
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 1006
    move-object v7, v0

    iget v7, v7, Lcom/android/support/Menu$100000016$100000014;->val$maxValue:I

    const/4 v8, 0x0

    if-eq v7, v8, :cond_2

    .line 1007
    move-object v7, v0

    iget v7, v7, Lcom/android/support/Menu$100000016$100000014;->val$maxValue:I

    move v4, v7

    .line 1009
    :goto_2
    goto/16 :goto_1

    :cond_2
    const v7, 0x7fffffff

    move v4, v7

    goto :goto_2
.end method
