.class Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;
.super Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify$Stub;
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
    .line 596
    iput-object p1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    invoke-direct {p0}, Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activateReq()V
    .locals 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity Activate: "

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 600
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverActivateReqNative()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1500(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)V

    .line 601
    return-void
.end method

.method public authorizeReq(Ljava/lang/String;Z)V
    .locals 3
    .parameter "btAddr"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 695
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity authorizeReq"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 696
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverAuthorizeReqNative(Ljava/lang/String;Z)V
    invoke-static {v0, p1, p2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2200(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Z)V

    .line 697
    return-void
.end method

.method public clearService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 690
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity clearService"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 691
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->localClearService()V

    .line 692
    return-void
.end method

.method public connectReq(Ljava/lang/String;)V
    .locals 4
    .parameter "btAddr"

    .prologue
    const/4 v3, 0x1

    .line 609
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v2, "BluetoothHidActivity Connect"

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 610
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getDeviceState(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$300(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, state:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 612
    const-string v1, "connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "connecting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->connectHidDevice(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$700(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 621
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v2, "already connected"

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    goto :goto_0

    .line 619
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->connectHidDevice(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$700(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deactivateReq()V
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity DeactivateReq"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 605
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverDeactivateReqNative()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1600(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)V

    .line 606
    return-void
.end method

.method public disconnectReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity Disconnect"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 626
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->disconnectHidDevice(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$800(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public finishActionReq()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 700
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v2, "BluetoothHidActivity finishActionReq"

    const/4 v3, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 701
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.bluetooth.hid.finish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    iget-object v1, v1, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 705
    return-void
.end method

.method public getIdleReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity getIdle"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 682
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverGetIdleReqNative(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public getProtocolReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity getProtocol"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 672
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverGetProtocolReqNative(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1200(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public getReportReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    const/4 v2, 0x1

    .line 661
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity getReport"

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 662
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverGetReportReqNative(Ljava/lang/String;II)V
    invoke-static {v0, p1, v2, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1000(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;II)V

    .line 663
    return-void
.end method

.method public getStateByAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "btAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 686
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getDeviceState(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$300(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendReportReq(Ljava/lang/String;Z)V
    .locals 5
    .parameter "btAddr"
    .parameter "len"

    .prologue
    .line 645
    iget-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v3, "BluetoothHidActivity sendReport"

    const/4 v4, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 646
    const-string v1, "BlueAngel"

    .line 647
    .local v1, report_short:Ljava/lang/String;
    const-string v0, "BlueAngel HID PTS Test send report, the string should have a length larger then the MTU which is 48 in our solution"

    .line 648
    .local v0, report_long:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 649
    iget-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverSendReportReqNative(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, p1, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverSendReportReqNative(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, p1, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIdleReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity setIdle"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 677
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverSetIdleReqNative(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2000(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public setProtocolReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity setProtocol"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 667
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const/4 v1, 0x0

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverSetProtocolReqNative(Ljava/lang/String;I)V
    invoke-static {v0, p1, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1300(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 668
    return-void
.end method

.method public setReportReq(Ljava/lang/String;)V
    .locals 4
    .parameter "btAddr"

    .prologue
    .line 655
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v2, "BluetoothHidActivity setReport"

    const/4 v3, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 656
    const-string v0, "BlueAngel HID PTS Test set report"

    .line 657
    .local v0, report:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const/4 v2, 0x2

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverSetReportReqNative(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v1, p1, v2, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;ILjava/lang/String;)V

    .line 658
    return-void
.end method

.method public unplugReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity unplug"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 638
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const v1, 0x7f0700c6

    const/4 v2, 0x0

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateActivityUI(Ljava/lang/String;IZ)V
    invoke-static {v0, p1, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1700(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;IZ)V

    .line 639
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "disconnecting"

    iget-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1800(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 641
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverUnplugReqNative(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1400(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 642
    return-void
.end method
