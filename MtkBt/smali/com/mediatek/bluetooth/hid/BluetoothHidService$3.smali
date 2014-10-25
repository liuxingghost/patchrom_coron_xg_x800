.class Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;
.super Landroid/os/Handler;
.source "BluetoothHidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/hid/BluetoothHidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)V
    .locals 0
    .parameter

    .prologue
    .line 898
    iput-object p1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 902
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 903
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 904
    const/4 v1, 0x0

    .line 905
    .local v1, notifyID:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 906
    .local v7, data:Landroid/os/Bundle;
    if-eqz v7, :cond_5

    const-string v0, "device_addr"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 907
    .local v3, deviceAddr:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 909
    .local v2, deviceName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 910
    .local v11, noti:Landroid/app/Notification;
    if-eqz v3, :cond_1

    .line 911
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    invoke-static {}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getDeviceList()Landroid/preference/PreferenceCategory;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mPC:Landroid/preference/PreferenceCategory;

    .line 912
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mPC:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v4, v4, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mPC:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mPreference:Landroid/preference/Preference;

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1800(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    .line 917
    .local v10, mBD:Landroid/bluetooth/BluetoothDevice;
    if-eqz v10, :cond_6

    .line 918
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 919
    if-nez v2, :cond_1

    .line 920
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2400(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 931
    .end local v10           #mBD:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    :goto_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1193
    :cond_2
    :goto_2
    const/4 v0, 0x4

    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v0, v4, :cond_3

    const/4 v0, 0x5

    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v0, v4, :cond_3

    const/4 v0, 0x6

    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v0, v4, :cond_3

    const/4 v0, 0x7

    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v0, v4, :cond_3

    const/16 v0, 0xa

    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v0, v4, :cond_3

    const/16 v0, 0xb

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_4

    .line 1199
    :cond_3
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.mediatek.bluetooth.hid.finish"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v9, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1204
    .end local v9           #intent:Landroid/content/Intent;
    :cond_4
    return-void

    .line 906
    .end local v2           #deviceName:Ljava/lang/String;
    .end local v3           #deviceAddr:Ljava/lang/String;
    .end local v11           #noti:Landroid/app/Notification;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 923
    .restart local v2       #deviceName:Ljava/lang/String;
    .restart local v3       #deviceAddr:Ljava/lang/String;
    .restart local v10       #mBD:Landroid/bluetooth/BluetoothDevice;
    .restart local v11       #noti:Landroid/app/Notification;
    :cond_6
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2400(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 924
    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 933
    .end local v10           #mBD:Landroid/bluetooth/BluetoothDevice;
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const/16 v4, 0x64

    #setter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServerState:I
    invoke-static {v0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2502(Lcom/mediatek/bluetooth/hid/BluetoothHidService;I)I

    .line 934
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mUpdateStateIntent:Landroid/content/Intent;

    const-string v4, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    const/16 v5, 0xb

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 938
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v4, v4, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mUpdateStateIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 939
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.bluetooth.input.profile.action.ACTION_BIND_SERVICE"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 941
    .local v6, bindIntent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v6, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 945
    .end local v6           #bindIntent:Landroid/content/Intent;
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mUpdateStateIntent:Landroid/content/Intent;

    const-string v4, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    const/16 v5, 0xe

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 948
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v4, v4, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mUpdateStateIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 952
    :sswitch_2
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const/16 v4, 0x68

    #setter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServerState:I
    invoke-static {v0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2502(Lcom/mediatek/bluetooth/hid/BluetoothHidService;I)I

    .line 953
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mUpdateStateIntent:Landroid/content/Intent;

    const-string v4, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    const/16 v5, 0xd

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 956
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v4, v4, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mUpdateStateIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 960
    :sswitch_3
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mUpdateStateIntent:Landroid/content/Intent;

    const-string v4, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    const/16 v5, 0xe

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 963
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v4, v4, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mUpdateStateIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 967
    :sswitch_4
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const v5, 0x7f0700bd

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-virtual {v4, v5, v12}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 969
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const/16 v4, 0x66

    #setter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServerState:I
    invoke-static {v0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2502(Lcom/mediatek/bluetooth/hid/BluetoothHidService;I)I

    .line 970
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "connected"

    iget-object v5, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1800(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 972
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "connected"

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2600(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const v4, 0x7f0700b2

    const/4 v5, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateActivityUI(Ljava/lang/String;IZ)V
    invoke-static {v0, v3, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1700(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;IZ)V

    .line 979
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 980
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNotifyMap:Ljava/util/Map;

    invoke-static {}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2700()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    invoke-static {}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2708()I

    .line 984
    :cond_7
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 985
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "connected"

    const/4 v5, 0x0

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->genHidNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;
    invoke-static/range {v0 .. v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2800(Lcom/mediatek/bluetooth/hid/BluetoothHidService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v11

    .line 989
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNM:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v1, v11, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 991
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3000(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 993
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "mConnectTimeout close."

    const/4 v5, 0x3

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 994
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3000(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->shutdown()V

    .line 995
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3000(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->join()V

    .line 996
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const/4 v4, 0x0

    #setter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3002(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    .line 997
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "mConnectTimeout close OK."

    const/4 v5, 0x3

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 998
    :catch_0
    move-exception v8

    .line 999
    .local v8, e:Ljava/lang/InterruptedException;
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "mConnectTimeout close error."

    const/4 v5, 0x2

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1006
    .end local v8           #e:Ljava/lang/InterruptedException;
    :sswitch_5
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1007
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "connecting"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "authorize"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1010
    :cond_8
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const v5, 0x7f0700be

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-virtual {v4, v5, v12}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1013
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "disconnect"

    iget-object v5, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1800(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 1015
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "disconnect"

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2600(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const v4, 0x7f0700b4

    const/4 v5, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateActivityUI(Ljava/lang/String;IZ)V
    invoke-static {v0, v3, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1700(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;IZ)V

    .line 1026
    :cond_9
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3000(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1028
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "mConnectTimeout close."

    const/4 v5, 0x3

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 1029
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3000(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->shutdown()V

    .line 1030
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3000(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->join()V

    .line 1031
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const/4 v4, 0x0

    #setter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3002(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    .line 1032
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "mConnectTimeout close OK."

    const/4 v5, 0x3

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1037
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1038
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1042
    :cond_b
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNM:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v1, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 1033
    :catch_1
    move-exception v8

    .line 1034
    .restart local v8       #e:Ljava/lang/InterruptedException;
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "mConnectTimeout close error."

    const/4 v5, 0x2

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    goto :goto_3

    .line 1047
    .end local v8           #e:Ljava/lang/InterruptedException;
    :sswitch_6
    invoke-static {}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3100()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1048
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const v5, 0x7f0700bf

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-virtual {v4, v5, v12}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1052
    :cond_c
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const/16 v4, 0x67

    #setter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServerState:I
    invoke-static {v0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2502(Lcom/mediatek/bluetooth/hid/BluetoothHidService;I)I

    .line 1054
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1055
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "unplug"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1056
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "disconnect"

    iget-object v5, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1800(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 1063
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "unplug_disconnect"

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2600(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_d

    .line 1066
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mPC:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v4, v4, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1092
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3200(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1094
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "mDisconnectTimeout close."

    const/4 v5, 0x3

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 1095
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3200(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->shutdown()V

    .line 1096
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3200(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->join()V

    .line 1097
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const/4 v4, 0x0

    #setter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3202(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    .line 1098
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "mDisconnectTimeout close OK."

    const/4 v5, 0x3

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 1099
    :catch_2
    move-exception v8

    .line 1100
    .restart local v8       #e:Ljava/lang/InterruptedException;
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "mDisconnectTimeout close error."

    const/4 v5, 0x2

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1069
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_e
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "disconnect"

    iget-object v5, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1800(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 1076
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "disconnect"

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2600(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1078
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1080
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNM:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v1, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1087
    :cond_f
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const v4, 0x7f0700b4

    const/4 v5, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateActivityUI(Ljava/lang/String;IZ)V
    invoke-static {v0, v3, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1700(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;IZ)V

    goto :goto_4

    .line 1107
    :sswitch_7
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1108
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "disconnecting"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "unplug"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1112
    :cond_10
    invoke-static {}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3100()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1113
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const v5, 0x7f0700c0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-virtual {v4, v5, v12}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1119
    :cond_11
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "connected"

    iget-object v5, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1800(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 1121
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "connected"

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2600(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const v4, 0x7f0700b2

    const/4 v5, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateActivityUI(Ljava/lang/String;IZ)V
    invoke-static {v0, v3, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1700(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;IZ)V

    .line 1132
    :cond_12
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3200(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1134
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "mDisconnectTimeout close."

    const/4 v5, 0x3

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 1135
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3200(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->shutdown()V

    .line 1136
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3200(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->join()V

    .line 1137
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const/4 v4, 0x0

    #setter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    invoke-static {v0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$3202(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    .line 1138
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "mDisconnectTimeout close OK."

    const/4 v5, 0x3

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 1139
    :catch_3
    move-exception v8

    .line 1140
    .restart local v8       #e:Ljava/lang/InterruptedException;
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "mDisconnectTimeout close error."

    const/4 v5, 0x2

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1146
    .end local v8           #e:Ljava/lang/InterruptedException;
    :sswitch_8
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const v5, 0x7f0700c1

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-virtual {v4, v5, v12}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1148
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const/16 v4, 0x67

    #setter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServerState:I
    invoke-static {v0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2502(Lcom/mediatek/bluetooth/hid/BluetoothHidService;I)I

    .line 1149
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "unplug"

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2600(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1152
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1154
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #getter for: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNM:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v1, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 1159
    :sswitch_9
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const v5, 0x7f0700c2

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-virtual {v4, v5, v12}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1164
    :sswitch_a
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1165
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v0, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNotifyMap:Ljava/util/Map;

    invoke-static {}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2700()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    invoke-static {}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2708()I

    .line 1169
    :cond_13
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "connecting"

    iget-object v5, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1800(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 1171
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v4, "authorize"

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2600(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const v4, 0x7f0700b3

    const/4 v5, 0x0

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateActivityUI(Ljava/lang/String;IZ)V
    invoke-static {v0, v3, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1700(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;IZ)V

    .line 1186
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const/4 v4, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverAuthorizeReqNative(Ljava/lang/String;Z)V
    invoke-static {v0, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2200(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 931
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0x1b -> :sswitch_a
    .end sparse-switch
.end method
