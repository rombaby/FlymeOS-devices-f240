.class Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;
.super Landroid/content/BroadcastReceiver;
.source "SessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/SessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCtrlBroadcastRcvr"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/SessionController;


# direct methods
.method public constructor <init>(Lcom/lge/wfds/SessionController;)V
    .locals 0

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;->this$0:Lcom/lge/wfds/SessionController;

    .line 1143
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1144
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1150
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.lge.wfds.session.OPEN_FAILED_TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1151
    const-string v1, "WfdsSession:Controller"

    const-string v2, "SESSION_AFTER_OPEN_FAILED_TIMEOUT_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;->this$0:Lcom/lge/wfds/SessionController;

    # setter for: Lcom/lge/wfds/SessionController;->mSessionOpenFailedTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v1, v3}, Lcom/lge/wfds/SessionController;->access$5202(Lcom/lge/wfds/SessionController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 1153
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;->this$0:Lcom/lge/wfds/SessionController;

    const v2, 0x901036

    invoke-virtual {v1, v2}, Lcom/lge/wfds/SessionController;->sendMessage(I)V

    .line 1165
    :goto_0
    return-void

    .line 1154
    :cond_0
    const-string v1, "com.lge.wfds.session.COUNT_ZERO_TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1155
    const-string v1, "WfdsSession:Controller"

    const-string v2, "SESSION_AFTER_COUNT_ZERO_TIMEOUT_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;->this$0:Lcom/lge/wfds/SessionController;

    # setter for: Lcom/lge/wfds/SessionController;->mSessionCountZeroTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v1, v3}, Lcom/lge/wfds/SessionController;->access$1402(Lcom/lge/wfds/SessionController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 1157
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;->this$0:Lcom/lge/wfds/SessionController;

    const v2, 0x901037

    invoke-virtual {v1, v2}, Lcom/lge/wfds/SessionController;->sendMessage(I)V

    goto :goto_0

    .line 1158
    :cond_1
    const-string v1, "com.lge.wfds.session.DEFERRED_TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1159
    const-string v1, "WfdsSession:Controller"

    const-string v2, "SESSION_DEFERRED_TIMEOUT_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;->this$0:Lcom/lge/wfds/SessionController;

    # setter for: Lcom/lge/wfds/SessionController;->mSessionDeferredTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v1, v3}, Lcom/lge/wfds/SessionController;->access$4502(Lcom/lge/wfds/SessionController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 1161
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;->this$0:Lcom/lge/wfds/SessionController;

    const v2, 0x901038

    invoke-virtual {v1, v2}, Lcom/lge/wfds/SessionController;->sendMessage(I)V

    goto :goto_0

    .line 1163
    :cond_2
    const-string v1, "WfdsSession:Controller"

    const-string v2, "Invaild intent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method