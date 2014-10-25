.class Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;
.super Ljava/lang/Object;
.source "OppService.java"

# interfaces
.implements Lcom/mediatek/bluetooth/opp/adp/OppTaskHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/opp/adp/OppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OppsTaskHandler"
.end annotation


# instance fields
.field mIsBusy:Z

.field final synthetic this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/opp/adp/OppService;)V
    .locals 1
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->mIsBusy:Z

    return-void
.end method


# virtual methods
.method public afterWait()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 789
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/bluetooth/share/BluetoothShareTask$BluetoothShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    const-string v3, "type between ? and ? AND state in ( ?, ? )"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    const/16 v5, 0x13

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    const/4 v5, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 804
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 806
    .local v8, newTaskList:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->getOppTaskList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v8

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opps afterWait(): task count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 810
    if-eqz v6, :cond_0

    .line 812
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 813
    const/4 v6, 0x0

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->acquireWakeLock()V

    .line 820
    :try_start_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 822
    .local v1, newTask:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opps afterWait() processing task:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/opp/adp/OppService;->oppsSetCurrentTask(Landroid/net/Uri;)V

    .line 828
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "state=1 OR state=2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 835
    const/4 v9, 0x0

    .line 837
    .local v9, task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    if-eqz v6, :cond_2

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    if-nez v0, :cond_5

    .line 851
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppsCurrentStoragePath:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$102(Lcom/mediatek/bluetooth/opp/adp/OppService;Ljava/lang/String;)Ljava/lang/String;

    .line 852
    if-eqz v9, :cond_3

    .line 855
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    const/4 v2, 0x0

    invoke-static {v0, v9, v2}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendStateChangedBroadcast(Landroid/content/Context;Lcom/mediatek/bluetooth/share/BluetoothShareTask;Z)V

    .line 859
    :cond_3
    if-eqz v6, :cond_1

    .line 860
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 866
    .end local v1           #newTask:Landroid/net/Uri;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->releaeWakeLock()V

    .line 869
    iput-boolean v12, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->mIsBusy:Z

    throw v0

    .line 810
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_4

    .line 812
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 813
    const/4 v6, 0x0

    :cond_4
    throw v0

    .line 842
    .restart local v1       #newTask:Landroid/net/Uri;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    :cond_5
    :try_start_4
    new-instance v10, Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-direct {v10, v6}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;-><init>(Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 845
    .end local v9           #task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    .local v10, task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    :try_start_5
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    const/4 v2, 0x1

    invoke-static {v0, v10, v2}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendStateChangedBroadcast(Landroid/content/Context;Lcom/mediatek/bluetooth/share/BluetoothShareTask;Z)V

    .line 847
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    invoke-virtual {v10}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getData()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppsCurrentStoragePath:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$102(Lcom/mediatek/bluetooth/opp/adp/OppService;Ljava/lang/String;)Ljava/lang/String;

    .line 848
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    invoke-virtual {v0, v10, p0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->oppsAccessResponse(Lcom/mediatek/bluetooth/share/BluetoothShareTask;Lcom/mediatek/bluetooth/opp/adp/OppTaskHandler;)Z

    .line 849
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetooth/opp/adp/OppService;->oppsSetCurrentTask(Landroid/net/Uri;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 851
    :try_start_6
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppsCurrentStoragePath:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$102(Lcom/mediatek/bluetooth/opp/adp/OppService;Ljava/lang/String;)Ljava/lang/String;

    .line 852
    if-eqz v10, :cond_6

    .line 855
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    const/4 v2, 0x0

    invoke-static {v0, v10, v2}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendStateChangedBroadcast(Landroid/content/Context;Lcom/mediatek/bluetooth/share/BluetoothShareTask;Z)V

    .line 859
    :cond_6
    if-eqz v6, :cond_1

    .line 860
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 851
    .end local v10           #task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    .restart local v9       #task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    :catchall_2
    move-exception v0

    :goto_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    const/4 v3, 0x0

    #setter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppsCurrentStoragePath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$102(Lcom/mediatek/bluetooth/opp/adp/OppService;Ljava/lang/String;)Ljava/lang/String;

    .line 852
    if-eqz v9, :cond_7

    .line 855
    iget-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    const/4 v3, 0x0

    invoke-static {v2, v9, v3}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendStateChangedBroadcast(Landroid/content/Context;Lcom/mediatek/bluetooth/share/BluetoothShareTask;Z)V

    .line 859
    :cond_7
    if-eqz v6, :cond_8

    .line 860
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 866
    .end local v1           #newTask:Landroid/net/Uri;
    .end local v9           #task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    :cond_9
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->releaeWakeLock()V

    .line 869
    iput-boolean v12, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->mIsBusy:Z

    .line 871
    return-void

    .line 851
    .restart local v1       #newTask:Landroid/net/Uri;
    .restart local v10       #task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    :catchall_3
    move-exception v0

    move-object v9, v10

    .end local v10           #task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    .restart local v9       #task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    goto :goto_1
.end method

.method public beforeWait()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 714
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mIsOppsResetTask:Z
    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$500(Lcom/mediatek/bluetooth/opp/adp/OppService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #setter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mIsOppsResetTask:Z
    invoke-static {v0, v11}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$502(Lcom/mediatek/bluetooth/opp/adp/OppService;Z)Z

    .line 720
    const-string v0, "opps beforeWait() - oppsResetTaskState() "

    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->oppsResetTaskState()V

    .line 724
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->mIsBusy:Z

    if-eqz v0, :cond_1

    move v0, v11

    .line 782
    :goto_0
    return v0

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->oppsWaitForAccessRequest()Lcom/mediatek/bluetooth/opp/adp/OppEvent;

    move-result-object v8

    .line 730
    .local v8, ind:Lcom/mediatek/bluetooth/opp/adp/OppEvent;
    iget-object v7, v8, Lcom/mediatek/bluetooth/opp/adp/OppEvent;->parameters:[Ljava/lang/String;

    .line 733
    .local v7, args:[Ljava/lang/String;
    iget v0, v8, Lcom/mediatek/bluetooth/opp/adp/OppEvent;->event:I

    const/16 v1, 0x71

    if-ne v0, v1, :cond_4

    .line 736
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/opp/adp/OppService;->oppsIsAuthorized()Z

    move-result v1

    aget-object v2, v7, v12

    aget-object v3, v7, v11

    aget-object v4, v7, v13

    const/4 v5, 0x3

    aget-object v5, v7, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->oppsStartPushActivity(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v9

    .line 739
    .local v9, isConfirmed:Z
    iput-boolean v11, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->mIsBusy:Z

    .line 742
    if-nez v9, :cond_2

    .line 744
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->oppsListenDisconnect()Z

    move-result v10

    .line 745
    .local v10, isDisconnected:Z
    if-eqz v10, :cond_3

    .line 747
    iput-boolean v12, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->mIsBusy:Z

    .line 748
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->oppsCancelPushActivity()V

    move v0, v12

    .line 749
    goto :goto_0

    .line 754
    .end local v10           #isDisconnected:Z
    :cond_2
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/bluetooth/opp/adp/OppManager;->mOppsTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    if-eqz v0, :cond_3

    .line 756
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/bluetooth/opp/adp/OppManager;->mOppsTask:Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 758
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    const/16 v1, 0x60

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v12

    const-string v3, ""

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/bluetooth/opp/adp/OppService;->oppsAccessResponseNative(I[Ljava/lang/String;)Z

    .line 763
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->oppsListenDisconnect()Z

    move-result v10

    .line 764
    .restart local v10       #isDisconnected:Z
    if-eqz v10, :cond_3

    .line 766
    iput-boolean v12, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->mIsBusy:Z

    move v0, v12

    .line 767
    goto :goto_0

    .end local v10           #isDisconnected:Z
    :cond_3
    move v0, v11

    .line 774
    goto :goto_0

    .line 776
    .end local v9           #isConfirmed:Z
    :cond_4
    const-string v0, "opps beforeWait(): get unsupported event(oppsRequestIndication)"

    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->e(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    const/16 v1, 0x51

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v12

    const-string v3, ""

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/bluetooth/opp/adp/OppService;->oppsAccessResponseNative(I[Ljava/lang/String;)Z

    .line 781
    iput-boolean v12, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->mIsBusy:Z

    move v0, v12

    .line 782
    goto/16 :goto_0
.end method

.method public onObjectChange(Lcom/mediatek/bluetooth/share/BluetoothShareTask;)V
    .locals 8
    .parameter "task"

    .prologue
    const/16 v7, 0x64

    .line 877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opps onObjectChange() for taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->setModifiedDate(J)V

    .line 883
    iget-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;
    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->notifyOppTask(Lcom/mediatek/bluetooth/share/BluetoothShareTask;)V

    .line 886
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getDoneBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 887
    const-string v2, "onObjectChange,task state is STATE_ONGOING"

    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/opp/adp/OppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getTaskUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    const/4 v1, 0x0

    .line 899
    .local v1, msg:Landroid/os/Message;
    const-string v2, "[API] sendServiceMsg(100)"

    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 900
    iget-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$600(Lcom/mediatek/bluetooth/opp/adp/OppService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 901
    iget-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$600(Lcom/mediatek/bluetooth/opp/adp/OppService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 902
    iput v7, v1, Landroid/os/Message;->what:I

    .line 903
    iget-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppService;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/adp/OppService;->access$600(Lcom/mediatek/bluetooth/opp/adp/OppService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
