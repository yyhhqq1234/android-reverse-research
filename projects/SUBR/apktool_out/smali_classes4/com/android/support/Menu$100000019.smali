.class Lcom/android/support/Menu$100000019;
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
    name = "100000019"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/support/Menu$100000019$100000016;,
        Lcom/android/support/Menu$100000019$100000017;,
        Lcom/android/support/Menu$100000019$100000018;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Menu;

.field private final val$button:Landroid/widget/Button;

.field private final val$featName:Ljava/lang/String;

.field private final val$featNum:I

.field private final val$maxValue:J


# direct methods
.method constructor <init>(Lcom/android/support/Menu;JLandroid/widget/Button;Ljava/lang/String;I)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/android/support/Menu$100000019;->this$0:Lcom/android/support/Menu;

    move-object v8, v0

    move-wide v9, v2

    iput-wide v9, v8, Lcom/android/support/Menu$100000019;->val$maxValue:J

    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lcom/android/support/Menu$100000019;->val$button:Landroid/widget/Button;

    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/android/support/Menu$100000019;->val$featName:Ljava/lang/String;

    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/android/support/Menu$100000019;->val$featNum:I

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000019;)Lcom/android/support/Menu;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000019;->this$0:Lcom/android/support/Menu;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 24
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
    .line 1056
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    move-object v14, v3

    iget-object v14, v14, Lcom/android/support/Menu$100000019;->this$0:Lcom/android/support/Menu;

    iget-object v14, v14, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v6, v12

    .line 1057
    new-instance v12, Landroid/widget/EditText;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    move-object v14, v3

    iget-object v14, v14, Lcom/android/support/Menu$100000019;->this$0:Lcom/android/support/Menu;

    iget-object v14, v14, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v7, v12

    .line 1058
    move-object v12, v3

    iget-wide v12, v12, Lcom/android/support/Menu$100000019;->val$maxValue:J

    const/4 v14, 0x0

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_0

    .line 1059
    move-object v12, v7

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Max value: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object v14, v3

    iget-wide v14, v14, Lcom/android/support/Menu$100000019;->val$maxValue:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1060
    :cond_0
    move-object v12, v7

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 1061
    move-object v12, v7

    const-string v13, "0123456789-"

    invoke-static {v13}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1062
    const/4 v12, 0x1

    new-array v12, v12, [Landroid/text/InputFilter;

    move-object v8, v12

    .line 1063
    move-object v12, v8

    const/4 v13, 0x0

    new-instance v14, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x14

    invoke-direct/range {v15 .. v16}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v14, v12, v13

    .line 1064
    move-object v12, v7

    move-object v13, v8

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1065
    move-object v12, v7

    new-instance v13, Lcom/android/support/Menu$100000019$100000016;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-object v15, v3

    invoke-direct {v14, v15}, Lcom/android/support/Menu$100000019$100000016;-><init>(Lcom/android/support/Menu$100000019;)V

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1076
    move-object v12, v7

    invoke-virtual {v12}, Landroid/widget/EditText;->requestFocus()Z

    move-result v12

    .line 1078
    move-object v12, v6

    const-string v13, "Input number"

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 1079
    move-object v12, v6

    move-object v13, v7

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 1080
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v23, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v23

    move-object v14, v3

    iget-object v14, v14, Lcom/android/support/Menu$100000019;->this$0:Lcom/android/support/Menu;

    iget-object v14, v14, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v9, v12

    .line 1081
    move-object v12, v9

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1082
    move-object v12, v9

    move-object v13, v7

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1083
    move-object v12, v6

    move-object v13, v9

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 1085
    move-object v12, v6

    const-string v13, "OK"

    new-instance v14, Lcom/android/support/Menu$100000019$100000017;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/support/Menu$100000019;->val$maxValue:J

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/support/Menu$100000019;->val$button:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/support/Menu$100000019;->val$featName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/support/Menu$100000019;->val$featNum:I

    move/from16 v22, v0

    invoke-direct/range {v15 .. v22}, Lcom/android/support/Menu$100000019$100000017;-><init>(Lcom/android/support/Menu$100000019;Landroid/widget/EditText;JLandroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 1107
    move-object v12, v6

    const-string v13, "Cancel"

    new-instance v14, Lcom/android/support/Menu$100000019$100000018;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v16}, Lcom/android/support/Menu$100000019$100000018;-><init>(Lcom/android/support/Menu$100000019;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 1115
    move-object v12, v3

    iget-object v12, v12, Lcom/android/support/Menu$100000019;->this$0:Lcom/android/support/Menu;

    iget-boolean v12, v12, Lcom/android/support/Menu;->overlayRequired:Z

    if-eqz v12, :cond_2

    .line 1116
    move-object v12, v6

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    move-object v10, v12

    .line 1117
    move-object v12, v10

    invoke-virtual {v12}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1a

    if-lt v13, v14, :cond_1

    const/16 v13, 0x7f6

    :goto_0
    invoke-virtual {v12, v13}, Landroid/view/Window;->setType(I)V

    .line 1118
    move-object v12, v10

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 1120
    :goto_1
    return-void

    .line 1117
    :cond_1
    const/16 v13, 0x7d2

    goto :goto_0

    .line 1120
    :cond_2
    move-object v12, v6

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v12

    goto :goto_1
.end method
