.class Lcom/android/server/DeviceManager3LMService$RulesEngine;
.super Ljava/lang/Object;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RulesEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;
    }
.end annotation


# instance fields
.field private mRulesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .locals 1

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    .line 1447
    return-void
.end method


# virtual methods
.method public addPolicy(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1488
    .local p1, "regexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    .line 1490
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1491
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v5, p0, v2, v3}, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;-><init>(Lcom/android/server/DeviceManager3LMService$RulesEngine;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1493
    .end local v1    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public checkPolicy(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 1516
    move v3, p2

    .line 1517
    .local v3, "returnCode":Z
    const/4 v2, 0x0

    .line 1519
    .local v2, "longestRegexStrMatch":I
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    .line 1534
    :goto_0
    return v5

    .line 1521
    :cond_0
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;

    .line 1522
    .local v4, "rule":Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;
    # getter for: Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mRegexStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->access$300(Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 1523
    .local v0, "currentRegexStrLength":I
    if-le v0, v2, :cond_1

    .line 1524
    # getter for: Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mRegex:Ljava/util/regex/Pattern;
    invoke-static {v4}, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->access$500(Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1525
    # getter for: Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mPermitted:Z
    invoke-static {v4}, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->access$400(Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;)Z

    move-result v3

    .line 1526
    move v2, v0

    goto :goto_1

    .end local v0    # "currentRegexStrLength":I
    .end local v4    # "rule":Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;
    :cond_2
    move v5, v3

    .line 1534
    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadPolicy(Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1502
    .local p1, "regexPermMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    .line 1504
    move-object v2, p1

    .line 1505
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1507
    .local v3, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v6, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {v7, p0, v4, v5}, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;-><init>(Lcom/android/server/DeviceManager3LMService$RulesEngine;Ljava/lang/String;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1508
    :catch_0
    move-exception v0

    .line 1509
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    const-string v5, "DeviceManager3LM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid regex pattern: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1512
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    .end local v3    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public updatePolicy(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "permitted"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1461
    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 1462
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    .line 1466
    :cond_0
    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;

    .line 1467
    .local v2, "rule":Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;
    # getter for: Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mRegexStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->access$300(Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1468
    # setter for: Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mPermitted:Z
    invoke-static {v2, p2}, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->access$402(Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;Z)Z

    .line 1479
    .end local v2    # "rule":Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;
    :goto_0
    return v3

    .line 1474
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;-><init>(Lcom/android/server/DeviceManager3LMService$RulesEngine;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1475
    :catch_0
    move-exception v0

    .line 1476
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "DeviceManager3LM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing regex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const/4 v3, 0x0

    goto :goto_0
.end method
