.class public final Lgbsdk/android/support/v4/view/ViewCompat$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Lgbsdk/android/support/v4/view/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lgbsdk/android/support/v4/view/OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0

    .line 2209
    iput-object p1, p0, Lgbsdk/android/support/v4/view/ViewCompat$1;->val$listener:Lgbsdk/android/support/v4/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 2212
    invoke-static {p2}, Lgbsdk/android/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Lgbsdk/android/support/v4/view/WindowInsetsCompat;

    move-result-object p2

    .line 2213
    iget-object v0, p0, Lgbsdk/android/support/v4/view/ViewCompat$1;->val$listener:Lgbsdk/android/support/v4/view/OnApplyWindowInsetsListener;

    invoke-interface {v0, p1, p2}, Lgbsdk/android/support/v4/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Lgbsdk/android/support/v4/view/WindowInsetsCompat;)Lgbsdk/android/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    .line 2214
    invoke-static {p1}, Lgbsdk/android/support/v4/view/WindowInsetsCompat;->unwrap(Lgbsdk/android/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInsets;

    return-object p1
.end method
