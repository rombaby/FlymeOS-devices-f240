.class Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchdogEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 558
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 563
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 648
    :pswitch_0
    const/4 v3, 0x0

    .line 651
    :goto_0
    return v3

    .line 565
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 566
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    move v3, v4

    .line 651
    goto :goto_0

    .line 570
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 571
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "networkInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 575
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "wifiInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 576
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    :goto_2
    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V
    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 578
    sget-boolean v3, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_DCF:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/lge/wifi/extension/IWifiDataContinuityService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 580
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_1

    .line 581
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/lge/wifi/extension/IWifiDataContinuityService;

    move-result-object v5

    invoke-interface {v5}, Lcom/lge/wifi/extension/IWifiDataContinuityService;->isInternetCheckAvailable()Z

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsLinkCheckAP:Z
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 583
    :cond_1
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ATT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v5, "US"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 584
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsLinkCheckAP:Z
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 589
    :cond_2
    sget-object v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$4;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_1

    .line 626
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 576
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 591
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "linkProperties"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1602(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 593
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 594
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v3

    if-nez v3, :cond_5

    .line 595
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore, wifiinfo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bssid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 596
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 599
    :cond_5
    sget-boolean v3, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_DCF:Z

    if-eqz v3, :cond_7

    .line 600
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsLinkCheckAP:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 601
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 603
    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 606
    :cond_7
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 611
    :cond_8
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 616
    :pswitch_4
    sget-boolean v3, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_DCF:Z

    if-eqz v3, :cond_9

    .line 617
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsLinkCheckAP:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 618
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 621
    :cond_9
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 632
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 633
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "newState"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SupplicantState;

    .line 635
    .local v2, "supplicantState":Landroid/net/wifi/SupplicantState;
    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v2, v3, :cond_0

    .line 636
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 637
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 642
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "supplicantState":Landroid/net/wifi/SupplicantState;
    :pswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_0

    .line 643
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 563
    :pswitch_data_0
    .packed-switch 0x21001
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 589
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
