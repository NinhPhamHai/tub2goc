.class public final Lokhttp3/RequestBody$Companion;
.super Ljava/lang/Object;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRequestBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestBody.kt\nokhttp3/RequestBody$Companion\n*L\n1#1,217:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lokhttp3/RequestBody$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lokhttp3/RequestBody$Companion;Lokhttp3/MediaType;[BIIILjava/lang/Object;)Lokhttp3/RequestBody;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 203
    array-length p4, p2

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lokhttp3/RequestBody$Companion;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 138
    array-length p4, p1

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lokhttp3/RequestBody$Companion;->create([BLokhttp3/MediaType;II)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;
    .locals 3

    const-string v0, "$this$toRequestBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-static {p2, v1, v0, v1}, Lokhttp3/MediaType;->charset$default(Lokhttp3/MediaType;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 107
    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; charset=utf-8"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    .line 112
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 113
    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lokhttp3/RequestBody$Companion;->create([BLokhttp3/MediaType;II)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 1

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, p2, p1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;
    .locals 1

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p2, p1}, Lokhttp3/RequestBody$Companion;->create(Lokio/ByteString;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;
    .locals 1

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, p2, p1, p3, p4}, Lokhttp3/RequestBody$Companion;->create([BLokhttp3/MediaType;II)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lokio/ByteString;Lokhttp3/MediaType;)Lokhttp3/RequestBody;
    .locals 1

    const-string v0, "$this$toRequestBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lokhttp3/RequestBody$Companion$toRequestBody$1;

    invoke-direct {v0, p1, p2}, Lokhttp3/RequestBody$Companion$toRequestBody$1;-><init>(Lokio/ByteString;Lokhttp3/MediaType;)V

    return-object v0
.end method

.method public final create([BLokhttp3/MediaType;II)Lokhttp3/RequestBody;
    .locals 7

    const-string v0, "$this$toRequestBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p3

    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 141
    new-instance v0, Lokhttp3/RequestBody$Companion$toRequestBody$2;

    invoke-direct {v0, p1, p2, p4, p3}, Lokhttp3/RequestBody$Companion$toRequestBody$2;-><init>([BLokhttp3/MediaType;II)V

    return-object v0
.end method
