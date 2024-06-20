# marlon-example-plugin

Something

## Install

```bash
npm install marlon-example-plugin
npx cap sync
```

## API

<docgen-index>

* [`addListener('resume', ...)`](#addlistenerresume-)
* [`addListener('pause', ...)`](#addlistenerpause-)
* [Interfaces](#interfaces)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### addListener('resume', ...)

```typescript
addListener(eventName: 'resume', listenerFunc: (data: { [key: string]: boolean; }) => void) => Promise<PluginListenerHandle>
```

| Param              | Type                                                        |
| ------------------ | ----------------------------------------------------------- |
| **`eventName`**    | <code>'resume'</code>                                       |
| **`listenerFunc`** | <code>(data: { [key: string]: boolean; }) =&gt; void</code> |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt;</code>

--------------------


### addListener('pause', ...)

```typescript
addListener(eventName: 'pause', listenerFunc: (data: { [key: string]: boolean; }) => void) => Promise<PluginListenerHandle>
```

| Param              | Type                                                        |
| ------------------ | ----------------------------------------------------------- |
| **`eventName`**    | <code>'pause'</code>                                        |
| **`listenerFunc`** | <code>(data: { [key: string]: boolean; }) =&gt; void</code> |

**Returns:** <code>Promise&lt;<a href="#pluginlistenerhandle">PluginListenerHandle</a>&gt;</code>

--------------------


### Interfaces


#### PluginListenerHandle

| Prop         | Type                                      |
| ------------ | ----------------------------------------- |
| **`remove`** | <code>() =&gt; Promise&lt;void&gt;</code> |

</docgen-api>
