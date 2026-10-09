.class Lcom/android/support/Menu$100000023;
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
    name = "100000023"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/support/Menu$100000023$100000020;,
        Lcom/android/support/Menu$100000023$100000021;,
        Lcom/android/support/Menu$100000023$100000022;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Menu;

.field private final val$button:Landroid/widget/Button;

.field private final val$featName:Ljava/lang/String;

.field private final val$featNum:I


# direct methods
.method constructor <init>(Lcom/android/support/Menu;Landroid/widget/Button;Ljava/lang/String;I)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/android/support/Menu$100000023;->this$0:Lcom/android/support/Menu;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/android/support/Menu$100000023;->val$button:Landroid/widget/Button;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/android/support/Menu$100000023;->val$featName:Ljava/lang/String;

    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/android/support/Menu$100000023;->val$featNum:I

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000023;)Lcom/android/support/Menu;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000023;->this$0:Lcom/android/support/Menu;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
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
    .line 1146
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v1

    iget-object v11, v11, Lcom/android/support/Menu$100000023;->this$0:Lcom/android/support/Menu;

    iget-object v11, v11, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v4, v9

    .line 1148
    new-instance v9, Landroid/widget/EditText;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v1

    iget-object v11, v11, Lcom/android/support/Menu$100000023;->this$0:Lcom/android/support/Menu;

    iget-object v11, v11, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v5, v9

    .line 1149
    move-object v9, v5

    new-instance v10, Lcom/android/support/Menu$100000023$100000020;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v1

    invoke-direct {v11, v12}, Lcom/android/support/Menu$100000023$100000020;-><init>(Lcom/android/support/Menu$100000023;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1160
    move-object v9, v5

    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    move-result v9

    .line 1162
    move-object v9, v4

    const-string v10, "Input text"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1163
    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1164
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v1

    iget-object v11, v11, Lcom/android/support/Menu$100000023;->this$0:Lcom/android/support/Menu;

    iget-object v11, v11, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v6, v9

    .line 1165
    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1166
    move-object v9, v6

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1167
    move-object v9, v4

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1169
    move-object v9, v4

    const-string v10, "OK"

    new-instance v11, Lcom/android/support/Menu$100000023$100000021;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v1

    move-object v14, v5

    move-object v15, v1

    iget-object v15, v15, Lcom/android/support/Menu$100000023;->val$button:Landroid/widget/Button;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/support/Menu$100000023;->val$featName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/support/Menu$100000023;->val$featNum:I

    move/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/android/support/Menu$100000023$100000021;-><init>(Lcom/android/support/Menu$100000023;Landroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1178
    move-object v9, v4

    const-string v10, "Cancel"

    new-instance v11, Lcom/android/support/Menu$100000023$100000022;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v1

    invoke-direct {v12, v13}, Lcom/android/support/Menu$100000023$100000022;-><init>(Lcom/android/support/Menu$100000023;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1187
    move-object v9, v1

    iget-object v9, v9, Lcom/android/support/Menu$100000023;->this$0:Lcom/android/support/Menu;

    iget-boolean v9, v9, Lcom/android/support/Menu;->overlayRequired:Z

    if-eqz v9, :cond_1

    .line 1188
    move-object v9, v4

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    move-object v7, v9

    .line 1189
    move-object v9, v7

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-lt v10, v11, :cond_0

    const/16 v10, 0x7f6

    :goto_0
    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 1190
    move-object v9, v7

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 1192
    :goto_1
    return-void

    .line 1189
    :cond_0
    const/16 v10, 0x7d2

    goto :goto_0

    .line 1192
    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v9

    goto :goto_1
.end method
