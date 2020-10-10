.class public Lcom/umeng/analytics/pro/b;
.super Ljava/lang/Object;
.source "UContent.java"


# static fields
.field public static final ar:[Ljava/lang/String;

.field public static final as:[Ljava/lang/String;

.field public static final at:[Ljava/lang/String;

.field public static final au:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    const-string v0, "_$!deep_link"

    const-string v1, "_$!link"

    .line 121
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/b;->ar:[Ljava/lang/String;

    const-string v0, "id"

    const-string v1, "ts"

    const-string v2, "du"

    const-string v3, "$st_fl"

    .line 123
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/b;->as:[Ljava/lang/String;

    const-string v1, "_$!ts"

    const-string v2, "_$!id"

    const-string v3, "_$!du"

    const-string v4, "_$!c"

    const-string v5, "$st_fl"

    const-string v6, "_$!sp"

    const-string v7, "event_name"

    const-string v8, "token"

    const-string v9, "time"

    const-string v10, "ip"

    const-string v11, "country"

    const-string v12, "region"

    const-string v13, "city"

    const-string v14, "browser"

    const-string v15, "os"

    const-string v16, "device_brand"

    const-string v17, "device_version"

    const-string v18, "device_type"

    const-string v19, "screen_width"

    const-string v20, "screen_height"

    const-string v21, "referrer"

    const-string v22, "referrer_domain"

    const-string v23, "initial_referrer"

    const-string v24, "initial_referrer_domain"

    const-string v25, "initial_view_time"

    const-string v26, "search_engine"

    const-string v27, "keyword"

    const-string v28, "ali_lib"

    const-string v29, "utm_source"

    const-string v30, "utm_medium"

    const-string v31, "utm_term"

    const-string v32, "utm_content"

    const-string v33, "utm_campaign"

    const-string v34, "date"

    const-string v35, "hour"

    const-string v36, "minute"

    const-string v37, "app_version"

    const-string v38, "sp"

    .line 124
    filled-new-array/range {v1 .. v38}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/b;->at:[Ljava/lang/String;

    const-string v1, "_$!s_b"

    const-string v2, "_$!sp"

    const-string v3, "_$!ts_b"

    const-string v4, "_$!s_e"

    const-string v5, "_$!ts_e"

    const-string v6, "_$!pv_b"

    const-string v7, "_$!ts"

    .line 132
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/b;->au:[Ljava/lang/String;

    return-void
.end method
