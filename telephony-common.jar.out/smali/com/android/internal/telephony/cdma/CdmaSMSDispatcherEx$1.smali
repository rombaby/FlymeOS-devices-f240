.class Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaSMSDispatcherEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mo.dan] mECBMExitReceiver, receive ACTION_EMERGENCY_CALLBACK_MODE_CHANGED PHONE_IN_ECM_STATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phoneinECMState"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 123
    const-string v1, "persist.radio.starte911call"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "isStartE911":Ljava/lang/String;
    const-string v1, "phoneinECMState"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "persist.radio.starte911call"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isSystemInPrl()Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 136
    const-string v1, "[sms.mo.dan] Current system is in PRL"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$100(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isUiccInserted()Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 138
    const-string v1, "[sms.mo.dan] UICC card is inserted into device"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 139
    const-string v1, "[sms.mo.dan] The UE is required to send the 911 Stop Notification"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 140
    const-string v1, "[sms.mo.dan] UE exits ECBM -> UE Sends 911 Stop DAN->sendDomainNotiMessage"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$200(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sendDomainNotiMessage(Landroid/content/Context;I)V
    invoke-static {v1, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$300(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;Landroid/content/Context;I)V

    .line 183
    .end local v0    # "isStartE911":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 143
    .restart local v0    # "isStartE911":Ljava/lang/String;
    :cond_1
    const-string v1, "[sms.mo.dan] UICC card is Not inserted into device"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 144
    const-string v1, "[sms.mo.dan] The UE is not required to send the 911 Stop Notification"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_2
    const-string v1, "[sms.mo.dan] Current system is not in PRL"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 148
    const-string v1, "[sms.mo.dan] The UE is not required to send the 911 Stop Notification"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 152
    .end local v0    # "isStartE911":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "[sms.mo.dan] mECBMExitReceiver, receive ACTION_BOOT_COMPLETED"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 154
    const-string v1, "persist.radio.starte911call"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0    # "isStartE911":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mo.dan] mECBMExitReceiver, receive ACTION_BOOT_COMPLETED PROPERTY_START_E911_CALL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 157
    const-string v1, "persist.radio.starte911call"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$400(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isSystemInPrl()Z

    move-result v1

    if-ne v1, v3, :cond_5

    .line 167
    const-string v1, "[sms.mo.dan] Current system is in PRL"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$500(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isUiccInserted()Z

    move-result v1

    if-ne v1, v3, :cond_4

    .line 169
    const-string v1, "[sms.mo.dan] UICC card is inserted into device"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 170
    const-string v1, "[sms.mo.dan] The UE is required to send the 911 Stop Notification"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 171
    const-string v1, "[sms.mo.dan] After Boot Completed -> UE Sends 911 Stop DAN->sendDomainNotiMessage"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$600(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sendDomainNotiMessage(Landroid/content/Context;I)V
    invoke-static {v1, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->access$700(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 174
    :cond_4
    const-string v1, "[sms.mo.dan] UICC card is Not inserted into device"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 175
    const-string v1, "[sms.mo.dan] The UE is not required to send the 911 Stop Notification"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    :cond_5
    const-string v1, "[sms.mo.dan] Current system is not in PRL"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 179
    const-string v1, "[sms.mo.dan] The UE is not required to send the 911 Stop Notification"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto/16 :goto_0
.end method
