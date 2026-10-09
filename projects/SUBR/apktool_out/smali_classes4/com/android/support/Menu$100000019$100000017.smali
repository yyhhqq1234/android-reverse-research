.class Lcom/android/support/Menu$100000019$100000017;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Menu$100000019;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000017"
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Menu$100000019;

.field private final val$button:Landroid/widget/Button;

.field private final val$editText:Landroid/widget/EditText;

.field private final val$featName:Ljava/lang/String;

.field private final val$featNum:I

.field private final val$maxValue:J


# direct methods
.method constructor <init>(Lcom/android/support/Menu$100000019;Landroid/widget/EditText;JLandroid/widget/Button;Ljava/lang/String;I)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/android/support/Menu$100000019$100000017;->this$0:Lcom/android/support/Menu$100000019;

    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Lcom/android/support/Menu$100000019$100000017;->val$editText:Landroid/widget/EditText;

    move-object v9, v0

    move-wide v10, v3

    iput-wide v10, v9, Lcom/android/support/Menu$100000019$100000017;->val$maxValue:J

    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Lcom/android/support/Menu$100000019$100000017;->val$button:Landroid/widget/Button;

    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Lcom/android/support/Menu$100000019$100000017;->val$featName:Ljava/lang/String;

    move-object v9, v0

    move v10, v7

    iput v10, v9, Lcom/android/support/Menu$100000019$100000017;->val$featNum:I

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000019$100000017;)Lcom/android/support/Menu$100000019;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000019$100000017;->this$0:Lcom/android/support/Menu$100000019;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1087
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/android/support/Menu$100000019$100000017;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 1090
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "0"

    :goto_0
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide v4, v8

    .line 1091
    move-object v8, v0

    iget-wide v8, v8, Lcom/android/support/Menu$100000019$100000017;->val$maxValue:J

    const/4 v10, 0x0

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    move-wide v8, v4

    move-object v10, v0

    iget-wide v10, v10, Lcom/android/support/Menu$100000019$100000017;->val$maxValue:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 1092
    move-object v8, v0

    iget-wide v8, v8, Lcom/android/support/Menu$100000019$100000017;->val$maxValue:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v8

    .line 1100
    :cond_0
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000019$100000017;->val$button:Landroid/widget/Button;

    new-instance v9, Ljava/lang/StringBuffer;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v0

    iget-object v14, v14, Lcom/android/support/Menu$100000019$100000017;->val$featName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, ": <font color=\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/android/support/Menu$100000019$100000017;->this$0:Lcom/android/support/Menu$100000019;

    invoke-static {v13}, Lcom/android/support/Menu$100000019;->access$0(Lcom/android/support/Menu$100000019;)Lcom/android/support/Menu;

    move-result-object v13

    iget-object v13, v13, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\'>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-wide v11, v4

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "</font>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000019$100000017;->val$featName:Ljava/lang/String;

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu$100000019$100000017;->val$featNum:I

    move-wide v10, v4

    invoke-static {v8, v9, v10, v11}, Lcom/android/support/Preferences;->changeFeatureLong(Ljava/lang/String;IJ)V

    .line 1103
    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000019$100000017;->val$editText:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    return-void

    .line 1090
    :cond_1
    move-object v8, v6

    goto/16 :goto_0

    .line 1092
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 1094
    move-object v8, v0

    iget-wide v8, v8, Lcom/android/support/Menu$100000019$100000017;->val$maxValue:J

    const/4 v10, 0x0

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 1095
    move-object v8, v0

    iget-wide v8, v8, Lcom/android/support/Menu$100000019$100000017;->val$maxValue:J

    move-wide v4, v8

    .line 1097
    :goto_2
    goto/16 :goto_1

    :cond_2
    const-wide v8, 0x7fffffffffffffffL

    move-wide v4, v8

    goto :goto_2
.end method
