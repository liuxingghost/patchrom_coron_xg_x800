.class public Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity;
.super Lcom/mediatek/activity/CancelableActivity;
.source "OppCancelActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mediatek/activity/CancelableActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity;->onTaskCancel()V

    return-void
.end method

.method private onTaskCancel()V
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 97
    .local v1, task:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel task - uri["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.bluetooth.opp.returns"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.bluetooth.opp.dialog.returnType"

    const-string v3, "com.android.bluetooth.opp.opps.cancelTask"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v2, "com.mediatek.bluetooth.opps.dialog_result"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 105
    return-void
.end method


# virtual methods
.method protected onActivityCancel(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 111
    const v2, -0x9a9c3

    if-ne p1, v2, :cond_1

    .line 114
    const-string v2, "cancel OppCancelActivity by NullCancelId broadcast."

    invoke-static {v2}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 133
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity;->finish()V

    .line 134
    :goto_1
    return-void

    .line 118
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 119
    .local v1, taskId:I
    if-eq v1, p1, :cond_0

    goto :goto_1

    .line 124
    .end local v1           #taskId:I
    :catch_0
    move-exception v0

    .line 127
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OppCancelActivity.onActivityCancel() error: intent["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], exception["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 68
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700eb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700ec

    new-instance v2, Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity$3;

    invoke-direct {v2, p0}, Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity$3;-><init>(Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700ed

    new-instance v2, Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity$2;

    invoke-direct {v2, p0}, Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity$2;-><init>(Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity$1;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity$1;-><init>(Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-super {p0}, Lcom/mediatek/activity/CancelableActivity;->onResume()V

    .line 61
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity;->setVisible(Z)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity;->showDialog(I)V

    .line 63
    return-void
.end method
