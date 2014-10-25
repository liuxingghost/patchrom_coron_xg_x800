.class Lcom/mediatek/FMRadio/FMRadioActivity$5;
.super Landroid/os/Handler;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .parameter "msg"

    .prologue
    .line 636
    const-string v21, "FmRx/Activity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mHandler.handleMessage: what = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",hashcode:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->hashCode()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    .line 845
    const-string v21, "FmRx/Activity"

    const-string v22, "invalid message"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :goto_0
    const-string v21, "FmRx/Activity"

    const-string v22, "handleMessage"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :goto_1
    return-void

    .line 641
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshTimeText()V
    invoke-static/range {v21 .. v21}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2700(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_0

    .line 648
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 649
    .local v2, bundle:Landroid/os/Bundle;
    const-string v21, "key_is_power_up"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 651
    .local v10, isPowerup:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0, v10}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 653
    .local v3, endTime:J
    const-string v21, "FmRx/Activity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[Performance test][FMRadio] power up end ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v21, "FmRx/Activity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateFMState: FMRadio is powerup = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V
    invoke-static/range {v21 .. v21}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2800(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 657
    if-eqz v10, :cond_0

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3000(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3100(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 665
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto/16 :goto_0

    .line 662
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const v23, 0x7f040040

    invoke-virtual/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 670
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #endTime:J
    .end local v10           #isPowerup:Z
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 671
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v21, "key_is_switch_anntenna"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 673
    .local v12, isSwitch:Z
    const-string v21, "FmRx/Activity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[FMRadioActivity.mHandler] swtich antenna: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    if-nez v12, :cond_2

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const v23, 0x7f040060

    invoke-virtual/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->exitService()V
    invoke-static/range {v21 .. v21}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2500(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/FMRadio/FMRadioActivity;->finish()V

    .line 695
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto/16 :goto_0

    .line 697
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->dismissNoAntennaDialog()V
    invoke-static/range {v21 .. v21}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto/16 :goto_0

    .line 704
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v12           #isSwitch:Z
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 705
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v21, "key_is_power_down"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 707
    .local v9, isPowerdown:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    if-nez v9, :cond_3

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v21

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 709
    .restart local v3       #endTime:J
    const-string v21, "FmRx/Activity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[Performance test][FMRadio] power down end ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3100(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3000(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto/16 :goto_0

    .line 707
    .end local v3           #endTime:J
    :cond_3
    const/16 v21, 0x0

    goto :goto_3

    .line 718
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v9           #isPowerdown:Z
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 719
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v21, "key_is_tune"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    .line 720
    .local v19, tuneFinish:Z
    const-string v21, "key_is_power_up"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 722
    .local v8, isPowerUp:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v22

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v8

    .end local v8           #isPowerUp:Z
    :cond_4
    move-object/from16 v0, v21

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 724
    .restart local v3       #endTime:J
    const-string v21, "FmRx/Activity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[Performance test][FMRadio] increase frequency end ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v21, "FmRx/Activity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[Performance test][FMRadio] decrease frequency end ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v21, "FmRx/Activity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[Performance test][FMRadio] seek previous channel end ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v21, "FmRx/Activity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[Performance test][FMRadio] seek next channel end ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v21, "FmRx/Activity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[Performance test][FMRadio] open channel end ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V
    invoke-static/range {v21 .. v21}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2800(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 733
    const-string v21, "key_tune_to_station"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 734
    .local v6, frequency:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v22

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1202(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v22

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshStationUI(I)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3600(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 739
    if-nez v19, :cond_5

    .line 740
    const-string v21, "FmRx/Activity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mHandler.tune: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v22

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3100(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v22

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v22

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3000(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto/16 :goto_1

    .line 747
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3100(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3000(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto/16 :goto_0

    .line 755
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #endTime:J
    .end local v6           #frequency:F
    .end local v19           #tuneFinish:Z
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 757
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v21, "key_is_scan"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 758
    .local v11, isScan:Z
    const-string v21, "key_tune_to_station"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 759
    .local v20, tuneToStation:I
    const-string v21, "key_station_num"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 760
    .local v17, searchedNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v22

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3100(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v22

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v22

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3000(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 766
    if-nez v11, :cond_6

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->dismissSearchDialog()V
    invoke-static/range {v21 .. v21}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3700(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 768
    const-string v21, "FmRx/Activity"

    const-string v22, "mHandler.scan canceled. not enter to channel list."

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 772
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 773
    .restart local v3       #endTime:J
    const-string v21, "FmRx/Activity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[Performance test][FMRadio] scan channel end ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v21, "FmRx/Activity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[Performance test][FMRadio] scan channel numbers ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1202(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v22

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshStationUI(I)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3600(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->dismissSearchDialog()V
    invoke-static/range {v21 .. v21}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3700(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 783
    if-nez v17, :cond_7

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const v23, 0x7f040023

    invoke-virtual/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 788
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->enterChannelList()V
    invoke-static/range {v21 .. v21}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v23, v0

    const v24, 0x7f040022

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 794
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #endTime:J
    .end local v11           #isScan:Z
    .end local v17           #searchedNum:I
    .end local v20           #tuneToStation:I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/FMRadio/FMRadioActivity;->finish()V

    goto/16 :goto_0

    .line 798
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 799
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v21, "key_rds_station"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 800
    .local v14, rdsStation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshStationUI(I)V
    invoke-static {v0, v14}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3600(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    goto/16 :goto_0

    .line 805
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v14           #rdsStation:I
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 806
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v18, ""

    .line 807
    .local v18, text:Ljava/lang/String;
    const-string v21, "key_ps_info"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 808
    .local v13, psString:Ljava/lang/String;
    const-string v21, "key_rt_info"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 809
    .local v16, rtString:Ljava/lang/String;
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_8

    .line 810
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 812
    :cond_8
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_a

    .line 813
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_9

    .line 814
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 816
    :cond_9
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 818
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showRDS(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3900(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 823
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v13           #psString:Ljava/lang/String;
    .end local v16           #rtString:Ljava/lang/String;
    .end local v18           #text:Ljava/lang/String;
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 824
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v21, "key_is_recording_state"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 826
    .local v15, recorderState:I
    const-string v21, "FmRx/Activity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "FMRadioActivity.mHandler: recorderState = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->updateRecordingState(I)V
    invoke-static {v0, v15}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4000(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    goto/16 :goto_0

    .line 832
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v15           #recorderState:I
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 833
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v21, "key_recording_error_type"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 835
    .local v5, errorState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->updateRecorderError(I)V
    invoke-static {v0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4100(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    goto/16 :goto_0

    .line 839
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v5           #errorState:I
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 840
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v21, "key_is_recording_mode"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 842
    .local v7, isInRecordingMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->exitRecordingMode(Z)V
    invoke-static {v0, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto/16 :goto_0

    .line 639
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xb -> :sswitch_6
        0xd -> :sswitch_5
        0xf -> :sswitch_4
        0x65 -> :sswitch_0
        0x100010 -> :sswitch_7
        0x100011 -> :sswitch_8
        0x100100 -> :sswitch_8
        0x100101 -> :sswitch_9
        0x100110 -> :sswitch_a
        0x100111 -> :sswitch_b
    .end sparse-switch
.end method
