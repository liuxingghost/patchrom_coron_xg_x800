.class public Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;
.super Landroid/app/Activity;
.source "OppClientActivity.java"


# static fields
.field protected static final LINK_SHARE_URI_SCHEME:Ljava/lang/String; = "btlink"


# instance fields
.field mIntentType:Ljava/lang/String;

.field mIsHandover:Z

.field mOppcCacheTaskThread:Ljava/lang/Thread;

.field mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public oppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->mOppcCacheTaskThread:Ljava/lang/Thread;

    return-void
.end method

.method private newOppcTask(ILjava/lang/String;Landroid/net/Uri;Z)Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    .locals 5
    .parameter "type"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "isHandover"

    .prologue
    const/4 v4, 0x1

    .line 281
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 283
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter for newOppcTask : mimetype["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], uri["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->w(Ljava/lang/String;)V

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current request intent: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->w(Ljava/lang/String;)V

    .line 289
    const v1, 0x7f0700f6

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 291
    const/4 v0, 0x0

    .line 299
    :goto_0
    return-object v0

    .line 295
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-direct {v0, p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;-><init>(I)V

    .line 296
    .local v0, task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    invoke-virtual {v0, p4}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->setHandover(Z)V

    .line 297
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->setMimeType(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->setObjectUri(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 77
    const-string v11, "OppClientActivity.onCreate()[+]"

    invoke-static {v11}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->setVisible(Z)V

    .line 82
    invoke-static {p0}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v11

    iput-object v11, p0, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->oppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    .line 85
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 86
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, action:Ljava/lang/String;
    const-string v11, "android.intent.action.SEND"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "android.btopp.intent.action.HANDOVER_SEND"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 93
    :cond_0
    const/4 v9, 0x0

    .line 94
    .local v9, type:Ljava/lang/String;
    const-string v11, "android.intent.extra.STREAM"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 95
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->mIntentType:Ljava/lang/String;

    .line 96
    const-string v11, "android.intent.extra.TEXT"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 97
    .local v7, text:Ljava/lang/CharSequence;
    if-nez v10, :cond_2

    if-eqz v7, :cond_2

    .line 100
    const-string v11, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 101
    .local v6, subject:Ljava/lang/CharSequence;
    if-nez v6, :cond_1

    const/4 v1, 0x0

    .line 102
    .local v1, fragment:Ljava/lang/String;
    :goto_0
    const-string v11, "btlink"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 103
    const-string v9, "text/html"

    .line 104
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "link share set null type: intent mime-type["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/bluetooth/util/BtLog;->i(Ljava/lang/String;)V

    .line 117
    .end local v1           #fragment:Ljava/lang/String;
    .end local v6           #subject:Ljava/lang/CharSequence;
    :goto_1
    const/4 v11, 0x1

    const-string v12, "android.btopp.intent.action.HANDOVER_SEND"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-direct {p0, v11, v9, v10, v12}, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->newOppcTask(ILjava/lang/String;Landroid/net/Uri;Z)Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    move-result-object v3

    .line 119
    .local v3, newTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    if-nez v3, :cond_6

    .line 122
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->finish()V

    .line 267
    .end local v3           #newTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    .end local v7           #text:Ljava/lang/CharSequence;
    .end local v9           #type:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :goto_2
    return-void

    .line 101
    .restart local v6       #subject:Ljava/lang/CharSequence;
    .restart local v7       #text:Ljava/lang/CharSequence;
    .restart local v9       #type:Ljava/lang/String;
    .restart local v10       #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 107
    .end local v6           #subject:Ljava/lang/CharSequence;
    :cond_2
    if-eqz v10, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 110
    :cond_3
    if-nez v9, :cond_4

    if-eqz v10, :cond_4

    .line 111
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/bluetooth/util/MimeUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    :cond_4
    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->mIntentType:Ljava/lang/String;

    :cond_5
    goto :goto_1

    .line 125
    .restart local v3       #newTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    :cond_6
    iget-object v11, p0, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->oppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    invoke-virtual {v11, v3}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->oppcCacheTask(Lcom/mediatek/bluetooth/share/BluetoothShareTask;)V

    .line 126
    const v8, 0x7f0700f4

    .line 129
    .local v8, toastResId:I
    const-string v11, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 131
    .local v4, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    if-nez v4, :cond_7

    .line 134
    const-string v11, "null remote-device in SEND intent => cann\'t send object via bluetooth(OPP)"

    invoke-static {v11}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->e(Ljava/lang/String;)V

    .line 266
    .end local v3           #newTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    .end local v4           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v7           #text:Ljava/lang/CharSequence;
    .end local v8           #toastResId:I
    .end local v9           #type:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :goto_3
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->finish()V

    goto :goto_2

    .line 138
    .restart local v3       #newTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    .restart local v4       #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    .restart local v7       #text:Ljava/lang/CharSequence;
    .restart local v8       #toastResId:I
    .restart local v9       #type:Ljava/lang/String;
    .restart local v10       #uri:Landroid/net/Uri;
    :cond_7
    iget-object v11, p0, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->oppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    invoke-virtual {v11, v4}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->oppcSubmitTask(Landroid/bluetooth/BluetoothDevice;)V

    .line 140
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, strDeviceName:Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 142
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {p0, v8, v11}, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 145
    :cond_8
    const-string v11, "OppClientActivity getDeviceName return null"

    invoke-static {v11}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->i(Ljava/lang/String;)V

    .line 146
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f0700f7

    invoke-virtual {p0, v13}, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v8, v11}, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 151
    .end local v3           #newTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    .end local v4           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #strDeviceName:Ljava/lang/String;
    .end local v7           #text:Ljava/lang/CharSequence;
    .end local v8           #toastResId:I
    .end local v9           #type:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_9
    const-string v11, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "android.btopp.intent.action.HANDOVER_SEND_MULTIPLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 154
    :cond_a
    const-string v11, "android.btopp.intent.action.HANDOVER_SEND_MULTIPLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->mIsHandover:Z

    .line 156
    const-string v11, "android.intent.extra.STREAM"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->mUris:Ljava/util/ArrayList;

    .line 158
    const-string v11, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/bluetooth/BluetoothDevice;

    iput-object v11, p0, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 160
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->mIntentType:Ljava/lang/String;

    .line 164
    new-instance v11, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity$1;

    invoke-direct {v11, p0}, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity$1;-><init>(Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;)V

    iput-object v11, p0, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->mOppcCacheTaskThread:Ljava/lang/Thread;

    .line 260
    iget-object v11, p0, Lcom/mediatek/bluetooth/opp/mmi/OppClientActivity;->mOppcCacheTaskThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 262
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "oppc unsupport action: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->w(Ljava/lang/String;)V

    goto/16 :goto_3
.end method
