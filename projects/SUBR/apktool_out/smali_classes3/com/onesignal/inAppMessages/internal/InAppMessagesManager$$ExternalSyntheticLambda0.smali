.class public final synthetic Lcom/onesignal/inAppMessages/internal/InAppMessagesManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/onesignal/inAppMessages/internal/InAppMessagesManager;

.field public final synthetic f$1:Lcom/onesignal/inAppMessages/internal/InAppMessage;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/onesignal/inAppMessages/internal/InAppMessagesManager;Lcom/onesignal/inAppMessages/internal/InAppMessage;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessagesManager$$ExternalSyntheticLambda0;->f$0:Lcom/onesignal/inAppMessages/internal/InAppMessagesManager;

    iput-object p2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessagesManager$$ExternalSyntheticLambda0;->f$1:Lcom/onesignal/inAppMessages/internal/InAppMessage;

    iput-object p3, p0, Lcom/onesignal/inAppMessages/internal/InAppMessagesManager$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessagesManager$$ExternalSyntheticLambda0;->f$0:Lcom/onesignal/inAppMessages/internal/InAppMessagesManager;

    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessagesManager$$ExternalSyntheticLambda0;->f$1:Lcom/onesignal/inAppMessages/internal/InAppMessage;

    iget-object v2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessagesManager$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/onesignal/inAppMessages/internal/InAppMessagesManager;->$r8$lambda$vqslNfZRiDYKEZMpilScq8kFk1w(Lcom/onesignal/inAppMessages/internal/InAppMessagesManager;Lcom/onesignal/inAppMessages/internal/InAppMessage;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
