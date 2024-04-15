## COZE2OPENAI
**Use Coze on your favorite OpenAI client.**

This project converts the Coze API to the OpenAI API format, giving you access to Coze's LLMs, knowledge base, tools, and workflows within your preferred OpenAI clients.


## Features
- Convert Coze API into an OpenAI API
- Support streaming and blocking
- Support Chatbots API on Coze

## Deployment
### Zeabur
[![Deploy on Zeabur](https://zeabur.com/button.svg)](https://zeabur.com/templates/92RLEZ?referralCode=fatwang2)

### Vercel
[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/fatwang2/Coze2openai&env=Coze_API_URL&envDescription=https://api.Coze.ai/v1)

**Note:** Vercel's serverless functions have a 10-second timeout limit.


### Local Deployment
1. Set the environment variable in the .env file
```bash
BOT_ID=
```

2. Install dependencies 
```bash
npm install
```

3. Run the project
```bash
npm start
```

## Usage
```JavaScript
const response = await fetch('http://localhost:3000/v1/chat/completions', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer YOUR_COZE_API_KEY',
  },
  body: JSON.stringify({
    model: 'Coze',
    messages: [
      { role: 'system', content: 'You are a helpful assistant.' },
      { role: 'user', content: 'Hello, how are you?' },
    ],
  }),
});

const data = await response.json();
console.log(data);
```
## Environment Variable
This project provides some additional configuration items set with environment variables:

| Environment Variable | Required | Description                                                                                                                                                               | Example                                                                                                              |
| -------------------- | -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| `BOT_ID`     | Yes      | The ID of the bot. Obtain it from the Develop page URL of your bot in Coze. The number after the bot parameter is the bot ID.| `73428668*****`|

## Roadmap
**Coming Soon**
*   Image support
*   Audio-to-text
*   Text-to-audio
*   Docker support
*   Workflow Bot
*   Variables support

**Available Now**
*   Continuous dialogue
*   Zeabur & Vercel deployment
*   Streaming & Blocking
*   Plugins on Coze

## Contact
Feel free to reach out for any questions or feedback

[X](https://sum4all.site/twitter)\
[telegram](https://sum4all.site/telegram)

<a href="https://www.buymeacoffee.com/fatwang2" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

## License
This project is licensed under the MIT License.
