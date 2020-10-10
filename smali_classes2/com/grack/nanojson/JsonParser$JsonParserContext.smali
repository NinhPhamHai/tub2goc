.class public final Lcom/grack/nanojson/JsonParser$JsonParserContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grack/nanojson/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonParserContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private lazyNumbers:Z


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public from(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    new-instance v0, Lcom/grack/nanojson/JsonParser;

    iget-boolean v1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->lazyNumbers:Z

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/grack/nanojson/JsonParser;-><init>(ZZLjava/io/Reader;)V

    iget-object p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser;->parse(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
