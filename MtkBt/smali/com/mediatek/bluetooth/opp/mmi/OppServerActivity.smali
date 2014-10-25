.class public Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;
.super Lcom/mediatek/activity/CancelableActivity;
.source "OppServerActivity.java"


# static fields
.field private static final DIALOG_PUSH_CONFIRMATION:I = 0x0

.field private static final IS_ACTIVE:Ljava/lang/String; = "is_active"


# instance fields
.field private mIsActive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/activity/CancelableActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->mIsActive:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->finishPushActivity(Z)V

    return-void
.end method

.method private declared-synchronized finishPushActivity(Z)V
    .locals 4
    .parameter "success"

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OppServerActivity.finishPushActivity()[+]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 233
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->mIsActive:Z

    .line 234
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 235
    .local v1, state:I
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.bluetooth.opp.returns"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.bluetooth.opp.dialog.returnType"

    const-string v3, "com.android.bluetooth.opp.opps.submitTask"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v2, "com.mediatek.bluetooth.opps.dialog_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 239
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 234
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #state:I
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method protected onActivityCancel(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 74
    const v1, -0x9a9c3

    if-ne p1, v1, :cond_1

    .line 77
    const-string v1, "cancel OppServerActivity by NullCancelId broadcast."

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 90
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->mIsActive:Z

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->finish()V

    .line 92
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.mediatek.bluetooth.opp.extra.TASK_ID"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 82
    .local v0, taskId:I
    if-eq v0, p1, :cond_0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 97
    const-string v2, "OppServerActivity.onCreate()[+]"

    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->i(Ljava/lang/String;)V

    .line 99
    invoke-super {p0, p1}, Lcom/mediatek/activity/CancelableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 103
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, action:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 108
    const-string v2, "is_active"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->mIsActive:Z

    .line 112
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->mIsActive:Z

    if-nez v2, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->finish()V

    .line 144
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v2, "com.mediatek.bluetooth.opp.action.PUSH_REQUEST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    const-string v2, "opps puah request start..."

    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 123
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->mIsActive:Z

    goto :goto_0

    .line 134
    :cond_2
    const-string v2, "com.mediatek.activity.CancelableActivity.action.CANCEL_ACTIVITY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->finish()V

    goto :goto_0

    .line 139
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported OppsAccessRequest action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->w(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    .line 185
    packed-switch p1, :pswitch_data_0

    .line 221
    const/4 v5, 0x0

    :goto_0
    return-object v5

    .line 188
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 189
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "com.mediatek.bluetooth.opp.extra.PEER_NAME"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, peerName:Ljava/lang/String;
    const-string v5, "com.mediatek.bluetooth.opp.extra.OBJECT_NAME"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, objectName:Ljava/lang/String;
    const-string v5, "com.mediatek.bluetooth.opp.extra.TOTAL_BYTES"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 194
    .local v3, totalBytes:J
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0700ef

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0700f0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0700f1

    new-instance v7, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity$3;

    invoke-direct {v7, p0}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity$3;-><init>(Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0700f2

    new-instance v7, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity$2;

    invoke-direct {v7, p0}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity$2;-><init>(Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity$1;

    invoke-direct {v6, p0}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity$1;-><init>(Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-super {p0}, Lcom/mediatek/activity/CancelableActivity;->onResume()V

    .line 150
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->setVisible(Z)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->showDialog(I)V

    .line 152
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/mediatek/activity/CancelableActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 176
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "is_active"

    iget-boolean v1, p0, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->mIsActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 180
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/mediatek/activity/CancelableActivity;->onStop()V

    .line 161
    iget-boolean v1, p0, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->mIsActive:Z

    if-eqz v1, :cond_0

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.opp.opps.resendNoti"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/opp/mmi/OppServerActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 167
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
