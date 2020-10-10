.class final enum Lcom/grack/nanojson/JsonParser$Token;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grack/nanojson/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/grack/nanojson/JsonParser$Token;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grack/nanojson/JsonParser$Token;

.field public static final enum ARRAY_END:Lcom/grack/nanojson/JsonParser$Token;

.field public static final enum ARRAY_START:Lcom/grack/nanojson/JsonParser$Token;

.field public static final enum COLON:Lcom/grack/nanojson/JsonParser$Token;

.field public static final enum COMMA:Lcom/grack/nanojson/JsonParser$Token;

.field public static final enum EOF:Lcom/grack/nanojson/JsonParser$Token;

.field public static final enum FALSE:Lcom/grack/nanojson/JsonParser$Token;

.field public static final enum NULL:Lcom/grack/nanojson/JsonParser$Token;

.field public static final enum NUMBER:Lcom/grack/nanojson/JsonParser$Token;

.field public static final enum OBJECT_END:Lcom/grack/nanojson/JsonParser$Token;

.field public static final enum OBJECT_START:Lcom/grack/nanojson/JsonParser$Token;

.field public static final enum STRING:Lcom/grack/nanojson/JsonParser$Token;

.field public static final enum TRUE:Lcom/grack/nanojson/JsonParser$Token;


# instance fields
.field public isValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/grack/nanojson/JsonParser$Token;

    const/4 v1, 0x0

    const-string v2, "EOF"

    invoke-direct {v0, v2, v1, v1}, Lcom/grack/nanojson/JsonParser$Token;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/grack/nanojson/JsonParser$Token;->EOF:Lcom/grack/nanojson/JsonParser$Token;

    new-instance v0, Lcom/grack/nanojson/JsonParser$Token;

    const/4 v2, 0x1

    const-string v3, "NULL"

    invoke-direct {v0, v3, v2, v2}, Lcom/grack/nanojson/JsonParser$Token;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/grack/nanojson/JsonParser$Token;->NULL:Lcom/grack/nanojson/JsonParser$Token;

    new-instance v0, Lcom/grack/nanojson/JsonParser$Token;

    const/4 v3, 0x2

    const-string v4, "TRUE"

    invoke-direct {v0, v4, v3, v2}, Lcom/grack/nanojson/JsonParser$Token;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/grack/nanojson/JsonParser$Token;->TRUE:Lcom/grack/nanojson/JsonParser$Token;

    new-instance v0, Lcom/grack/nanojson/JsonParser$Token;

    const/4 v4, 0x3

    const-string v5, "FALSE"

    invoke-direct {v0, v5, v4, v2}, Lcom/grack/nanojson/JsonParser$Token;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/grack/nanojson/JsonParser$Token;->FALSE:Lcom/grack/nanojson/JsonParser$Token;

    new-instance v0, Lcom/grack/nanojson/JsonParser$Token;

    const/4 v5, 0x4

    const-string v6, "STRING"

    invoke-direct {v0, v6, v5, v2}, Lcom/grack/nanojson/JsonParser$Token;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/grack/nanojson/JsonParser$Token;->STRING:Lcom/grack/nanojson/JsonParser$Token;

    new-instance v0, Lcom/grack/nanojson/JsonParser$Token;

    const/4 v6, 0x5

    const-string v7, "NUMBER"

    invoke-direct {v0, v7, v6, v2}, Lcom/grack/nanojson/JsonParser$Token;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/grack/nanojson/JsonParser$Token;->NUMBER:Lcom/grack/nanojson/JsonParser$Token;

    new-instance v0, Lcom/grack/nanojson/JsonParser$Token;

    const/4 v7, 0x6

    const-string v8, "COMMA"

    invoke-direct {v0, v8, v7, v1}, Lcom/grack/nanojson/JsonParser$Token;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/grack/nanojson/JsonParser$Token;->COMMA:Lcom/grack/nanojson/JsonParser$Token;

    new-instance v0, Lcom/grack/nanojson/JsonParser$Token;

    const/4 v8, 0x7

    const-string v9, "COLON"

    invoke-direct {v0, v9, v8, v1}, Lcom/grack/nanojson/JsonParser$Token;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/grack/nanojson/JsonParser$Token;->COLON:Lcom/grack/nanojson/JsonParser$Token;

    new-instance v0, Lcom/grack/nanojson/JsonParser$Token;

    const/16 v9, 0x8

    const-string v10, "OBJECT_START"

    invoke-direct {v0, v10, v9, v2}, Lcom/grack/nanojson/JsonParser$Token;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/grack/nanojson/JsonParser$Token;->OBJECT_START:Lcom/grack/nanojson/JsonParser$Token;

    new-instance v0, Lcom/grack/nanojson/JsonParser$Token;

    const/16 v10, 0x9

    const-string v11, "OBJECT_END"

    invoke-direct {v0, v11, v10, v1}, Lcom/grack/nanojson/JsonParser$Token;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/grack/nanojson/JsonParser$Token;->OBJECT_END:Lcom/grack/nanojson/JsonParser$Token;

    new-instance v0, Lcom/grack/nanojson/JsonParser$Token;

    const/16 v11, 0xa

    const-string v12, "ARRAY_START"

    invoke-direct {v0, v12, v11, v2}, Lcom/grack/nanojson/JsonParser$Token;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/grack/nanojson/JsonParser$Token;->ARRAY_START:Lcom/grack/nanojson/JsonParser$Token;

    new-instance v0, Lcom/grack/nanojson/JsonParser$Token;

    const/16 v12, 0xb

    const-string v13, "ARRAY_END"

    invoke-direct {v0, v13, v12, v1}, Lcom/grack/nanojson/JsonParser$Token;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/grack/nanojson/JsonParser$Token;->ARRAY_END:Lcom/grack/nanojson/JsonParser$Token;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/grack/nanojson/JsonParser$Token;

    sget-object v13, Lcom/grack/nanojson/JsonParser$Token;->EOF:Lcom/grack/nanojson/JsonParser$Token;

    aput-object v13, v0, v1

    sget-object v1, Lcom/grack/nanojson/JsonParser$Token;->NULL:Lcom/grack/nanojson/JsonParser$Token;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grack/nanojson/JsonParser$Token;->TRUE:Lcom/grack/nanojson/JsonParser$Token;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grack/nanojson/JsonParser$Token;->FALSE:Lcom/grack/nanojson/JsonParser$Token;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grack/nanojson/JsonParser$Token;->STRING:Lcom/grack/nanojson/JsonParser$Token;

    aput-object v1, v0, v5

    sget-object v1, Lcom/grack/nanojson/JsonParser$Token;->NUMBER:Lcom/grack/nanojson/JsonParser$Token;

    aput-object v1, v0, v6

    sget-object v1, Lcom/grack/nanojson/JsonParser$Token;->COMMA:Lcom/grack/nanojson/JsonParser$Token;

    aput-object v1, v0, v7

    sget-object v1, Lcom/grack/nanojson/JsonParser$Token;->COLON:Lcom/grack/nanojson/JsonParser$Token;

    aput-object v1, v0, v8

    sget-object v1, Lcom/grack/nanojson/JsonParser$Token;->OBJECT_START:Lcom/grack/nanojson/JsonParser$Token;

    aput-object v1, v0, v9

    sget-object v1, Lcom/grack/nanojson/JsonParser$Token;->OBJECT_END:Lcom/grack/nanojson/JsonParser$Token;

    aput-object v1, v0, v10

    sget-object v1, Lcom/grack/nanojson/JsonParser$Token;->ARRAY_START:Lcom/grack/nanojson/JsonParser$Token;

    aput-object v1, v0, v11

    sget-object v1, Lcom/grack/nanojson/JsonParser$Token;->ARRAY_END:Lcom/grack/nanojson/JsonParser$Token;

    aput-object v1, v0, v12

    sput-object v0, Lcom/grack/nanojson/JsonParser$Token;->$VALUES:[Lcom/grack/nanojson/JsonParser$Token;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/grack/nanojson/JsonParser$Token;->isValue:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grack/nanojson/JsonParser$Token;
    .locals 1

    const-class v0, Lcom/grack/nanojson/JsonParser$Token;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonParser$Token;

    return-object p0
.end method

.method public static values()[Lcom/grack/nanojson/JsonParser$Token;
    .locals 1

    sget-object v0, Lcom/grack/nanojson/JsonParser$Token;->$VALUES:[Lcom/grack/nanojson/JsonParser$Token;

    invoke-virtual {v0}, [Lcom/grack/nanojson/JsonParser$Token;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grack/nanojson/JsonParser$Token;

    return-object v0
.end method
