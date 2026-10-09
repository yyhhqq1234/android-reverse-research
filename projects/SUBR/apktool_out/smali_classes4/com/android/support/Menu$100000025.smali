.class Lcom/android/support/Menu$100000025;
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
    name = "100000025"
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Menu;

.field private final val$Radioo:Landroid/widget/RadioButton;

.field private final val$featNum:I

.field private final val$finalfeatName:Ljava/lang/String;

.field private final val$radioGroup:Landroid/widget/RadioGroup;

.field private final val$radioName:Ljava/lang/String;

.field private final val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/support/Menu;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RadioGroup;Landroid/widget/RadioButton;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/android/support/Menu$100000025;->this$0:Lcom/android/support/Menu;

    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Lcom/android/support/Menu$100000025;->val$textView:Landroid/widget/TextView;

    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Lcom/android/support/Menu$100000025;->val$finalfeatName:Ljava/lang/String;

    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Lcom/android/support/Menu$100000025;->val$radioName:Ljava/lang/String;

    move-object v9, v0

    move v10, v5

    iput v10, v9, Lcom/android/support/Menu$100000025;->val$featNum:I

    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Lcom/android/support/Menu$100000025;->val$radioGroup:Landroid/widget/RadioGroup;

    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Lcom/android/support/Menu$100000025;->val$Radioo:Landroid/widget/RadioButton;

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000025;)Lcom/android/support/Menu;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000025;->this$0:Lcom/android/support/Menu;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1240
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000025;->val$textView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000025;->val$finalfeatName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ": <font color=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/android/support/Menu$100000025;->this$0:Lcom/android/support/Menu;

    iget-object v7, v7, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000025;->val$radioName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000025;->val$finalfeatName:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Lcom/android/support/Menu$100000025;->val$featNum:I

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000025;->val$radioGroup:Landroid/widget/RadioGroup;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/support/Menu$100000025;->val$Radioo:Landroid/widget/RadioButton;

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    return-void
.end method
