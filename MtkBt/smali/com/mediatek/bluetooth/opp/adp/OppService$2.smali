.class Lcom/mediatek/bluetooth/opp/adp/OppService$2;
.super Landroid/content/BroadcastReceiver;
.source "OppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/bluetooth/opp/adp/OppService;->registerDialogCallbackBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/opp/adp/OppService;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$2;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 175
    const-string v3, "OppService.mDialogCallbackBroadcastReceiver.onReceive()[+]"

    invoke-static {v3}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->i(Ljava/lang/String;)V

    .line 177
    const-string v3, "com.android.bluetooth.opp.dialog.returnType"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, returnType:Ljava/lang/String;
    const-string v3, "com.android.bluetooth.opp.opps.submitTask"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    const-string v3, "com.mediatek.bluetooth.opps.dialog_result"

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 180
    .local v1, state:I
    iget-object v3, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$2;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v3}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 181
    iget-object v3, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$2;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v3}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->oppsSubmitTask(I)V

    .line 194
    .end local v1           #state:I
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v3, "com.android.bluetooth.opp.opps.resendNoti"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    iget-object v3, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$2;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v3}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$2;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v3}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->oppsSendCurrentIncomingNotification()V

    goto :goto_0

    .line 187
    :cond_2
    const-string v3, "com.android.bluetooth.opp.opps.cancelTask"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    const-string v3, "com.mediatek.bluetooth.opps.dialog_result"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 189
    .local v2, task:Landroid/net/Uri;
    iget-object v3, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$2;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v3}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 190
    iget-object v3, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$2;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v3}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->oppAbortTask(Landroid/net/Uri;)V

    goto :goto_0
.end method
