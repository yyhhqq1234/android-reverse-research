.class Lcom/android/support/Menu$100000007;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000007"
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Menu;

.field private final val$featName:Ljava/lang/String;

.field private final val$featNum:I

.field private final val$min:I

.field private final val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/support/Menu;ILjava/lang/String;ILandroid/widget/TextView;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/android/support/Menu$100000007;->this$0:Lcom/android/support/Menu;

    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/android/support/Menu$100000007;->val$min:I

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/android/support/Menu$100000007;->val$featName:Ljava/lang/String;

    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/android/support/Menu$100000007;->val$featNum:I

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/android/support/Menu$100000007;->val$textView:Landroid/widget/TextView;

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000007;)Lcom/android/support/Menu;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000007;->this$0:Lcom/android/support/Menu;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 815
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v5, v1

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/android/support/Menu$100000007;->val$min:I

    if-ge v6, v7, :cond_0

    move-object v6, v0

    iget v6, v6, Lcom/android/support/Menu$100000007;->val$min:I

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 816
    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000007;->val$featName:Ljava/lang/String;

    move-object v6, v0

    iget v6, v6, Lcom/android/support/Menu$100000007;->val$featNum:I

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/android/support/Menu$100000007;->val$min:I

    if-ge v7, v8, :cond_1

    move-object v7, v0

    iget v7, v7, Lcom/android/support/Menu$100000007;->val$min:I

    :goto_1
    invoke-static {v5, v6, v7}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    .line 817
    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000007;->val$textView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

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

    move-object v10, v0

    iget-object v10, v10, Lcom/android/support/Menu$100000007;->val$featName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ": <font color=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/android/support/Menu$100000007;->this$0:Lcom/android/support/Menu;

    iget-object v9, v9, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\'>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/android/support/Menu$100000007;->val$min:I

    if-ge v7, v8, :cond_2

    move-object v7, v0

    iget v7, v7, Lcom/android/support/Menu$100000007;->val$min:I

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 815
    :cond_0
    move v6, v2

    goto/16 :goto_0

    .line 816
    :cond_1
    move v7, v2

    goto :goto_1

    .line 817
    :cond_2
    move v7, v2

    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            ")V"
        }
    .end annotation

    return-void
.end method
