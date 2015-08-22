.class public Landroid/mtp/LGMtpDatabase;
.super Ljava/lang/Object;
.source "LGMtpDatabase.java"


# static fields
.field static final ALL_PROPERTIES:[I

.field static final AUDIO_PROPERTIES:[I

.field private static final DATA_MIME_PROJECTION:[Ljava/lang/String;

.field private static final DEBUG:Z = false

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field static final FILE_PROPERTIES:[I

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "format=? AND parent=?"

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "LGMtpDatabase"

.field static final VIDEO_PROPERTIES:[I


# instance fields
.field private mBatteryLevel:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryScale:I

.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private final mMediaProvider:Landroid/content/IContentProvider;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:J

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/LGMtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/LGMtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mServer:Landroid/mtp/LGMtpServer;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/mtp/LGMtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 83
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/LGMtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 88
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/LGMtpDatabase;->DATA_MIME_PROJECTION:[Ljava/lang/String;

    .line 94
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/LGMtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 99
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "storage_id"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    const-string v1, "parent"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/LGMtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 131
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 638
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/LGMtpDatabase;->FILE_PROPERTIES:[I

    .line 655
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/LGMtpDatabase;->AUDIO_PROPERTIES:[I

    .line 687
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/LGMtpDatabase;->VIDEO_PROPERTIES:[I

    .line 720
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/LGMtpDatabase;->IMAGE_PROPERTIES:[I

    .line 750
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/LGMtpDatabase;->ALL_PROPERTIES:[I

    return-void

    .line 638
    nop

    :array_0
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdc08
    .end array-data

    .line 655
    :array_1
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc08
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde99
        0xde92
        0xde9a
        0xde94
        0xde93
    .end array-data

    .line 687
    :array_2
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc08
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
        0xdc87
        0xdc88
        0xdc47
    .end array-data

    .line 720
    :array_3
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc08
        0xdc48
        0xdc87
        0xdc88
        0xdc47
    .end array-data

    .line 750
    :array_4
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc08
        0xdc48
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
        0xdc48
        0xdc87
        0xdc88
        0xdc47
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "storagePath"    # Ljava/lang/String;
    .param p4, "subDirectories"    # [Ljava/lang/String;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 66
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 70
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 134
    new-instance v10, Landroid/mtp/LGMtpDatabase$1;

    invoke-direct {v10, p0}, Landroid/mtp/LGMtpDatabase$1;-><init>(Landroid/mtp/LGMtpDatabase;)V

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    invoke-direct {p0}, Landroid/mtp/LGMtpDatabase;->native_setup()V

    .line 161
    iput-object p1, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "media"

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    .line 164
    iput-object p2, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 165
    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 166
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 167
    invoke-direct {p0, p1}, Landroid/mtp/LGMtpDatabase;->getMediaScanner(Landroid/content/Context;)Landroid/media/MediaScanner;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 169
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 170
    if-eqz p4, :cond_2

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    move-object/from16 v0, p4

    array-length v2, v0

    .line 175
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 176
    const-string v10, "_data=? OR _data LIKE ?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    add-int/lit8 v10, v2, -0x1

    if-eq v4, v10, :cond_0

    .line 179
    const-string v10, " OR "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    :cond_1
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 186
    mul-int/lit8 v10, v2, 0x2

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 187
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "j":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 188
    aget-object v9, p4, v4

    .line 189
    .local v9, "path":Ljava/lang/String;
    iget-object v10, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aput-object v9, v10, v6

    .line 190
    iget-object v10, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 195
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v6    # "j":I
    .end local v9    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v8, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 196
    .local v8, "locale":Ljava/util/Locale;
    if-eqz v8, :cond_3

    .line 197
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "language":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "country":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 200
    if-eqz v3, :cond_4

    .line 201
    iget-object v10, p0, Landroid/mtp/LGMtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 207
    .end local v3    # "country":Ljava/lang/String;
    .end local v7    # "language":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Landroid/mtp/LGMtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 208
    return-void

    .line 203
    .restart local v3    # "country":Ljava/lang/String;
    .restart local v7    # "language":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Landroid/mtp/LGMtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v10, v7}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic access$002(Landroid/mtp/LGMtpDatabase;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/LGMtpDatabase;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Landroid/mtp/LGMtpDatabase;->mBatteryScale:I

    return p1
.end method

.method static synthetic access$100(Landroid/mtp/LGMtpDatabase;)I
    .locals 1
    .param p0, "x0"    # Landroid/mtp/LGMtpDatabase;

    .prologue
    .line 44
    iget v0, p0, Landroid/mtp/LGMtpDatabase;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$102(Landroid/mtp/LGMtpDatabase;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/LGMtpDatabase;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Landroid/mtp/LGMtpDatabase;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$200(Landroid/mtp/LGMtpDatabase;)Landroid/mtp/LGMtpServer;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/LGMtpDatabase;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mServer:Landroid/mtp/LGMtpServer;

    return-object v0
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I
    .param p5, "size"    # J
    .param p7, "modified"    # J

    .prologue
    .line 357
    invoke-direct {p0, p1}, Landroid/mtp/LGMtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 401
    :cond_0
    :goto_0
    return v0

    .line 360
    :cond_1
    if-eqz p1, :cond_6

    .line 361
    const/4 v8, 0x0

    .line 363
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/LGMtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 365
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 366
    const-string v0, "LGMtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file already exists in beginSendObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    const/4 v0, -0x1

    .line 372
    if-eqz v8, :cond_0

    .line 373
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 372
    :cond_2
    if-eqz v8, :cond_3

    .line 373
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_3
    :goto_1
    const/16 v0, 0x300b

    if-ne p2, v0, :cond_4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/16 v0, 0x300b

    if-ne p2, v0, :cond_6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".vob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 379
    :cond_5
    const/16 p2, 0x3000

    .line 383
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/LGMtpDatabase;->mDatabaseModified:Z

    .line 384
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v0, "format"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    const-string v0, "parent"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    const-string v0, "storage_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v0, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 390
    const-string v0, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 393
    :try_start_1
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2, v11}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 394
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_8

    .line 395
    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto/16 :goto_0

    .line 369
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 370
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "LGMtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    if-eqz v8, :cond_3

    .line 373
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 372
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_7

    .line 373
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 397
    .end local v8    # "c":Landroid/database/Cursor;
    .restart local v10    # "uri":Landroid/net/Uri;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_8
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 399
    .end local v10    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v9

    .line 400
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v0, "LGMtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 11
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 449
    if-ne p1, v0, :cond_6

    .line 451
    if-nez p2, :cond_3

    .line 453
    if-nez p3, :cond_1

    .line 455
    const/4 v4, 0x0

    .line 456
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x0

    .line 520
    .local v5, "whereArgs":[Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 521
    if-nez v4, :cond_c

    .line 522
    iget-object v4, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 523
    iget-object v5, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 541
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/LGMtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    move-object v7, v6

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 458
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_1
    if-ne p3, v0, :cond_2

    .line 460
    const/4 p3, 0x0

    .line 462
    :cond_2
    const-string v4, "parent=?"

    .line 463
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 467
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_4

    .line 469
    const-string v4, "format=?"

    .line 470
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 472
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_4
    if-ne p3, v0, :cond_5

    .line 474
    const/4 p3, 0x0

    .line 476
    :cond_5
    const-string v4, "format=? AND parent=?"

    .line 477
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 483
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_6
    if-nez p2, :cond_9

    .line 485
    if-nez p3, :cond_7

    .line 487
    const-string v4, "storage_id=?"

    .line 488
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 490
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_7
    if-ne p3, v0, :cond_8

    .line 492
    const/4 p3, 0x0

    .line 494
    :cond_8
    const-string v4, "storage_id=? AND parent=?"

    .line 495
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 500
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_9
    if-nez p3, :cond_a

    .line 502
    const-string v4, "storage_id=? AND format=?"

    .line 503
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 506
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_a
    if-ne p3, v0, :cond_b

    .line 508
    const/4 p3, 0x0

    .line 510
    :cond_b
    const-string v4, "storage_id=? AND format=? AND parent=?"

    .line 511
    .restart local v4    # "where":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_0

    .line 525
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 528
    array-length v0, v5

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v10, v0, [Ljava/lang/String;

    .line 531
    .local v10, "newWhereArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v5

    if-ge v8, v0, :cond_d

    .line 532
    aget-object v0, v5, v8

    aput-object v0, v10, v8

    .line 531
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 534
    :cond_d
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_e

    .line 535
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v0, v0, v9

    aput-object v0, v10, v8

    .line 534
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 537
    :cond_e
    move-object v5, v10

    goto/16 :goto_1
.end method

.method private deleteFile(I)I
    .locals 14
    .param p1, "handle"    # I

    .prologue
    .line 1117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/LGMtpDatabase;->mDatabaseModified:Z

    .line 1118
    const/4 v12, 0x0

    .line 1119
    .local v12, "path":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1121
    .local v10, "format":I
    const/4 v8, 0x0

    .line 1123
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/LGMtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1125
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1128
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1129
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 1134
    if-eqz v12, :cond_0

    if-nez v10, :cond_3

    .line 1135
    :cond_0
    const/16 v0, 0x2002

    .line 1172
    if-eqz v8, :cond_1

    .line 1173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v0

    .line 1131
    :cond_2
    const/16 v0, 0x2009

    .line 1172
    if-eqz v8, :cond_1

    .line 1173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1139
    :cond_3
    :try_start_1
    invoke-direct {p0, v12}, Landroid/mtp/LGMtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 1140
    const/16 v0, 0x200d

    .line 1172
    if-eqz v8, :cond_1

    .line 1173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1143
    :cond_4
    const/16 v0, 0x3001

    if-ne v10, v0, :cond_5

    .line 1145
    :try_start_2
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1146
    .local v13, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v2, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v13, v2, v3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1153
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_5
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v13

    .line 1154
    .restart local v13    # "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v13, v2, v3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    .line 1155
    const/16 v0, 0x3001

    if-eq v10, v0, :cond_6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/.nomedia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    .line 1158
    const/4 v0, 0x0

    :try_start_3
    const-string v1, "/"

    invoke-virtual {v12, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1159
    .local v11, "parentPath":Ljava/lang/String;
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v2, "unhide"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v11, v3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1164
    .end local v11    # "parentPath":Ljava/lang/String;
    :cond_6
    :goto_1
    const/16 v0, 0x2001

    .line 1172
    if-eqz v8, :cond_1

    .line 1173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1160
    :catch_0
    move-exception v9

    .line 1161
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v0, "LGMtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to unhide/rescan for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1168
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v13    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v9

    .line 1169
    .restart local v9    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v0, "LGMtpDatabase"

    const-string v1, "RemoteException in deleteFile"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1170
    const/16 v0, 0x2002

    .line 1172
    if-eqz v8, :cond_1

    .line 1173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1166
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_7
    const/16 v0, 0x2009

    .line 1172
    if-eqz v8, :cond_1

    .line 1173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1172
    .end local v13    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_8

    .line 1173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private doMoveObject(III)I
    .locals 24
    .param p1, "handle"    # I
    .param p2, "storageID"    # I
    .param p3, "parent"    # I

    .prologue
    .line 1237
    const/4 v15, 0x0

    .line 1238
    .local v15, "c":Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 1239
    .local v20, "path_handle":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 1240
    .local v6, "whereArgs":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 1243
    .local v16, "curMime":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/LGMtpDatabase;->DATA_MIME_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v15

    .line 1244
    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1245
    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1246
    const/4 v1, 0x2

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 1252
    :cond_0
    if-eqz v15, :cond_1

    .line 1253
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1257
    :cond_1
    if-nez v20, :cond_4

    .line 1258
    const/16 v1, 0x2009

    .line 1335
    :cond_2
    :goto_0
    return v1

    .line 1248
    :catch_0
    move-exception v18

    .line 1249
    .local v18, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "LGMtpDatabase"

    const-string v2, "RemoteException in getObjectFilePath"

    move-object/from16 v0, v18

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1250
    const/16 v1, 0x2002

    .line 1252
    if-eqz v15, :cond_2

    .line 1253
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1252
    .end local v18    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_3

    .line 1253
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 1261
    :cond_4
    const/16 v21, 0x0

    .line 1262
    .local v21, "path_parent":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v1

    .line 1264
    .local v12, "whereArgs_parent":[Ljava/lang/String;
    if-eqz p3, :cond_8

    .line 1266
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v10, Landroid/mtp/LGMtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v11, "_id=?"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v7 .. v14}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v15

    .line 1267
    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1268
    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v21

    .line 1274
    :cond_5
    if-eqz v15, :cond_6

    .line 1275
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1286
    :cond_6
    :goto_1
    if-nez v21, :cond_a

    .line 1287
    const/16 v1, 0x2009

    goto :goto_0

    .line 1270
    :catch_1
    move-exception v18

    .line 1271
    .restart local v18    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "LGMtpDatabase"

    const-string v2, "RemoteException in getObjectFilePath"

    move-object/from16 v0, v18

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1272
    const/16 v1, 0x2002

    .line 1274
    if-eqz v15, :cond_2

    .line 1275
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1274
    .end local v18    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    if-eqz v15, :cond_7

    .line 1275
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1

    .line 1279
    :cond_8
    const v1, 0x20001

    move/from16 v0, p2

    if-ne v0, v1, :cond_9

    .line 1280
    const-string v1, "EXTERNAL_ADD_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto :goto_1

    .line 1282
    :cond_9
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    goto :goto_1

    .line 1292
    :cond_a
    const/4 v1, 0x0

    const/16 v2, 0x13

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1293
    new-instance v19, Ljava/io/File;

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1294
    .local v19, "file":Ljava/io/File;
    new-instance v17, Ljava/io/File;

    const-string v1, "/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1295
    .local v17, "dir":Ljava/io/File;
    const-string v1, "LGMtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rename "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v22

    .line 1297
    .local v22, "success":Z
    if-nez v22, :cond_b

    .line 1298
    const-string v1, "LGMtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const/16 v1, 0x2002

    goto/16 :goto_0

    .line 1302
    :cond_b
    const-string v1, "LGMtpDatabase"

    const-string v2, "Success to move"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1304
    .local v4, "values":Landroid/content/ContentValues;
    const-string v1, "_data"

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    const-string v1, "parent"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1307
    if-eqz v16, :cond_c

    .line 1308
    const-string v1, "bucket_id"

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1309
    const-string v1, "bucket_display_name"

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_c
    const/16 v23, 0x0

    .line 1315
    .local v23, "updated":I
    if-eqz v16, :cond_d

    :try_start_4
    const-string v1, "image"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1316
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v23

    .line 1328
    :goto_2
    if-nez v23, :cond_10

    .line 1329
    const-string v1, "LGMtpDatabase"

    const-string v2, "Unable to update path "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const/16 v1, 0x2002

    goto/16 :goto_0

    .line 1317
    :cond_d
    if-eqz v16, :cond_e

    :try_start_5
    const-string v1, "video"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1318
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    goto :goto_2

    .line 1319
    :cond_e
    if-eqz v16, :cond_f

    const-string v1, "audio"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1320
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    goto :goto_2

    .line 1322
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v5, "_id=?"

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v23

    goto :goto_2

    .line 1325
    :catch_2
    move-exception v18

    .line 1326
    .restart local v18    # "e":Landroid/os/RemoteException;
    const-string v1, "LGMtpDatabase"

    const-string v2, "RemoteException in mMediaProvider.update"

    move-object/from16 v0, v18

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1332
    .end local v18    # "e":Landroid/os/RemoteException;
    :cond_10
    const/16 v1, 0x2001

    goto/16 :goto_0

    .line 1335
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v17    # "dir":Ljava/io/File;
    .end local v19    # "file":Ljava/io/File;
    .end local v22    # "success":Z
    .end local v23    # "updated":I
    :cond_11
    const/16 v1, 0x2005

    goto/16 :goto_0
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I
    .param p4, "succeeded"    # Z

    .prologue
    .line 410
    if-eqz p4, :cond_3

    .line 413
    const v4, 0xba05

    if-ne p3, v4, :cond_2

    .line 415
    move-object v2, p1

    .line 416
    .local v2, "name":Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 417
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 418
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 421
    :cond_0
    const-string v4, ".pla"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 425
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 426
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v4, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 430
    const-string v4, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 432
    :try_start_0
    iget-object v4, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v5, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v6, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v6, v3}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 434
    .restart local v1    # "lastSlash":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "LGMtpDatabase"

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 438
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v4, p0, Landroid/mtp/LGMtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    iget-object v5, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 441
    :cond_3
    invoke-direct {p0, p2}, Landroid/mtp/LGMtpDatabase;->deleteFile(I)I

    goto :goto_0
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 12
    .param p1, "property"    # I
    .param p2, "outIntValue"    # [J
    .param p3, "outStringValue"    # [C

    .prologue
    .line 973
    sparse-switch p1, :sswitch_data_0

    .line 1023
    const/16 v9, 0x200a

    :goto_0
    return v9

    .line 977
    :sswitch_0
    iget-object v9, p0, Landroid/mtp/LGMtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 978
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 979
    .local v4, "length":I
    const/16 v9, 0xff

    if-le v4, v9, :cond_0

    .line 980
    const/16 v4, 0xff

    .line 982
    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v4, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 983
    const/4 v9, 0x0

    aput-char v9, p3, v4

    .line 984
    const/16 v9, 0x2001

    goto :goto_0

    .line 986
    .end local v4    # "length":I
    .end local v7    # "value":Ljava/lang/String;
    :sswitch_1
    const-string v0, "My LG Mobile"

    .line 987
    .local v0, "DEFAULT_DEVICE_NAME":Ljava/lang/String;
    const/4 v5, 0x0

    .line 988
    .local v5, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 989
    iget-object v9, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lg_device_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 994
    :goto_1
    if-nez v5, :cond_1

    .line 995
    const-string v5, "My LG Mobile"

    .line 998
    :cond_1
    const-string v9, "ro.build.target_operator"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "VZW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 999
    iget-object v9, p0, Landroid/mtp/LGMtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1002
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 1003
    .local v6, "name_length":I
    const/16 v9, 0xff

    if-le v6, v9, :cond_3

    .line 1004
    const/16 v6, 0xff

    .line 1007
    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v6, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 1008
    const/4 v9, 0x0

    aput-char v9, p3, v6

    .line 1009
    const/16 v9, 0x2001

    goto :goto_0

    .line 991
    .end local v6    # "name_length":I
    :cond_4
    iget-object v9, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lg_device_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1013
    .end local v0    # "DEFAULT_DEVICE_NAME":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :sswitch_2
    iget-object v9, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1015
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v8

    .line 1016
    .local v8, "width":I
    invoke-virtual {v1}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v2

    .line 1017
    .local v2, "height":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1018
    .local v3, "imageSize":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v3, v9, v10, p3, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 1019
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    aput-char v10, p3, v9

    .line 1020
    const/16 v9, 0x2001

    goto/16 :goto_0

    .line 973
    nop

    :sswitch_data_0
    .sparse-switch
        0x5003 -> :sswitch_2
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_1
    .end sparse-switch
.end method

.method private getMediaScanner(Landroid/content/Context;)Landroid/media/MediaScanner;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    :try_start_0
    const-string v1, "com.lge.media.MediaScannerEx"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaScanner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-object v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LGMtpDatabase"

    const-string v2, "Error while loading MediaScannerEx."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    new-instance v1, Landroid/media/MediaScanner;

    invoke-direct {v1, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getNumObjects(III)I
    .locals 4
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 574
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/LGMtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_1

    .line 576
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 581
    if-eqz v0, :cond_0

    .line 582
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 585
    :cond_0
    :goto_0
    return v2

    .line 581
    :cond_1
    if-eqz v0, :cond_2

    .line 582
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 585
    :cond_2
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 578
    :catch_0
    move-exception v1

    .line 579
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "LGMtpDatabase"

    const-string v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    if-eqz v0, :cond_2

    .line 582
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 581
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 582
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getObjectFilePath(I[C[J)I
    .locals 12
    .param p1, "handle"    # I
    .param p2, "outFilePath"    # [C
    .param p3, "outFileLengthFormat"    # [J

    .prologue
    const/16 v11, 0x2001

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1082
    if-nez p1, :cond_1

    .line 1084
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1085
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput-char v2, p2, v0

    .line 1086
    const-wide/16 v0, 0x0

    aput-wide v0, p3, v2

    .line 1087
    const-wide/16 v0, 0x3001

    aput-wide v0, p3, v3

    move v0, v11

    .line 1111
    :cond_0
    :goto_0
    return v0

    .line 1090
    :cond_1
    const/4 v8, 0x0

    .line 1092
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/LGMtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1094
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1095
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1096
    .local v10, "path":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1097
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, p2, v0

    .line 1100
    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    aput-wide v2, p3, v0

    .line 1101
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p3, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    if-eqz v8, :cond_2

    .line 1111
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v11

    goto :goto_0

    .line 1104
    .end local v10    # "path":Ljava/lang/String;
    :cond_3
    const/16 v0, 0x2009

    .line 1110
    if-eqz v8, :cond_0

    .line 1111
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1106
    :catch_0
    move-exception v9

    .line 1107
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "LGMtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1108
    const/16 v0, 0x2002

    .line 1110
    if-eqz v8, :cond_0

    .line 1111
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1110
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 1111
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 16
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outCreatedModified"    # [J

    .prologue
    .line 1043
    const/4 v10, 0x0

    .line 1045
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v5, Landroid/mtp/LGMtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 1047
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1048
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, p2, v2

    .line 1049
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, p2, v2

    .line 1050
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, p2, v2

    .line 1053
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1054
    .local v14, "path":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 1055
    .local v13, "lastSlash":I
    if-ltz v13, :cond_3

    add-int/lit8 v15, v13, 0x1

    .line 1056
    .local v15, "start":I
    :goto_0
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    .line 1057
    .local v12, "end":I
    sub-int v2, v12, v15

    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    .line 1058
    add-int/lit16 v12, v15, 0xff

    .line 1060
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v14, v15, v12, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1061
    sub-int v2, v12, v15

    const/4 v3, 0x0

    aput-char v3, p3, v2

    .line 1063
    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, p4, v2

    .line 1064
    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, p4, v2

    .line 1066
    const/4 v2, 0x0

    aget-wide v2, p4, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1067
    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-wide v4, p4, v3

    aput-wide v4, p4, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    :cond_1
    const/4 v2, 0x1

    .line 1074
    if-eqz v10, :cond_2

    .line 1075
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1078
    .end local v12    # "end":I
    .end local v13    # "lastSlash":I
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "start":I
    :cond_2
    :goto_1
    return v2

    .line 1055
    .restart local v13    # "lastSlash":I
    .restart local v14    # "path":Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 1074
    .end local v13    # "lastSlash":I
    .end local v14    # "path":Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_5

    .line 1075
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1078
    :cond_5
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1071
    :catch_0
    move-exception v11

    .line 1072
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "LGMtpDatabase"

    const-string v3, "RemoteException in getObjectInfo"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1074
    if-eqz v10, :cond_5

    .line 1075
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1074
    .end local v11    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_6

    .line 1075
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method private getObjectList(III)[I
    .locals 8
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .prologue
    const/4 v5, 0x0

    .line 546
    const/4 v0, 0x0

    .line 548
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/LGMtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 549
    if-nez v0, :cond_2

    .line 564
    if-eqz v0, :cond_0

    .line 565
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v4, v5

    .line 568
    :cond_1
    :goto_0
    return-object v4

    .line 552
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 553
    .local v1, "count":I
    if-lez v1, :cond_4

    .line 554
    new-array v4, v1, [I

    .line 555
    .local v4, "result":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 556
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 557
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v4, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 564
    :cond_3
    if-eqz v0, :cond_1

    .line 565
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 564
    .end local v3    # "i":I
    .end local v4    # "result":[I
    :cond_4
    if-eqz v0, :cond_5

    .line 565
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v1    # "count":I
    :cond_5
    :goto_2
    move-object v4, v5

    .line 568
    goto :goto_0

    .line 561
    :catch_0
    move-exception v2

    .line 562
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "LGMtpDatabase"

    const-string v7, "RemoteException in getObjectList"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 564
    if-eqz v0, :cond_5

    .line 565
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 564
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_6

    .line 565
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5
.end method

.method private getObjectPropertyList(JIJII)Landroid/mtp/MtpPropertyList;
    .locals 8
    .param p1, "handle"    # J
    .param p3, "format"    # I
    .param p4, "property"    # J
    .param p6, "groupCode"    # I
    .param p7, "depth"    # I

    .prologue
    const/4 v4, 0x0

    .line 841
    if-eqz p6, :cond_0

    .line 842
    new-instance v1, Landroid/mtp/MtpPropertyList;

    const v2, 0xa807

    invoke-direct {v1, v4, v2}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 865
    :goto_0
    return-object v1

    .line 846
    :cond_0
    const-wide v2, 0xffffffffL

    cmp-long v1, p4, v2

    if-nez v1, :cond_2

    .line 847
    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/LGMtpPropertyGroup;

    .line 848
    .local v0, "propertyGroup":Landroid/mtp/LGMtpPropertyGroup;
    if-nez v0, :cond_1

    .line 849
    invoke-direct {p0, p3}, Landroid/mtp/LGMtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v5

    .line 850
    .local v5, "propertyList":[I
    new-instance v0, Landroid/mtp/LGMtpPropertyGroup;

    .end local v0    # "propertyGroup":Landroid/mtp/LGMtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/LGMtpPropertyGroup;-><init>(Landroid/mtp/LGMtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 852
    .restart local v0    # "propertyGroup":Landroid/mtp/LGMtpPropertyGroup;
    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .end local v5    # "propertyList":[I
    :cond_1
    :goto_1
    long-to-int v1, p1

    invoke-virtual {v0, v1, p3, p7}, Landroid/mtp/LGMtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v1

    goto :goto_0

    .line 855
    .end local v0    # "propertyGroup":Landroid/mtp/LGMtpPropertyGroup;
    :cond_2
    new-instance v6, Ljava/lang/Integer;

    long-to-int v1, p4

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 856
    .local v6, "propertyValue":Ljava/lang/Integer;
    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/LGMtpPropertyGroup;

    .line 857
    .restart local v0    # "propertyGroup":Landroid/mtp/LGMtpPropertyGroup;
    if-nez v0, :cond_1

    .line 858
    const/4 v1, 0x1

    new-array v5, v1, [I

    long-to-int v1, p4

    aput v1, v5, v4

    .line 859
    .restart local v5    # "propertyList":[I
    new-instance v0, Landroid/mtp/LGMtpPropertyGroup;

    .end local v0    # "propertyGroup":Landroid/mtp/LGMtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/LGMtpPropertyGroup;-><init>(Landroid/mtp/LGMtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 861
    .restart local v0    # "propertyGroup":Landroid/mtp/LGMtpPropertyGroup;
    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private getObjectReferences(I)[I
    .locals 14
    .param p1, "handle"    # I

    .prologue
    const/4 v13, 0x0

    .line 1179
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 1180
    .local v2, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1182
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v3, Landroid/mtp/LGMtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1183
    if-nez v8, :cond_2

    .line 1198
    if-eqz v8, :cond_0

    .line 1199
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v12, v13

    .line 1202
    :cond_1
    :goto_0
    return-object v12

    .line 1186
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1187
    .local v9, "count":I
    if-lez v9, :cond_4

    .line 1188
    new-array v12, v9, [I

    .line 1189
    .local v12, "result":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v9, :cond_3

    .line 1190
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1191
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v12, v11
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1189
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1198
    :cond_3
    if-eqz v8, :cond_1

    .line 1199
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1198
    .end local v11    # "i":I
    .end local v12    # "result":[I
    :cond_4
    if-eqz v8, :cond_5

    .line 1199
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9    # "count":I
    :cond_5
    :goto_2
    move-object v12, v13

    .line 1202
    goto :goto_0

    .line 1195
    :catch_0
    move-exception v10

    .line 1196
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "LGMtpDatabase"

    const-string v1, "RemoteException in getObjectList"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1198
    if-eqz v8, :cond_5

    .line 1199
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1198
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 1199
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xd401
        0xd402
        0x5003
        0x5001
    .end array-data
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 800
    sparse-switch p1, :sswitch_data_0

    .line 824
    sget-object v0, Landroid/mtp/LGMtpDatabase;->FILE_PROPERTIES:[I

    :goto_0
    return-object v0

    .line 806
    :sswitch_0
    sget-object v0, Landroid/mtp/LGMtpDatabase;->AUDIO_PROPERTIES:[I

    goto :goto_0

    .line 815
    :sswitch_1
    sget-object v0, Landroid/mtp/LGMtpDatabase;->VIDEO_PROPERTIES:[I

    goto :goto_0

    .line 820
    :sswitch_2
    sget-object v0, Landroid/mtp/LGMtpDatabase;->IMAGE_PROPERTIES:[I

    goto :goto_0

    .line 822
    :sswitch_3
    sget-object v0, Landroid/mtp/LGMtpDatabase;->ALL_PROPERTIES:[I

    goto :goto_0

    .line 800
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x3008 -> :sswitch_0
        0x3009 -> :sswitch_0
        0x300a -> :sswitch_1
        0x300b -> :sswitch_1
        0x300c -> :sswitch_1
        0x3801 -> :sswitch_2
        0x3804 -> :sswitch_2
        0x3807 -> :sswitch_2
        0x380b -> :sswitch_2
        0xb901 -> :sswitch_0
        0xb902 -> :sswitch_0
        0xb903 -> :sswitch_0
        0xb982 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    .prologue
    .line 589
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3000
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x300b
        0x3801
        0x3804
        0x3807
        0x380b
        0xb901
        0xb902
        0xb903
        0xb982
        0xb984
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0x300a
        0x300c
        0xba83
        0xba85
        0xba86
    .end array-data
.end method

.method private getThumbnailData(I[B[I)I
    .locals 18
    .param p1, "handle"    # I
    .param p2, "outData"    # [B
    .param p3, "length"    # [I

    .prologue
    .line 1343
    const/4 v10, 0x0

    .line 1345
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/LGMtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 1348
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1349
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1350
    .local v17, "path":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1352
    .local v14, "format":I
    const/4 v15, 0x0

    .line 1353
    .local v15, "getData":Z
    const/4 v9, 0x0

    .line 1354
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 1356
    .local v11, "data":[B
    const/16 v1, 0x3801

    if-eq v14, v1, :cond_0

    const/16 v1, 0x380b

    if-eq v14, v1, :cond_0

    const/16 v1, 0x3804

    if-eq v14, v1, :cond_0

    const/16 v1, 0x3807

    if-ne v14, v1, :cond_3

    .line 1361
    :cond_0
    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1366
    :goto_0
    if-eqz v9, :cond_1

    .line 1367
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1368
    .local v16, "miniOutStream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    move-object/from16 v0, v16

    invoke-virtual {v9, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1369
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1371
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1372
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 1373
    const/4 v15, 0x1

    .line 1379
    .end local v16    # "miniOutStream":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_1
    const/4 v1, 0x1

    if-ne v15, v1, :cond_4

    .line 1380
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_2
    array-length v3, v11

    move-object/from16 v0, p2

    invoke-static {v11, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1381
    const/4 v1, 0x0

    array-length v2, v11

    aput v2, p3, v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1383
    const/16 v1, 0x2001

    .line 1394
    if-eqz v10, :cond_2

    .line 1395
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "data":[B
    .end local v14    # "format":I
    .end local v15    # "getData":Z
    .end local v17    # "path":Ljava/lang/String;
    :cond_2
    :goto_2
    return v1

    .line 1363
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "data":[B
    .restart local v14    # "format":I
    .restart local v15    # "getData":Z
    .restart local v17    # "path":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x3

    :try_start_3
    move-object/from16 v0, v17

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_0

    .line 1374
    .restart local v16    # "miniOutStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v13

    .line 1375
    .local v13, "ex":Ljava/io/IOException;
    const-string v1, "LGMtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception ex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1390
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "data":[B
    .end local v13    # "ex":Ljava/io/IOException;
    .end local v14    # "format":I
    .end local v15    # "getData":Z
    .end local v16    # "miniOutStream":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "path":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 1391
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v1, "LGMtpDatabase"

    const-string v2, "RemoteException in getThumbnailData"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1392
    const/16 v1, 0x2002

    .line 1394
    if-eqz v10, :cond_2

    .line 1395
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1385
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "data":[B
    .restart local v14    # "format":I
    .restart local v15    # "getData":Z
    .restart local v17    # "path":Ljava/lang/String;
    :cond_4
    const/16 v1, 0x2009

    .line 1394
    if-eqz v10, :cond_2

    .line 1395
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1388
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "data":[B
    .end local v14    # "format":I
    .end local v15    # "getData":Z
    .end local v17    # "path":Ljava/lang/String;
    :cond_5
    const/16 v1, 0x2009

    .line 1394
    if-eqz v10, :cond_2

    .line 1395
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1394
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_6

    .line 1395
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v5, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 318
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 320
    :cond_2
    const/4 v0, 0x0

    .line 321
    .local v0, "allowed":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 322
    .local v2, "pathLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    if-nez v0, :cond_0

    .line 323
    iget-object v5, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 324
    .local v3, "subdir":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 325
    .local v4, "subdirLength":I
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 328
    const/4 v0, 0x1

    .line 322
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 276
    const-string v10, "device-properties"

    .line 277
    .local v10, "devicePropertiesName":Ljava/lang/String;
    const-string v1, "device-properties"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/LGMtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 278
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 280
    .local v9, "databaseFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 286
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "device-properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_4

    .line 288
    const-string v1, "properties"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 290
    if-eqz v8, :cond_4

    .line 291
    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 292
    .local v11, "e":Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 294
    .local v12, "name":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 295
    .local v13, "value":Ljava/lang/String;
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 300
    .end local v11    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 301
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "LGMtpDatabase"

    const-string v2, "failed to migrate device properties"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 306
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 308
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_2
    return-void

    .line 297
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "c":Landroid/database/Cursor;
    .local v11, "e":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :try_start_2
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    .end local v11    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_5
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 303
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v1
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v1

    .line 342
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 343
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    const/4 v1, 0x1

    goto :goto_0

    .line 342
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 18
    .param p1, "handle"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 869
    const/4 v9, 0x0

    .line 872
    .local v9, "c":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 873
    .local v15, "path":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 875
    .local v6, "whereArgs":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/LGMtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 877
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 884
    :cond_0
    if-eqz v9, :cond_1

    .line 885
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 888
    :cond_1
    if-nez v15, :cond_4

    .line 889
    const/16 v1, 0x2009

    .line 958
    :cond_2
    :goto_0
    return v1

    .line 880
    :catch_0
    move-exception v10

    .line 881
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "LGMtpDatabase"

    const-string v2, "RemoteException in getObjectFilePath"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    const/16 v1, 0x2002

    .line 884
    if-eqz v9, :cond_2

    .line 885
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 884
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 885
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 893
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/mtp/LGMtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 894
    const/16 v1, 0x200d

    goto :goto_0

    .line 898
    :cond_5
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 899
    .local v14, "oldFile":Ljava/io/File;
    const/16 v1, 0x2f

    invoke-virtual {v15, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 900
    .local v11, "lastSlash":I
    const/4 v1, 0x1

    if-gt v11, v1, :cond_6

    .line 901
    const/16 v1, 0x2002

    goto :goto_0

    .line 903
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 904
    .local v13, "newPath":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-lt v1, v2, :cond_7

    .line 905
    const/4 v1, 0x0

    const/16 v2, 0xfe

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 907
    :cond_7
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 908
    .local v12, "newFile":Ljava/io/File;
    invoke-virtual {v14, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v16

    .line 909
    .local v16, "success":Z
    if-nez v16, :cond_8

    .line 910
    const-string v1, "LGMtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/16 v1, 0x2002

    goto/16 :goto_0

    .line 915
    :cond_8
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 916
    .local v4, "values":Landroid/content/ContentValues;
    const-string v1, "_data"

    invoke-virtual {v4, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v1, "_display_name"

    move-object/from16 v0, p2

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const/16 v17, 0x0

    .line 924
    .local v17, "updated":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v5, "_id=?"

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v17

    .line 928
    :goto_1
    if-nez v17, :cond_9

    .line 929
    const-string v1, "LGMtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-virtual {v12, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 932
    const/16 v1, 0x2002

    goto/16 :goto_0

    .line 925
    :catch_1
    move-exception v10

    .line 926
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v1, "LGMtpDatabase"

    const-string v2, "RemoteException in mMediaProvider.update"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 936
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_9
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 938
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "."

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 941
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v3, "unhide"

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v13, v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 958
    :cond_a
    :goto_2
    const/16 v1, 0x2001

    goto/16 :goto_0

    .line 942
    :catch_2
    move-exception v10

    .line 943
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v1, "LGMtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 948
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_b
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 951
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v3, "unhide"

    invoke-virtual {v14}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v1, v2, v3, v5, v7}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 952
    :catch_3
    move-exception v10

    .line 953
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v1, "LGMtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private sessionEnded()V
    .locals 3

    .prologue
    .line 1230
    iget-boolean v0, p0, Landroid/mtp/LGMtpDatabase;->mDatabaseModified:Z

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1232
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/LGMtpDatabase;->mDatabaseModified:Z

    .line 1234
    :cond_0
    return-void
.end method

.method private sessionStarted()V
    .locals 1

    .prologue
    .line 1226
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/LGMtpDatabase;->mDatabaseModified:Z

    .line 1227
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 2
    .param p1, "property"    # I
    .param p2, "intValue"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 1028
    packed-switch p1, :pswitch_data_0

    .line 1038
    const/16 v1, 0x200a

    :goto_0
    return v1

    .line 1032
    :pswitch_0
    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1033
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1034
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2001

    goto :goto_0

    :cond_0
    const/16 v1, 0x2002

    goto :goto_0

    .line 1028
    nop

    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 1
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "intValue"    # J
    .param p5, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 963
    packed-switch p2, :pswitch_data_0

    .line 968
    const v0, 0xa80a

    :goto_0
    return v0

    .line 965
    :pswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/LGMtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 963
    :pswitch_data_0
    .packed-switch 0xdc07
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .locals 10
    .param p1, "handle"    # I
    .param p2, "references"    # [I

    .prologue
    .line 1206
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/mtp/LGMtpDatabase;->mDatabaseModified:Z

    .line 1207
    iget-object v6, p0, Landroid/mtp/LGMtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v8, p1

    invoke-static {v6, v8, v9}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 1208
    .local v3, "uri":Landroid/net/Uri;
    array-length v0, p2

    .line 1209
    .local v0, "count":I
    new-array v5, v0, [Landroid/content/ContentValues;

    .line 1210
    .local v5, "valuesList":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1211
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1212
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "_id"

    aget v7, p2, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1213
    aput-object v4, v5, v2

    .line 1210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1216
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/mtp/LGMtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v7, p0, Landroid/mtp/LGMtpDatabase;->mPackageName:Ljava/lang/String;

    invoke-interface {v6, v7, v3, v5}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_1

    .line 1217
    const/16 v6, 0x2001

    .line 1222
    :goto_1
    return v6

    .line 1219
    :catch_0
    move-exception v1

    .line 1220
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "LGMtpDatabase"

    const-string v7, "RemoteException in setObjectReferences"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1222
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/16 v6, 0x2002

    goto :goto_1
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 261
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void
.end method

.method public callFinalize()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Landroid/mtp/LGMtpDatabase;->native_finalize()V

    .line 229
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 253
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 255
    return-void
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 268
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void
.end method

.method public setServer(Landroid/mtp/LGMtpServer;)V
    .locals 4
    .param p1, "server"    # Landroid/mtp/LGMtpServer;

    .prologue
    .line 211
    iput-object p1, p0, Landroid/mtp/LGMtpDatabase;->mServer:Landroid/mtp/LGMtpServer;

    .line 215
    :try_start_0
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Landroid/mtp/LGMtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/LGMtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    :cond_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    goto :goto_0
.end method
