.class public Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;
.super Landroid/app/Activity;
.source "BluetoothShareGatewayActivity.java"


# static fields
.field public static final ACTION_DEVICE_SELECTED:Ljava/lang/String; = "com.mediatek.bluetooth.sharegateway.action.DEVICE_SELECTED"

.field public static final ACTION_SEND:Ljava/lang/String; = "com.mediatek.bluetooth.sharegateway.action.SEND"

.field private static final ACTION_SEND_BIP_FILES:Ljava/lang/String; = "com.mediatek.bluetooth.sharegateway.action.ACTION_SEND_BIP_FILES"

.field public static final ACTION_SETTINGS:Ljava/lang/String; = "com.mediatek.bluetooth.sharegateway.action.ACTION_SETTINGS"

.field public static final BIP_PROFILE_UUIDS:[Landroid/os/ParcelUuid; = null

.field private static final BLUETOOTH_DEVICE_REQUEST:I = 0x1

.field public static final EXTRA_DEVICE_ADDRESS:Ljava/lang/String; = "android.bluetooth.device.extra.DEVICE"

.field private static final KEY_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG:Ljava/lang/String; = "BluetoothShareGatewayActivity"

.field private static sAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static sBip:Z

.field private static sIntent:Landroid/content/Intent;

.field private static sReentry:Z

.field private static sType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    sput-boolean v2, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sReentry:Z

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Lcom/mediatek/bluetooth/BluetoothUuidEx;->BipResponder:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->BIP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private profileDispatcher(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "remoteDevice"

    .prologue
    .line 316
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sIntent:Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 328
    .local v0, uuids:[Landroid/os/ParcelUuid;
    const-string v1, "BluetoothShareGatewayActivity"

    const-string v2, "OPP is supported"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sIntent:Landroid/content/Intent;

    const-string v2, "com.mediatek.bluetooth"

    const-string v3, "com.mediatek.bluetooth.opp.mmi.OppClientActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->startActivity(Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method private startDevicePicker()V
    .locals 5

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.mediatek.bluetooth.sharegateway.action.ACTION_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, in:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v2, intentBundle:Landroid/os/Bundle;
    const-string v3, "BipFlag"

    sget-boolean v4, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sBip:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    const-string v3, "Type"

    sget-object v4, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v3, "Intent"

    sget-object v4, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 296
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 297
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v3}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 298
    const-string v3, "BluetoothShareGatewayActivity"

    const-string v4, "Start Device Picker!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v3, 0x1

    sput-boolean v3, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sReentry:Z

    .line 301
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, inToBDP:Landroid/content/Intent;
    const/high16 v3, 0x80

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    const-string v3, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 304
    const-string v3, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    const-string v4, "com.mediatek.bluetooth"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v3, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    const-class v4, Lcom/mediatek/bluetooth/BluetoothShareGatewayReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v3, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->startActivity(Landroid/content/Intent;)V

    .line 313
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 276
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 278
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 279
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sReentry:Z

    .line 280
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->startDevicePicker()V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 95
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const-string v8, "BluetoothShareGatewayActivity"

    const-string v9, "onCreate......"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sput-boolean v11, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sReentry:Z

    .line 104
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 105
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 108
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_5

    .line 109
    const-string v8, "BluetoothShareGatewayActivity"

    const-string v9, "uri is null"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    :goto_0
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 122
    .local v7, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez v7, :cond_6

    .line 123
    const-string v8, "BluetoothShareGatewayActivity"

    const-string v9, "uris is null"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    :goto_1
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "android.btopp.intent.action.HANDOVER_SEND"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "android.btopp.intent.action.HANDOVER_SEND_MULTIPLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 151
    :cond_2
    const-string v8, "android.btopp.intent.action.HANDOVER_SEND"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "android.btopp.intent.action.HANDOVER_SEND_MULTIPLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 153
    :cond_3
    sput-boolean v11, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sBip:Z

    .line 155
    :cond_4
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sType:Ljava/lang/String;

    .line 156
    const-string v8, "BluetoothShareGatewayActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sput-object v3, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sIntent:Landroid/content/Intent;

    .line 159
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    sput-object v8, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 160
    sget-object v8, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v8, :cond_a

    .line 161
    const-string v8, "BluetoothShareGatewayActivity"

    const-string v9, "bluetooth is not started! "

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->finish()V

    .line 225
    :goto_2
    return-void

    .line 111
    .end local v7           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_5
    const-string v8, "BluetoothShareGatewayActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sput-boolean v11, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sBip:Z

    .line 113
    const-string v8, "content"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 114
    const-string v8, "media"

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 115
    sput-boolean v12, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sBip:Z

    goto/16 :goto_0

    .line 125
    .restart local v7       #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_6
    sput-boolean v11, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sBip:Z

    .line 126
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 127
    .local v5, tmpUri:Landroid/net/Uri;
    if-nez v5, :cond_7

    .line 128
    const-string v8, "BluetoothShareGatewayActivity"

    const-string v9, "uri is null in Uris arraylist"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->finish()V

    goto :goto_2

    .line 132
    :cond_7
    const-string v8, "BluetoothShareGatewayActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v8, "content"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 134
    const-string v8, "media"

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 135
    sput-boolean v12, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sBip:Z

    goto :goto_3

    .line 137
    :cond_8
    sput-boolean v11, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sBip:Z

    goto/16 :goto_1

    .line 141
    :cond_9
    sput-boolean v11, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sBip:Z

    goto/16 :goto_1

    .line 166
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #tmpUri:Landroid/net/Uri;
    :cond_a
    sget-object v8, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 167
    const-string v8, "BluetoothShareGatewayActivity"

    const-string v9, "bluetooth is available"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 170
    .local v4, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v8, "BluetoothShareGatewayActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received BT device selected intent, bt device: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-nez v4, :cond_b

    .line 173
    const-string v8, "BluetoothShareGatewayActivity"

    const-string v9, "remote device is null"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->startDevicePicker()V

    goto/16 :goto_2

    .line 176
    :cond_b
    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->profileDispatcher(Landroid/bluetooth/BluetoothDevice;)V

    .line 177
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->finish()V

    goto/16 :goto_2

    .line 180
    .end local v4           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_c
    const-string v8, "BluetoothShareGatewayActivity"

    const-string v9, "bluetooth is not available! "

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v8, "BluetoothShareGatewayActivity"

    const-string v9, "turning on bluetooth......"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v2, in:Landroid/content/Intent;
    invoke-virtual {p0, v2, v12}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 187
    .end local v2           #in:Landroid/content/Intent;
    :cond_d
    const-string v8, "com.mediatek.bluetooth.sharegateway.action.DEVICE_SELECTED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 189
    const-string v8, "BluetoothShareGatewayActivity"

    const-string v9, "return from device picker"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v8, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sIntent:Landroid/content/Intent;

    if-nez v8, :cond_e

    .line 191
    if-eqz p1, :cond_f

    .line 192
    const-string v8, "intent"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    sput-object v8, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sIntent:Landroid/content/Intent;

    .line 193
    sget-object v8, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sType:Ljava/lang/String;

    .line 200
    :cond_e
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 201
    .restart local v4       #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v8, "BluetoothShareGatewayActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received BT device selected intent, bt device: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-nez v4, :cond_10

    .line 204
    const-string v8, "BluetoothShareGatewayActivity"

    const-string v9, "remote device is null"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_4
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->finish()V

    goto/16 :goto_2

    .line 195
    .end local v4           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->finish()V

    goto/16 :goto_2

    .line 206
    .restart local v4       #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_10
    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->profileDispatcher(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_4

    .line 222
    .end local v4           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_11
    const-string v8, "BluetoothShareGatewayActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unsupported action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->finish()V

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 268
    const-string v0, "BluetoothShareGatewayActivity"

    const-string v1, "onDestroy......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 272
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 252
    const-string v0, "BluetoothShareGatewayActivity"

    const-string v1, "onPause......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 256
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 242
    const-string v0, "BluetoothShareGatewayActivity"

    const-string v1, "onResume......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 244
    sget-boolean v0, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sReentry:Z

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "BluetoothShareGatewayActivity"

    const-string v1, "onResume forget......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->finish()V

    .line 248
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 237
    const-string v0, "intent"

    sget-object v1, Lcom/mediatek/bluetooth/BluetoothShareGatewayActivity;->sIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 238
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 229
    const-string v0, "BluetoothShareGatewayActivity"

    const-string v1, "onStart......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 232
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 260
    const-string v0, "BluetoothShareGatewayActivity"

    const-string v1, "onStop......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 264
    return-void
.end method
