.class Lcom/android/support/Menu$100000024;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000024"
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Menu;

.field private final val$checkBox:Landroid/widget/CheckBox;

.field private final val$featName:Ljava/lang/String;

.field private final val$featNum:I


# direct methods
.method constructor <init>(Lcom/android/support/Menu;Landroid/widget/CheckBox;Ljava/lang/String;I)V
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

    iput-object v7, v6, Lcom/android/support/Menu$100000024;->this$0:Lcom/android/support/Menu;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/android/support/Menu$100000024;->val$checkBox:Landroid/widget/CheckBox;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/android/support/Menu$100000024;->val$featName:Ljava/lang/String;

    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/android/support/Menu$100000024;->val$featNum:I

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000024;)Lcom/android/support/Menu;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000024;->this$0:Lcom/android/support/Menu;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CompoundButton;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 1212
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000024;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1213
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000024;->val$featName:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/android/support/Menu$100000024;->val$featNum:I

    move v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    .line 1215
    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000024;->val$featName:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/android/support/Menu$100000024;->val$featNum:I

    move v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    goto :goto_0
.end method
