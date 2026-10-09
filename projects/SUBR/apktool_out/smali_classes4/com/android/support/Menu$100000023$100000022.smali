.class Lcom/android/support/Menu$100000023$100000022;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Menu$100000023;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000022"
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

    iput-object v4, v3, Lcom/android/support/Menu$100000023$100000022;->this$0:Lcom/android/support/Menu$100000023;

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000023$100000022;)Lcom/android/support/Menu$100000023;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000023$100000022;->this$0:Lcom/android/support/Menu$100000023;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1181
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Lcom/android/support/Menu$100000023$100000022;->this$0:Lcom/android/support/Menu$100000023;

    invoke-static {v6}, Lcom/android/support/Menu$100000023;->access$0(Lcom/android/support/Menu$100000023;)Lcom/android/support/Menu;

    move-result-object v6

    iget-object v6, v6, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    move-object v4, v6

    .line 1182
    move-object v6, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method
