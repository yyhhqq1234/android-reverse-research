.class Lcom/android/support/Menu$100000011;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000011"
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Menu;

.field private final val$featNum:I

.field private final val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/support/Menu;Landroid/widget/Spinner;I)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/android/support/Menu$100000011;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/android/support/Menu$100000011;->val$spinner:Landroid/widget/Spinner;

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/android/support/Menu$100000011;->val$featNum:I

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000011;)Lcom/android/support/Menu;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000011;->this$0:Lcom/android/support/Menu;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 942
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v7, v0

    iget-object v7, v7, Lcom/android/support/Menu$100000011;->val$spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lcom/android/support/Menu$100000011;->val$featNum:I

    move v9, v3

    invoke-static {v7, v8, v9}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    .line 943
    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000011;->this$0:Lcom/android/support/Menu;

    iget v8, v8, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
