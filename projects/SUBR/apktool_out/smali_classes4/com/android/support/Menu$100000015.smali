.class Lcom/android/support/Menu$100000015;
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
    name = "100000015"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/support/Menu$100000015$100000012;,
        Lcom/android/support/Menu$100000015$100000013;,
        Lcom/android/support/Menu$100000015$100000014;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Menu;

.field private final val$button:Landroid/widget/Button;

.field private final val$featName:Ljava/lang/String;

.field private final val$featNum:I

.field private final val$maxValue:I


# direct methods
.method constructor <init>(Lcom/android/support/Menu;ILandroid/widget/Button;Ljava/lang/String;I)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/android/support/Menu$100000015;->this$0:Lcom/android/support/Menu;

    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/android/support/Menu$100000015;->val$maxValue:I

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/android/support/Menu$100000015;->val$button:Landroid/widget/Button;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/android/support/Menu$100000015;->val$featName:Ljava/lang/String;

    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/android/support/Menu$100000015;->val$featNum:I

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000015;)Lcom/android/support/Menu;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000015;->this$0:Lcom/android/support/Menu;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21
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
    .line 969
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v1

    iget-object v12, v12, Lcom/android/support/Menu$100000015;->this$0:Lcom/android/support/Menu;

    iget-object v12, v12, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v4, v10

    .line 970
    new-instance v10, Landroid/widget/EditText;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v1

    iget-object v12, v12, Lcom/android/support/Menu$100000015;->this$0:Lcom/android/support/Menu;

    iget-object v12, v12, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v5, v10

    .line 971
    move-object v10, v1

    iget v10, v10, Lcom/android/support/Menu$100000015;->val$maxValue:I

    const/4 v11, 0x0

    if-eq v10, v11, :cond_0

    .line 972
    move-object v10, v5

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Max value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v1

    iget v12, v12, Lcom/android/support/Menu$100000015;->val$maxValue:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 973
    :cond_0
    move-object v10, v5

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 974
    move-object v10, v5

    const-string v11, "0123456789-"

    invoke-static {v11}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 975
    const/4 v10, 0x1

    new-array v10, v10, [Landroid/text/InputFilter;

    move-object v6, v10

    .line 976
    move-object v10, v6

    const/4 v11, 0x0

    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const/16 v14, 0xa

    invoke-direct {v13, v14}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v12, v10, v11

    .line 977
    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 978
    move-object v10, v5

    new-instance v11, Lcom/android/support/Menu$100000015$100000012;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    move-object v13, v1

    invoke-direct {v12, v13}, Lcom/android/support/Menu$100000015$100000012;-><init>(Lcom/android/support/Menu$100000015;)V

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 989
    move-object v10, v5

    invoke-virtual {v10}, Landroid/widget/EditText;->requestFocus()Z

    move-result v10

    .line 991
    move-object v10, v4

    const-string v11, "Input number"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 992
    move-object v10, v4

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 993
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v1

    iget-object v12, v12, Lcom/android/support/Menu$100000015;->this$0:Lcom/android/support/Menu;

    iget-object v12, v12, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v7, v10

    .line 994
    move-object v10, v7

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 995
    move-object v10, v7

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 996
    move-object v10, v4

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 998
    move-object v10, v4

    const-string v11, "OK"

    new-instance v12, Lcom/android/support/Menu$100000015$100000013;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v1

    move-object v15, v5

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/support/Menu$100000015;->val$maxValue:I

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/support/Menu$100000015;->val$button:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu$100000015;->val$featName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/support/Menu$100000015;->val$featNum:I

    move/from16 v19, v0

    invoke-direct/range {v13 .. v19}, Lcom/android/support/Menu$100000015$100000013;-><init>(Lcom/android/support/Menu$100000015;Landroid/widget/EditText;ILandroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1019
    move-object v10, v4

    const-string v11, "Cancel"

    new-instance v12, Lcom/android/support/Menu$100000015$100000014;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v1

    invoke-direct {v13, v14}, Lcom/android/support/Menu$100000015$100000014;-><init>(Lcom/android/support/Menu$100000015;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1027
    move-object v10, v1

    iget-object v10, v10, Lcom/android/support/Menu$100000015;->this$0:Lcom/android/support/Menu;

    iget-boolean v10, v10, Lcom/android/support/Menu;->overlayRequired:Z

    if-eqz v10, :cond_2

    .line 1028
    move-object v10, v4

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    move-object v8, v10

    .line 1029
    move-object v10, v8

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v11, v12, :cond_1

    const/16 v11, 0x7f6

    :goto_0
    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    .line 1030
    move-object v10, v8

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 1032
    :goto_1
    return-void

    .line 1029
    :cond_1
    const/16 v11, 0x7d2

    goto :goto_0

    .line 1032
    :cond_2
    move-object v10, v4

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v10

    goto :goto_1
.end method
