.class public Lcom/mediatek/bluetooth/opp/adp/OppNotificationFactory;
.super Ljava/lang/Object;
.source "OppNotificationFactory.java"


# static fields
.field public static final NID_TRANSFER_MGMT:I = 0xf423f

.field private static final NULL_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/opp/adp/OppNotificationFactory;->NULL_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCancelIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 240
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/mediatek/bluetooth/opp/mmi/OppCancelActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    .local v2, intent:Landroid/content/Intent;
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTask$BluetoothShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 243
    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v0, p0

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static createCancelingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"
    .parameter "taskId"

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.bluetooth.receiver.action.SHOW_TOAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.mediatek.bluetooth.receiver.extra.TEXT"

    const v2, 0x7f0700ee

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const/high16 v1, 0x800

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {p0, p1, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getOppIncomingNotification(Landroid/content/Context;Lcom/mediatek/bluetooth/share/BluetoothShareTask;)Landroid/app/Notification;
    .locals 15
    .parameter "context"
    .parameter "task"

    .prologue
    .line 176
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.mediatek.bluetooth.opp.action.PUSH_REQUEST"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v2, intent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    const-string v0, "com.mediatek.bluetooth.opp.extra.PEER_NAME"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getPeerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v0, "com.mediatek.bluetooth.opp.extra.OBJECT_NAME"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v0, "com.mediatek.bluetooth.opp.extra.TOTAL_BYTES"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 183
    const-string v0, "com.mediatek.bluetooth.opp.extra.TASK_ID"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getId()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getId()I

    move-result v6

    const v11, 0x7f020002

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getCreationDate()J

    move-result-wide v13

    const v0, 0x7f0700e3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f0700e4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getPeerName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const v0, 0x7f0700e5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getId()I

    move-result v1

    const/high16 v3, 0x4000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    move v3, v6

    move v4, v11

    move-wide v5, v13

    move-object v11, p0

    invoke-static/range {v3 .. v11}, Lcom/mediatek/bluetooth/opp/adp/OppNotificationFactory;->getSimpleNotification(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v12

    .line 192
    .local v12, n:Landroid/app/Notification;
    iget v0, v12, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 193
    const/4 v0, 0x3

    iput v0, v12, Landroid/app/Notification;->defaults:I

    .line 194
    return-object v12
.end method

.method public static getOppOngoingNotification(Landroid/content/Context;Lcom/mediatek/bluetooth/share/BluetoothShareTask;)Landroid/app/Notification;
    .locals 19
    .parameter "context"
    .parameter "task"

    .prologue
    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getDirection()Lcom/mediatek/bluetooth/share/BluetoothShareTask$Direction;

    move-result-object v14

    .line 210
    .local v14, direction:Lcom/mediatek/bluetooth/share/BluetoothShareTask$Direction;
    sget-object v3, Lcom/mediatek/bluetooth/share/BluetoothShareTask$Direction;->in:Lcom/mediatek/bluetooth/share/BluetoothShareTask$Direction;

    if-ne v14, v3, :cond_0

    .line 212
    const v4, 0x7f020002

    .line 213
    .local v4, icon:I
    const v16, 0x7f0700e6

    .line 214
    .local v16, ticker:I
    const v15, 0x7f0700e7

    .line 224
    .local v15, message:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getTotalBytes()J

    move-result-wide v17

    .line 225
    .local v17, total:J
    const-wide/16 v5, 0x0

    cmp-long v3, v17, v5

    if-nez v3, :cond_2

    const/4 v11, 0x0

    .line 227
    .local v11, done:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getId()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getCreationDate()J

    move-result-wide v5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getObjectName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x64

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getId()I

    move-result v12

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/mediatek/bluetooth/opp/adp/OppNotificationFactory;->createCancelIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v12

    move-object/from16 v13, p0

    invoke-static/range {v3 .. v13}, Lcom/mediatek/bluetooth/opp/adp/OppNotificationFactory;->getProgressNotification(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/app/PendingIntent;Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v3

    return-object v3

    .line 215
    .end local v4           #icon:I
    .end local v11           #done:I
    .end local v15           #message:I
    .end local v16           #ticker:I
    .end local v17           #total:J
    :cond_0
    sget-object v3, Lcom/mediatek/bluetooth/share/BluetoothShareTask$Direction;->out:Lcom/mediatek/bluetooth/share/BluetoothShareTask$Direction;

    if-ne v14, v3, :cond_1

    .line 216
    const v4, 0x7f020003

    .line 217
    .restart local v4       #icon:I
    const v16, 0x7f0700e8

    .line 218
    .restart local v16       #ticker:I
    const v15, 0x7f0700e9

    .restart local v15       #message:I
    goto :goto_0

    .line 220
    .end local v4           #icon:I
    .end local v15           #message:I
    .end local v16           #ticker:I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupport feature for getOppOngoingNotification():"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/mediatek/bluetooth/share/BluetoothShareTask$Direction;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->e(Ljava/lang/String;)V

    .line 221
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported feature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Lcom/mediatek/bluetooth/share/BluetoothShareTask$Direction;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    .restart local v4       #icon:I
    .restart local v15       #message:I
    .restart local v16       #ticker:I
    .restart local v17       #total:J
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getDoneBytes()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    div-long v5, v5, v17

    long-to-int v11, v5

    goto/16 :goto_1
.end method

.method protected static getProgressNotification(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/app/PendingIntent;Landroid/content/Context;)Landroid/app/Notification;
    .locals 3
    .parameter "id"
    .parameter "iconDrawableId"
    .parameter "when"
    .parameter "tickerText"
    .parameter "progressText"
    .parameter "message"
    .parameter "total"
    .parameter "progress"
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 154
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, b:Landroid/app/Notification$Builder;
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 156
    invoke-virtual {v0, p2, p3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 157
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 158
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 159
    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 160
    invoke-virtual {v0, p9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 161
    if-ge p7, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, p7, p8, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 162
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 163
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    return-object v1

    .line 161
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getSimpleNotification(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Context;)Landroid/app/Notification;
    .locals 2
    .parameter "id"
    .parameter "iconDrawableId"
    .parameter "when"
    .parameter "tickerText"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 103
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, b:Landroid/app/Notification$Builder;
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 105
    invoke-virtual {v0, p2, p3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 106
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 107
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 108
    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 109
    invoke-virtual {v0, p7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 111
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method
