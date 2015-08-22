.class public Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;
.super Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.source "CdmaInboundSmsHandlerEx.java"


# static fields
.field private static final ALLRECEIVE_MODE:B = 0x3t

.field private static final COMMERCIAL_MODE:B = 0x0t

.field private static final KDDITEST_MODE:B = 0x2t

.field private static final MANUFACTURETEST_MODE:B = 0x1t

.field private static final SMS_RECEIVED_TYPE_ACCOUNT_IS_ADDED:Ljava/lang/String; = "VZWSIP"

.field private static final SMS_RECEIVED_TYPE_COMPLETE_SYNC_INBOX:Ljava/lang/String; = "VZWSCI"

.field private static final SMS_RECEIVED_TYPE_NEW_MAIL:Ljava/lang/String; = "VZWNMN"

.field private static final SMS_RECEIVED_TYPE_NOTIFICATION_FOR_CHANGES:Ljava/lang/String; = "VZWUEP"

.field private static final SMS_RECEIVED_TYPE_NOTIFICATION_FOR_DEACTIVATION:Ljava/lang/String; = "VZWRSC"

.field private static final SMS_RECEIVED_TYPE_PIN_NOTIFICATION:Ljava/lang/String; = "VZWPIN"

.field private static final TAG:Ljava/lang/String; = "Mms Testbed"

.field private static msgref:I


# instance fields
.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field mSmsDupProc:Lcom/android/internal/telephony/LGSmsDupProc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->msgref:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    .line 68
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 72
    new-instance v0, Lcom/android/internal/telephony/LGSmsDupProc;

    invoke-direct {v0}, Lcom/android/internal/telephony/LGSmsDupProc;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mSmsDupProc:Lcom/android/internal/telephony/LGSmsDupProc;

    .line 99
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnDanStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 101
    return-void
.end method

.method private static decode_Base64([B)[B
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 682
    const-string v1, "Mms Testbed"

    const-string v2, "decode_Base64()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/16 v1, 0xdc

    new-array v0, v1, [B

    .line 684
    .local v0, "b64":[B
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    .line 685
    return-object v0
.end method

.method private dispatchSncSms([[B)V
    .locals 2
    .param p1, "pdus"    # [[B

    .prologue
    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.snc.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 440
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->dispatchEx(Landroid/content/Intent;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method private handleCmas(Lcom/android/internal/telephony/cdma/SmsMessage;)I
    .locals 2
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 702
    const-string v1, "Broadcast type message"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v0

    .line 704
    .local v0, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v0, :cond_0

    .line 705
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    .line 709
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 707
    :cond_0
    const-string v1, "error trying to parse broadcast SMS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSelfRegiConfirmMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 4
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 692
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SELF_REGI_SMS_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.lge.cmcchiddenmenu"

    const-string v3, "com.lge.cmcchiddenmenu.dm.DMReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 695
    const-string v2, "userdata"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 696
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->dispatchEx(Landroid/content/Intent;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method private handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 4
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v1

    .line 380
    .local v1, "voicemailCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Voicemail count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "support_sprint_vvm"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    const-string v2, "ro.chameleon.vvm"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "chameleon_VVM":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchMessage(), chameleon_VVM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 387
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "cdma_sms_cdg2"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    const-string v2, "dispatchMessage(), teleService: Ignore VMN or MWI"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 417
    .end local v0    # "chameleon_VVM":Ljava/lang/String;
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "cdma_sms_cdg2"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    if-gez v1, :cond_3

    .line 398
    const/4 v1, -0x1

    .line 408
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "cdma_urgent_vmwi"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->isMwiUrgentMessage()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->updateMessageWaitingIndicatorPriority(Z)V

    .line 414
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->storeVoiceMailCount()V

    goto :goto_0

    .line 399
    :cond_3
    const/16 v2, 0x63

    if-le v1, v2, :cond_1

    .line 402
    const/16 v1, 0x63

    goto :goto_1
.end method

.method private isSncMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 5
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v3, 0x0

    .line 446
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "bodyMessage":Ljava/lang/String;
    if-nez v0, :cond_1

    move v1, v3

    .line 478
    :cond_0
    :goto_0
    return v1

    .line 451
    :cond_1
    const/4 v1, 0x0

    .line 453
    .local v1, "isSncSms":Z
    const-string v4, "VZWPIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 454
    const/4 v1, 0x1

    .line 473
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 474
    const/4 v4, 0x1

    new-array v2, v4, [[B

    .line 475
    .local v2, "pdus":[[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v4

    aput-object v4, v2, v3

    .line 476
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->dispatchSncSms([[B)V

    goto :goto_0

    .line 455
    .end local v2    # "pdus":[[B
    :cond_3
    const-string v4, "VZWNMN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 457
    const/4 v1, 0x1

    goto :goto_1

    .line 458
    :cond_4
    const-string v4, "VZWUEP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 460
    const/4 v1, 0x1

    goto :goto_1

    .line 461
    :cond_5
    const-string v4, "VZWRSC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 463
    const/4 v1, 0x1

    goto :goto_1

    .line 464
    :cond_6
    const-string v4, "VZWSIP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 467
    const/4 v1, 0x1

    goto :goto_1

    .line 468
    :cond_7
    const-string v4, "VZWSCI"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 470
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 108
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    .line 110
    .local v0, "handler":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->start()V

    .line 111
    return-object v0
.end method

.method protected static mmsTestBedGetMsgId([B)[B
    .locals 10
    .param p0, "pdu"    # [B

    .prologue
    const/4 v9, 0x0

    .line 645
    const-string v7, "Mms Testbed"

    const-string v8, "mmsTestBedGetMsgId()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    array-length v7, p0

    add-int/lit8 v7, v7, -0x4

    new-array v2, v7, [B

    .line 647
    .local v2, "mms_userdata":[B
    array-length v7, v2

    new-array v5, v7, [B

    .line 648
    .local v5, "new_userdata":[B
    const/16 v7, 0x14

    new-array v3, v7, [C

    .line 651
    .local v3, "msgid":[C
    const/4 v7, 0x5

    array-length v8, p0

    add-int/lit8 v8, v8, -0x5

    invoke-static {p0, v7, v2, v9, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 652
    array-length v1, v2

    .line 654
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 655
    aget-byte v7, v2, v0

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_0

    .line 656
    aget-byte v7, v2, v0

    int-to-char v7, v7

    aput-char v7, v3, v0

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 658
    :cond_0
    aput-char v9, v3, v0

    .line 661
    invoke-static {v3, v9, v0}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    .line 662
    .local v6, "tmp":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->msgref:I

    .line 664
    array-length v7, v5

    sub-int v4, v7, v0

    .line 665
    .local v4, "new_len":I
    add-int/lit8 v7, v0, 0x1

    add-int/lit8 v8, v4, -0x1

    invoke-static {v2, v7, v5, v9, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 669
    .end local v4    # "new_len":I
    .end local v6    # "tmp":Ljava/lang/String;
    :cond_1
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->decode_Base64([B)[B

    move-result-object v7

    return-object v7
.end method

.method private mmsTestBedPushCheck([B)Z
    .locals 5
    .param p1, "user_data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 673
    const-string v3, "Mms Testbed"

    const-string v4, "mmsTestBedPushCheck()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 676
    .local v1, "pData":Ljava/lang/String;
    const-string v3, "//LG/"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 678
    .local v0, "index":I
    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private supportNetDupMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)I
    .locals 8
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 714
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    .line 716
    .local v0, "headerForCheck":Lcom/android/internal/telephony/SmsHeader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sms.mt.dup] ver1.2 headerForCheck = ["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 717
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v1, :cond_1

    .line 718
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v2

    .line 719
    .local v2, "timeStamp":J
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 720
    .local v4, "address":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v1

    iget v5, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 721
    .local v5, "messageId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    .line 724
    .local v6, "body":Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sms.mt.dup] sms.getTimestampMillis() = ["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sms.mt.dup] sms.getOriginatingAddress() = ["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sms.mt.dup] sms.getBearerData.messageId = ["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sms.mt.dup] sms.getMessageBody() = ["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 730
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mSmsDupProc:Lcom/android/internal/telephony/LGSmsDupProc;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/LGSmsDupProc;->checkNetworkDuplicate(JLjava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    const/4 v1, 0x1

    .line 735
    .end local v2    # "timeStamp":J
    .end local v4    # "address":Ljava/lang/String;
    .end local v5    # "messageId":I
    .end local v6    # "body":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/16 v1, 0xb

    goto :goto_0
.end method

.method private updateMessageWaitingIndicatorPriority(Z)V
    .locals 5
    .param p1, "urgent"    # Z

    .prologue
    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMessageWaitingIndicatorPriority()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 424
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->setVoiceMessageUrgent(Z)V

    .line 426
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "imsi":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 429
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 431
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;

    const-string v3, "vm_priority_key"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 432
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 433
    return-void
.end method


# virtual methods
.method protected dispatchMessageLGUSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 10
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 484
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->isInEmergencyCallMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    const/4 v0, -0x1

    .line 588
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v8, p1

    .line 488
    check-cast v8, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 489
    .local v8, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v2

    if-ne v0, v2, :cond_2

    move v7, v0

    .line 492
    .local v7, "isBroadcastType":Z
    :goto_1
    if-eqz v7, :cond_4

    .line 493
    const-string v1, "Broadcast type message"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v6

    .line 495
    .local v6, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v6, :cond_3

    .line 496
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    goto :goto_0

    .end local v6    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .end local v7    # "isBroadcastType":Z
    :cond_2
    move v7, v1

    .line 489
    goto :goto_1

    .line 498
    .restart local v6    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .restart local v7    # "isBroadcastType":Z
    :cond_3
    const-string v1, "error trying to parse broadcast SMS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 504
    .end local v6    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :cond_4
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mLastDispatchedSmsFingerprint:[B

    .line 505
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mLastDispatchedSmsFingerprint:[B

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    :cond_5
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 512
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v9

    .line 514
    .local v9, "teleService":I
    sparse-switch v9, :sswitch_data_0

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported teleservice 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->loge(Ljava/lang/String;)V

    .line 565
    :cond_6
    :sswitch_0
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v1

    if-nez v1, :cond_7

    const/16 v1, 0x1002

    if-eq v9, v1, :cond_0

    .line 570
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v0, v1, :cond_8

    .line 577
    invoke-static {v9}, Lcom/android/internal/telephony/LGUSmsUtils;->isMessageProcessTid(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 578
    const/4 v0, 0x3

    goto :goto_0

    .line 522
    :sswitch_1
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 530
    :sswitch_2
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 531
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    goto/16 :goto_0

    .line 537
    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 551
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->lgu:Lcom/android/internal/telephony/LGUSmsUtils;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/LGUSmsUtils;->handleLMSMessage(Lcom/android/internal/telephony/SmsMessageBase;Z)I

    move-result v0

    goto/16 :goto_0

    .line 553
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->lgu:Lcom/android/internal/telephony/LGUSmsUtils;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/LGUSmsUtils;->handleCBSMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)I

    move-result v0

    goto/16 :goto_0

    .line 583
    :cond_8
    const/16 v0, 0x1004

    if-ne v0, v9, :cond_9

    .line 584
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v1

    iget v2, v8, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->processCdmaWapPdu([BILjava/lang/String;J)I

    move-result v0

    goto/16 :goto_0

    .line 588
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    goto/16 :goto_0

    .line 514
    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_2
        0x1003 -> :sswitch_1
        0x1004 -> :sswitch_0
        0x1005 -> :sswitch_2
        0x1006 -> :sswitch_3
        0xc006 -> :sswitch_4
        0xc00b -> :sswitch_4
        0xc256 -> :sswitch_4
        0xc264 -> :sswitch_4
        0xc266 -> :sswitch_4
        0xc268 -> :sswitch_4
        0xf6fe -> :sswitch_4
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_5
    .end sparse-switch
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 12
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v11, 0x0

    const/16 v5, 0x1004

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 122
    const-string v3, "[sms.mt] dispatchMessageRadioSpecific start ["

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 123
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v4, "lgu_dispatch"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v1, :cond_1

    .line 124
    const-string v0, "[sms.mt] calls dispatchMessageLGUSpecific"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->dispatchMessageLGUSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->isInEmergencyCallMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    const-string v1, "[sms.mt] isInEmergencyCallMode()"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v9, p1

    .line 134
    check-cast v9, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 135
    .local v9, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v3

    if-ne v1, v3, :cond_3

    move v7, v1

    .line 138
    .local v7, "isBroadcastType":Z
    :goto_1
    if-eqz v7, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v4, "not_handle_bc_sms"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 143
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->handleCmas(Lcom/android/internal/telephony/cdma/SmsMessage;)I

    move-result v0

    goto :goto_0

    .end local v7    # "isBroadcastType":Z
    :cond_3
    move v7, v2

    .line 135
    goto :goto_1

    .line 147
    .restart local v7    # "isBroadcastType":Z
    :cond_4
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mLastDispatchedSmsFingerprint:[B

    .line 148
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mLastDispatchedSmsFingerprint:[B

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 151
    const-string v0, "kddi_message_duplicate_check"

    invoke-static {v11, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_5

    .line 157
    const-string v0, "[sms.mt] duplicate SMS"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    move v0, v1

    .line 158
    goto :goto_0

    :cond_5
    move v0, v1

    .line 154
    goto :goto_0

    .line 162
    :cond_6
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 163
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v10

    .line 165
    .local v10, "teleService":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sms.mt] teleService = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 167
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v4, "network_duplicate_message"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 168
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->supportNetDupMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)I

    move-result v3

    if-ne v3, v1, :cond_7

    move v0, v1

    .line 169
    goto :goto_0

    .line 174
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v4, "support_sprint_lock_and_wipe"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 175
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lg_omadm_lwmo_lock_state"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 178
    .local v6, "dmLockState":I
    if-ne v6, v1, :cond_8

    if-eq v10, v5, :cond_8

    .line 180
    const-string v0, "dispatchMessage(), Lock and Wipe - enabled - Block Inbound SMS"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 186
    .end local v6    # "dmLockState":I
    :cond_8
    sparse-switch v10, :sswitch_data_0

    .line 228
    const/16 v3, 0x1001

    if-ne v10, v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v4, "handle_teleservice_wpt"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v1, :cond_9

    .line 230
    const-string v3, "[sms.mt] teleService is SmsEnvelope.TELESERVICE_WPT"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 231
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 232
    const-string v0, "[sms.mt] TELESERVICE_WPT statusReportMessage"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    move v0, v1

    .line 234
    goto/16 :goto_0

    .line 190
    :sswitch_0
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    move v0, v1

    .line 191
    goto/16 :goto_0

    .line 195
    :sswitch_1
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 196
    const-string v0, "[sms.mt] statusReportMessage"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    move v0, v1

    .line 198
    goto/16 :goto_0

    .line 203
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    move v0, v1

    .line 204
    goto/16 :goto_0

    .line 222
    :sswitch_3
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->handleSelfRegiConfirmMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    move v0, v1

    .line 223
    goto/16 :goto_0

    .line 240
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported teleservice 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->loge(Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 244
    :cond_a
    :sswitch_4
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v3, v4, :cond_b

    .line 249
    const-string v0, "[sms.mt] no storage available"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 250
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 253
    :cond_b
    if-ne v5, v10, :cond_d

    .line 254
    const-string v0, "[sms.mt] teleService is SmsEnvelope.TELESERVICE_WAP"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v2, "vvm3_wap_push"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_c

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->processVVM3Pdu(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    if-ne v1, v0, :cond_c

    move v0, v1

    .line 259
    goto/16 :goto_0

    .line 264
    :cond_c
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v1

    iget v2, v9, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->processCdmaWapPdu([BILjava/lang/String;J)I

    move-result v0

    goto/16 :goto_0

    .line 266
    :cond_d
    const v3, 0xfdea

    if-ne v3, v10, :cond_f

    .line 269
    invoke-virtual {v9, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->processCdmaCTWdpHeader(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 270
    goto/16 :goto_0

    .line 272
    :cond_e
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v1

    iget v2, v9, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->processCdmaWapPdu([BILjava/lang/String;J)I

    move-result v0

    goto/16 :goto_0

    .line 277
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v4, "vzw_snc_email_sms"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 278
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->isSncMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 279
    const-string v0, "dispatchMessage(), [SNC] AFW return isSncMessage = true"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    move v0, v1

    .line 280
    goto/16 :goto_0

    .line 286
    :cond_10
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v4, "sprint_reassembly_sms"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 287
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lg_sms_setting_reassembly"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_12

    .line 288
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->sprintReassemblySms:Lcom/android/internal/telephony/LGSprintReassemblySms;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/LGSprintReassemblySms;->setMessageReassembly(Z)V

    .line 296
    :cond_11
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "cdma_kr_testbed_mms_receive"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 297
    const/16 v2, 0x1002

    if-ne v2, v10, :cond_13

    .line 298
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mmsTestBedPushCheck([B)Z

    move-result v2

    if-ne v2, v1, :cond_13

    .line 299
    const/16 v10, 0x1004

    .line 300
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mmsTestBedGetMsgId([B)[B

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->msgref:I

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->processCdmaWapPduKRTestBed([BILjava/lang/String;J)I

    move-result v0

    goto/16 :goto_0

    .line 290
    :cond_12
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->sprintReassemblySms:Lcom/android/internal/telephony/LGSprintReassemblySms;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/LGSprintReassemblySms;->setMessageReassembly(Z)V

    goto :goto_2

    .line 309
    :cond_13
    const-string v2, "emergency_alert_filtering"

    invoke-static {v11, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_14

    .line 311
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v8

    .line 312
    .local v8, "mEnvelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchMessage(),[KDDI] 1x Broadcasting Filtering start servicecategory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sms type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 313
    iget v2, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    if-ne v2, v1, :cond_14

    iget v1, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->kddiFilterCategory(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    .end local v8    # "mEnvelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    goto/16 :goto_0

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_0
        0x1004 -> :sswitch_4
        0x1005 -> :sswitch_1
        0x1006 -> :sswitch_2
        0xfdea -> :sswitch_4
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_4
        0x65005 -> :sswitch_3
    .end sparse-switch
.end method

.method public kddiFilterCategory(I)Z
    .locals 13
    .param p1, "serviceCategory"    # I

    .prologue
    const v12, 0x8021

    const v11, 0x8001

    const/16 v10, 0x3f

    const/16 v9, 0x21

    const/4 v8, 0x1

    .line 323
    const-string v5, "kddiFilterCategory(), [KDDI] kddiFilterCategory !!"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 324
    const/4 v3, 0x0

    .line 328
    .local v3, "maintenanceMode":I
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v6, "com.lge.hiddenmenu"

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 329
    .local v0, "context":Landroid/content/Context;
    const-string v5, "pref"

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 331
    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v5, "MaintenanceMode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 336
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kddiFilterCategory(), [KDDI] Maintainanace mode value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 338
    const/4 v2, 0x0

    .line 339
    .local v2, "isDelivery":Z
    packed-switch v3, :pswitch_data_0

    .line 369
    :cond_0
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kddiFilterCategory(), [KDDI] isDelivery = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 370
    return v2

    .line 332
    .end local v2    # "isDelivery":Z
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "kddiFilterCategory(), [KDDI] maintenanceMode app not found"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 341
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "isDelivery":Z
    :pswitch_0
    const-string v5, "kddiFilterCategory(),[KDDI]  COMMERCIAL_MODE "

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 342
    if-eq p1, v8, :cond_1

    if-gt v9, p1, :cond_0

    if-gt p1, v10, :cond_0

    .line 343
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 349
    :pswitch_1
    const-string v5, "kddiFilterCategory(),[KDDI] TEST_MODE "

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 350
    const v5, 0xc001

    if-eq p1, v5, :cond_3

    const v5, 0xc021

    if-gt v5, p1, :cond_2

    const v5, 0xc03f

    if-le p1, v5, :cond_3

    :cond_2
    if-eq p1, v11, :cond_3

    if-gt v12, p1, :cond_0

    const v5, 0x803f

    if-gt p1, v5, :cond_0

    .line 352
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 357
    :pswitch_2
    const-string v5, "kddiFilterCategory(), [KDDI] ALLRECEIVE_MODE "

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 358
    if-eq p1, v8, :cond_6

    if-gt v9, p1, :cond_4

    if-le p1, v10, :cond_6

    :cond_4
    const v5, 0xc001

    if-eq p1, v5, :cond_6

    const v5, 0xc021

    if-gt v5, p1, :cond_5

    const v5, 0xc03f

    if-le p1, v5, :cond_6

    :cond_5
    if-eq p1, v11, :cond_6

    if-gt v12, p1, :cond_0

    const v5, 0x803f

    if-gt p1, v5, :cond_0

    .line 361
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected processCdmaWapPduKRTestBed([BILjava/lang/String;J)I
    .locals 18
    .param p1, "pdu"    # [B
    .param p2, "referenceNumber"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .prologue
    .line 594
    const/4 v13, 0x0

    .line 596
    .local v13, "index":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .local v14, "index":I
    aget-byte v4, p1, v13

    and-int/lit16 v15, v4, 0xff

    .line 597
    .local v15, "msgType":I
    if-eqz v15, :cond_0

    .line 598
    const-string v4, "Mms Testbed"

    const-string v5, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v4, 0x1

    move v13, v14

    .line 639
    .end local v14    # "index":I
    .restart local v13    # "index":I
    :goto_0
    return v4

    .line 601
    .end local v13    # "index":I
    .restart local v14    # "index":I
    :cond_0
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "index":I
    .restart local v13    # "index":I
    aget-byte v4, p1, v14

    and-int/lit16 v11, v4, 0xff

    .line 602
    .local v11, "totalSegments":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    aget-byte v4, p1, v13

    and-int/lit16 v10, v4, 0xff

    .line 604
    .local v10, "segment":I
    if-lt v10, v11, :cond_1

    .line 605
    const-string v4, "Mms Testbed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WDP bad segment #"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " expecting 0-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v11, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v4, 0x1

    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto :goto_0

    .line 610
    .end local v13    # "index":I
    .restart local v14    # "index":I
    :cond_1
    const/16 v16, 0x0

    .line 611
    .local v16, "sourcePort":I
    const/4 v6, 0x0

    .line 612
    .local v6, "destinationPort":I
    if-nez v10, :cond_2

    .line 614
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "index":I
    .restart local v13    # "index":I
    aget-byte v4, p1, v14

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v16, v4, 0x8

    .line 615
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    aget-byte v4, p1, v13

    and-int/lit16 v4, v4, 0xff

    or-int v16, v16, v4

    .line 616
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "index":I
    .restart local v13    # "index":I
    aget-byte v4, p1, v14

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v6, v4, 0x8

    .line 617
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    aget-byte v4, p1, v13

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v6, v4

    .line 620
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v4, :cond_2

    .line 621
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->checkDuplicatePortOmadmWapPush([BI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 622
    add-int/lit8 v13, v14, 0x4

    .line 628
    .end local v14    # "index":I
    .restart local v13    # "index":I
    :goto_1
    const-string v4, "Mms Testbed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received WAP PDU. Type = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", originator = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", src-port = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", dst-port = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", ID = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", segment# = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x2f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    move-object/from16 v0, p1

    array-length v4, v0

    sub-int/2addr v4, v13

    new-array v3, v4, [B

    .line 634
    .local v3, "userData":[B
    const/4 v4, 0x0

    move-object/from16 v0, p1

    array-length v5, v0

    sub-int/2addr v5, v13

    move-object/from16 v0, p1

    invoke-static {v0, v13, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 636
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    const/4 v7, 0x1

    const/4 v12, 0x1

    move-wide/from16 v4, p4

    move-object/from16 v8, p3

    move/from16 v9, p2

    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    .line 639
    .local v2, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandlerEx;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v4

    goto/16 :goto_0

    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v3    # "userData":[B
    .end local v13    # "index":I
    .restart local v14    # "index":I
    :cond_2
    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto :goto_1
.end method
