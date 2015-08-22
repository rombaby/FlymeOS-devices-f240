.class public Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;
.super Ljava/lang/Object;
.source "PhoneInterfaceManagerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneInterfaceManagerProxy"

.field private static isEmergencyAttachSupportedOnLteMethod:Ljava/lang/reflect/Method;

.field private static isEmergencyCallSupportedOnLteMethod:Ljava/lang/reflect/Method;

.field private static isVoiceCallSupprotedOnLteMethod:Ljava/lang/reflect/Method;

.field private static sIsEmergencyAttachSupportedOnLteMethod:Ljava/lang/reflect/Method;

.field private static setLTEDataRoamingEnableMethod:Ljava/lang/reflect/Method;


# instance fields
.field private telephonyService:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 30
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Boolean;

    aput-object v4, v1, v3

    .line 33
    .local v1, "setLTEDataRoamingEnableParamType":[Ljava/lang/Class;
    :try_start_0
    const-class v3, Lcom/android/internal/telephony/ITelephony;

    const-string v4, "setLTEDataRoamingEnable"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->setLTEDataRoamingEnableMethod:Ljava/lang/reflect/Method;

    .line 35
    const-class v4, Lcom/android/internal/telephony/ITelephony;

    const-string v5, "isVoiceCallSupprotedOnLte"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isVoiceCallSupprotedOnLteMethod:Ljava/lang/reflect/Method;

    .line 37
    const-class v4, Lcom/android/internal/telephony/ITelephony;

    const-string v5, "isEmergencyCallSupportedOnLte"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isEmergencyCallSupportedOnLteMethod:Ljava/lang/reflect/Method;

    .line 39
    const-class v4, Lcom/android/internal/telephony/ITelephony;

    const-string v5, "isEmergencyAttachSupportedOnLte"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isEmergencyAttachSupportedOnLteMethod:Ljava/lang/reflect/Method;

    .line 41
    const-class v4, Lcom/android/internal/telephony/ITelephony;

    const-string v5, "isEmergencyCallBarringOnLte"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->sIsEmergencyAttachSupportedOnLteMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "PhoneInterfaceManagerProxy"

    const-string v4, "No Such Method Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 47
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "PhoneInterfaceManagerProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Throwable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    .line 54
    iget-object v0, p0, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    .line 55
    const-string v0, "PhoneInterfaceManagerProxy"

    const-string v1, "Unable to connect to network management service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public isEmergencyAttachSupportedOnLte()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 150
    sget-object v1, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isEmergencyAttachSupportedOnLteMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 153
    :try_start_0
    sget-object v2, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isEmergencyAttachSupportedOnLteMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 165
    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 165
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 156
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 158
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 163
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public isEmergencyCallBarringOnLte()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 178
    sget-object v1, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isEmergencyCallSupportedOnLteMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 181
    :try_start_0
    sget-object v2, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->sIsEmergencyAttachSupportedOnLteMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 193
    :goto_0
    return v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 193
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 186
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 191
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public isEmergencyCallSupportedOnLte()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 123
    sget-object v1, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isEmergencyCallSupportedOnLteMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 126
    :try_start_0
    sget-object v2, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isEmergencyCallSupportedOnLteMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 138
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 129
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 131
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 136
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public isVoiceCallSupprotedOnLte()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 96
    sget-object v1, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isVoiceCallSupprotedOnLteMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 99
    :try_start_0
    sget-object v2, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->isVoiceCallSupprotedOnLteMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 111
    :goto_0
    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 111
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 104
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 109
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public setLTEDataRoamingEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 70
    sget-object v2, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->setLTEDataRoamingEnableMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 71
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 74
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->setLTEDataRoamingEnableMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/lge/internal/telephony/PhoneInterfaceManagerProxy;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 85
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method
