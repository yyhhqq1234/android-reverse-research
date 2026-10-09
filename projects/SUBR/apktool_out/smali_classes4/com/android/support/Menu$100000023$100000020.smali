.class Lcom/android/support/Menu$100000023$100000020;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Menu$100000023;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000020"
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Menu$100000023;


# direct methods
.method constructor <init>(Lcom/android/support/Menu$100000023;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/support/Menu$100000023$100000020;->this$0:Lcom/android/support/Menu$100000023;

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000023$100000020;)Lcom/android/support/Menu$100000023;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000023$100000020;->this$0:Lcom/android/support/Menu$100000023;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 1152
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Lcom/android/support/Menu$100000023$100000020;->this$0:Lcom/android/support/Menu$100000023;

    invoke-static {v6}, Lcom/android/support/Menu$100000023;->access$0(Lcom/android/support/Menu$100000023;)Lcom/android/support/Menu;

    move-result-object v6

    iget-object v6, v6, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    move-object v4, v6

    .line 1153
    move v6, v2

    if-eqz v6, :cond_0

    .line 1154
    move-object v6, v4

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1156
    :goto_0
    return-void

    :cond_0
    move-object v6, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method
