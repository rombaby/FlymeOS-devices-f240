.class public abstract Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.super Landroid/os/Handler;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$ThreadLGDataRecovery;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$CheckDataStall;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$CheckDataStall_KR;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;
    }
.end annotation


# static fields
.field protected static final ACTION_DELAY_MODE_CHANGE_FOR_IMS:Ljava/lang/String; = "android.intent.action.ACTION_DELAY_MODE_CHANGE_FOR_IMS"

.field protected static final ACTION_NETWORK_GRPS_STATE_CHANGE:Ljava/lang/String; = "com.lge.android.intent.action.ACTION_NETWORK_GRPS_STATE_CHANGE"

.field protected static final APN_DELAY_DEFAULT_MILLIS:I = 0x4e20

.field protected static final APN_FAIL_FAST_DELAY_DEFAULT_MILLIS:I = 0xbb8

.field protected static final APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field public static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field public static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field public static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field protected static final DATA_DISABLE_BY_REQUEST_ALREADY_DISABLED:I = 0x1

.field protected static final DATA_DISABLE_BY_REQUEST_ERROR:I = -0x1

.field protected static final DATA_DISABLE_BY_REQUEST_EXTRA:Ljava/lang/String; = "flag"

.field protected static final DATA_DISABLE_BY_REQUEST_NO_ERROR:I = 0x0

.field protected static final DATA_DISABLE_BY_REQUEST_TIMEOUT_ACTION:Ljava/lang/String; = "com.lge.internal.telephony.lge-data-disable-request-timeout"

.field protected static final DATA_DISABLE_FLAG_GSMONLY:I = 0x1

.field protected static final DATA_DISABLE_FLAG_MAX:I = 0x2

.field protected static final DATA_DISABLE_FLAG_NETWORK_SEARCH:I = 0x0

.field protected static final DATA_STALL_ALARM_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0xea60

.field protected static final DATA_STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0x57e40

.field protected static final DATA_STALL_ALARM_TAG_EXTRA:Ljava/lang/String; = "data.stall.alram.tag"

.field protected static final DATA_STALL_NOT_SUSPECTED:Z = false

.field protected static final DATA_STALL_NO_RECV_POLL_LIMIT:I = 0x1

.field protected static final DATA_STALL_SUSPECTED:Z = true

.field protected static final DBG:Z = true

.field protected static final DEBUG_PROV_APN_ALARM:Ljava/lang/String; = "persist.debug.prov_apn_alarm"

.field protected static final DEFALUT_DATA_ON_BOOT_PROP:Ljava/lang/String; = "net.def_data_on_boot"

.field protected static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

.field protected static final DEFAULT_MAX_PDP_RESET_FAIL:I = 0x3

.field private static final DEFAULT_MDC_INITIAL_RETRY:I = 0x1

.field protected static final DOMESTIC_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=0,max_retries=infinite,5000,10000,20000,40000,80000:100,160000:100,320000:100,640000:100,1280000:100,1800000:100"

.field protected static final INTENT_DATA_STALL_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-stall"

.field protected static final INTENT_PROVISIONING_APN_ALARM:Ljava/lang/String; = "com.android.internal.telephony.provisioning_apn_alarm"

.field protected static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-reconnect"

.field protected static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reconnect_alarm_extra_reason"

.field protected static final INTENT_RECONNECT_ALARM_EXTRA_TYPE:Ljava/lang/String; = "reconnect_alarm_extra_type"

.field protected static final INTENT_RESTART_TRYSETUP_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-restart-trysetup"

.field protected static final INTENT_RESTART_TRYSETUP_ALARM_EXTRA_TYPE:Ljava/lang/String; = "restart_trysetup_alarm_extra_type"

.field public static final MSG_ID_ICC_REFRESH:I = 0x1e

.field protected static final NO_RECV_POLL_LIMIT:I = 0x18

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final NUMBER_SENT_PACKETS_OF_HANG:I = 0xa

.field protected static final OMADM_LOCK:I = 0x1

.field protected static final OMADM_SESSION_CLOSE:I = 0x0

.field protected static final OMADM_SESSION_OPEN:I = 0x1

.field protected static final OMADM_UNLOCK:I = 0x0

.field protected static final POLL_LONGEST_RTT:I = 0x1d4c0

.field protected static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field protected static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0

.field protected static final POLL_NETSTAT_SLOW_MILLIS:I = 0x1388

.field static final PROPERTY_APN_SIM_OPERATOR_MVNO_DATA:Ljava/lang/String; = "gsm.apn.sim.operator.mvno.data"

.field static final PROPERTY_APN_SIM_OPERATOR_MVNO_TYPE:Ljava/lang/String; = "gsm.apn.sim.operator.mvno.type"

.field static final PROPERTY_PERSIST_AUTOPROFILE_KEY:Ljava/lang/String; = "persist.lg.data.autoprof.key"

.field protected static final PROVISIONING_APN_ALARM_DELAY_IN_MS_DEFAULT:I = 0xdbba0

.field protected static final PROVISIONING_APN_ALARM_TAG_EXTRA:Ljava/lang/String; = "provisioning.apn.alarm.tag"

.field protected static final RADIO_TESTS:Z = false

.field protected static final REQUEST_DEVICE_UNLOCKED_MSG:Ljava/lang/String; = "android.intent.action.DEVICE_UNLOCKED_MSG"

.field protected static final REQUEST_END_OMADM_SESSION_MSG:Ljava/lang/String; = "android.intent.action.REQUEST_END_OMADM_SESSION_MSG"

.field protected static final REQUEST_FOR_OMADM_DATA_CONNECT:Ljava/lang/String; = "android.intent.action.REQUEST_FOR_OMADM_DATA_CONNECT"

.field protected static final REQUEST_FOR_OMADM_DATA_DISCONNECT:Ljava/lang/String; = "android.intent.action.REQUEST_FOR_OMADM_DATA_DISCONNECT"

.field protected static final REQUEST_FOR_OMADM_DATA_SETUP:Ljava/lang/String; = "android.intent.action.REQUEST_FOR_OMADM_DATA_SETUP"

.field protected static final REQUEST_OMADM_DEVICE_LOCK_MSG:Ljava/lang/String; = "android.intent.action.OMADM_DEVICE_LOCK_MSG"

.field protected static final REQUEST_START_OMADM_SESSION_MSG:Ljava/lang/String; = "android.intent.action.REQUEST_START_OMADM_SESSION_MSG"

.field protected static final RESTORE_DEFAULT_APN_DELAY:I = 0xea60

.field protected static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field protected static TCP_BUFFER_SIZES_1XRTT:Ljava/lang/String; = null

.field protected static TCP_BUFFER_SIZES_DEFAULT:Ljava/lang/String; = null

.field protected static TCP_BUFFER_SIZES_EDGE:Ljava/lang/String; = null

.field protected static TCP_BUFFER_SIZES_EHRPD:Ljava/lang/String; = null

.field protected static TCP_BUFFER_SIZES_EVDO:Ljava/lang/String; = null

.field protected static TCP_BUFFER_SIZES_EVDO_B:Ljava/lang/String; = null

.field protected static TCP_BUFFER_SIZES_GPASS:Ljava/lang/String; = null

.field protected static TCP_BUFFER_SIZES_GPRS:Ljava/lang/String; = null

.field protected static TCP_BUFFER_SIZES_HSDPA:Ljava/lang/String; = null

.field protected static TCP_BUFFER_SIZES_HSPA:Ljava/lang/String; = null

.field protected static TCP_BUFFER_SIZES_HSPAP:Ljava/lang/String; = null

.field protected static TCP_BUFFER_SIZES_HSUPA:Ljava/lang/String; = null

.field protected static TCP_BUFFER_SIZES_LTE:Ljava/lang/String; = null

.field protected static TCP_BUFFER_SIZES_UMTS:Ljava/lang/String; = null

.field protected static final VDBG:Z = false

.field protected static final VDBG_STALL:Z = true

.field protected static final VZW_POLL_NETSTAT_MILLIS:I = 0x124f80

.field static mIsCleanupRequired:Z

.field protected static sEnableFailFastRefCounter:I

.field protected static sPolicyDataEnabled:Z

.field private static voice_call_ing:Z


# instance fields
.field protected ACTION_ENABLE_DATA_IN_HPLMN:Ljava/lang/String;

.field protected ACTION_MOBILE_DATA_ROAMING_OPTION_CANCEL:Ljava/lang/String;

.field protected ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST:Ljava/lang/String;

.field protected ACTION_MOBILE_DATA_ROAMING_STATE_CHANGE_REQUEST:Ljava/lang/String;

.field BTDUN_cnt:I

.field public HFA:Z

.field Pre_PeferredAPN:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected RADIO_RESET_PROPERTY:Ljava/lang/String;

.field protected REQUEST_ROAMING_OPTION:Ljava/lang/String;

.field protected REQUEST_STATE:Ljava/lang/String;

.field protected ROAMING_POPUP_ENABLED:Z

.field protected SUPPORT_LG_DATA_RECOVERY:Z

.field public apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

.field private backUpDataProfile:[Ljava/lang/String;

.field public cpa_Enable:Z

.field public cpa_PackageName:Ljava/lang/String;

.field public cpa_apn:Ljava/lang/String;

.field public cpa_authType:I

.field public cpa_dns1:Ljava/lang/String;

.field public cpa_dns2:Ljava/lang/String;

.field public cpa_dun:Z

.field public cpa_enable:Z

.field public cpa_password:Ljava/lang/String;

.field public cpa_send_result:Z

.field public cpa_user:Ljava/lang/String;

.field public dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

.field public hasProfileDbChanged:Z

.field public imsRegiState:Z

.field public internetPDNconnected:Z

.field public isDataBlockByAdminProfile:Z

.field public isDataBlockByImsProfile:Z

.field public isODBreceivedCauseOfDefaultPDN:Z

.field public isReattachForcelyAfterODB:Z

.field protected mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

.field mAlarmManager:Landroid/app/AlarmManager;

.field public mAllApnSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field public mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mApnToDataConnectionId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAutoAttachOnCreation:Z

.field protected mAutoAttachOnCreationConfig:Z

.field protected mCidActive:I

.field mCm:Landroid/net/ConnectivityManager;

.field protected mDataConnectionAcHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataConnectionTracker:Landroid/os/Handler;

.field protected mDataConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataDisabledRequestAlarmIntent:[Landroid/app/PendingIntent;

.field protected mDataDisabledRequestFlags:I

.field private mDataEnabled:[Z

.field protected mDataEnabledLock:Ljava/lang/Object;

.field private final mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

.field protected mDataStallAlarmIntent:Landroid/app/PendingIntent;

.field protected mDataStallAlarmTag:I

.field protected volatile mDataStallDetectionEnabled:Z

.field protected mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

.field protected mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

.field protected mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

.field protected mDelayModeChangeforIms:Landroid/app/PendingIntent;

.field public mDomesticPreferredDp:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private mEnabledCount:I

.field protected volatile mFailFast:Z

.field public mGSMRoamingPreferredDp:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field protected mInVoiceCall:Z

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mInternalDataEnabled:Z

.field protected mIsDisposed:Z

.field protected mIsProvisioning:Z

.field protected mIsPsRestricted:Z

.field protected mIsScreenOn:Z

.field public mIsWifiConnected:Z

.field protected mLgDataRecovery:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

.field protected mLgDataRecoveryThread:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$ThreadLGDataRecovery;

.field protected mNetStatPollEnabled:Z

.field protected mNetStatPollPeriod:I

.field protected mNoRecvPollCount:I

.field protected mOmaDmIsLock:I

.field protected mOmaDmIsSession:I

.field public mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPollNetStat:Ljava/lang/Runnable;

.field public mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected final mPrioritySortedApnContexts:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

.field protected mProvisioningApnAlarmTag:I

.field protected mProvisioningUrl:Ljava/lang/String;

.field protected mReconnectIntent:Landroid/app/PendingIntent;

.field public mReconnectIntentForDefaultType:Landroid/content/Intent;

.field protected mReplyAc:Lcom/android/internal/util/AsyncChannel;

.field protected mRequestedApnType:Ljava/lang/String;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mRxPkts:J

.field private mSendDataStallDNSQuery:Z

.field protected mSendingDataStallDNSQuery:Z

.field protected mSentSinceLastRecv:J

.field public mSprintBearer:I

.field protected mState:Lcom/android/internal/telephony/DctConstants$State;

.field protected mTxPkts:J

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field protected mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mUserDataEnabled:Z

.field public mUserDataEnabledByUser:Z

.field protected modeChangeAlarmState:Z

.field tx_onlycount:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    sput-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsCleanupRequired:Z

    .line 212
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    .line 317
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_GPRS:Ljava/lang/String;

    .line 318
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_EDGE:Ljava/lang/String;

    .line 319
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_UMTS:Ljava/lang/String;

    .line 320
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_EVDO:Ljava/lang/String;

    .line 321
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_HSDPA:Ljava/lang/String;

    .line 322
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_HSPA:Ljava/lang/String;

    .line 323
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_LTE:Ljava/lang/String;

    .line 324
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_HSPAP:Ljava/lang/String;

    .line 325
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_HSUPA:Ljava/lang/String;

    .line 326
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_EVDO_B:Ljava/lang/String;

    .line 327
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_EHRPD:Ljava/lang/String;

    .line 328
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_DEFAULT:Ljava/lang/String;

    .line 329
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_GPASS:Ljava/lang/String;

    .line 330
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_1XRTT:Ljava/lang/String;

    .line 359
    sput v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    .line 382
    sput-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->voice_call_ing:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 14
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v13, 0x2

    const-wide/16 v2, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1151
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    .line 195
    iput-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    .line 200
    iput-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 203
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabledByUser:Z

    .line 207
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isReattachForcelyAfterODB:Z

    .line 208
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isODBreceivedCauseOfDefaultPDN:Z

    .line 214
    const/16 v0, 0x19

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    .line 216
    iput v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 219
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 267
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSendDataStallDNSQuery:Z

    .line 268
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSendingDataStallDNSQuery:Z

    .line 283
    const-string v0, "gsm.radioreset"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    .line 306
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->modeChangeAlarmState:Z

    .line 307
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDelayModeChangeforIms:Landroid/app/PendingIntent;

    .line 312
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataBlockByImsProfile:Z

    .line 313
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataBlockByAdminProfile:Z

    .line 339
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 340
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 341
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    .line 342
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionTracker:Landroid/os/Handler;

    .line 347
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    .line 349
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;JJ)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    .line 353
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 357
    iput v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNoRecvPollCount:I

    .line 361
    iput-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    .line 363
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    .line 366
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInVoiceCall:Z

    .line 371
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    .line 375
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 381
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->tx_onlycount:J

    .line 385
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreationConfig:Z

    .line 386
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    .line 391
    iput-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    .line 394
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 397
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    .line 405
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnToDataConnectionId:Ljava/util/HashMap;

    .line 414
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 419
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cpa_send_result:Z

    .line 420
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cpa_enable:Z

    .line 421
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cpa_dun:Z

    .line 429
    iput v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->BTDUN_cnt:I

    .line 430
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->Pre_PeferredAPN:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 431
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cpa_Enable:Z

    .line 435
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x5

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    .line 444
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 446
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->HFA:Z

    .line 447
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDomesticPreferredDp:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 448
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mGSMRoamingPreferredDp:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 449
    iput v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSprintBearer:I

    .line 455
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->internetPDNconnected:Z

    .line 461
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntentForDefaultType:Landroid/content/Intent;

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    .line 470
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    .line 473
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 476
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    .line 487
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 490
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    .line 493
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "null"

    aput-object v1, v0, v11

    const-string v1, "null"

    aput-object v1, v0, v10

    const-string v1, "null"

    aput-object v1, v0, v13

    const/4 v1, 0x3

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "null"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->backUpDataProfile:[Ljava/lang/String;

    .line 511
    iput-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 514
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    .line 516
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    .line 519
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->imsRegiState:Z

    .line 532
    iput v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mOmaDmIsLock:I

    .line 533
    iput v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mOmaDmIsSession:I

    .line 553
    const-string v0, "android.intent.action.MOBILE_DATA_ROAMING_OPTION_REQUEST"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST:Ljava/lang/String;

    .line 554
    const-string v0, "android.intent.action.MOBILE_DATA_ROAMING_OPTION_CANCEL"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->ACTION_MOBILE_DATA_ROAMING_OPTION_CANCEL:Ljava/lang/String;

    .line 555
    const-string v0, "requestRoamingOption"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->REQUEST_ROAMING_OPTION:Ljava/lang/String;

    .line 556
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->ROAMING_POPUP_ENABLED:Z

    .line 557
    const-string v0, "android.intent.action.MOBILE_DATA_ROAMING_STATE_CHANGE_REQUEST"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->ACTION_MOBILE_DATA_ROAMING_STATE_CHANGE_REQUEST:Ljava/lang/String;

    .line 558
    const-string v0, "requestState"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->REQUEST_STATE:Ljava/lang/String;

    .line 559
    const-string v0, "android.intent.action.ENABLE_DATA_IN_HPLMN"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->ACTION_ENABLE_DATA_IN_HPLMN:Ljava/lang/String;

    .line 571
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->SUPPORT_LG_DATA_RECOVERY:Z

    .line 579
    iput-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->hasProfileDbChanged:Z

    .line 586
    iput v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestFlags:I

    .line 597
    new-array v0, v13, [Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestAlarmIntent:[Landroid/app/PendingIntent;

    .line 692
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 921
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPollNetStat:Ljava/lang/Runnable;

    .line 1152
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 1153
    const-string v0, "DCT.constructor"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    .line 1155
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 1156
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const v1, 0x42021

    invoke-virtual {v0, p0, v1, v12}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1158
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1e

    invoke-interface {v0, p0, v1, v12}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1160
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1162
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCm:Landroid/net/ConnectivityManager;

    .line 1166
    const-string v0, "persist.telephony.datarecovery"

    sget-object v1, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->SUPPORT_LG_DATA_RECOVERY:Z

    .line 1168
    const-string v0, "persist.telephony.datarecovery"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->SUPPORT_LG_DATA_RECOVERY:Z

    .line 1170
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->SUPPORT_LG_DATA_RECOVERY:Z

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUPPORT_LG_DATA_RECOVERY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->SUPPORT_LG_DATA_RECOVERY:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1175
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1176
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1177
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1178
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1179
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1181
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    const-string v0, "android.intent.action.SIM_TYPE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1186
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->SUPPORT_LG_DATA_RECOVERY:Z

    if-nez v0, :cond_1

    .line 1188
    const-string v0, "com.android.internal.telephony.data-stall"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1192
    :cond_1
    const-string v0, "com.android.internal.telephony.provisioning_apn_alarm"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1194
    const-string v0, "com.lge.internal.telephony.lge-data-disable-request-timeout"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1197
    const-string v0, "android.intent.action.IPV6_STATUS"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1200
    const-string v0, "android.intent.action.OMADM_DEVICE_LOCK_MSG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1201
    const-string v0, "android.intent.action.DEVICE_UNLOCKED_MSG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1202
    const-string v0, "android.intent.action.REQUEST_START_OMADM_SESSION_MSG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1203
    const-string v0, "android.intent.action.REQUEST_END_OMADM_SESSION_MSG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1204
    const-string v0, "android.intent.action.REQUEST_FOR_OMADM_DATA_SETUP"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1205
    const-string v0, "android.intent.action.REQUEST_FOR_OMADM_DATA_DISCONNECT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1206
    const-string v0, "android.intent.action.REQUEST_FOR_OMADM_DATA_CONNECT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1209
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CLEAR_CAUSE_FOR_TCL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1210
    const-string v0, "com.lge.android.intent.action.ACTION_NETWORK_GRPS_STATE_CHANGE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1214
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_ENABLE_PROFILE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1215
    const-string v0, "com.android.ims.IMS_TURN_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1219
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_ROAMING_POPUP_TMUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1220
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->ACTION_MOBILE_DATA_ROAMING_STATE_CHANGE_REQUEST:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1225
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1227
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_7

    move v0, v10

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 1237
    :goto_1
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSendDataStallDNSQuery:Z

    .line 1238
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSendingDataStallDNSQuery:Z

    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1, v8, v12, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1244
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DataConnectionManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/DataConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    .line 1250
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    const-string v1, "net.def_data_on_boot"

    invoke-static {v1, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, v0, v11

    .line 1252
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v0, v0, v11

    if-eqz v0, :cond_5

    .line 1253
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 1256
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1257
    .local v9, "sp":Landroid/content/SharedPreferences;
    const-string v0, "disabled_on_boot_key"

    invoke-interface {v9, v0, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    .line 1260
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    .line 1261
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->register()V

    .line 1264
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "irat_test_mode"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_6

    .line 1266
    const-string v0, "[DATA_AFW] It\'s IRAT Test Mode. We Will Data Block"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1267
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataBlock()V

    .line 1272
    :cond_6
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "DcHandlerThread"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v7, "dcHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 1274
    new-instance v6, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1275
    .local v6, "dcHandler":Landroid/os/Handler;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v0, p0, v6}, Lcom/android/internal/telephony/dataconnection/DcController;->makeDcc(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 1276
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 1278
    new-instance v0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    .line 1283
    return-void

    .end local v6    # "dcHandler":Landroid/os/Handler;
    .end local v7    # "dcHandlerThread":Landroid/os/HandlerThread;
    .end local v9    # "sp":Landroid/content/SharedPreferences;
    :cond_7
    move v0, v11

    .line 1227
    goto/16 :goto_0

    .line 1231
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobile_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_9

    move v0, v10

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    goto/16 :goto_1

    :cond_9
    move v0, v11

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p1, "x1"    # Z

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->enableImsProfile(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p1, "x1"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSendDataStallDNSQuery:Z

    return p1
.end method

.method private dataBlock()V
    .locals 6

    .prologue
    .line 1289
    new-instance v2, Lcom/lge/systemservice/core/LGContext;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 1290
    .local v2, "lgContext":Lcom/lge/systemservice/core/LGContext;
    const-string v4, "lgnetworkmanagementservice"

    invoke-virtual {v2, v4}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/systemservice/core/LGNetworkManager;

    .line 1291
    .local v3, "lgNetworkMgr":Lcom/lge/systemservice/core/LGNetworkManager;
    if-nez v3, :cond_0

    .line 1292
    const-string v4, "[DATA_AFW] service is null, just return"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1320
    :goto_0
    return-void

    .line 1296
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_accept_info"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1298
    .local v0, "acceptIpInfo":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1299
    const-string v0, "192.168.0.70"

    .line 1302
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DATA_AFW] accept IP Info is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1305
    :try_start_0
    const-string v4, "-F oem_out"

    invoke-virtual {v3, v4}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 1306
    const-string v4, "-A oem_out -o usb0 -j ACCEPT"

    invoke-virtual {v3, v4}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 1308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-A oem_out -d "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -j ACCEPT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 1309
    const-string v4, "-A oem_out -p udp --dport 67:68 -j ACCEPT"

    invoke-virtual {v3, v4}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 1310
    const-string v4, "-A oem_out -j DROP"

    invoke-virtual {v3, v4}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 1312
    const-string v4, "-F oem_fwd"

    invoke-virtual {v3, v4}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 1314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-A oem_fwd -i usb0 -d "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -j ACCEPT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 1315
    const-string v4, "-A oem_fwd -i usb0 -j DROP"

    invoke-virtual {v3, v4}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1317
    :catch_0
    move-exception v1

    .line 1318
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MdmInit] Fail to runDataCommand %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private enableDataProfile(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 4489
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendEnableAPN(IZ)V

    .line 4490
    return-void
.end method

.method private enableImsProfile(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 4484
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendEnableAPN(IZ)V

    .line 4485
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendEnableAPN(IZ)V

    .line 4486
    return-void
.end method

.method private getOldDataProfile(I)Ljava/lang/String;
    .locals 1
    .param p1, "profileId"    # I

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->backUpDataProfile:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private isContainingNumericInDB(Ljava/lang/String;)Z
    .locals 8
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3951
    const/4 v7, 0x0

    .line 3952
    .local v7, "exist":Z
    const-string v0, "content://telephony/dcm_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3953
    .local v1, "DCM_SETTINGS_URI":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numeric = \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3954
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v0

    .line 3955
    .local v2, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3958
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 3959
    const/4 v7, 0x1

    .line 3962
    :cond_0
    if-eqz v6, :cond_1

    .line 3963
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3966
    :cond_1
    return v7

    .line 3962
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 3963
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private isNationalRoamingCase()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1551
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1552
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1553
    .local v2, "simNumeric":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1555
    .local v0, "currentRegisteredNumeric":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1556
    :cond_0
    const-string v3, "SIM is not ready"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    move v3, v4

    .line 1609
    :goto_1
    return v3

    .line 1552
    .end local v0    # "currentRegisteredNumeric":Ljava/lang/String;
    .end local v2    # "simNumeric":Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 1561
    .restart local v0    # "currentRegisteredNumeric":Ljava/lang/String;
    .restart local v2    # "simNumeric":Ljava/lang/String;
    :cond_2
    const-string v5, "21902"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "21901"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "21910"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1563
    :cond_3
    const-string v4, "Croatia National Roaming Case"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1567
    :cond_4
    const-string v5, "26006"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "26001"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "26002"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "26003"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1569
    :cond_5
    const-string v4, "Poland P4P National Roaming Case"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1573
    :cond_6
    const-string v5, "22299"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "22201"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "22210"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "22288"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1575
    :cond_7
    const-string v4, "H3G IT National Roaming Case"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1579
    :cond_8
    const-string v5, "23205"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "23210"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_9
    const-string v5, "23201"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "23203"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "23207"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "23211"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "23212"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1582
    :cond_a
    const-string v4, "H3G AT National Roaming Case"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1586
    :cond_b
    const-string v5, "23420"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "23410"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "23415"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "23430"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "23431"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "23432"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "23433"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1589
    :cond_c
    const-string v4, "H3G UK National Roaming Case"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1593
    :cond_d
    const-string v5, "24002"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "24004"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_e
    const-string v5, "24001"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "24005"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "24007"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "24008"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "24024"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1596
    :cond_f
    const-string v4, "H3G SE National Roaming Case"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1600
    :cond_10
    const-string v5, "45403"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "45400"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "45402"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "45406"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "45410"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "45412"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "45413"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "45415"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "45416"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "45417"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "45418"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "45419"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1605
    :cond_11
    const-string v4, "H3G HK National Roaming Case"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    move v3, v4

    .line 1609
    goto/16 :goto_1
.end method

.method private notifyApnIdDisconnected(Ljava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnId"    # I

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 2359
    return-void
.end method

.method private notifyApnIdUpToCurrent(Ljava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnId"    # I

    .prologue
    .line 2333
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2353
    :goto_0
    :pswitch_0
    return-void

    .line 2339
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    .line 2344
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 2346
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    .line 2333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private sendEnableAPN(IZ)V
    .locals 3
    .param p1, "profileId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 4493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[sendEnableAPN] id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4494
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendApnDisableFlag(IZLandroid/os/Message;)V

    .line 4495
    return-void

    .line 4494
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendNullProfileInfo([Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 24
    .param p1, "dp"    # [Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 3405
    const/4 v2, 0x6

    new-array v0, v2, [Z

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    .line 3407
    .local v19, "isDataProfileEx":[Z
    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    array-length v2, v0

    if-lez v2, :cond_6

    .line 3408
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v0, v2, [Lcom/android/internal/telephony/lgdata/DataProfileInfo;

    move-object/from16 v23, v0

    .line 3409
    .local v23, "profiles":[Lcom/android/internal/telephony/lgdata/DataProfileInfo;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_6

    .line 3410
    aget-object v2, p1, v18

    if-eqz v2, :cond_0

    .line 3411
    aget-object v2, p1, v18

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    const-string v3, "ims"

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3412
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 3409
    :cond_0
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 3414
    :cond_1
    aget-object v2, p1, v18

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    const-string v3, "admin"

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3415
    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    goto :goto_1

    .line 3417
    :cond_2
    aget-object v2, p1, v18

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    const-string v3, "default"

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3418
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    goto :goto_1

    .line 3420
    :cond_3
    aget-object v2, p1, v18

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    const-string v3, "vzwapp"

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3421
    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    goto :goto_1

    .line 3423
    :cond_4
    aget-object v2, p1, v18

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    const-string v3, "vzw800"

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3424
    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    goto :goto_1

    .line 3426
    :cond_5
    aget-object v2, p1, v18

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    const-string v3, "emergency"

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3427
    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    goto :goto_1

    .line 3434
    .end local v18    # "i":I
    .end local v23    # "profiles":[Lcom/android/internal/telephony/lgdata/DataProfileInfo;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_WHEN_ADMIN_PDN_DSIABLED_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3435
    const/4 v2, 0x1

    aget-boolean v2, v19, v2

    if-nez v2, :cond_9

    .line 3436
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataBlockByAdminProfile:Z

    .line 3437
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataBlockByImsProfile:Z

    .line 3449
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_APN2_ENABLE_BACKUP_RESTORE_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3450
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataBlockByAdminProfile:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 3451
    const-string v2, "[APN Backup] isDataBlockByAdminProfile == true so set apn2-disable to 1 "

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3452
    const-string v2, "lge.data.apn2-disable"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3462
    :cond_7
    :goto_3
    const/16 v22, 0x0

    .line 3463
    .local v22, "numOfNullProfile":I
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_4
    move-object/from16 v0, v19

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_c

    .line 3464
    aget-boolean v2, v19, v18

    if-nez v2, :cond_8

    .line 3465
    add-int/lit8 v22, v22, 0x1

    .line 3463
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 3439
    .end local v18    # "i":I
    .end local v22    # "numOfNullProfile":I
    :cond_9
    const/4 v2, 0x0

    aget-boolean v2, v19, v2

    if-nez v2, :cond_a

    .line 3440
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataBlockByAdminProfile:Z

    .line 3441
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataBlockByImsProfile:Z

    goto :goto_2

    .line 3444
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataBlockByAdminProfile:Z

    .line 3445
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataBlockByImsProfile:Z

    goto :goto_2

    .line 3454
    :cond_b
    const-string v2, "[APN Backup] isDataBlockByAdminProfile == false so set apn2-disable to 0 "

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3455
    const-string v2, "lge.data.apn2-disable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3469
    .restart local v18    # "i":I
    .restart local v22    # "numOfNullProfile":I
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numOfNullProfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3470
    move/from16 v0, v22

    new-array v0, v0, [Lcom/android/internal/telephony/lgdata/DataProfileInfo;

    move-object/from16 v21, v0

    .line 3471
    .local v21, "nullProfiles":[Lcom/android/internal/telephony/lgdata/DataProfileInfo;
    const/16 v20, 0x0

    .line 3472
    .local v20, "nullProfileInfoIndex":I
    const/16 v18, 0x0

    :goto_5
    move-object/from16 v0, v19

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_e

    .line 3473
    aget-boolean v2, v19, v18

    if-nez v2, :cond_d

    .line 3474
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 3476
    new-instance v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;

    add-int/lit8 v3, v18, 0x1

    const-string v4, "noneAPN"

    const-string v5, "IP"

    const/4 v6, 0x3

    const-string v7, "ncc"

    const-string v8, "ncc"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x59f

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v14}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v14

    const/16 v15, 0x3ff

    const/16 v16, 0x12c

    const/16 v17, 0x0

    invoke-direct/range {v2 .. v17}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZIZZIII)V

    aput-object v2, v21, v20

    .line 3477
    add-int/lit8 v20, v20, 0x1

    .line 3478
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getTypefromProfileID(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->disconnectonlyChangedPDN(Ljava/lang/String;)V

    .line 3472
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 3482
    :cond_e
    if-eqz v22, :cond_f

    .line 3483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->modifyModemProfile([Lcom/android/internal/telephony/lgdata/DataProfileInfo;Landroid/os/Message;)V

    .line 3485
    :cond_f
    return-void

    .line 3405
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private setNewDataProfile(ILjava/lang/String;)V
    .locals 1
    .param p1, "profileId"    # I
    .param p2, "dbHash"    # Ljava/lang/String;

    .prologue
    .line 3490
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->backUpDataProfile:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 3491
    return-void
.end method

.method private updateDataStallInfo()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 2931
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;)V

    .line 2934
    .local v0, "preTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->updateTcpTxRxSum()V

    .line 2938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataStallInfo: mDataStallTxRxSum="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " preTxRxSum="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2942
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-wide v6, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    iget-wide v8, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    sub-long v4, v6, v8

    .line 2943
    .local v4, "sent":J
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-wide v6, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    iget-wide v8, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    sub-long v2, v6, v8

    .line 2951
    .local v2, "received":J
    cmp-long v1, v4, v10

    if-lez v1, :cond_0

    cmp-long v1, v2, v10

    if-lez v1, :cond_0

    .line 2952
    const-string v1, "updateDataStallInfo: IN/OUT"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2953
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 2954
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    .line 2972
    :goto_0
    return-void

    .line 2955
    :cond_0
    cmp-long v1, v4, v10

    if-lez v1, :cond_2

    cmp-long v1, v2, v10

    if-nez v1, :cond_2

    .line 2956
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v6, :cond_1

    .line 2957
    iget-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 2962
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataStallInfo: OUT sent="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " mSentSinceLastRecv="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2959
    :cond_1
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    goto :goto_1

    .line 2965
    :cond_2
    cmp-long v1, v4, v10

    if-nez v1, :cond_3

    cmp-long v1, v2, v10

    if-lez v1, :cond_3

    .line 2966
    const-string v1, "updateDataStallInfo: IN"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2967
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 2968
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 2970
    :cond_3
    const-string v1, "updateDataStallInfo: NONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public apnIdToType(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 2236
    packed-switch p1, :pswitch_data_0

    .line 2294
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown id ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in apnIdToType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2295
    const-string v0, "default"

    :goto_0
    return-object v0

    .line 2238
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 2240
    :pswitch_2
    const-string v0, "mms"

    goto :goto_0

    .line 2242
    :pswitch_3
    const-string v0, "supl"

    goto :goto_0

    .line 2244
    :pswitch_4
    const-string v0, "dun"

    goto :goto_0

    .line 2246
    :pswitch_5
    const-string v0, "hipri"

    goto :goto_0

    .line 2248
    :pswitch_6
    const-string v0, "ims"

    goto :goto_0

    .line 2250
    :pswitch_7
    const-string v0, "fota"

    goto :goto_0

    .line 2252
    :pswitch_8
    const-string v0, "cbs"

    goto :goto_0

    .line 2254
    :pswitch_9
    const-string v0, "ia"

    goto :goto_0

    .line 2256
    :pswitch_a
    const-string v0, "emergency"

    goto :goto_0

    .line 2259
    :pswitch_b
    const-string v0, "admin"

    goto :goto_0

    .line 2261
    :pswitch_c
    const-string v0, "vzwapp"

    goto :goto_0

    .line 2263
    :pswitch_d
    const-string v0, "vzw800"

    goto :goto_0

    .line 2267
    :pswitch_e
    const-string v0, "vtims"

    goto :goto_0

    .line 2271
    :pswitch_f
    const-string v0, "tethering"

    goto :goto_0

    .line 2275
    :pswitch_10
    const-string v0, "rcs"

    goto :goto_0

    .line 2279
    :pswitch_11
    const-string v0, "xcap"

    goto :goto_0

    .line 2283
    :pswitch_12
    const-string v0, "bip"

    goto :goto_0

    .line 2287
    :pswitch_13
    const-string v0, "usccapp"

    goto :goto_0

    .line 2291
    :pswitch_14
    const-string v0, "wap"

    goto :goto_0

    .line 2236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_12
        :pswitch_14
        :pswitch_e
    .end packed-switch
.end method

.method public apnTypeToId(Ljava/lang/String;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 2173
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2174
    const/4 v0, 0x0

    .line 2230
    :goto_0
    return v0

    .line 2175
    :cond_0
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2176
    const/4 v0, 0x1

    goto :goto_0

    .line 2177
    :cond_1
    const-string v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2178
    const/4 v0, 0x2

    goto :goto_0

    .line 2179
    :cond_2
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2180
    const/4 v0, 0x3

    goto :goto_0

    .line 2181
    :cond_3
    const-string v0, "hipri"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2182
    const/4 v0, 0x4

    goto :goto_0

    .line 2183
    :cond_4
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2184
    const/4 v0, 0x5

    goto :goto_0

    .line 2185
    :cond_5
    const-string v0, "fota"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2186
    const/4 v0, 0x6

    goto :goto_0

    .line 2187
    :cond_6
    const-string v0, "cbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2188
    const/4 v0, 0x7

    goto :goto_0

    .line 2189
    :cond_7
    const-string v0, "ia"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2190
    const/16 v0, 0x8

    goto :goto_0

    .line 2191
    :cond_8
    const-string v0, "emergency"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2192
    const/16 v0, 0x9

    goto :goto_0

    .line 2194
    :cond_9
    const-string v0, "admin"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2195
    const/16 v0, 0xf

    goto :goto_0

    .line 2196
    :cond_a
    const-string v0, "vzwapp"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2197
    const/16 v0, 0x10

    goto :goto_0

    .line 2198
    :cond_b
    const-string v0, "vzw800"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2199
    const/16 v0, 0x11

    goto :goto_0

    .line 2202
    :cond_c
    const-string v0, "vtims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2203
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 2206
    :cond_d
    const-string v0, "tethering"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2207
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 2210
    :cond_e
    const-string v0, "rcs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2211
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 2214
    :cond_f
    const-string v0, "xcap"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2215
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 2218
    :cond_10
    const-string v0, "bip"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2219
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 2222
    :cond_11
    const-string v0, "usccapp"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2223
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 2226
    :cond_12
    const-string v0, "wap"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2227
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 2230
    :cond_13
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public abstract cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
.end method

.method public checkDataProfileEx(II)Z
    .locals 6
    .param p1, "type"    # I
    .param p2, "Q_IPv"    # I

    .prologue
    const/4 v3, 0x0

    .line 4298
    const-string v0, "default"

    .line 4300
    .local v0, "CheckType":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 4338
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 4305
    :pswitch_1
    const-string v0, "mms"

    .line 4325
    :goto_1
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 4326
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 4327
    .local v1, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getApnProfileType()Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;->PROFILE_TYPE_APN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    if-ne v4, v5, :cond_1

    .line 4330
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-nez v4, :cond_1

    .line 4331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now check Profile Ex :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4332
    const/4 v3, 0x1

    goto :goto_0

    .line 4308
    .end local v1    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_3
    const-string v0, "supl"

    .line 4309
    goto :goto_1

    .line 4311
    :pswitch_4
    const-string v0, "dun"

    .line 4312
    goto :goto_1

    .line 4314
    :pswitch_5
    const-string v0, "fota"

    .line 4315
    goto :goto_1

    .line 4317
    :pswitch_6
    const-string v0, "ims"

    .line 4318
    goto :goto_1

    .line 4320
    :pswitch_7
    const-string v0, "ia"

    .line 4321
    goto :goto_1

    .line 4335
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now check Profile Ex :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public abstract checkMvnoMatches(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 2508
    const v1, 0x4201d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2509
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2510
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2511
    return-void
.end method

.method public cleanUpConnection(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "lgDataRecovery"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;
    .param p2, "requestApn"    # Ljava/lang/String;
    .param p3, "doAll"    # Z

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mLgDataRecovery:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mLgDataRecovery:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1747
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpConnection(Ljava/lang/String;Z)V

    .line 1749
    :cond_0
    return-void
.end method

.method public abstract cleanUpConnection(Ljava/lang/String;Z)V
.end method

.method public clearDataDisabledFlag(I)I
    .locals 7
    .param p1, "flag"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 648
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearDataDisabledFlag: flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 650
    if-ltz p1, :cond_0

    const/4 v5, 0x2

    if-lt p1, v5, :cond_1

    .line 651
    :cond_0
    const/4 v4, -0x1

    .line 674
    :goto_0
    return v4

    .line 654
    :cond_1
    shl-int v1, v3, p1

    .line 656
    .local v1, "flagValue":I
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestAlarmIntent:[Landroid/app/PendingIntent;

    aget-object v5, v5, p1

    if-eqz v5, :cond_3

    .line 657
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 658
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v0, :cond_2

    .line 659
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestAlarmIntent:[Landroid/app/PendingIntent;

    aget-object v5, v5, p1

    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 661
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestAlarmIntent:[Landroid/app/PendingIntent;

    const/4 v6, 0x0

    aput-object v6, v5, p1

    .line 664
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_3
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestFlags:I

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestFlags:I

    .line 666
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearDataDisabledFlag: mDataDisabledRequestFlags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestFlags:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 670
    const v5, 0x42801

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 671
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataDisabledByRequest()Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    :cond_4
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 672
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected abstract completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
.end method

.method public abstract disconnectApnOnApnSelected(Ljava/lang/String;)V
.end method

.method public abstract disconnectonlyChangedPDN(Ljava/lang/String;)V
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 1324
    const-string v2, "DCT.dispose"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1325
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 1326
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->disconnect()V

    goto :goto_0

    .line 1328
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1329
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    .line 1330
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1331
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 1333
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 1335
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->unregister()V

    .line 1336
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcController;->dispose()V

    .line 1337
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->dispose()V

    .line 1338
    return-void
.end method

.method protected doRecovery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2829
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v3, v4, :cond_1

    .line 2831
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v1

    .line 2832
    .local v1, "recoveryAction":I
    packed-switch v1, :pswitch_data_0

    .line 2921
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doRecovery: Invalid recoveryAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2834
    :pswitch_0
    const v2, 0xc3c6

    iget-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v2, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2836
    const-string v2, "doRecovery() get data call list"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2837
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x42004

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 2840
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v2

    if-ne v2, v6, :cond_2

    .line 2841
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    .line 2924
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 2926
    .end local v1    # "recoveryAction":I
    :cond_1
    return-void

    .line 2845
    .restart local v1    # "recoveryAction":I
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 2850
    :pswitch_1
    const-string v3, "doRecovery() : DNS_QUERY_TO_KR"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2851
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$CheckDataStall_KR;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$CheckDataStall_KR;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    new-array v4, v6, [Ljava/lang/Void;

    check-cast v2, Ljava/lang/Void;

    aput-object v2, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$CheckDataStall_KR;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2855
    :pswitch_2
    const v2, 0xc3c7

    iget-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v2, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2857
    const-string v2, "ro.afwdata.LGfeatureset"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2858
    .local v0, "featureset":Ljava/lang/String;
    const-string v2, "KTBASE"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "SKTBASE"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "LGTBASE"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2859
    :cond_3
    const-string v2, "doRecovery() cleanup default connections"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2860
    const-string v2, "specificDisabled"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2861
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 2864
    :cond_4
    const-string v2, "doRecovery() cleanup all connections"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2865
    const-string v2, "pdpReset"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2866
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 2871
    .end local v0    # "featureset":Ljava/lang/String;
    :pswitch_3
    const v3, 0xc3c8

    iget-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v3, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2873
    const-string v3, "doRecovery() re-register"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2874
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    .line 2876
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v2

    if-ne v2, v6, :cond_5

    .line 2877
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto/16 :goto_0

    .line 2881
    :cond_5
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto/16 :goto_0

    .line 2885
    :pswitch_4
    const-string v3, "doRecovery() DNS_QUERY_TO_VZW"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2886
    sget-object v3, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 2887
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$CheckDataStall;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$CheckDataStall;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    new-array v4, v6, [Ljava/lang/Void;

    check-cast v2, Ljava/lang/Void;

    aput-object v2, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$CheckDataStall;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 2892
    :pswitch_5
    const v2, 0xc3c9

    iget-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v2, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2894
    const-string v2, "restarting radio"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2895
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    .line 2897
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v2

    if-ne v2, v6, :cond_6

    .line 2898
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    .line 2901
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    goto/16 :goto_0

    .line 2910
    :pswitch_6
    const v2, 0xc3ca

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2911
    const-string v2, "restarting radio with gsm.radioreset to true"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2912
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2915
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2917
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    .line 2918
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto/16 :goto_0

    .line 2916
    :catch_0
    move-exception v2

    goto :goto_1

    .line 2832
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3575
    const-string v17, "DataConnectionTrackerBase:"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3576
    const-string v17, " RADIO_TESTS=false"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3577
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mInternalDataEnabled="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3578
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mUserDataEnabled="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3579
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " sPolicyDataEnabed="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-boolean v18, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3580
    const-string v17, " mDataEnabled:"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3581
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    .line 3582
    const-string v17, "  mDataEnabled[%d]=%b\n"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    move-object/from16 v20, v0

    aget-boolean v20, v20, v14

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3581
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3584
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3585
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mEnabledCount="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3586
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mRequestedApnType="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3587
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mPhone="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3588
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mPhoneId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3589
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mActivity="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3590
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mState="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3591
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mTxPkts="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3592
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mRxPkts="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3593
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mNetStatPollPeriod="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3594
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mNetStatPollEnabled="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3595
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mDataStallTxRxSum="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3596
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mDataStallAlarmTag="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3597
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mDataStallDetectionEanbled="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3598
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mSentSinceLastRecv="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3599
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mNoRecvPollCount="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNoRecvPollCount:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3600
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mResolver="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3601
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mIsWifiConnected="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3602
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mReconnectIntent="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3603
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mCidActive="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCidActive:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3604
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mAutoAttachOnCreation="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3605
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mIsScreenOn="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3606
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mUniqueIdGenerator="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3607
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3608
    const-string v17, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3609
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 3610
    .local v9, "dcc":Lcom/android/internal/telephony/dataconnection/DcController;
    if-eqz v9, :cond_1

    .line 3611
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3615
    :goto_1
    const-string v17, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3616
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    .line 3617
    .local v10, "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    if-eqz v10, :cond_2

    .line 3618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    .line 3619
    .local v16, "mDcSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mDataConnections: count="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3620
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 3621
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    const-string v17, " *** mDataConnection[%d] \n"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3622
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    .line 3613
    .end local v10    # "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "mDcSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;>;"
    :cond_1
    const-string v17, " mDcc=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3625
    .restart local v10    # "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    :cond_2
    const-string v17, "mDataConnections=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3627
    :cond_3
    const-string v17, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3628
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3629
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnToDataConnectionId:Ljava/util/HashMap;

    .line 3630
    .local v7, "apnToDcId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_4

    .line 3631
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 3632
    .local v8, "apnToDcIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mApnToDataConnectonId size="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3633
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 3634
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v17, " mApnToDataConnectonId[%s]=%d\n"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_3

    .line 3637
    .end local v8    # "apnToDcIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v17, "mApnToDataConnectionId=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3639
    :cond_5
    const-string v17, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3640
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3642
    .local v4, "apnCtxs":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    if-eqz v4, :cond_7

    .line 3643
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 3644
    .local v5, "apnCtxsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mApnContexts size="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3645
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 3646
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_4

    .line 3648
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    :cond_6
    const-string v17, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3652
    .end local v5    # "apnCtxsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3653
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mActiveApn="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3654
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    .line 3655
    .local v6, "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v6, :cond_9

    .line 3656
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mAllApnSettings size="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3657
    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v14, v0, :cond_8

    .line 3658
    const-string v17, " mAllApnSettings[%d]: %s\n"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3657
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 3650
    .end local v6    # "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_7
    const-string v17, " mApnContexts=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 3660
    .restart local v6    # "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3664
    :goto_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mPreferredApn="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3665
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mIsPsRestricted="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3666
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mIsDisposed="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3667
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mIntentReceiver="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3668
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " mDataRoamingSettingObserver="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3669
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3670
    return-void

    .line 3662
    :cond_9
    const-string v17, " mAllApnSettings=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method protected fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 10

    .prologue
    .line 1362
    const-string v8, "net.tethering.noprovisioning"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1363
    const-string v8, "fetchDunApn: net.tethering.noprovisioning=true ret: null"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1364
    const/4 v3, 0x0

    .line 1397
    :cond_0
    :goto_0
    return-object v3

    .line 1366
    :cond_1
    const/4 v1, -0x1

    .line 1367
    .local v1, "bearer":I
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1368
    .local v2, "c":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "tether_dun_apn"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1370
    .local v0, "apnData":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->arrayFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1371
    .local v4, "dunSettings":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 1372
    .local v3, "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1373
    .local v7, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 1374
    .local v6, "operator":Ljava/lang/String;
    :goto_1
    iget v8, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-eqz v8, :cond_4

    .line 1375
    const/4 v8, -0x1

    if-ne v1, v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 1376
    :cond_3
    iget v8, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-ne v8, v1, :cond_2

    .line 1378
    :cond_4
    iget-object v8, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1379
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1380
    if-eqz v7, :cond_2

    iget-object v8, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v9, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .line 1373
    .end local v6    # "operator":Ljava/lang/String;
    :cond_5
    const-string v6, ""

    goto :goto_1

    .line 1394
    .end local v3    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v7    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_6
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040038

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1395
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v3

    .line 1397
    .restart local v3    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_0
.end method

.method public getAPNList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4343
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1413
    const/4 v0, 0x0

    .line 1414
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_0

    .line 1415
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 1417
    :cond_0
    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1402
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_0

    .line 1403
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 1408
    .local v0, "result":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1405
    .end local v0    # "result":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 1406
    .restart local v0    # "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getActivity()Lcom/android/internal/telephony/DctConstants$Activity;
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    return-object v0
.end method

.method public getAnyDataEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2140
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2141
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    if-eqz v4, :cond_1

    move v0, v2

    .line 2144
    .local v0, "result":Z
    :goto_0
    sget-object v4, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v4}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2146
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataDisabledByRequest()Z

    move-result v4

    if-ne v4, v2, :cond_2

    .line 2149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAnyDataEnabled, mDataDisabledRequestFlags: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestFlags:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2151
    monitor-exit v3

    move v0, v1

    .line 2157
    .end local v0    # "result":Z
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 2141
    goto :goto_0

    .line 2155
    .restart local v0    # "result":Z
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2156
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnyDataEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2155
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getDPbyType(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4452
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 4472
    :goto_0
    return-object v0

    .line 4457
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 4459
    goto :goto_0

    .line 4463
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 4465
    .local v0, "dp":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now check Profile Ex :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "dp":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    move-object v0, v2

    .line 4472
    goto :goto_0
.end method

.method public getDataEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1628
    :try_start_0
    const-string v4, "[LGE_DATA]getDataEnabled"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1629
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1631
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE_DATA]getDataEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mobile_data"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1634
    const-string v4, "mobile_data"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 1640
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    move v2, v3

    .line 1634
    goto :goto_0

    .line 1637
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 1639
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    move v2, v3

    .line 1640
    goto :goto_0
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1532
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1534
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v6, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NATIONAL_ROAMING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v6

    if-ne v6, v5, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isNationalRoamingCase()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1536
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data_roaming"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1537
    .local v0, "data_roaming_enabled":I
    const-string v6, "roaming_mode_domestic_data"

    invoke-static {v2, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1538
    .local v1, "national_data_roaming_enabled":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data_roaming_enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", national_data_roaming_enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1539
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v4, v5

    .line 1545
    .end local v0    # "data_roaming_enabled":I
    .end local v1    # "national_data_roaming_enabled":I
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return v4

    .line 1542
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data_roaming"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    move v4, v5

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_1

    .line 1544
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v3

    .line 1545
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getDomesticDataEnabled(Z)Z
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1647
    :try_start_0
    const-string v4, "[LGE_DATA]getDomesticDataEnabled"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1648
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1649
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v4, "domestic_mobile_data"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1653
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return v2

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move v2, v3

    .line 1649
    goto :goto_0

    .line 1650
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 1651
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "[LGE_DATA] first boot after download"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1652
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "domestic_mobile_data"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, p1

    .line 1653
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1652
    goto :goto_1
.end method

.method protected getInitialMaxRetry()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 989
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    if-eqz v2, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return v1

    .line 993
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ABCABC_RETRY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 998
    const-string v1, "mdc_initial_max_retry"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1002
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "mdc_initial_max_retry"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public abstract getInitialProfiles()[Lcom/android/internal/telephony/dataconnection/ApnSetting;
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2300
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 2302
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2303
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 2304
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v2

    .line 2306
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_0
.end method

.method public getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2311
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 2312
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2313
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 2314
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getNetworkCapabilitiesSync()Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 2316
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    goto :goto_0
.end method

.method public abstract getOperatorNumeric()Ljava/lang/String;
.end method

.method protected abstract getOverallState()Lcom/android/internal/telephony/DctConstants$State;
.end method

.method public abstract getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
.end method

.method public abstract getPreferredNetworkMode()I
.end method

.method public getRecoveryAction()I
    .locals 4

    .prologue
    .line 2804
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "radio.data.stall.recovery.action"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2806
    .local v0, "action":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecoveryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2807
    return v0
.end method

.method protected getReryConfig(Z)Ljava/lang/String;
    .locals 2
    .param p1, "forDefault"    # Z

    .prologue
    .line 2641
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v0

    .line 2643
    .local v0, "nt":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 2650
    :cond_0
    const-string v1, "ro.cdma.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2656
    :goto_0
    return-object v1

    .line 2653
    :cond_1
    if-eqz p1, :cond_2

    .line 2654
    const-string v1, "ro.gsm.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2656
    :cond_2
    const-string v1, "ro.gsm.2nd_data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
.end method

.method public getTypefromProfileID(I)Ljava/lang/String;
    .locals 7
    .param p1, "profileId"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3498
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 3499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTypefromProfileID: profileId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3500
    if-ne v2, p1, :cond_0

    .line 3501
    const-string v0, "getTypefromProfileID: profileId = ims"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3502
    const-string v0, "ims"

    .line 3545
    :goto_0
    return-object v0

    .line 3504
    :cond_0
    if-ne v3, p1, :cond_1

    .line 3505
    const-string v0, "getTypefromProfileID: profileId = admin"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3506
    const-string v0, "admin"

    goto :goto_0

    .line 3508
    :cond_1
    if-ne v4, p1, :cond_2

    .line 3509
    const-string v0, "getTypefromProfileID: profileId = default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3510
    const-string v0, "default"

    goto :goto_0

    .line 3512
    :cond_2
    if-ne v5, p1, :cond_3

    .line 3513
    const-string v0, "getTypefromProfileID: profileId = vzwapp"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3514
    const-string v0, "vzwapp"

    goto :goto_0

    .line 3516
    :cond_3
    if-ne v6, p1, :cond_4

    .line 3517
    const-string v0, "getTypefromProfileID: profileId = vzw800"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3518
    const-string v0, "vzw800"

    goto :goto_0

    .line 3520
    :cond_4
    const/4 v0, 0x6

    if-ne v0, p1, :cond_b

    .line 3521
    const-string v0, "getTypefromProfileID: profileId = emergency"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3522
    const-string v0, "emergency"

    goto :goto_0

    .line 3524
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 3525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTypefromProfileID: profileId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3526
    if-ne v3, p1, :cond_6

    .line 3527
    const-string v0, "default"

    goto :goto_0

    .line 3529
    :cond_6
    if-ne v4, p1, :cond_7

    .line 3530
    const-string v0, "admin"

    goto :goto_0

    .line 3532
    :cond_7
    if-ne v2, p1, :cond_8

    .line 3533
    const-string v0, "ims"

    goto :goto_0

    .line 3535
    :cond_8
    if-ne v5, p1, :cond_9

    .line 3536
    const-string v0, "dun"

    goto :goto_0

    .line 3538
    :cond_9
    if-ne v6, p1, :cond_a

    .line 3539
    const-string v0, "xcap"

    goto :goto_0

    .line 3541
    :cond_a
    const/4 v0, 0x6

    if-ne v0, p1, :cond_b

    .line 3542
    const-string v0, "emergency"

    goto :goto_0

    .line 3545
    :cond_b
    const-string v0, "NoProfile"

    goto :goto_0
.end method

.method protected abstract gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
.end method

.method public abstract handleDataInterface(Ljava/lang/String;)I
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1777
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 2127
    const-string v19, "DATA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unidentified event msg="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    :cond_0
    :goto_0
    return-void

    .line 1779
    :sswitch_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DISCONNECTED_CONNECTED: msg="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1780
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 1781
    .local v9, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->disconnected()V

    goto :goto_0

    .line 1786
    .end local v9    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :sswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onEnableApn(II)V

    goto :goto_0

    .line 1790
    :sswitch_2
    const/4 v15, 0x0

    .line 1791
    .local v15, "reason":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1792
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v15    # "reason":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1794
    .restart local v15    # "reason":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 1798
    .end local v15    # "reason":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataStallAlarm(I)V

    goto :goto_0

    .line 1803
    :sswitch_4
    sget-object v19, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_ROAMING_POPUP_TMUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->ROAMING_POPUP_ENABLED:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1805
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetUserDataEnabled(Z)V

    .line 1806
    const-string v19, "onRoamingOff, send ACTION_ENABLE_DATA_IN_HPLMN "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1807
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->ROAMING_POPUP_ENABLED:Z

    .line 1808
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->ACTION_ENABLE_DATA_IN_HPLMN:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1809
    .local v16, "roamingIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1813
    .end local v16    # "roamingIntent":Landroid/content/Intent;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRoamingOff()V

    .line 1815
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 1816
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/lge/cappuccino/IMdm;->handleManualSync(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 1823
    :sswitch_5
    sget-object v19, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_ROAMING_POPUP_TMUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-nez v19, :cond_4

    .line 1825
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->ROAMING_POPUP_ENABLED:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 1826
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->ROAMING_POPUP_ENABLED:Z

    .line 1827
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataOnRoamingEnabled(Z)V

    .line 1828
    const-string v19, "onRoamingOn, send ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1829
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1830
    .restart local v16    # "roamingIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->REQUEST_ROAMING_OPTION:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v19

    if-eqz v19, :cond_5

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1833
    .end local v16    # "roamingIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRoamingOn()V

    .line 1839
    :cond_4
    :goto_2
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 1840
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/lge/cappuccino/IMdm;->handleManualSync(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 1830
    .restart local v16    # "roamingIntent":Landroid/content/Intent;
    :cond_5
    const/16 v19, 0x0

    goto :goto_1

    .line 1837
    .end local v16    # "roamingIntent":Landroid/content/Intent;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRoamingOn()V

    goto :goto_2

    .line 1847
    :sswitch_6
    const-string v19, "EVENT_DATA_ROAMING_OFF"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1848
    sget-object v19, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_USE_DATA_ROAMING_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1849
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRoamingOff()V

    goto/16 :goto_0

    .line 1854
    :sswitch_7
    const-string v19, "EVENT_DATA_ROAMING_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1856
    sget-object v19, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 1857
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-nez v19, :cond_7

    .line 1858
    const-string v19, " ***** Send Roam intent  ACTION_DATA_ROAMING_MENU"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1859
    new-instance v12, Landroid/content/Intent;

    const-string v19, "com.lge.android.intent.action.ACTION_DATA_ROAMING_MENU"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1860
    .local v12, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1865
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_7
    sget-object v19, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_USE_DATA_ROAMING_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1866
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRoamingOn()V

    goto/16 :goto_0

    .line 1871
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRadioAvailable()V

    goto/16 :goto_0

    .line 1876
    :sswitch_9
    sget-object v19, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_FAIL_ICON_DISPLAY_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1878
    const-string v19, "com.lge.android.data.DisplayDataErrorIcon : No Display (AirPlan on)"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1879
    new-instance v4, Landroid/content/Intent;

    const-string v19, "com.lge.android.data.DisplayDataErrorIcon"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1880
    .local v4, "DisplayDataErrorIcon":Landroid/content/Intent;
    const-string v19, "Display"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1884
    .end local v4    # "DisplayDataErrorIcon":Landroid/content/Intent;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRadioOffOrNotAvailable()V

    goto/16 :goto_0

    .line 1888
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCidActive:I

    .line 1889
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1893
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataSetupCompleteError(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1897
    :sswitch_c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DataConnectionTracker.handleMessage: EVENT_DISCONNECT_DONE msg="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1898
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDisconnectDone(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1902
    :sswitch_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DataConnectionTracker.handleMessage: EVENT_DISCONNECT_DC_RETRYING msg="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1903
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDisconnectDcRetrying(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1907
    :sswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onVoiceCallStarted()V

    goto/16 :goto_0

    .line 1911
    :sswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onVoiceCallEnded()V

    goto/16 :goto_0

    .line 1915
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1919
    :sswitch_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    if-nez v19, :cond_9

    const/16 v18, 0x0

    .line 1920
    .local v18, "tearDown":Z
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpConnection(ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 1919
    .end local v18    # "tearDown":Z
    :cond_9
    const/16 v18, 0x1

    goto :goto_3

    .line 1933
    :sswitch_12
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/4 v11, 0x1

    .line 1934
    .local v11, "enabled":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetInternalDataEnabled(Z)V

    goto/16 :goto_0

    .line 1933
    .end local v11    # "enabled":Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_4

    .line 1938
    :sswitch_13
    const-string v19, "EVENT_RESET_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1939
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onResetDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1943
    :sswitch_14
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    const/4 v11, 0x1

    .line 1944
    .restart local v11    # "enabled":Z
    :goto_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CMD_SET_USER_DATA_ENABLE enabled="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1946
    if-eqz v11, :cond_b

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabledByUser:Z

    .line 1950
    :cond_b
    sget-object v19, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1952
    if-nez v11, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isODBreceivedCauseOfDefaultPDN:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1954
    const-string v19, "[LGE_DATA] isODBreceivedCauseOfDefaultPDN set false"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1955
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isODBreceivedCauseOfDefaultPDN:Z

    .line 1959
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetUserDataEnabled(Z)V

    goto/16 :goto_0

    .line 1943
    .end local v11    # "enabled":Z
    :cond_d
    const/4 v11, 0x0

    goto :goto_5

    .line 1963
    :sswitch_15
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    const/4 v14, 0x1

    .line 1964
    .local v14, "met":Z
    :goto_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CMD_SET_DEPENDENCY_MET met="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1965
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 1966
    .local v8, "bundle":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 1967
    const-string v19, "apnType"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1968
    .local v6, "apnType":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1969
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetDependencyMet(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1963
    .end local v6    # "apnType":Ljava/lang/String;
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v14    # "met":Z
    :cond_e
    const/4 v14, 0x0

    goto :goto_6

    .line 1975
    :sswitch_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    const/4 v11, 0x1

    .line 1976
    .restart local v11    # "enabled":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetPolicyDataEnabled(Z)V

    goto/16 :goto_0

    .line 1975
    .end local v11    # "enabled":Z
    :cond_f
    const/4 v11, 0x0

    goto :goto_7

    .line 1980
    :sswitch_17
    sget v20, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    const/16 v19, 0x1

    :goto_8
    add-int v19, v19, v20

    sput v19, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    .line 1982
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA:  sEnableFailFastRefCounter="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1985
    sget v19, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    if-gez v19, :cond_10

    .line 1986
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: sEnableFailFastRefCounter:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " < 0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1988
    .local v17, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 1989
    const/16 v19, 0x0

    sput v19, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    .line 1991
    .end local v17    # "s":Ljava/lang/String;
    :cond_10
    sget v19, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    if-lez v19, :cond_14

    const/4 v11, 0x1

    .line 1993
    .restart local v11    # "enabled":Z
    :goto_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: enabled="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " sEnableFailFastRefCounter="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1996
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v11, :cond_0

    .line 1997
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    .line 1998
    if-nez v11, :cond_15

    const/16 v19, 0x1

    :goto_a
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    .line 1999
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInVoiceCall:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v19

    if-eqz v19, :cond_16

    .line 2004
    :cond_11
    const-string v19, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: start data stall"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2006
    sget-object v19, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 2007
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSendingDataStallDNSQuery:Z

    .line 2011
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    .line 2012
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    goto/16 :goto_0

    .line 1980
    .end local v11    # "enabled":Z
    :cond_13
    const/16 v19, -0x1

    goto/16 :goto_8

    .line 1991
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 1998
    .restart local v11    # "enabled":Z
    :cond_15
    const/16 v19, 0x0

    goto :goto_a

    .line 2014
    :cond_16
    const-string v19, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: stop data stall"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2015
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    goto/16 :goto_0

    .line 2022
    .end local v11    # "enabled":Z
    :sswitch_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 2023
    .restart local v8    # "bundle":Landroid/os/Bundle;
    if-eqz v8, :cond_17

    .line 2025
    :try_start_0
    const-string v19, "provisioningUrl"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    :cond_17
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 2032
    const-string v19, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url is empty, ignoring"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 2033
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 2034
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 2026
    :catch_0
    move-exception v10

    .line 2027
    .local v10, "e":Ljava/lang/ClassCastException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url not a string"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 2028
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    goto :goto_b

    .line 2036
    .end local v10    # "e":Ljava/lang/ClassCastException;
    :cond_18
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CMD_ENABLE_MOBILE_PROVISIONING: provisioningUrl="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 2037
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 2038
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startProvisioningApnAlarm()V

    goto/16 :goto_0

    .line 2043
    .end local v8    # "bundle":Landroid/os/Bundle;
    :sswitch_19
    const-string v19, "EVENT_PROVISIONING_APN_ALARM"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v19, v0

    const-string v20, "default"

    invoke-virtual/range {v19 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2045
    .local v5, "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v19

    if-eqz v19, :cond_1a

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectedOrConnecting()Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 2046
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 2047
    const-string v19, "EVENT_PROVISIONING_APN_ALARM: Disconnecting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2048
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 2049
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    .line 2050
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopProvisioningApnAlarm()V

    .line 2051
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto/16 :goto_0

    .line 2054
    :cond_19
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EVENT_PROVISIONING_APN_ALARM: ignore stale tag, mProvisioningApnAlarmTag:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " != arg1:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2060
    :cond_1a
    const-string v19, "EVENT_PROVISIONING_APN_ALARM: Not connected ignore"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2065
    .end local v5    # "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :sswitch_1a
    const-string v19, "CMD_IS_PROVISIONING_APN"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2068
    const/4 v6, 0x0

    .line 2069
    .restart local v6    # "apnType":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 2070
    .restart local v8    # "bundle":Landroid/os/Bundle;
    if-eqz v8, :cond_1b

    .line 2071
    const-string v19, "apnType"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 2073
    :cond_1b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 2074
    const-string v19, "CMD_IS_PROVISIONING_APN: apnType is empty"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2075
    const/4 v13, 0x0

    .line 2083
    .end local v8    # "bundle":Landroid/os/Bundle;
    .local v13, "isProvApn":Z
    :goto_c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CMD_IS_PROVISIONING_APN: ret="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v20, v0

    const v21, 0x42026

    if-eqz v13, :cond_1d

    const/16 v19, 0x1

    :goto_d
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 2077
    .end local v13    # "isProvApn":Z
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :cond_1c
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isProvisioningApn(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v13

    .restart local v13    # "isProvApn":Z
    goto :goto_c

    .line 2079
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v13    # "isProvApn":Z
    :catch_1
    move-exception v10

    .line 2080
    .restart local v10    # "e":Ljava/lang/ClassCastException;
    const-string v19, "CMD_IS_PROVISIONING_APN: NO provisioning url ignoring"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 2081
    const/4 v13, 0x0

    .restart local v13    # "isProvApn":Z
    goto :goto_c

    .line 2084
    .end local v10    # "e":Ljava/lang/ClassCastException;
    :cond_1d
    const/16 v19, 0x0

    goto :goto_d

    .line 2089
    .end local v6    # "apnType":Ljava/lang/String;
    .end local v13    # "isProvApn":Z
    :sswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onUpdateIcc()Z

    goto/16 :goto_0

    .line 2095
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 2096
    .local v7, "ar":Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1e

    .line 2097
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EVENT_SIM_REFRESH with exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2101
    :cond_1e
    sget-object v19, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGE_DATA_IMS_ISIM_REFRESH_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2102
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_0

    .line 2108
    .end local v7    # "ar":Landroid/os/AsyncResult;
    :sswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    goto/16 :goto_0

    .line 2113
    :sswitch_1e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1f

    const/4 v11, 0x1

    .line 2114
    .restart local v11    # "enabled":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataDisabledByRequest(Z)V

    goto/16 :goto_0

    .line 2113
    .end local v11    # "enabled":Z
    :cond_1f
    const/4 v11, 0x0

    goto :goto_e

    .line 2119
    :sswitch_1f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_20

    .line 2120
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/DctConstants$Activity;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    goto/16 :goto_0

    .line 2121
    :cond_20
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 2122
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/DctConstants$Activity;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    goto/16 :goto_0

    .line 1777
    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_1c
        0x11004 -> :sswitch_0
        0x42000 -> :sswitch_a
        0x42001 -> :sswitch_8
        0x42003 -> :sswitch_2
        0x42006 -> :sswitch_9
        0x42007 -> :sswitch_e
        0x42008 -> :sswitch_f
        0x4200b -> :sswitch_5
        0x4200c -> :sswitch_4
        0x4200d -> :sswitch_1
        0x4200f -> :sswitch_c
        0x42011 -> :sswitch_3
        0x42018 -> :sswitch_11
        0x4201a -> :sswitch_1d
        0x4201b -> :sswitch_12
        0x4201c -> :sswitch_13
        0x4201d -> :sswitch_10
        0x4201e -> :sswitch_14
        0x4201f -> :sswitch_15
        0x42020 -> :sswitch_16
        0x42021 -> :sswitch_1b
        0x42022 -> :sswitch_d
        0x42023 -> :sswitch_b
        0x42024 -> :sswitch_17
        0x42025 -> :sswitch_18
        0x42026 -> :sswitch_1a
        0x42027 -> :sswitch_19
        0x42028 -> :sswitch_1f
        0x42801 -> :sswitch_1e
        0x42833 -> :sswitch_7
        0x42834 -> :sswitch_6
    .end sparse-switch
.end method

.method protected handleStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    .prologue
    .line 2697
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    .line 2698
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    .line 2699
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V

    .line 2700
    return-void
.end method

.method protected handleStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    .prologue
    .line 2710
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 2711
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    .line 2712
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V

    .line 2713
    return-void
.end method

.method protected declared-synchronized isApnIdEnabled(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 2380
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2381
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2383
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1352
    const-string v3, "dun"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1353
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 1354
    .local v0, "dunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v0, :cond_2

    .line 1355
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1358
    .end local v0    # "dunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "dunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    move v1, v2

    .line 1355
    goto :goto_0

    .line 1358
    .end local v0    # "dunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected abstract isApnTypeAvailable(Ljava/lang/String;)Z
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2372
    if-nez p1, :cond_0

    .line 2373
    const/4 v0, 0x0

    .line 2375
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isChangedDataProfile([Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 6
    .param p1, "dp"    # [Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 3286
    const/4 v1, 0x0

    .line 3287
    .local v1, "isChanged":Z
    if-eqz p1, :cond_1

    array-length v3, p1

    if-lez v3, :cond_1

    .line 3288
    array-length v3, p1

    new-array v2, v3, [Lcom/android/internal/telephony/lgdata/DataProfileInfo;

    .line 3289
    .local v2, "profiles":[Lcom/android/internal/telephony/lgdata/DataProfileInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 3290
    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    .line 3291
    new-instance v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;

    aget-object v4, p1, v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;-><init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;Z)V

    aput-object v3, v2, v0

    .line 3292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChangedDataProfile isChanged  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " profileId :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    iget v4, v4, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dp toHash  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3293
    aget-object v3, v2, v0

    iget v3, v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    if-ltz v3, :cond_0

    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3294
    aget-object v3, v2, v0

    iget v3, v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOldDataProfile(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    iget v3, v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOldDataProfile(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3295
    aget-object v3, v2, v0

    iget v3, v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toHash()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setNewDataProfile(ILjava/lang/String;)V

    .line 3296
    const/4 v1, 0x1

    .line 3297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChangedDataProfile isChanged  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " profileId :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    iget v4, v4, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dp toHash  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3289
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3303
    .end local v0    # "i":I
    .end local v2    # "profiles":[Lcom/android/internal/telephony/lgdata/DataProfileInfo;
    :cond_1
    return v1
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 2825
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Z
    .locals 1
    .param p1, "lgDataRecovery"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mLgDataRecovery:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mLgDataRecovery:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1752
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isConnected()Z

    move-result v0

    .line 1754
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isDataAllowed()Z
.end method

.method protected isDataDisabledByRequest()Z
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestFlags:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isDataPossible(Ljava/lang/String;)Z
.end method

.method public abstract isDisconnected()Z
.end method

.method protected isEmergency()Z
    .locals 3

    .prologue
    .line 2162
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2163
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEcm()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2164
    .local v0, "result":Z
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmergency: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2166
    return v0

    .line 2163
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2164
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public abstract isEmergencyAttachSupportedOnLte()Z
.end method

.method public abstract isEmergencyCallBarringOnLte()Z
.end method

.method public abstract isEmergencyCallSupportedOnLte()Z
.end method

.method public abstract isInternetPDNconnected()Z
.end method

.method public isMultipleMmsApnHandlerExceptionOperator()Z
    .locals 8

    .prologue
    .line 4416
    const/4 v4, 0x0

    .line 4418
    .local v4, "ret":Z
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4419
    .local v3, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 4420
    .local v2, "numeric":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoType(J)Ljava/lang/String;

    move-result-object v1

    .line 4421
    .local v1, "mvnoType":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoData(J)Ljava/lang/String;

    move-result-object v0

    .line 4423
    .local v0, "mvnoData":Ljava/lang/String;
    if-nez v2, :cond_1

    move v5, v4

    .line 4442
    .end local v4    # "ret":Z
    .local v5, "ret":I
    :goto_1
    return v5

    .line 4419
    .end local v0    # "mvnoData":Ljava/lang/String;
    .end local v1    # "mvnoType":Ljava/lang/String;
    .end local v2    # "numeric":Ljava/lang/String;
    .end local v5    # "ret":I
    .restart local v4    # "ret":Z
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 4424
    .restart local v0    # "mvnoData":Ljava/lang/String;
    .restart local v1    # "mvnoType":Ljava/lang/String;
    .restart local v2    # "numeric":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    const-string v1, ""

    .line 4425
    :cond_2
    if-nez v0, :cond_3

    const-string v0, ""

    .line 4428
    :cond_3
    const-string v6, "24803"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4430
    const/4 v4, 0x1

    .line 4441
    :cond_4
    if-eqz v4, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMultipleApnHandlerExceptionOperator() return true : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    :cond_5
    move v5, v4

    .line 4442
    .restart local v5    # "ret":I
    goto :goto_1
.end method

.method public abstract isNvSubscription()Z
.end method

.method public abstract isOnDemandDataPossible(Ljava/lang/String;)Z
.end method

.method public abstract isOtaAttachedOnLte()Z
.end method

.method protected abstract isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z
.end method

.method protected abstract isProvisioningApn(Ljava/lang/String;)Z
.end method

.method public abstract isRoamingOOS()Z
.end method

.method public abstract isSingleRat()Z
.end method

.method public abstract isVoiceCallSupprotedOnLte()Z
.end method

.method protected loadKeyFromDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "mvno_type"    # Ljava/lang/String;
    .param p3, "mvno_data"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 3699
    const/4 v6, 0x0

    .line 3700
    .local v6, "DCMSettings":Ljava/lang/String;
    const-string v0, "content://telephony/dcm_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3703
    .local v1, "DCM_SETTINGS_URI":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numeric = \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and mvno_type = \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\' and mvno_match_data = \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3704
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v0

    aput-object p4, v2, v9

    .line 3705
    .local v2, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3707
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 3708
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadKeyFromDB(): connot find the "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " setting with ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 3709
    if-eqz v7, :cond_1

    .line 3710
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3713
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3714
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3715
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 3716
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadKeyFromDB(): connot find the "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " setting with ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "), too"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 3719
    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    .line 3721
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3722
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 3729
    :cond_4
    :goto_0
    if-eqz v7, :cond_5

    .line 3730
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3733
    :cond_5
    return-object v6

    .line 3723
    :catch_0
    move-exception v8

    .line 3724
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v6, 0x0

    .line 3725
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadKeyFromDB(): cannot find index for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " with name because of CursorIndexOutOfBoundsException"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3729
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 3730
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected abstract mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract networkModeToString(I)Ljava/lang/String;
.end method

.method protected notifyDataConnection(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2322
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_0
    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    .line 2323
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 2324
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2327
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2328
    return-void
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOffApnsOfAvailability - reason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2364
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_0
    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    .line 2365
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2366
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyApnIdDisconnected(Ljava/lang/String;I)V

    .line 2364
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2369
    :cond_1
    return-void
.end method

.method protected onActionIntentDataStallAlarm(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionIntentDataStallAlarm: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1139
    const v1, 0x42011

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1141
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "data.stall.alram.tag"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1142
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1143
    return-void
.end method

.method protected onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionIntentProvisioningApnAlarm: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3240
    const v1, 0x42027

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3242
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "provisioning.apn.alarm.tag"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3243
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 3244
    return-void
.end method

.method protected onActionIntentReconnectAlarm(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1060
    const-string v9, "reconnect_alarm_extra_reason"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1061
    .local v8, "reason":Ljava/lang/String;
    const-string v9, "reconnect_alarm_extra_type"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1063
    .local v2, "apnType":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v6

    .line 1064
    .local v6, "phoneSubId":J
    const-string v9, "subscription"

    const-wide/16 v10, -0x3e8

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1066
    .local v4, "currSubId":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onActionIntentReconnectAlarm: currSubId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " phoneSubId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1075
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1078
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onActionIntentReconnectAlarm: mState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " reason="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " apnType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " apnContext="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mDataConnectionAsyncChannels="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1083
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1084
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 1087
    .local v1, "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onActionIntentReconnectAlarm: apnContext state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1089
    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v9, :cond_0

    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v9, :cond_4

    .line 1092
    :cond_0
    const-string v9, "onActionIntentReconnectAlarm: state is FAILED|IDLE, disassociate"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v3

    .line 1096
    .local v3, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    sget-object v9, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CPA_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v9}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v9

    if-ne v9, v13, :cond_3

    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cpa_enable:Z

    if-ne v9, v13, :cond_3

    .line 1098
    const-string v9, "onActionIntentReconnectAlarm: Bug Fix for G-BOOK (Car Navigation)"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1110
    :cond_1
    :goto_0
    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 1111
    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1116
    .end local v3    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_1
    sget-object v9, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v9}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "default"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 1118
    const-string v9, "[LGE_DATA] cancle reconnect!"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1122
    :goto_2
    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    .line 1124
    .end local v1    # "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    :cond_2
    return-void

    .line 1104
    .restart local v1    # "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    .restart local v3    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_3
    if-eqz v3, :cond_1

    .line 1105
    const-string v9, ""

    invoke-virtual {v3, v0, v9, v12}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1113
    .end local v3    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_4
    const-string v9, "onActionIntentReconnectAlarm: keep associated"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1120
    :cond_5
    const v9, 0x42003

    invoke-virtual {p0, v9, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method protected onActionIntentRestartTrySetupAlarm(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1127
    const-string v2, "restart_trysetup_alarm_extra_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1128
    .local v1, "apnType":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1130
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActionIntentRestartTrySetupAlarm: mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDataConnectionAsyncChannels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1134
    const v2, 0x42003

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1135
    return-void
.end method

.method protected abstract onCleanUpAllConnections(Ljava/lang/String;)V
.end method

.method protected abstract onCleanUpConnection(ZILjava/lang/String;)V
.end method

.method public abstract onDataConnectionAttached()V
.end method

.method protected onDataDisabledByRequest(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 678
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 679
    if-eqz p1, :cond_1

    .line 680
    :try_start_0
    const-string v0, "onDataDisabledByRequest: changed to enabled, try to setup data call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 681
    const-string v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 688
    :cond_0
    :goto_0
    monitor-exit v1

    .line 689
    return-void

    .line 683
    :cond_1
    const-string v0, "onDataDisabledByRequest: changed to disabled, cleanUpAllConnections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract onDataSetupComplete(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onDataSetupCompleteError(Landroid/os/AsyncResult;)V
.end method

.method protected onDataStallAlarm(I)V
    .locals 6
    .param p1, "tag"    # I

    .prologue
    .line 2975
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    if-eq v2, p1, :cond_0

    .line 2977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStallAlarm: ignore, tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3006
    :goto_0
    return-void

    .line 2981
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->updateDataStallInfo()V

    .line 2983
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "pdp_watchdog_trigger_packet_count"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2987
    .local v0, "hangWatchdogTrigger":I
    const/4 v1, 0x0

    .line 2988
    .local v1, "suspectedStall":Z
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 2990
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStallAlarm: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " do recovery action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2992
    const/4 v1, 0x1

    .line 2993
    const v2, 0x42012

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 3001
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 3002
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSendingDataStallDNSQuery:Z

    .line 3005
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    goto :goto_0

    .line 2996
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStallAlarm: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkts since last received, < watchdogTrigger="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected abstract onDisconnectDcRetrying(ILandroid/os/AsyncResult;)V
.end method

.method protected abstract onDisconnectDone(ILandroid/os/AsyncResult;)V
.end method

.method protected onEnableApn(II)V
    .locals 6
    .param p1, "apnId"    # I
    .param p2, "enabled"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_APN_ENABLE_REQUEST apnId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dataEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabledCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2404
    if-ne p2, v4, :cond_3

    .line 2405
    monitor-enter p0

    .line 2406
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_0

    .line 2407
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 2408
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 2410
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2411
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    .line 2412
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2413
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 2414
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onEnableNewApn()V

    .line 2448
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2410
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2416
    .restart local v1    # "type":Ljava/lang/String;
    :cond_2
    const-string v2, "apnSwitched"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyApnIdUpToCurrent(Ljava/lang/String;I)V

    goto :goto_0

    .line 2420
    .end local v1    # "type":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .line 2421
    .local v0, "didDisable":Z
    monitor-enter p0

    .line 2422
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_4

    .line 2423
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 2424
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 2425
    const/4 v0, 0x1

    .line 2427
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2428
    if-eqz v0, :cond_1

    .line 2429
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 2430
    :cond_5
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 2431
    const-string v2, "dataDisabled"

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpConnection(ZILjava/lang/String;)V

    .line 2436
    :cond_6
    const-string v2, "dataDisabled"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyApnIdDisconnected(Ljava/lang/String;I)V

    .line 2437
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v4, :cond_1

    const-string v2, "default"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2443
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 2444
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onEnableNewApn()V

    goto :goto_0

    .line 2427
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method protected onEnableNewApn()V
    .locals 0

    .prologue
    .line 2457
    return-void
.end method

.method public abstract onLockStateChanged(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onRadioAvailable()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2467
    const-string v1, "EVENT_RESET_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2468
    const/4 v0, 0x0

    .line 2469
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2470
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0    # "reason":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 2472
    .restart local v0    # "reason":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 2473
    return-void
.end method

.method protected abstract onRoamingOff()V
.end method

.method protected abstract onRoamingOn()V
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "met"    # Z

    .prologue
    .line 2616
    return-void
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2495
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2496
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    .line 2497
    if-eqz p1, :cond_0

    .line 2498
    const-string v0, "onSetInternalDataEnabled: changed to enabled, try to setup data call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2499
    const-string v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 2504
    :goto_0
    monitor-exit v1

    .line 2505
    return-void

    .line 2501
    :cond_0
    const-string v0, "onSetInternalDataEnabled: changed to disabled, cleanUpAllConnections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2502
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 2504
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onSetPolicyDataEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 2619
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2620
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    if-eq v1, p1, :cond_0

    .line 2621
    sput-boolean p1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    .line 2622
    if-eqz p1, :cond_1

    .line 2623
    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 2637
    :cond_0
    :goto_0
    monitor-exit v2

    .line 2638
    return-void

    .line 2625
    :cond_1
    const-string v1, "specificDisabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V

    .line 2627
    sget-object v1, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_FAIL_ICON_DISPLAY_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2629
    const-string v1, "com.lge.android.data.DisplayDataErrorIcon datadisable: No Display(data disable,Policy)"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2630
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.data.DisplayDataErrorIcon"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2631
    .local v0, "DisplayDataErrorIcon":Landroid/content/Intent;
    const-string v1, "Display"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2632
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2637
    .end local v0    # "DisplayDataErrorIcon":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onSetUserDataEnabled(Z)V
    .locals 14
    .param p1, "enabled"    # Z

    .prologue
    .line 2516
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2519
    :try_start_0
    sget-object v10, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v10}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2520
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2521
    .local v1, "airplaneMode":I
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    .line 2522
    .local v7, "voice_call":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v6

    .line 2524
    .local v6, "roaming":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LGE_DATA] airplaneMode : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " / voice_call : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " / roaming :"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2526
    const/4 v10, 0x1

    if-ne v6, v10, :cond_0

    const-string v10, "ro.afwdata.LGfeatureset"

    const-string v12, "none"

    invoke-static {v10, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "KTBASE"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2527
    const-string v10, "[LGE_DATA] In Roaming, Setting Mobile_Data is not allowed."

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2528
    monitor-exit v11

    .line 2613
    .end local v1    # "airplaneMode":I
    .end local v6    # "roaming":Z
    .end local v7    # "voice_call":Z
    :goto_0
    return-void

    .line 2531
    .restart local v1    # "airplaneMode":I
    .restart local v6    # "roaming":Z
    .restart local v7    # "voice_call":Z
    :cond_0
    const/4 v10, 0x1

    if-ne v1, v10, :cond_1

    .line 2532
    const-string v10, "[LGE_DATA] In Airplane Mode, Setting Mobile_Data is not allowed."

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2533
    monitor-exit v11

    goto :goto_0

    .line 2612
    .end local v1    # "airplaneMode":I
    .end local v6    # "roaming":Z
    .end local v7    # "voice_call":Z
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 2538
    :cond_1
    :try_start_1
    sget-object v10, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DOMESTIC_INTERNATIONAL_DATAMENU_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v10}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2539
    if-nez p1, :cond_2

    .line 2540
    const-string v10, "[LGE_DATA] mobile_data should keep 1, so retrun"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2541
    monitor-exit v11

    goto :goto_0

    .line 2546
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LGE_DATA] mUserDataEnabled. :: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "  enabled :: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2547
    iget-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-eq v10, p1, :cond_8

    .line 2548
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 2549
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mobile_data"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz p1, :cond_9

    const/4 v10, 0x1

    :goto_1
    invoke-static {v12, v13, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2553
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v2

    .line 2554
    .local v2, "currentDds":J
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v8

    .line 2555
    .local v8, "subId":J
    sget-object v10, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_SYNC_DATA_SETTING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v10}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_d

    cmp-long v10, v2, v8

    if-nez v10, :cond_d

    .line 2558
    :try_start_2
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "mobile_data"

    invoke-static {v10, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_a

    const/4 v5, 0x1

    .line 2559
    .local v5, "native_data_enabled":Z
    :goto_2
    if-eq v5, p1, :cond_3

    .line 2560
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "mobile_data"

    if-eqz p1, :cond_b

    const/4 v10, 0x1

    :goto_3
    invoke-static {v12, v13, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2561
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSetUserDataEnabled, MOBILE_DATA updated to "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2574
    .end local v5    # "native_data_enabled":Z
    :cond_3
    :goto_4
    :try_start_3
    sget-object v10, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DOMESTIC_INTERNATIONAL_DATAMENU_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v10}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-nez v10, :cond_4

    .line 2575
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "domestic_mobile_data"

    if-eqz p1, :cond_e

    const/4 v10, 0x1

    :goto_5
    invoke-static {v12, v13, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2576
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LGE_DATA] domestic_mobile_data enabled :: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2580
    :cond_4
    sget-object v10, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_FAIL_ICON_DISPLAY_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v10}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2582
    if-nez p1, :cond_5

    .line 2583
    const-string v10, "com.lge.android.data.DisplayDataErrorIcon :Not display (reson : Data Disable)"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2584
    new-instance v0, Landroid/content/Intent;

    const-string v10, "com.lge.android.data.DisplayDataErrorIcon"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2585
    .local v0, "DisplayDataErrorIcon":Landroid/content/Intent;
    const-string v10, "Display"

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2586
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2591
    .end local v0    # "DisplayDataErrorIcon":Landroid/content/Intent;
    :cond_5
    sget-object v10, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_ENABLE_PROFILE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v10}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2592
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->enableDataProfile(Z)V

    .line 2597
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_7

    .line 2599
    if-eqz p1, :cond_f

    .line 2600
    const-string v10, "roamingOn"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2606
    :cond_7
    :goto_6
    if-eqz p1, :cond_10

    .line 2607
    const-string v10, "dataEnabled"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 2612
    .end local v2    # "currentDds":J
    .end local v8    # "subId":J
    :cond_8
    :goto_7
    monitor-exit v11

    goto/16 :goto_0

    .line 2549
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 2558
    .restart local v2    # "currentDds":J
    .restart local v8    # "subId":J
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 2560
    .restart local v5    # "native_data_enabled":Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 2563
    .end local v5    # "native_data_enabled":Z
    :catch_0
    move-exception v4

    .line 2565
    .local v4, "exception":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "mobile_data"

    if-eqz p1, :cond_c

    const/4 v10, 0x1

    :goto_8
    invoke-static {v12, v13, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2566
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSetUserDataEnabled, MOBILE_DATA inserted to "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2565
    :cond_c
    const/4 v10, 0x0

    goto :goto_8

    .line 2569
    .end local v4    # "exception":Landroid/provider/Settings$SettingNotFoundException;
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSetUserDataEnabled, Dds not matched, currentDds="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", subId="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2575
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 2602
    :cond_f
    const-string v10, "dataDisabled"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_6

    .line 2609
    :cond_10
    const-string v10, "specificDisabled"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7
.end method

.method protected abstract onSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
.end method

.method public abstract onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
.end method

.method public abstract onTrySetupData(Ljava/lang/String;)Z
.end method

.method protected abstract onUpdateIcc()Z
.end method

.method protected abstract onVoiceCallEnded()V
.end method

.method protected abstract onVoiceCallStarted()V
.end method

.method public putRecoveryAction(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    .line 2810
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "radio.data.stall.recovery.action"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putRecoveryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2815
    sget-object v1, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TOOL_MLT_DEBUG_INFO:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2816
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DATA_RECOVERY_ACTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2817
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2818
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2821
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public abstract registerForDataConnectEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract resetNetworkModeToDefault()V
.end method

.method protected resetPollStats()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 2662
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    .line 2663
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    .line 2664
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    .line 2665
    return-void
.end method

.method public resetPsRetryAfterDetach()V
    .locals 4

    .prologue
    .line 4356
    const-string v2, " resetPsRetryAfterDetach  valid : "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4357
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4359
    .local v0, "apnContexts":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "emergency"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4364
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRestartManager:Lcom/android/internal/telephony/RetryManager;

    if-eqz v2, :cond_0

    .line 4367
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRestartManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 4369
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReconnectIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4371
    const-string v2, " resetPsRetryAfterDetach   :  cancelReconnectAlarm"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4372
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 4374
    :cond_1
    const-string v2, " resetPsRetryAfterDetach     :  resetRetryCount"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4375
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRestartManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    goto :goto_0

    .line 4379
    .end local v0    # "apnContexts":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    return-void
.end method

.method protected restartDataStallAlarm()V
    .locals 2

    .prologue
    .line 3116
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3128
    :goto_0
    return-void

    .line 3119
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v0

    .line 3121
    .local v0, "nextAction":I
    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->isAggressiveRecovery(I)Z
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->access$100(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3122
    const-string v1, "restartDataStallAlarm: action is pending. not resetting the alarm."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3125
    :cond_1
    const-string v1, "restartDataStallAlarm: stop then start."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3126
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    .line 3127
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    goto :goto_0
.end method

.method protected abstract restartRadio()V
.end method

.method public restartRadio(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V
    .locals 1
    .param p1, "lgDataRecovery"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mLgDataRecovery:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mLgDataRecovery:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1741
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    .line 1743
    :cond_0
    return-void
.end method

.method protected abstract retryAfterRAU(I)V
.end method

.method public sendCleanUpConnection(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "requestApn"    # Ljava/lang/String;
    .param p2, "doAll"    # Z

    .prologue
    .line 3559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCleanUpConnection: doAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3566
    return-void
.end method

.method public sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4
    .param p1, "tearDown"    # Z
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v2, 0x0

    .line 3550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCleanUpConnection: tearDown="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " apnContext="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3551
    const v1, 0x42018

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3552
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3553
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 3554
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3555
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 3556
    return-void

    :cond_0
    move v1, v2

    .line 3552
    goto :goto_0
.end method

.method public sendModemProfile([Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 11
    .param p1, "dp"    # [Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    const/4 v10, 0x1

    .line 3310
    if-eqz p1, :cond_c

    array-length v7, p1

    if-lez v7, :cond_c

    .line 3311
    array-length v7, p1

    new-array v3, v7, [Lcom/android/internal/telephony/lgdata/DataProfileInfo;

    .line 3313
    .local v3, "profiles":[Lcom/android/internal/telephony/lgdata/DataProfileInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_6

    .line 3314
    aget-object v7, p1, v1

    if-eqz v7, :cond_3

    .line 3316
    sget-object v7, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_USE_DATA_ROAMING_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v7}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Lcom/android/internal/telephony/lgdata/DataProfileInfo;

    aget-object v8, p1, v1

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/telephony/LGServiceState;->getDefault(Landroid/telephony/ServiceState;)Lcom/lge/telephony/LGServiceState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/telephony/LGServiceState;->getDataRoaming()Z

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;-><init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;Z)V

    :goto_1
    aput-object v7, v3, v1

    .line 3322
    sget-object v7, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v7}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3323
    aget-object v7, v3, v1

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v7

    aget-object v8, p1, v1

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->getModemProfileID(I[Ljava/lang/String;)I

    move-result v2

    .line 3324
    .local v2, "profileId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "profileId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", profiles : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v1

    invoke-virtual {v8}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3326
    if-ltz v2, :cond_1

    .line 3327
    aget-object v7, p1, v1

    if-eqz v7, :cond_0

    if-ltz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOldDataProfile(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOldDataProfile(I)Ljava/lang/String;

    move-result-object v7

    aget-object v8, p1, v1

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toHash()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3328
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Has Changed > profileId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", DB : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v1

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3329
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getTypefromProfileID(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->disconnectonlyChangedPDN(Ljava/lang/String;)V

    .line 3331
    :cond_0
    aget-object v7, p1, v1

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toHash()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setNewDataProfile(ILjava/lang/String;)V

    .line 3336
    .end local v2    # "profileId":I
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_APNSYNC_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v7}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v1, :cond_2

    aget-object v7, v3, v1

    iget v7, v7, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    if-eq v7, v10, :cond_2

    .line 3338
    aget-object v7, v3, v1

    iput v10, v7, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    .line 3343
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setModemProfile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v1

    invoke-virtual {v8}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3348
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_ENABLE_PROFILE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v7}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3349
    aget-object v7, v3, v1

    invoke-virtual {v7}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->isProfileDefault()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3350
    aget-object v7, v3, v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->enabled:Z

    .line 3351
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setModemProfile: set default profile enabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v1

    iget-boolean v8, v8, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->enabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3313
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3316
    :cond_5
    new-instance v7, Lcom/android/internal/telephony/lgdata/DataProfileInfo;

    aget-object v8, p1, v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;-><init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;Z)V

    goto/16 :goto_1

    .line 3358
    :cond_6
    sget-object v7, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SYNC_ONLY_CHANGED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v7}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3359
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isChangedDataProfile([Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 3360
    const-string v7, "setModemProfile: return "

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3393
    .end local v1    # "i":I
    .end local v3    # "profiles":[Lcom/android/internal/telephony/lgdata/DataProfileInfo;
    :cond_7
    :goto_2
    return-void

    .line 3363
    .restart local v1    # "i":I
    .restart local v3    # "profiles":[Lcom/android/internal/telephony/lgdata/DataProfileInfo;
    :cond_8
    const-string v7, "setModemProfile: pass"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3368
    :cond_9
    sget-object v7, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SEND_NONE_APN_FOR_APN_SYNC_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v7}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3369
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3370
    .local v4, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v5

    .line 3371
    .local v5, "recordsLoaded":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isNvSubscription()Z

    move-result v6

    .line 3373
    .local v6, "subscriptionFromNv":Z
    if-nez v6, :cond_b

    if-nez v5, :cond_b

    .line 3374
    const-string v7, "SIM not loaded, do not send modem profile "

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3370
    .end local v5    # "recordsLoaded":Z
    .end local v6    # "subscriptionFromNv":Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    .line 3380
    .end local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_b
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    invoke-interface {v7, v3, v8}, Lcom/android/internal/telephony/CommandsInterface;->modifyModemProfile([Lcom/android/internal/telephony/lgdata/DataProfileInfo;Landroid/os/Message;)V

    .line 3384
    .end local v1    # "i":I
    .end local v3    # "profiles":[Lcom/android/internal/telephony/lgdata/DataProfileInfo;
    :cond_c
    sget-object v7, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SEND_NONE_APN_FOR_APN_SYNC_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v7}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3385
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3386
    .local v0, "apnNumeric":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOperatorNumeric - apnNumeric: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3388
    const-string v7, "311480"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "001010"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "00101"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3389
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendNullProfileInfo([Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    goto :goto_2
.end method

.method protected sendModemProfile([Lcom/android/internal/telephony/lgdata/DataProfileInfo;)V
    .locals 2
    .param p1, "dp"    # [Lcom/android/internal/telephony/lgdata/DataProfileInfo;

    .prologue
    .line 3397
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 3398
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->modifyModemProfile([Lcom/android/internal/telephony/lgdata/DataProfileInfo;Landroid/os/Message;)V

    .line 3400
    :cond_0
    return-void
.end method

.method sendRestartRadio()V
    .locals 2

    .prologue
    .line 3569
    const-string v1, "sendRestartRadio:"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3570
    const v1, 0x4201a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3571
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 3572
    return-void
.end method

.method public sendStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    .prologue
    .line 2690
    const v1, 0x42028

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2691
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2692
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2693
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2694
    return-void
.end method

.method public sendStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    .prologue
    .line 2703
    const v1, 0x42028

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2704
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2705
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2706
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2707
    return-void
.end method

.method public send_ehrpd_ipv6_setting(I)V
    .locals 2
    .param p1, "enable"    # I

    .prologue
    .line 3674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send_ehrpd_ipv6_setting GO GO~~!!!= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3675
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setEhrpdIpv6ControlSetting(ILandroid/os/Message;)V

    .line 3676
    return-void
.end method

.method setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    .prologue
    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1346
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 1347
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1348
    return-void
.end method

.method public abstract setDataAllowed(ZLandroid/os/Message;)V
.end method

.method public setDataConnection(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3681
    const/4 v0, 0x0

    .line 3683
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    .line 3684
    const v1, 0x42003

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3685
    const-string v1, "dataEnabled"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3692
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 3693
    return-void

    .line 3687
    :cond_0
    const v1, 0x42018

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3688
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3689
    const-string v1, "connectionManagerHandleData"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDataDisabledFlag(II)I
    .locals 11
    .param p1, "flag"    # I
    .param p2, "timeout"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 609
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDataDisabledFlag: flag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", timeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 611
    if-ltz p1, :cond_0

    if-lt p1, v10, :cond_2

    :cond_0
    move v4, v6

    .line 643
    :cond_1
    :goto_0
    return v4

    .line 615
    :cond_2
    shl-int v1, v4, p1

    .line 616
    .local v1, "flagValue":I
    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestFlags:I

    and-int/2addr v7, v1

    if-gtz v7, :cond_1

    .line 620
    if-lez p2, :cond_4

    .line 621
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 622
    .local v0, "am":Landroid/app/AlarmManager;
    if-nez v0, :cond_3

    move v4, v6

    .line 623
    goto :goto_0

    .line 626
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.lge.internal.telephony.lge-data-disable-request-timeout"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "flag"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 629
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestAlarmIntent:[Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x8000000

    invoke-static {v7, v5, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    aput-object v7, v6, p1

    .line 630
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, p2

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestAlarmIntent:[Landroid/app/PendingIntent;

    aget-object v8, v8, p1

    invoke-virtual {v0, v10, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 634
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestFlags:I

    or-int/2addr v6, v1

    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestFlags:I

    .line 636
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDataDisabledFlag: mDataDisabledRequestFlags="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisabledRequestFlags:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 639
    const v6, 0x42801

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 640
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataDisabledByRequest()Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v5

    :cond_5
    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 641
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    move v4, v5

    .line 643
    goto :goto_0
.end method

.method public setDataEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1617
    const-string v1, "[LGE_DATA]setDataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1618
    const v1, 0x4201e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1619
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1620
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1621
    return-void

    .line 1619
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataOnRoamingEnabled(Z)V
    .locals 19
    .param p1, "enabled"    # Z

    .prologue
    .line 1426
    if-eqz p1, :cond_1

    .line 1427
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v16

    if-eqz v16, :cond_1

    .line 1428
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v16

    const/16 v17, 0x0

    const-string v18, "LGMDMDataRoamingAdapter"

    invoke-interface/range {v16 .. v18}, Lcom/lge/cappuccino/IMdm;->checkDisabledSystemService(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1430
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "LGMDM blocks data roaming "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    const/4 v11, 0x0

    .line 1439
    .local v11, "needToUpdateInNationalRoamingCase":Z
    sget-object v16, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NATIONAL_ROAMING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isNationalRoamingCase()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1442
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1443
    .local v12, "resolver":Landroid/content/ContentResolver;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "data_roaming"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v16

    if-eqz v16, :cond_5

    const/4 v6, 0x1

    .line 1445
    .local v6, "data_roaming_enabled":Z
    :goto_1
    move/from16 v0, p1

    if-eq v6, v0, :cond_2

    .line 1446
    const/4 v11, 0x1

    .line 1455
    .end local v6    # "data_roaming_enabled":Z
    .end local v12    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    :goto_2
    if-nez v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v16

    move/from16 v0, v16

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 1458
    :cond_3
    sget-object v16, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x1

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 1460
    const-string v16, "ril.gsm.reject_cause"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1462
    .local v3, "data_rejCode":I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[LGE_DATA] setDataOnRoamingEnabled(), reject_cause= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1464
    if-lez v3, :cond_4

    .line 1466
    const/4 v9, 0x0

    .line 1467
    .local v9, "msg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1469
    .local v2, "IsRoaming":Z
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DataConnectionTracker handleNetworkRejection : Rejection code :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1471
    new-instance v8, Landroid/content/Intent;

    const-string v16, "lge.intent.action.toast"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1473
    .local v8, "intent":Landroid/content/Intent;
    sparse-switch v3, :sswitch_data_0

    .line 1493
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v9, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 1498
    .end local v2    # "IsRoaming":Z
    .end local v3    # "data_rejCode":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "msg":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1499
    .restart local v12    # "resolver":Landroid/content/ContentResolver;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "data_roaming"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    if-eqz p1, :cond_6

    const/16 v16, 0x1

    :goto_4
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1503
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v4

    .line 1504
    .local v4, "currentDds":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v14

    .line 1505
    .local v14, "subId":J
    sget-object v16, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_SYNC_DATA_SETTING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    cmp-long v16, v4, v14

    if-nez v16, :cond_a

    .line 1508
    :try_start_1
    const-string v16, "data_roaming"

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_7

    const/4 v10, 0x1

    .line 1509
    .local v10, "native_data_roaming_enabled":Z
    :goto_5
    move/from16 v0, p1

    if-eq v10, v0, :cond_0

    .line 1510
    const-string v17, "data_roaming"

    if-eqz p1, :cond_8

    const/16 v16, 0x1

    :goto_6
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1511
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setDataOnRoamingEnabled, DATA_ROAMING updated to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1513
    .end local v10    # "native_data_roaming_enabled":Z
    :catch_0
    move-exception v7

    .line 1515
    .local v7, "exception":Landroid/provider/Settings$SettingNotFoundException;
    const-string v17, "data_roaming"

    if-eqz p1, :cond_9

    const/16 v16, 0x1

    :goto_7
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1516
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setDataOnRoamingEnabled, DATA_ROAMING inserted to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1443
    .end local v4    # "currentDds":J
    .end local v7    # "exception":Landroid/provider/Settings$SettingNotFoundException;
    .end local v14    # "subId":J
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1448
    .end local v12    # "resolver":Landroid/content/ContentResolver;
    :catch_1
    move-exception v13

    .line 1449
    .local v13, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1477
    .end local v13    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v2    # "IsRoaming":Z
    .restart local v3    # "data_rejCode":I
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "msg":Ljava/lang/String;
    :sswitch_0
    const-string v16, "SKT_NRC_07_GPRS_NOT_ALLOWED"

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1479
    goto/16 :goto_3

    .line 1483
    :sswitch_1
    const-string v16, "SKT_NRC_14_GPRS_NOT_ALLOWED_IN_THIS_PLMN"

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1485
    goto/16 :goto_3

    .line 1499
    .end local v2    # "IsRoaming":Z
    .end local v3    # "data_rejCode":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "msg":Ljava/lang/String;
    .restart local v12    # "resolver":Landroid/content/ContentResolver;
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 1508
    .restart local v4    # "currentDds":J
    .restart local v14    # "subId":J
    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    .line 1510
    .restart local v10    # "native_data_roaming_enabled":Z
    :cond_8
    const/16 v16, 0x0

    goto :goto_6

    .line 1515
    .end local v10    # "native_data_roaming_enabled":Z
    .restart local v7    # "exception":Landroid/provider/Settings$SettingNotFoundException;
    :cond_9
    const/16 v16, 0x0

    goto :goto_7

    .line 1519
    .end local v7    # "exception":Landroid/provider/Settings$SettingNotFoundException;
    :cond_a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setDataOnRoamingEnabled, Dds not matched, currentDds="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", subId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1473
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method protected setDataProfilesAsNeeded()V
    .locals 10

    .prologue
    .line 3208
    sget-object v7, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_APNSYNC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v7}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 3209
    const-string v7, "Skip setDataProfilesAsNeeded, APNSYNC enabled."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3236
    :cond_0
    :goto_0
    return-void

    .line 3213
    :cond_1
    const-string v7, "setDataProfilesAsNeeded"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3214
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3215
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3216
    .local v3, "dps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3217
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-boolean v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    if-eqz v7, :cond_2

    .line 3218
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataProfile;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v7

    invoke-direct {v1, v0, v7}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;Z)V

    .line 3220
    .local v1, "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    const/4 v6, 0x0

    .line 3221
    .local v6, "isDup":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 3222
    .local v2, "dpIn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3223
    const/4 v6, 0x1

    .line 3227
    .end local v2    # "dpIn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_4
    if-nez v6, :cond_2

    .line 3228
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3232
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "isDup":Z
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 3233
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/internal/telephony/dataconnection/DataProfile;

    const/4 v9, 0x0

    invoke-interface {v8, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected setEnabled(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 2388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with old state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and enabledCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2391
    const v1, 0x4200d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2392
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2393
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2394
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2395
    return-void

    .line 2393
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIMSteardown()V
    .locals 1

    .prologue
    .line 4477
    const-string v0, "ePDG : this is parent "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4478
    return-void
.end method

.method public abstract setImsRegistrationState(Z)V
.end method

.method public setInitialAttachApn()V
    .locals 13

    .prologue
    .line 3134
    const/4 v11, 0x0

    .line 3135
    .local v11, "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v8, 0x0

    .line 3136
    .local v8, "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v9, 0x0

    .line 3138
    .local v9, "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialApn: E mPreferredApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3140
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3141
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    check-cast v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3142
    .restart local v9    # "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialApn: firstApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3145
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3147
    .local v7, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v0, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    const-string v1, "ia"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-eqz v0, :cond_4

    .line 3150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialApn: iaApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3151
    move-object v11, v7

    .line 3168
    .end local v7    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v12, 0x0

    .line 3169
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v11, :cond_5

    .line 3170
    const-string v0, "setInitialAttachApn: using iaApnSetting"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3171
    move-object v12, v11

    .line 3183
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 3184
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3185
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3186
    .restart local v7    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string v0, "ims"

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3187
    move-object v12, v7

    .line 3188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialApn: iaApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3153
    .end local v12    # "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_4
    if-nez v8, :cond_0

    const-string v0, "default"

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialApn: defaultApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3157
    move-object v8, v7

    goto/16 :goto_0

    .line 3172
    .end local v7    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v0, :cond_6

    .line 3173
    const-string v0, "setInitialAttachApn: using mPreferredApn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3174
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    goto :goto_1

    .line 3175
    :cond_6
    if-eqz v8, :cond_7

    .line 3176
    const-string v0, "setInitialAttachApn: using defaultApnSetting"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3177
    move-object v12, v8

    goto :goto_1

    .line 3178
    :cond_7
    if-eqz v9, :cond_2

    .line 3179
    const-string v0, "setInitialAttachApn: using firstApnSetting"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3180
    move-object v12, v9

    goto/16 :goto_1

    .line 3195
    :cond_8
    if-nez v12, :cond_9

    .line 3196
    const-string v0, "setInitialAttachApn: X There in no available apn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3204
    :goto_3
    return-void

    .line 3198
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialAttachApn: X selected Apn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3200
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget v3, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iget-object v4, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v5, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInternalDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2488
    const v1, 0x4201b

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2489
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2490
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2491
    return v2

    .line 2489
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setNetworkMtu()V
    .locals 14

    .prologue
    .line 3752
    const/4 v7, 0x0

    .line 3753
    .local v7, "nwMTU":I
    const/4 v2, 0x0

    .line 3754
    .local v2, "hNwMTU":I
    const/4 v10, 0x0

    .line 3757
    .local v10, "vNwMTU":I
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3758
    .local v8, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 3759
    .local v6, "numeric":Ljava/lang/String;
    :goto_0
    const-string v11, "gsm.apn.sim.operator.mvno.type"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3760
    .local v5, "mvnoType":Ljava/lang/String;
    const-string v11, "gsm.apn.sim.operator.mvno.data"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3763
    .local v4, "mvnoData":Ljava/lang/String;
    sget-object v11, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v11}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3764
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setNetworkMtu(): numeric = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mvnoType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mvnoData = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3768
    :cond_0
    const-string v11, "ipmtu"

    invoke-virtual {p0, v6, v5, v4, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loadKeyFromDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3770
    .local v3, "mtu":Ljava/lang/String;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_8

    const-string v11, "0"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 3771
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3772
    move v7, v2

    .line 3781
    .end local v3    # "mtu":Ljava/lang/String;
    .end local v4    # "mvnoData":Ljava/lang/String;
    .end local v5    # "mvnoType":Ljava/lang/String;
    .end local v6    # "numeric":Ljava/lang/String;
    .end local v8    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_1
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 3786
    const/4 v3, 0x0

    .line 3787
    .restart local v3    # "mtu":Ljava/lang/String;
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 3789
    .restart local v6    # "numeric":Ljava/lang/String;
    const-string v11, ""

    const-string v12, ""

    const-string v13, "ipmtu"

    invoke-virtual {p0, v6, v11, v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loadKeyFromDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3790
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_9

    const-string v11, "0"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 3791
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .line 3802
    .end local v6    # "numeric":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_1

    if-le v2, v10, :cond_2

    .line 3803
    :cond_1
    move v7, v10

    .line 3807
    .end local v3    # "mtu":Ljava/lang/String;
    :cond_2
    const/16 v0, 0x5dc

    .line 3809
    .local v0, "LG_DATA_DEFAULT_MTU":I
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v11

    const/4 v12, 0x5

    if-eq v11, v12, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_b

    .line 3810
    :cond_3
    const/16 v11, 0x28

    if-ge v7, v11, :cond_a

    const/16 v11, 0x28

    if-le v2, v11, :cond_a

    .line 3811
    move v7, v2

    .line 3812
    const-string v11, "setNetworkMtu(): ipMTU for LGU is set to hNwMTU"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3824
    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v11

    const/16 v12, 0x17

    if-ne v11, v12, :cond_c

    .line 3826
    :cond_5
    const/16 v7, 0x594

    .line 3827
    const-string v11, "setNetworkMtu(): ipMTU for VZW is set to 1428"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3848
    :cond_6
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setNetworkMtu(): Home MTU : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",  Roaming MTU : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Selected MTU : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3850
    const-string v11, "persist.data_netmgrd_mtu"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3851
    return-void

    .line 3758
    .end local v0    # "LG_DATA_DEFAULT_MTU":I
    .restart local v8    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_7
    :try_start_2
    const-string v6, ""

    goto/16 :goto_0

    .line 3774
    .restart local v3    # "mtu":Ljava/lang/String;
    .restart local v4    # "mvnoData":Ljava/lang/String;
    .restart local v5    # "mvnoType":Ljava/lang/String;
    .restart local v6    # "numeric":Ljava/lang/String;
    :cond_8
    const-string v11, "setNetworkMtu(): Fail to load ipmtu setting for home NW from Db"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 3776
    .end local v3    # "mtu":Ljava/lang/String;
    .end local v4    # "mvnoData":Ljava/lang/String;
    .end local v5    # "mvnoType":Ljava/lang/String;
    .end local v6    # "numeric":Ljava/lang/String;
    .end local v8    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :catch_0
    move-exception v1

    .line 3777
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 3778
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setNetworkMtu(): Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3793
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "mtu":Ljava/lang/String;
    .restart local v6    # "numeric":Ljava/lang/String;
    :cond_9
    :try_start_3
    const-string v11, "setNetworkMtu(): Fail to load ipmtu setting for visited NW from Db"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 3796
    .end local v6    # "numeric":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 3798
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 3799
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setNetworkMtu(): Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3813
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mtu":Ljava/lang/String;
    .restart local v0    # "LG_DATA_DEFAULT_MTU":I
    :cond_a
    const/16 v11, 0x28

    if-ge v7, v11, :cond_4

    .line 3814
    const-string v11, "setNetworkMtu(): Fail to set suitable mtu size, use default mtu: 1500"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 3815
    const/16 v7, 0x5dc

    goto/16 :goto_3

    .line 3819
    :cond_b
    const/16 v11, 0x28

    if-ge v7, v11, :cond_4

    .line 3820
    const-string v11, "setNetworkMtu(): Fail to set suitable mtu size, use default mtu: 1500"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 3821
    const/16 v7, 0x5dc

    goto/16 :goto_3

    .line 3829
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v11

    const/16 v12, 0x1c

    if-ne v11, v12, :cond_d

    .line 3830
    const/16 v7, 0x58e

    .line 3831
    const-string v11, "setNetworkMtu(): ipMTU for USC is set to 1422"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3834
    :cond_d
    sget-object v11, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_MTU_SET_SYSTEM_PROPERTIES_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v11}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f

    .line 3835
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v9

    .line 3836
    .local v9, "radioTech":I
    const/16 v7, 0x58e

    .line 3837
    const/4 v11, 0x4

    if-lt v9, v11, :cond_e

    const/16 v11, 0x8

    if-gt v9, v11, :cond_e

    .line 3839
    const/16 v7, 0x5c0

    .line 3841
    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setNetworkMtu(): ipMTU for SPCS is set to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3844
    .end local v9    # "radioTech":I
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_6

    .line 3845
    const/16 v7, 0x582

    .line 3846
    const-string v11, "setNetworkMtu(): ipMTU for ATT is set to 1410"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public abstract setPreferredApn(I)V
.end method

.method public abstract setPreferredApnToDefault()V
.end method

.method public abstract setPreferredNetworkMode(I)V
.end method

.method protected abstract setState(Lcom/android/internal/telephony/DctConstants$State;)V
.end method

.method protected setWindowBufferSize()V
    .locals 13

    .prologue
    .line 3867
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3868
    .local v8, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 3869
    .local v7, "numeric":Ljava/lang/String;
    :goto_0
    const-string v11, "gsm.apn.sim.operator.mvno.type"

    const-string v12, ""

    invoke-static {v11, v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3870
    .local v6, "mvnoType":Ljava/lang/String;
    const-string v11, "gsm.apn.sim.operator.mvno.data"

    const-string v12, ""

    invoke-static {v11, v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3873
    .local v5, "mvnoData":Ljava/lang/String;
    sget-object v11, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v11}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3874
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setWindowBufferSize(): numeric = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mvnoType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mvnoData = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3879
    :cond_0
    const/16 v11, 0xd

    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "windefault"

    aput-object v12, v0, v11

    const/4 v11, 0x1

    const-string v12, "lte"

    aput-object v12, v0, v11

    const/4 v11, 0x2

    const-string v12, "umts"

    aput-object v12, v0, v11

    const/4 v11, 0x3

    const-string v12, "hspa"

    aput-object v12, v0, v11

    const/4 v11, 0x4

    const-string v12, "hsupa"

    aput-object v12, v0, v11

    const/4 v11, 0x5

    const-string v12, "hsdpa"

    aput-object v12, v0, v11

    const/4 v11, 0x6

    const-string v12, "hspap"

    aput-object v12, v0, v11

    const/4 v11, 0x7

    const-string v12, "edge"

    aput-object v12, v0, v11

    const/16 v11, 0x8

    const-string v12, "gprs"

    aput-object v12, v0, v11

    const/16 v11, 0x9

    const-string v12, "evdo_b"

    aput-object v12, v0, v11

    const/16 v11, 0xa

    const-string v12, "ehrpd"

    aput-object v12, v0, v11

    const/16 v11, 0xb

    const-string v12, "evdo"

    aput-object v12, v0, v11

    const/16 v11, 0xc

    const-string v12, "gpass"

    aput-object v12, v0, v11

    .line 3882
    .local v0, "allRats":[Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isContainingNumericInDB(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 3883
    const-string v7, "00101"

    .line 3884
    const-string v6, ""

    .line 3885
    const-string v5, ""

    .line 3886
    const-string v11, "setWindowBufferSize(): use default values "

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 3889
    :cond_1
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v9, v1, v3

    .line 3891
    .local v9, "s":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v7, v6, v5, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loadKeyFromDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3892
    .local v10, "val":Ljava/lang/String;
    if-eqz v10, :cond_4

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_4

    .line 3894
    const/4 v11, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v11, :pswitch_data_0

    .line 3935
    sput-object v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_LTE:Ljava/lang/String;

    .line 3939
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setWindowBufferSize(): Update "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3889
    .end local v10    # "val":Ljava/lang/String;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3868
    .end local v0    # "allRats":[Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "mvnoData":Ljava/lang/String;
    .end local v6    # "mvnoType":Ljava/lang/String;
    .end local v7    # "numeric":Ljava/lang/String;
    .end local v9    # "s":Ljava/lang/String;
    :cond_3
    const-string v7, ""

    goto/16 :goto_0

    .line 3894
    .restart local v0    # "allRats":[Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "mvnoData":Ljava/lang/String;
    .restart local v6    # "mvnoType":Ljava/lang/String;
    .restart local v7    # "numeric":Ljava/lang/String;
    .restart local v9    # "s":Ljava/lang/String;
    .restart local v10    # "val":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    const-string v12, "windefault"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v11, 0x0

    goto :goto_2

    :sswitch_1
    const-string v12, "lte"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :sswitch_2
    const-string v12, "umts"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v11, 0x2

    goto :goto_2

    :sswitch_3
    const-string v12, "hspa"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v11, 0x3

    goto :goto_2

    :sswitch_4
    const-string v12, "hsupa"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v11, 0x4

    goto :goto_2

    :sswitch_5
    const-string v12, "hsdpa"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v11, 0x5

    goto :goto_2

    :sswitch_6
    const-string v12, "hspap"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v11, 0x6

    goto :goto_2

    :sswitch_7
    const-string v12, "gprs"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v11, 0x7

    goto/16 :goto_2

    :sswitch_8
    const-string v12, "edge"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v11, 0x8

    goto/16 :goto_2

    :sswitch_9
    const-string v12, "evdo_b"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v11, 0x9

    goto/16 :goto_2

    :sswitch_a
    const-string v12, "ehrpd"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v11, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string v12, "evdo"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v11, 0xb

    goto/16 :goto_2

    :sswitch_c
    const-string v12, "gpass"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v11, 0xc

    goto/16 :goto_2

    .line 3896
    :pswitch_0
    sput-object v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_DEFAULT:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 3944
    .end local v10    # "val":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3945
    .local v2, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setWindowBufferSize(): Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3899
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v10    # "val":Ljava/lang/String;
    :pswitch_1
    :try_start_2
    sput-object v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_LTE:Ljava/lang/String;

    goto/16 :goto_3

    .line 3902
    :pswitch_2
    sput-object v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_UMTS:Ljava/lang/String;

    goto/16 :goto_3

    .line 3905
    :pswitch_3
    sput-object v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_HSPA:Ljava/lang/String;

    goto/16 :goto_3

    .line 3908
    :pswitch_4
    sput-object v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_HSUPA:Ljava/lang/String;

    goto/16 :goto_3

    .line 3911
    :pswitch_5
    sput-object v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_HSDPA:Ljava/lang/String;

    goto/16 :goto_3

    .line 3914
    :pswitch_6
    sput-object v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_HSPAP:Ljava/lang/String;

    goto/16 :goto_3

    .line 3917
    :pswitch_7
    sput-object v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_GPRS:Ljava/lang/String;

    goto/16 :goto_3

    .line 3920
    :pswitch_8
    sput-object v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_EDGE:Ljava/lang/String;

    goto/16 :goto_3

    .line 3923
    :pswitch_9
    sput-object v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_EVDO_B:Ljava/lang/String;

    goto/16 :goto_3

    .line 3926
    :pswitch_a
    sput-object v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_EHRPD:Ljava/lang/String;

    goto/16 :goto_3

    .line 3929
    :pswitch_b
    sput-object v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_EVDO:Ljava/lang/String;

    goto/16 :goto_3

    .line 3932
    :pswitch_c
    sput-object v10, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->TCP_BUFFER_SIZES_GPASS:Ljava/lang/String;

    goto/16 :goto_3

    .line 3942
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setWindowBufferSize(): Fail to set "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " as ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 3948
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "val":Ljava/lang/String;
    :cond_5
    return-void

    .line 3894
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4cf89221 -> :sswitch_9
        0x1a3dd -> :sswitch_1
        0x2f6dbd -> :sswitch_8
        0x2fb0fc -> :sswitch_b
        0x3084ea -> :sswitch_7
        0x31043c -> :sswitch_3
        0x36d717 -> :sswitch_2
        0x5c04663 -> :sswitch_a
        0x5dfd8f8 -> :sswitch_c
        0x5ef586a -> :sswitch_5
        0x5ef83b4 -> :sswitch_6
        0x5ef983b -> :sswitch_4
        0x5d0a3ae5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public simActionReq()V
    .locals 14

    .prologue
    .line 3971
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3972
    .local v8, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    .line 3973
    .local v11, "usim_mcc_mnc":Ljava/lang/String;
    :goto_0
    const-string v12, "ro.afwdata.LGfeatureset"

    const-string v13, "none"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3975
    .local v1, "builded_phone_type":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3976
    .local v2, "equal_sim_builded_binary":Z
    const/16 v12, 0xc

    new-array v9, v12, [Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const/4 v12, 0x0

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v9, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v9, v12

    const/4 v12, 0x2

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DORMANT_FD_VOICE_5SEC_DELAY_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v9, v12

    const/4 v12, 0x3

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v9, v12

    const/4 v12, 0x4

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v9, v12

    const/4 v12, 0x5

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ADD_PDN_RESET_API_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v9, v12

    const/4 v12, 0x6

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v9, v12

    const/4 v12, 0x7

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v9, v12

    const/16 v12, 0x8

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v9, v12

    const/16 v12, 0x9

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v9, v12

    const/16 v12, 0xa

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v9, v12

    const/16 v12, 0xb

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v9, v12

    .line 3993
    .local v9, "skt_feature":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/4 v12, 0x6

    new-array v6, v12, [Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const/4 v12, 0x0

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MODECHANGE_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v6, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v6, v12

    const/4 v12, 0x2

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v6, v12

    const/4 v12, 0x3

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v6, v12

    const/4 v12, 0x4

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v6, v12

    const/4 v12, 0x5

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v6, v12

    .line 4002
    .local v6, "kt_feature":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/16 v12, 0xf

    new-array v10, v12, [Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const/4 v12, 0x0

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_LTE_ROAMING_LGU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v10, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v10, v12

    const/4 v12, 0x2

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v10, v12

    const/4 v12, 0x3

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v10, v12

    const/4 v12, 0x4

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v10, v12

    const/4 v12, 0x5

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v10, v12

    const/4 v12, 0x6

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v10, v12

    const/4 v12, 0x7

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v10, v12

    const/16 v12, 0x8

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v10, v12

    const/16 v12, 0x9

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_SUPPORT_NSWO_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v10, v12

    const/16 v12, 0xa

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_BACKGROUND_DATA_NOTI_IN_AIRPLANE_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v10, v12

    const/16 v12, 0xb

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v10, v12

    const/16 v12, 0xc

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_OTA_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v10, v12

    const/16 v12, 0xd

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v10, v12

    const/16 v12, 0xe

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v10, v12

    .line 4019
    .local v10, "uplus_feature":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/16 v12, 0x13

    new-array v5, v12, [Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const/4 v12, 0x0

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SELECT_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/4 v12, 0x2

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/4 v12, 0x3

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/4 v12, 0x4

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/4 v12, 0x5

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/4 v12, 0x6

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/4 v12, 0x7

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/16 v12, 0x8

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_APNSYNC_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/16 v12, 0x9

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/16 v12, 0xa

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/16 v12, 0xb

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/16 v12, 0xc

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/16 v12, 0xd

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/16 v12, 0xe

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/16 v12, 0xf

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/16 v12, 0x10

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/16 v12, 0x11

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    const/16 v12, 0x12

    sget-object v13, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    aput-object v13, v5, v12

    .line 4043
    .local v5, "kr_feature":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LGP_DATA_USIM] simActionReq(): sim  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  builded  ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4045
    if-eqz v1, :cond_0

    if-nez v11, :cond_2

    .line 4189
    :cond_0
    return-void

    .line 3972
    .end local v1    # "builded_phone_type":Ljava/lang/String;
    .end local v2    # "equal_sim_builded_binary":Z
    .end local v5    # "kr_feature":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    .end local v6    # "kt_feature":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    .end local v9    # "skt_feature":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    .end local v10    # "uplus_feature":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    .end local v11    # "usim_mcc_mnc":Ljava/lang/String;
    :cond_1
    const-string v11, ""

    goto/16 :goto_0

    .line 4047
    .restart local v1    # "builded_phone_type":Ljava/lang/String;
    .restart local v2    # "equal_sim_builded_binary":Z
    .restart local v5    # "kr_feature":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    .restart local v6    # "kt_feature":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    .restart local v9    # "skt_feature":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    .restart local v10    # "uplus_feature":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    .restart local v11    # "usim_mcc_mnc":Ljava/lang/String;
    :cond_2
    const/4 v12, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v12, :pswitch_data_0

    .line 4064
    :cond_4
    :goto_2
    const/4 v12, 0x1

    if-eq v2, v12, :cond_0

    .line 4065
    const-string v12, "[LGP_DATA_USIM] checking ..... the feature [ sim and build_target is difference !!"

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4067
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    const-string v12, "45005"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    const-string v12, "45011"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 4070
    :cond_5
    move-object v0, v9

    .local v0, "arr$":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_3
    if-ge v4, v7, :cond_6

    aget-object v3, v0, v4

    .line 4072
    .local v3, "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4070
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4047
    .end local v0    # "arr$":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :sswitch_0
    const-string v13, "SKTBASE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v12, 0x0

    goto :goto_1

    :sswitch_1
    const-string v13, "KTBASE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v12, 0x1

    goto :goto_1

    :sswitch_2
    const-string v13, "LGTBASE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v12, 0x2

    goto :goto_1

    .line 4049
    :pswitch_0
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    const-string v12, "45005"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 4050
    const/4 v2, 0x1

    goto :goto_2

    .line 4053
    :pswitch_1
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    const-string v12, "45008"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 4054
    const/4 v2, 0x1

    goto :goto_2

    .line 4057
    :pswitch_2
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    const-string v12, "45006"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 4058
    const/4 v2, 0x1

    goto :goto_2

    .line 4074
    .restart local v0    # "arr$":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    :cond_6
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    const-string v12, "45011"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 4076
    sget-object v12, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4079
    :cond_7
    move-object v0, v6

    array-length v7, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_8

    aget-object v3, v0, v4

    .line 4081
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4079
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 4084
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    :cond_8
    move-object v0, v10

    array-length v7, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_9

    aget-object v3, v0, v4

    .line 4086
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4084
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 4093
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    :cond_9
    const-string v12, "persist.sys.cnd.nsrm"

    const-string v13, "1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4173
    :goto_6
    move-object v0, v9

    array-length v7, v0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v7, :cond_17

    aget-object v3, v0, v4

    .line 4174
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SKT "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " --"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4173
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 4096
    .end local v0    # "arr$":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :cond_a
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    const-string v12, "45008"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 4098
    move-object v0, v9

    .restart local v0    # "arr$":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_8
    if-ge v4, v7, :cond_b

    aget-object v3, v0, v4

    .line 4100
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4098
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 4104
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    :cond_b
    move-object v0, v6

    array-length v7, v0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v7, :cond_c

    aget-object v3, v0, v4

    .line 4106
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4104
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 4109
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    :cond_c
    move-object v0, v10

    array-length v7, v0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v7, :cond_d

    aget-object v3, v0, v4

    .line 4111
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4109
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 4116
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    :cond_d
    const-string v12, "persist.sys.cnd.nsrm"

    const-string v13, "1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 4120
    .end local v0    # "arr$":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :cond_e
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnSelectionHdlr:Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;

    const-string v12, "45006"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 4122
    move-object v0, v9

    .restart local v0    # "arr$":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_b
    if-ge v4, v7, :cond_f

    aget-object v3, v0, v4

    .line 4124
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4122
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 4127
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    :cond_f
    move-object v0, v6

    array-length v7, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v7, :cond_10

    aget-object v3, v0, v4

    .line 4129
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4127
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 4133
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    :cond_10
    move-object v0, v10

    array-length v7, v0

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v7, :cond_11

    aget-object v3, v0, v4

    .line 4135
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4133
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 4141
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    :cond_11
    const-string v12, "persist.sys.cnd.nsrm"

    const-string v13, "1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 4146
    .end local v0    # "arr$":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :cond_12
    move-object v0, v9

    .restart local v0    # "arr$":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_e
    if-ge v4, v7, :cond_13

    aget-object v3, v0, v4

    .line 4148
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4146
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 4151
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    :cond_13
    move-object v0, v6

    array-length v7, v0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v7, :cond_14

    aget-object v3, v0, v4

    .line 4153
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4151
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 4156
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    :cond_14
    move-object v0, v10

    array-length v7, v0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v7, :cond_15

    aget-object v3, v0, v4

    .line 4158
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4156
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 4161
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    :cond_15
    move-object v0, v5

    array-length v7, v0

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v7, :cond_16

    aget-object v3, v0, v4

    .line 4163
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4161
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 4169
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    :cond_16
    const-string v12, "persist.sys.cnd.nsrm"

    const-string v13, "1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 4177
    :cond_17
    move-object v0, v6

    array-length v7, v0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v7, :cond_18

    aget-object v3, v0, v4

    .line 4178
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "KT "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " --"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4177
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 4181
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    :cond_18
    move-object v0, v10

    array-length v7, v0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v7, :cond_19

    aget-object v3, v0, v4

    .line 4182
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UPLUS "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " --"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4181
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 4185
    .end local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    :cond_19
    move-object v0, v5

    array-length v7, v0

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v7, :cond_0

    aget-object v3, v0, v4

    .line 4186
    .restart local v3    # "feature":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "KR "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " --"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4185
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 4047
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b45d446 -> :sswitch_1
        -0x54a09e33 -> :sswitch_0
        0x3240608a -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected startDataStallAlarm(Z)V
    .locals 10
    .param p1, "suspectedStall"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3010
    sget-object v3, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 3011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDataStallAlarm: mSendingDataStallDNSQuery="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSendingDataStallDNSQuery:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3012
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSendingDataStallDNSQuery:Z

    if-eqz v3, :cond_1

    .line 3078
    :cond_0
    :goto_0
    return-void

    .line 3018
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATARECOVERY_BLOCK_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 3019
    const-string v3, "persist.lg.data.block_dr"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3020
    const-string v3, "startDataStallAlarm is disabled for 10776 TEST !!!:"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3026
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->SUPPORT_LG_DATA_RECOVERY:Z

    if-nez v3, :cond_0

    .line 3028
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v2

    .line 3031
    .local v2, "nextAction":I
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v3, v4, :cond_7

    .line 3034
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    if-nez v3, :cond_3

    if-nez p1, :cond_3

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->isAggressiveRecovery(I)Z
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->access$100(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3035
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "data_stall_alarm_aggressive_delay_in_ms"

    const v5, 0xea60

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3039
    .local v0, "delayInMs":I
    sget-object v3, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v3

    if-ne v3, v6, :cond_5

    .line 3040
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSendDataStallDNSQuery:Z

    if-eqz v3, :cond_4

    .line 3041
    const v0, 0x124f80

    .line 3042
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSendingDataStallDNSQuery:Z

    .line 3044
    :cond_4
    iput-boolean v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSendDataStallDNSQuery:Z

    .line 3053
    :cond_5
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    .line 3055
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDataStallAlarm: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit16 v4, v0, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3058
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.data-stall"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3059
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "data.stall.alram.tag"

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3060
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v3, v7, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 3067
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v0

    add-long/2addr v6, v8

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 3048
    .end local v0    # "delayInMs":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "data_stall_alarm_non_aggressive_delay_in_ms"

    const v5, 0x57e40

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "delayInMs":I
    goto :goto_1

    .line 3072
    .end local v0    # "delayInMs":I
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDataStallAlarm: NOT started, no connection tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method startNetStatPoll()V
    .locals 2

    .prologue
    .line 2670
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 2673
    const-string v0, "startNetStatPoll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2675
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->resetPollStats()V

    .line 2676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    .line 2677
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2679
    :cond_0
    return-void
.end method

.method protected startProvisioningApnAlarm()V
    .locals 10

    .prologue
    .line 3247
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "provisioning_apn_alarm_delay_in_ms"

    const v6, 0xdbba0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3250
    .local v0, "delayInMs":I
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_0

    .line 3252
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 3253
    .local v1, "delayInMsStrg":Ljava/lang/String;
    const-string v4, "persist.debug.prov_apn_alarm"

    invoke-static {v4, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3255
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3260
    .end local v1    # "delayInMsStrg":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    .line 3262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startProvisioningApnAlarm: tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, v0, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3265
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.telephony.provisioning_apn_alarm"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3266
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "provisioning.apn.alarm.tag"

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3267
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 3269
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v0

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3271
    return-void

    .line 3256
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v1    # "delayInMsStrg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3257
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startProvisioningApnAlarm: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected stopDataStallAlarm()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3082
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 3083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDataStallAlarm: mSendingDataStallDNSQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSendingDataStallDNSQuery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3084
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSendingDataStallDNSQuery:Z

    if-eqz v0, :cond_1

    .line 3113
    :cond_0
    :goto_0
    return-void

    .line 3090
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATARECOVERY_BLOCK_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 3091
    const-string v0, "persist.lg.data.block_dr"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3092
    const-string v0, "stopDataStallAlarm is disabled for 10776 TEST !!!:"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3099
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->SUPPORT_LG_DATA_RECOVERY:Z

    if-nez v0, :cond_0

    .line 3102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDataStallAlarm: current tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDataStallAlarmIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3105
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    .line 3106
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 3107
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    goto :goto_0
.end method

.method stopNetStatPoll()V
    .locals 1

    .prologue
    .line 2682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    .line 2683
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2685
    const-string v0, "stopNetStatPoll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2687
    return-void
.end method

.method protected stopProvisioningApnAlarm()V
    .locals 2

    .prologue
    .line 3275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopProvisioningApnAlarm: current tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mProvsioningApnAlarmIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3278
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    .line 3279
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 3280
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 3283
    :cond_0
    return-void
.end method

.method public abstract unregisterForDataConnectEvent(Landroid/os/Handler;)V
.end method

.method public updateDataActivity()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 2720
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    iget-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;JJ)V

    .line 2721
    .local v0, "preTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 2722
    .local v6, "curTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->updateTxRxSum()V

    .line 2723
    iget-wide v2, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    .line 2724
    iget-wide v2, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    .line 2730
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    if-eqz v1, :cond_2

    iget-wide v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    cmp-long v1, v2, v12

    if-gtz v1, :cond_0

    iget-wide v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    cmp-long v1, v2, v12

    if-lez v1, :cond_2

    .line 2731
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    iget-wide v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    sub-long v10, v2, v4

    .line 2732
    .local v10, "sent":J
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    iget-wide v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    sub-long v8, v2, v4

    .line 2736
    .local v8, "received":J
    cmp-long v1, v10, v12

    if-lez v1, :cond_3

    cmp-long v1, v8, v12

    if-lez v1, :cond_3

    .line 2737
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 2747
    .local v7, "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    if-eq v1, v7, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    if-eqz v1, :cond_1

    .line 2750
    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 2751
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 2755
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_DATABLOCK:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2756
    cmp-long v1, v10, v12

    if-nez v1, :cond_7

    cmp-long v1, v8, v12

    if-nez v1, :cond_7

    .line 2757
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->tx_onlycount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->tx_onlycount:J

    .line 2762
    :goto_1
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->tx_onlycount:J

    const-wide/16 v4, 0x3c

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 2763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE_DATA] updateDataActivity: tx_onlycount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->tx_onlycount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2764
    iput-wide v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->tx_onlycount:J

    .line 2766
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getRouteList_debug:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    .line 2767
    sget-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->voice_call_ing:Z

    if-nez v1, :cond_2

    .line 2768
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 2773
    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    .end local v8    # "received":J
    .end local v10    # "sent":J
    :cond_2
    return-void

    .line 2738
    .restart local v8    # "received":J
    .restart local v10    # "sent":J
    :cond_3
    cmp-long v1, v10, v12

    if-lez v1, :cond_4

    cmp-long v1, v8, v12

    if-nez v1, :cond_4

    .line 2739
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    .restart local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    .line 2740
    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_4
    cmp-long v1, v10, v12

    if-nez v1, :cond_5

    cmp-long v1, v8, v12

    if-lez v1, :cond_5

    .line 2741
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    .restart local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    .line 2743
    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    sget-object v2, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    if-ne v1, v2, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .restart local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :goto_2
    goto :goto_0

    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_6
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    goto :goto_2

    .line 2759
    .restart local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_7
    iput-wide v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->tx_onlycount:J

    goto :goto_1
.end method
